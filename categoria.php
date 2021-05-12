<?php
require 'index.php';

if(isset($_SESSION['user_id']))
{
    
if($_POST){
    $operacion =  "insertar";
}
else
{
    $operacion =  $_GET['cat'];    
}


switch ($operacion) {

    case 'ajax':

        /*Buscar*/

		$data = $database->select('categories', [
		    'slug',
		    'cat_type',
		    'category',
		    'description',
		    'image',
		    'parent_id'
		]);
		
		$d = [];
		
		foreach ($data as $key => $value) {
			$d[] = [
				$value['category'],
				$value['description'],
				date("d-m-Y"),
			];
		}
		
		echo json_encode(['data'=>$d]);

  
        break;


    case 'ajax2':

        /*Buscar*/

		$data = $database->select('categories', [
		    'id',
		    'slug',
		    'cat_type',
		    'category',
		    'description',
		    'image',
		    'parent_id'
		]);
		
		$d = [];
		
		foreach ($data as $key => $value) {
			$d[] = [
				$value['id'],
				$value['category']
			];
		}
		
		echo json_encode(['data'=>$d]);

  
        break;




    case 'buscar':


        require "view/dashboard/categorias.html";
        break;

    case 'insertar':

		/*insertar*/
		
		
		if($_GET){
		    require "view/dashboard/categorias.html";   
		}
		
		if($_POST){
		    

		  
		    $cat_type       =     $_POST['cat_type'];
		    $category       =     $_POST['category'];
		    $slug           =     $_POST['slug'];
		    $description    =     $_POST['description'];
    		//datos del arhivo
    
    		$nombre_archivo = $_FILES['userfile']['name'];
    		$tipo_archivo = $_FILES['userfile']['type'];
    		$tamano_archivo = $_FILES['userfile']['size'];
    		
    		$imagen['name'] = $nombre_archivo;
            $imagen['type'] = $tipo_archivo;
            $imagen['size'] = $tamano_archivo;
    		$imagen2 = json_encode($imagen);

    		

    		$guardar = $database->insert("categories", [
    			"slug" => $slug,
    			"cat_type" => $cat_type,
    			"category" => $category,
    			"description" => $description,
    			"image" => $imagen2,
    			"parent_id" => 0
    		]);
    		
        
    			
    		//compruebo si las características del archivo son las que deseo
    		if (!(($tamano_archivo < 2000000))) {
    		   	echo "La extensión o el tamaño de los archivos no es correcta. <br><br><table><tr><td><li>Se permiten archivos .gif o .jpg<br><li>se permiten archivos de 100 Kb máximo.</td></tr></table>";
    		}else{
    		   	if (move_uploaded_file($_FILES['userfile']['tmp_name'],  __DIR__.'/upload/'.$nombre_archivo)){
    		   	    
    		       

    

    		require "view/dashboard/categorias.html";
    		
    		
    		   	    
    		   	    
    		      	
    		   	}else{
    		      		echo "Ocurrió algún error al subir el fichero. No pudo guardarse.";
    		   	}
    		}

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

		$database->update("categories", [
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


		$data = $database->delete("categories", [
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


 

