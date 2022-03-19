<?php 

include "config.php";

$request = 0;

if(isset($_POST['request'])){
	$request = $_POST['request'];
}

// Fetch model list by brandid
if($request == 1){
	$brandid = $_POST['brandid'];

	$stmt = $conn->prepare("SELECT * FROM models WHERE brandid=:brandid ORDER BY model");
	$stmt->bindValue(':brandid', (int)$brandid, PDO::PARAM_INT);

	$stmt->execute();
	$modelsList = $stmt->fetchAll();

	$response = array();
	foreach($modelsList as $model){
		$response[] = array(
				"id" => $model['id'],
				"model" => $model['model']
			);
	}

	echo json_encode($response);
	exit;
}

// Fetch size list by modelid
if($request == 2){
	$modelid = $_POST['modelid'];

	$stmt = $conn->prepare("SELECT * FROM sizes WHERE modelid=:modelid ORDER BY size");
	$stmt->bindValue(':modelid', (int)$modelid, PDO::PARAM_INT);

	$stmt->execute();
	$modelsList = $stmt->fetchAll();

	$response = array();
	foreach($modelsList as $model){
		$response[] = array(
				"id" => $model['id'],
				"model" => $model['model']
			);
	}

	echo json_encode($response);
	exit;
}