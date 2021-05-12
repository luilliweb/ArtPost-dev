<?php
require 'index.php';

if(isset($_SESSION['user_id']))
{



if($_POST){
    $operacion =  "insertar";
}
else
{
    $operacion =  $_GET['post'];
}



switch ($operacion) {

    case 'ajax':

        /*Buscar*/

		$data = $database->select('posts', [
		    'id',
		    'post_slug',
		    'post_type',
		    'post_title',
		    'post_img',
		    'status_post',
		    'resumen_post',
		    'post_content'
		]);
		
		$d = [];

		foreach ($data as $key => $value) {
			$d[] = [
				$value['post_title'],
				"admin",
				date("d-m-Y"),
			];
		}

		echo json_encode(['data'=>$d]);

        break;
	case 'buscar':

	        /*Buscar*/
	        /*
			$data = $database->select('posts', [
			    'post_slug',
			    'post_type',
			    'post_title',
			    'post_img',
			    'status_post',
			    'resumen_post',
			    'post_content'
			], [
			    'user_id' => $_SESSION['user_id']
			]);
			*/
			//print_r($data);
			
			 require "view/dashboard/entradas.html";

	        break;

    case 'insertar':

		/*insertar*/
		
		if($_GET){
		    require "view/dashboard/agregar-entradas.html";    
		}
		
		if($_POST){
    		
    		$post_slug = $_POST['post_slug'];
		    $post_type = $_POST['post_type'];
		    $post_title = $_POST['post_title'];
		    $status_post = $_POST['status_post'];
		    $resumen_post = $_POST['resumen_post'];
		    $post_content = $_POST['post_content'];
    
    		//datos del arhivo
    
    		$nombre_archivo = $_FILES['userfile']['name'];
    		$tipo_archivo = $_FILES['userfile']['type'];
    		$tamano_archivo = $_FILES['userfile']['size'];
    			
    		//compruebo si las características del archivo son las que deseo
    		if (!(($tamano_archivo < 200000))) {
    		   	echo "La extensión o el tamaño de los archivos no es correcta. <br><br><table><tr><td><li>Se permiten archivos .gif o .jpg<br><li>se permiten archivos de 100 Kb máximo.</td></tr></table>";
    		}else{
    		   	if (move_uploaded_file($_FILES['userfile']['tmp_name'],  __DIR__.'/upload/'.$nombre_archivo)){
    		      		echo "El archivo ha sido cargado correctamente.";
    		   	}else{
    		      		echo "Ocurrió algún error al subir el fichero. No pudo guardarse.";
    		   	}
    		}
    
    
    		$imagen = [
    			"name" => $nombre_archivo,
    			"type" => $tipo_archivo,
    			"size" => $tamano_archivo
    		];
    		
    		$content = [htmlentities($post_content)];
    
    		$database->insert("posts", [
    			"post_slug" => $post_slug,
    			"post_type" => $post_type,
    			"post_title" => $post_title,
    			"post_img" => json_encode($imagen),
    			"status_post" => $status_post,
    			"resumen_post" => $resumen_post,
    			"post_content" => $content,
    			"user_id" => $_SESSION['user_id']
    		]);
    		
    		$post_id = $database->id();
    
    
    		 if (is_array($_POST['category'])) {
    		 	foreach ($_POST['category'] as $key => $value) {
    		 		$database->insert("category_post", [
		    			"category_id" => $value,
		    			"post_id" => $database->id()
		    		]);
    		 	}
    		 }
    		 
    		 
    		  if (is_array($_POST['tag'])) {
    		 	foreach ($_POST['tag'] as $key => $value) {
    		 		$database->insert("post_tag", [
		    			"tag_id" => $database->id(),
		    			"post_id" => $post_id
		    		]);
    		 	}
    		 }
    		 
    		$host= $_SERVER["HTTP_HOST"];
			$url = "https://" . $host ."/entradas.php?post=buscar";
			header("Location: $url");
    		echo "guardado bien";



		    
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

		$database->update("posts", [
			"post_type" => "user",
		 
			// All age plus one.
			"post_title" => 'mititili',
		 
			// All level subtract 5.
			"post_img" => $imagen,
		 
			// All score multiplied by 2.
			"status_post" => "publico",
		 
		], [
			"id[=]" => 1
		]);




		$host= $_SERVER["HTTP_HOST"];
		$url = "https://" . $host ."/vista.php?notificacion=listo";
		header("Location: $url");



        break;

    	
    	case "borrar":




    /* DELETE*/


		$data = $database->delete("posts", [
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

