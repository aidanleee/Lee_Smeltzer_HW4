<?php 

    require_once('../admin/scripts/config.php');

    if (isset($_GET['media'])) {
        $type = $_GET['media'];

        if ($type == "video") {
            $tbl = "tbl_movies";
        } else {
            $tbl = "tbl_audio";
        }
    }

    if(isset($_GET['filter'])){

        // genre could be categories 60s,70s,80s, etc period_id, period_name?
        // show the movies to the corresponding filter
        $tbl2 = 'tbl_genre';
        $tbl3 = 'tbl_mov_genre';
        $col = 'movies_id';
        $col2 = 'genre_id';
        $col3 = 'genre_name';
        $filter = $_GET['filter'];

        $results = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
        
        echo json_encode($results);

    } else { // or show all movies


        $results = getAll($tbl);

        echo json_encode($results);
    }
?>