<?php 
include "config.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>Bigfoot ala</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	
	<table>
		<tr>
		    <td>brand</td>
		    <td>
		    	<!-- brand dropdown -->
		        <select id='sel_brand' >
		          	<option value='0' >Select brand</option>
		          	<?php 
		          	## Fetch brands
					$stmt = $conn->prepare("SELECT * FROM brands ORDER BY name");
					$stmt->execute();
					$brandsList = $stmt->fetchAll();

					foreach($brandsList as $brand){
						echo "<option value='".$brand['brandid']."'>".$brand['name']."</option>";
					}
		          	?>
		        	</select>
		      	</td>
		    </tr>

		    <tr>
		      	<td>model</td>
		      	<td>
			        <select id='sel_model' >
			          	<option value='0' >Select model</option>
			          	
			        </select>
		      	</td>
		    </tr>

		    <tr>
		      	<td>size</td>
		      	<td>
			        <select id='sel_size' >
			          	<option value='0' >Select size</option>
			          	
			        </select>
		      	</td>
		</tr>
	</table>

	<!-- Script -->
	<script type="text/javascript">
	$(document).ready(function(){

		// brand
		$('#sel_brand').change(function(){

			var brandid = $(this).val();
			
			// Empty model and size dropdown
			$('#sel_model').find('option').not(':first').remove();
			$('#sel_size').find('option').not(':first').remove();

			// AJAX request
			$.ajax({
				url: 'ajaxfile.php',
				type: 'post',
				data: {request: 1, brandid: brandid},
				dataType: 'json',
				success: function(response){
					
					var len = response.length;

		            for( var i = 0; i<len; i++){
		                var id = response[i]['brandid'];
		                var model = response[i]['model'];
		                    
		                $("#sel_model").append("<option value='"+brandid+"'>"+model+"</option>");

		            }
				}
			});
			
		});


		// model
		$('#sel_model').change(function(){
			var modelid = $(this).val();
			
			// Empty size dropdown
			$('#sel_size').find('option').not(':first').remove();

			// AJAX request
			$.ajax({
				url: 'ajaxfile.php',
				type: 'post',
				data: {request: 2, modelid: modelid},
				dataType: 'json',
				success: function(response){
					
					var len = response.length;

		            for( var i = 0; i<len; i++){
		                var id = response[i]['modelid'];
		                var size = response[i]['size'];
		                    
		                $("#sel_size").append("<option value='"+modelid+"'>"+size+"</option>");

		            }
				}
			});
		});
	});
	</script>

<a href="login.php">Login</a>
</body>
</html>









