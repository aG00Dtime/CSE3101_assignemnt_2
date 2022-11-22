<!--header-->
<?php include_once './includes/header-inc.php' ?>
<!--header-->

<main class='index-page-view'>

    <?php
    $url = $_SERVER["REQUEST_URI"];

    // adjust content based on url
    // display simple welcome message to the site 
    if (strpos($url, "index")) {
        echo '
            <div class="welcome">
            <h1> Welcome to onTime. </h1>
            <p>Sign up or Login to manage meeting schedule.</p>
            </div>';
        // sign up page
    } else if (strpos($url, "sign-up")) {
        include_once './includes/signup-form-inc.php';
    } else if (strpos($url, "account-success")) {
        include_once './includes/signup-success-inc.php';

        // add new meetings
    } else if (strpos($url, "add-meeting")) {
        include_once './includes/add-meeting-form.php';

        // view user added meetings with update and delete option
    } else if (strpos($url, "view-meetings")) {
        include_once './includes/view-meetings-inc.php';


        // meeting that are public
    } else if (strpos($url, "view-public-meetings")) {
        include_once './includes/view-public-meetings-inc.php';

        // meeting added with no errors
    } else if (strpos($url, "meeting-added-success")) {
        include_once './includes/add_meeting_success.php';
        header("Refresh:1; url=view-meetings");

        // load the meeting update form
    } else if (strpos($url, "edit-meeting?id=")) {
        include_once './includes/edit-meeting-form.php';

        //show success message and redirect to meetings view
    } else if (strpos($url, "edit-meeting?error=none")) {
        include_once './includes/success-message.php';
        header("Refresh:1; url=view-meetings");

        // delete user meeting redirect
    } else if (strpos($url, "delete-meeting?id=")) {
        include_once './includes/delete-meeting-inc.php';
        include_once './includes/success-message.php';
        header("Refresh:1; url=view-meetings");
    }

    ?>

</main>

<?php include_once './includes/footer-inc.php' ?>