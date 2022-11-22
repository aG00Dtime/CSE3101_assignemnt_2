<?php

function login()
{
    if ($_SERVER["REQUEST_METHOD"] == 'POST' and isset($_POST['login-user'])) {

        $email = $_POST['email'];
        $password = $_POST['password'];


        // controller
        include "./database/db-connection-class.php";
        include "./classes/login-class.php";
        include "./classes/login-controller.php";


        $login = new LoginController($email,  $password);

        // error handling
        $login->loginUser();


        // back to index
        header('Refresh: 0.1; URL = ./index.php?status=loggedin');
    }
}
