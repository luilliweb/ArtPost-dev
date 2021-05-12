<?php

require 'index.php';


if(isset($_SESSION['user_id']))
{

unset($_SESSION);
session_destroy();
header("Location: index.php");
}