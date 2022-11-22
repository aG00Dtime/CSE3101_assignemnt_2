<?php {

    if ($_SERVER['REQUEST_METHOD'] == 'GET') {

        $id = $mname = $mdescr = $mtime = $mdate = null;


        // make sure the user can only view their own meetings
        $user = $_SESSION['user']['email'];

        // meeting id from meetings page
        $id = $_GET['id'];

        // controller
        include "./database/db-connection-class.php";
        include "./classes/edit-meeting-class.php";
        include "./classes/edit-meeting-controller.php";

        $meeting_delete = new EditMeetingController($id, $user);

        // check if meeting exists and return data
        $meeting_delete->DeleteMeeting();
    }
}
