<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>CPSC 332 SU19</title>
  </head>
  <body class="bg">
<div class="containter display"><center>
	<h3 class="display-3">University Lookup System</h3>
	<p>Courses Sections</p></center>
	</div>

	<div class="container bg-white">
    <?php 
		$username = "cs332z11"; 
		$password = "TohzaoL5"; 
		$database = "cs332z11"; 

$cours = $_POST['cours'];

$mysqli = new mysqli("mariadb", $username, $password, $database); 
$sql = "SELECT classroom, meetingdays, starttime, endtime, secnum, COUNT(*) as total
	FROM Course c, Section s, Enroll e
	WHERE c.cnum = s.scnum
	AND s.secnum = e.esecnum
	AND c.cnum = '$cours'
	GROUP BY s.secnum";

 
echo '<table class="table"> 
	<thead>	
      <tr> 
          <th scope="col">Section </th> 
          <th scope="col">Classroom</th>
	  <th scope="col">Meeting Days</th>
	  <th scope="col">Start Time</th> 
	  <th scope="col">End Time</th> 
	  <th scope="col"># of Students</th>   
  
      </tr>
	</thead>
	<tbody>';
 
if ($result = $mysqli->query($sql)) {
    while ($row = $result->fetch_assoc()) {
        $field1name = $row["secnum"];
        $field2name = $row["classroom"];
	$field3name = $row["meetingdays"];
	$field4name = $row["starttime"];
	$field5name = $row["endtime"];
	$field6name = $row["total"];

 
        echo '
				<tr> 
                  <td>'.$field1name.'</td> 
                  <td>'.$field2name.'</td> 
		  <td>'.$field3name.'</td> 
		  <td>'.$field4name.'</td> 
		  <td>'.$field5name.'</td> 
		  <td>'.$field6name.'</td> 

              </tr>';
    }
    $result->free();
} 
echo '</tbody>';
?>

</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>