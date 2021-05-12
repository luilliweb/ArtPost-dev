<?php


require 'index.php';


//$_POST['']

if($_SESSION){
    
    if($_GET){
        
        //echo "hola";
        require "view/dashboard/index.html";
        
    }
    else
    {
        
        
        
        
        $data = $database->select("posts", [
    		    'id',
    		    'post_slug',
    		    'post_type',
    		    'post_title',
    		    'post_img',
    		    'status_post',
    		    'resumen_post',
    		    'post_content'
    		], [
 
    	// Multiple condition.
    	"ORDER" => [
     
    		// Order by column with descending sorting.
    		"id" => "DESC",
    
    	]
    ]);


        
        //echo "hola";
        //require "view/dashboard/login.html";
        require "view/front/index.php";
        
     
     
     
        
    }


        
}
    
else
{
    
    
    if($_POST)
    {   
        
        $user = $_POST['email'];
        $clave = md5($_POST['password']);
        
        
        $data = $database->select('users', [
            'id',
            'name',
            'email',
            'password'
        ], [
            'password' => $clave
        ]);


        if(!empty($data[0]))
        {
            
            
            header("Location: https://artpost.moreno.website/?admin=true");
        	$_SESSION['user_id'] = $data[0]['id'];
        	require "view/dashboard/index.html";
        }
        else
        {
            



        
        $data = $database->select("posts", [
    		    'id',
    		    'post_slug',
    		    'post_type',
    		    'post_title',
    		    'post_img',
    		    'status_post',
    		    'resumen_post',
    		    'post_content'
    		], [
 
    	// Multiple condition.
    	"ORDER" => [
     
    		// Order by column with descending sorting.
    		"id" => "DESC",
    
    	]
    ]);



    		
    		
    
            require "view/front/index.php";
        }
        
    }
    else if($_GET){
        
        //echo "hola";
        require "view/dashboard/login.html";
        
    }
    else
    {
        

        
        $data = $database->select("posts", [
    		    'id',
    		    'post_slug',
    		    'post_type',
    		    'post_title',
    		    'post_img',
    		    'status_post',
    		    'resumen_post',
    		    'post_content'
    		], [
 
    	// Multiple condition.
    	"ORDER" => [
     
    		// Order by column with descending sorting.
    		"id" => "DESC",
    
    	]
    ]);



        
        //echo "hola";
        //require "view/dashboard/login.html";
        require "view/front/index.php";
    }

}
