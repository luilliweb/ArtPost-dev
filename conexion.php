<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

// Using Medoo namespace.
use Medoo\Medoo;
 
// Connect the database.
$database = new Medoo([
    'type' => 'mysql',
    'host' => 'localhost',
    'database' => 'artpost',
    'username' => 'moreno',
    'password' => 'Lu1s678*'
]);

/*
 
$database->insert('account', [
    'user_name' => 'foo',
    'email' => 'foo@bar.com'
]);
*/


 
// [{
//     "user_name" : "foo",
//     "email" : "foo@bar.com"
// }]