<?php


include "./database/db-connection-class.php";
include './classes/view-meetings-class.php';
include './classes/view-meetings-controller.php';

$email = $_SESSION['user']['email'];

$getmeetings = new ViewMeetingsController($email);

$rows = $getmeetings->getUserMeetings();

// create table to add meetings
echo '
<table class="table table-light table table-bordered table table-striped table-hover ">
<thead>
    <tr>
        <th scope="col">Meeting ID</th>
        <th scope="col">Name</th>
        <th scope="col">Description</th>
        <th scope="col">Time</th>
        <th scope="col">Date</th>
        <th scope="col">URL</th>
        <th scope="col">Visibility</th>
        <th scope="col">Manage</th>
    </tr>
</thead>
<tbody>';

// add data to tables
foreach ($rows as $row) {
    echo "
    <tr>
    <th scope='row'>{$row['meeting_id']}</th>
    <td> {$row['meeting_name']}</td>
    <td> {$row['meeting_description']}</td>
    <td> {$row['meeting_time']}</td>
    <td> {$row['meeting_date']}</td>
    <td> {$row['meeting_url']}</td>
    <td> {$row['meeting_vis']}</td>
    <td>
    <a class='btn btn-info'   href='edit-meeting?id={$row['meeting_id']}'> Update </a> 
    <a class='btn btn-danger' href='delete-meeting?id={$row['meeting_id']}' > Delete </a> 
    </td>

    </tr>
    
    ";
}

echo
'
</tbody>
</table>';
