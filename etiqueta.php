<?php

require 'index.php';


if(isset($_SESSION['user_id']))
{
    
if($_POST){
    $operacion =  "insertar";
}
else
{
    $operacion =  $_GET['tag'];    
}


switch ($operacion) {

    case 'ajax':

        /*Buscar*/

		$data = $database->select('tags', [
		    'slug',
		    'tag_type',
		    'tag',
		    'description',
		    'image'
		]);
		
		$d = [];
		
		foreach ($data as $key => $value) {
			$d[] = [
				$value['tag'],
				$value['description'],
				date("d-m-Y"),
			];
		}
		
		echo json_encode(['data'=>$d]);

  
        break;





   case 'ajax2':

        /*Buscar*/

		$data = $database->select('tags', [
		    'id',
		    'slug',
		    'tag_type',
		    'tag',
		    'description',
		    'image'
		]);
		
		$d = [];
		
		foreach ($data as $key => $value) {
			$d[] = [
			    $value['id'],
				$value['tag']
				
			];
		}
		
		echo json_encode(['data'=>$d]);

  
        break;






    case 'buscar':


        require "view/dashboard/etiquetas.html";
        break;

    case 'insertar':

		/*insertar*/
		
		
		if($_GET){
		    require "view/dashboard/etiquetas.html";   
		}
		
		if($_POST){
		  
		    $cat_type       =     $_POST['tag_type'];
		    $category       =     $_POST['tag'];
		    $slug           =     $_POST['slug'];
		    $description    =     $_POST['description'];
    		//datos del arhivo
    
    		
    		$imagen2 = '{}';
    
    
    		$database->insert("tags", [
    			"slug" => $slug,
    			"tag_type" => $cat_type,
    			"tag" => $category,
    			"description" => $description,
    			"image" => $imagen2
    		]);

    		require "view/dashboard/etiquetas.html";

		}
		
        break;

    case "modificar":

        



		$imagen = '{
		    "rojo":"#f00",
		    "verde":"#0f0",
		    "azul":"#00f",
		    "cyan":"#0ff",
		    "magenta":"#f0f",
		    "amarillo":"#ff0",
		    "negro":"#000"
		}';




		/*actualizar*/

		$database->update("tags", [
			"slug" => "user",
		 
			// All age plus one.
			"category" => 'mititili',
		 		 
			// All score multiplied by 2.
			"cat_type" => "publico",
		 
		], [
			"id[=]" => 1
		]);




		$host= $_SERVER["HTTP_HOST"];
		$url = "https://" . $host ."/vista.php?notificacion=listo";
		header("Location: $url");



        break;

    	
    	case "borrar":




    /* DELETE*/


		$data = $database->delete("tags", [
			"AND" => [
				"id[=]" => 3
			]
		]);






        break;
}





}
else
{

	$host= $_SERVER["HTTP_HOST"];
	$url = "https://" . $host;
	header("Location: $url");
}


 

