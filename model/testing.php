<?php

///////////size/qty
$color = 'red';
$string1 = '18-020.19-023.20-015.21-010';
$splite = preg_split('/\./', $string1);
$final = array(
    'color' => $color,
    'size0' => 0,
    'size1' => 0,
    'size2' => 0,
    'size3' => 0
);

for ($i = 0; $i < count($splite); $i++) {
    $result = preg_split('/-/', $splite[$i]);
    match_key_and_value($i, $result[0]);
    match_key_and_value($i, $result[1]);
}
function match_key_and_value($key, $value){
    $keyValue = "size" . $key;
    $GLOBALS['final'][$keyValue] = intval($value);
//    echo "value : ".$GLOBALS['final'][$keyValue];
}
print_r($final);



