<?php

class show_db
{
    public function outValue1($value1, $value2, $value3)
    {
        $this->value1 = $value1;
        $this->value2 = $value2;
        $this->value3 = $value3;
        if($this->value1 == 0 && $this->value2 == 0 && $this->value3 == 0){
            include ('dbcon.php');
            $pdo = Database::connect();
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "select * from shop.inventory";
            $q = $pdo->prepare($sql);
            $q->execute();
            $data = $q->fetchAll(PDO::FETCH_ASSOC);
            $returnData = array();
            foreach ($data as $row){
                $returnData['color'] = $row['color'];
                $split = preg_split('/-/' , $row['size_qty']);
                $returnData['size'] = $split[0];
                $returnData['qty'] = $split[1];
            }
            echo json_encode($returnData);
//            return json_encode($data);
        }
    }
}


$obj = new show_db();
$obj->outValue1(0, 0, 0);
