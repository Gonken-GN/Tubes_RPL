<?php
class Resep extends DB{

    function getRandomResep(){
        $query="SELECT * FROM table_resep ORDER BY RAND() limit 1";
        return $this->execute($query);
    }

    function getRandomResepFilter($value1, $value2, $value3){
        $query="SELECT * FROM table_resep where Jenis_Menu_resep='$value1' AND Menu_Resep='$value2' AND Daerah_Menu_Resep='$value3' ORDER BY RAND() limit 1";
        return $this->execute($query);
    }
    
    function rating($value1){
        $query="INSERT INTO rating values (NULL, $value1)";
        return $this->execute($query);
    }
}
?>