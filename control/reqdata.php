<?php

// Set the response content type to JSON
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
include ('../model/show_shoes.php');

// Retrieve the data from the request
$data = json_decode(file_get_contents("php://input"), true);
if(isset($data)){
    $show_shoe = new show_shoes();
    $value1 = sanitizeInput($data['value1']);
    $value2 = sanitizeInput($data['value2']);
    $value3 = sanitizeInput($data['value3']);
    echo $show_shoe->outValue($value1, $value2, $value3);
}
// Check if data is not null and if the required indices exist


/********************************************************
 * if ($data !== null && isset($data['value1']) && isset($data['value2']) && isset($data['value3'])) {
    $value1 = sanitizeInput($data['value1']);
    $value2 = sanitizeInput($data['value2']);
    $value3 = sanitizeInput($data['value3']);
//    echo "value1 : " . $value1 . "value2 : " . $value2 . "value3 : " . $value3;

//    ---------------------------------------------
    echo $show_shoe->outValue($value1, $value2, $value3);
    $getVal = $show_shoe->getValue();

//    ---------------------------------------------

}
***************************************************************
*/

/*if (isset($_GET['page'])) {
//    echo $_GET['page'];
    $page = sanitizeInput($_GET['page']);
    echo $show_shoe->paginationHandle($page);
}*/
if(isset($_GET['value'])){
    echo "hello value : " . $_GET['value'];
    getval($data);
}
function getval($data1){
    $data = json_decode(file_get_contents("php://input"), true);
    if(isset($data1)){
        include ('../model/ShowShoes2.php');
        $ShowShoesForPage = new show_shoes2();
        $value1 = sanitizeInput($data1['value1']);
        $value2 = sanitizeInput($data1['value2']);
        $value3 = sanitizeInput($data1['value3']);
        echo "val1 : " . $value1;
        echo "val2 : " . $value2;
        echo "val3 : " . $value3;
        $ShowShoesForPage->outValue2($value1, $value2, $value3);
        echo $ShowShoesForPage->getValue();
    }

}


function sanitizeInput($input){
    $input = trim($input);
    return htmlspecialchars($input);
}



