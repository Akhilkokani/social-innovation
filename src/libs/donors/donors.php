<?php
spl_autoload_register ( function($class_name) {
    include $class_name . ".php";
});

// Establishing a connection to SET Database
// Establishing a connection to DIPP Database
$connection = mysqli_connect ( "localhost", "root", "", "donors" );

// If there's an error while connecting to Database
// Stop entire system, and display message
if ( !$connection )
    die ( "Error while connecting to database." );


$ngo = new NGO();
$users = new Users();
$requirements = new Requirements();