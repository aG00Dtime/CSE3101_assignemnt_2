<?php


class ViewMeetings extends Dbc
{

    protected function getMeetings($email = false)
    {

        $statement = $this->connect()->prepare("SELECT * FROM meetings WHERE meeting_user_email = ?;");
        $statement->bindParam(1, $email, PDO::PARAM_STR);

        if (!$statement->execute()) {
            $statement = null;
            header("location : ../index.php?error=queryfailed");
            exit();
        } else {
            return $statement->fetchAll(PDO::FETCH_ASSOC);
        }

        $statement = null;
    }

    protected function GetPublicMeetings()
    {

        $statement = $this->connect()->prepare("SELECT * FROM meetings WHERE meeting_vis ='public';");


        if (!$statement->execute()) {
            $statement = null;
            header("location : ../index.php?error=queryfailed");
            exit();
        } else {
            return $statement->fetchAll(PDO::FETCH_ASSOC);
        }

        $statement = null;
    }
}
