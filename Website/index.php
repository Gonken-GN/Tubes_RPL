<?php

include("conf.php");
include("includes/Template.class.php");
include("includes/DB.class.php");
include("includes/Resep.class.php");
$resep = new Resep($db_host, $db_user, $db_pass, $db_name);
$resep->open();
$hasil = null;
$button = null;

/* ------ RANDOM WITHOUT FILTER ------ */
if(isset($_POST['randomnow'])){
    //klik button random now
    $resep->getRandomResep();
    $random = $resep->getResult();
    $hasil .= "
    <p style='color: white;'>" . $random['Nama_Resep']  . "</p>
    <button id='modalbutton' type='button' class='btn rounded-0 mb-3 text-light' style='width: 120px; background-color: #478C5C; '>
    <a href='" . $random['Link_Resep'] . "' target='_blank' class='text-decoration-none' style='color: white;'>
    See Recipe
    </a>
    </button> <br>";

    $button .= "
    <button id='mainbutton' type='button' name='randomModal' class='btn rounded-0 text-light' style='width: 160px;'  data-bs-toggle='modal' data-bs-target='#modalRandom'>See Result!</button>";
}

/* ------ INPUT VALUE FILTER ------ */
if(isset($_GET['w1']) && isset($_GET['w2']) && isset($_GET['w3'])){
   //klik button random now
   $resep->getRandomResepFilter($_GET['w2'], $_GET['w1'], $_GET['w3']);
   $random = $resep->getResult();
   $hasil .= "
   <p style='color: white;'>" . $random['Nama_Resep']  . "</p>
   <button id='modalbutton' type='button' class='btn rounded-0 mb-3 text-light' style='width: 120px; background-color: #478C5C; '>
   <a href='" . $random['Link_Resep'] . "' target='_blank' class='text-decoration-none' style='color: white;'>
   See Recipe
   </a>
   </button> <br>";

   $button .= "
   <button id='mainbutton' type='button' name='randomModal' class='btn rounded-0 text-light' style='width: 160px;'  data-bs-toggle='modal' data-bs-target='#modalRandom'>See Result!</button>";
}

/* ------ INPUT VALUE RATING ------  */
if(isset($_POST['stars1'])){
    //klik button random now
    $resep->rating(1);
}

if(isset($_POST['stars2'])){
    //klik button random now
    $resep->rating(2);
}

if(isset($_POST['stars3'])){
    //klik button random now
    $resep->rating(3);
}

if(isset($_POST['stars4'])){
    //klik button random now
    $resep->rating(4);
}

if(isset($_POST['stars5'])){
    //klik button random now
    $resep->rating(5);
}

$tpl = new Template("templates/index.html");
$tpl->replace("RESULT_BUTTON", $button);
$tpl->replace("JUDUL_RESEP", $hasil);
$tpl->write();