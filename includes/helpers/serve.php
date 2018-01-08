<?php
	include("../../init.php");
	if(isset($_POST['add'])){
	  $address=$_POST['add'];
    	if ($address != ""){
			$sql  = "INSERT INTO location (address)VALUES(:address)";
			$stmt = $conn->prepare($sql);
			$stmt->bindParam(':address',$address,PDO::PARAM_STR);
			$stmt->execute();
			}  
		}		
	  $datasql="SELECT * FROM location";
	  $stmt = $conn->query($datasql);
	  while ($row = $stmt->fetch(PDO::FETCH_OBJ)) {
?>
		<tr>
			<td><button id="foucs" class="btn btn-info"> <?php echo $row->id;?></button></td>
			<td id="foucsed"><?php echo $row->address;?>                                </td>
			<td><?php echo $row->date;    ?>                                            </td>
		
		</tr>

	
<?php 		
 } 
?>
?>