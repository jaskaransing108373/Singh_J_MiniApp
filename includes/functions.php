<?php
    // include the file we just wrote - connect
     // like a JS import statement

    $result = array();

    function getAllUsers($conn) {
        $query = "SELECT * FROM mini_cars";

        $runQuery = $conn->query($query);

        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo (json_encode($result));
    }

    function getSingleUser($conn, $id) {
        $query = "SELECT * FROM mini_cars WHERE id=" . $id . "";

        $runQuery = $conn->query($query);

        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo (json_encode($result));
    }