<?php
class show_shoes2
{

    private $dataArray = array();
    protected static $sizeString;
    private $sqlCheck;


    public function outValue2($value1, $value2, $value3)

    {

        $this->val1 = htmlspecialchars_decode($value1);
        $this->val2 = htmlspecialchars_decode($value2);
        $this->val3 = htmlspecialchars_decode($value3);

        // html_entity_decode $lt to < $gt to > like that
        $this->val1 = html_entity_decode($this->val1);
        $this->val2 = html_entity_decode($this->val2);
        $this->val3 = html_entity_decode($this->val3);

        // string to array
        $this->val1 = json_decode($this->val1);
        $this->val2 = json_decode($this->val2);
        $this->val3 = json_decode($this->val3);



//        print_r($this->val1[0]);
        /*if(!empty($this->val1)){
            if(!empty($this->val1[0])){
                $this->dataArray;
            }
        }*/
        if(!empty($this->val1)){
            foreach ($this->val1 as $value){
                //https://www.php.net/manual/en/function.array-push.php#:~:text=If%20you're%20going%20to,not%20necessary%20to%20use%20array_push.
                // append new data into array
                array_push($this->dataArray,$value);
            }
        }
        if(!empty($this->val2)){
            foreach ($this->val2 as $value){
                array_push($this->dataArray,$value);
            }
        }
        if(!empty($this->val3)){
            foreach ($this->val3 as $value){
                array_push($this->dataArray,$value);
            }
        }
        if($this->val1 == 0 && $this->val2 == 0 && $this->val3 == 0){
            include ('dbcon.php');
            $pdo = Database::connect();
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $sql = "SELECT * FROM shop.products ORDER BY createdDate LIMIT 6";

            $q = $pdo->prepare($sql);
            $q->execute();
            $data = $q->fetchAll(PDO::FETCH_ASSOC);
            return json_encode($data);
        }
//        print_r($this->dataArray);
        if(!empty($this->dataArray)){

            foreach ($this->dataArray as $value){
                if($value > 17 && $value < 24){

                    // concatenation
                    self::$sizeString .= "size".$value.">1 AND ";
                    $this->setValue("size".$value.">1 AND ");

                }
                if($value >= 100 && $value <= 400){
                    $value = $value-100;
                    $valueplus = $value+100;
                    self::$sizeString .= "(price>".$value." AND "."price<=".$valueplus.") AND ";
                    $this->setValue("(price>".value." AND "."price<=".$valueplus.") AND ");

                }else if($value == 99){
                    self::$sizeString .= "price>0 AND ";
                    $this->setValue("price>0 AND ");

                }
                if($value == 'red'){
                    self::$sizeString .= "color='".$value."' AND ";
                    $this->setValue("color='".$value."' AND ");

                }
                if($value == 'black'){
                    self::$sizeString .= "color='".$value."' AND ";
                    $this->setValue("color=".$value."' AND ");

                }
                if($value == 'pink'){
                    self::$sizeString .= "color='".$value."' AND ";
                    $this->setValue("color='".$value."' AND ");

                }
                if($value == 'white'){
                    self::$sizeString .= "color='".$value."' AND ";
                    $this->setValue("color=".$value."' AND ");

                }
                if($value == 'mix'){
                    self::$sizeString .= "color='".$value."' AND ";
                    $this->setValue("color='".$value."' AND ");

                }
                if($value == 'yellow'){
                    self::$sizeString .= "color='".$value."' AND ";
                    $this->setValue("color=".$value."' AND ");
                }
            }
        }
        $this->setValue(rtrim(self::$sizeString," AND "));
        self::$sizeString = rtrim(self::$sizeString," AND ");

//        echo $this->sizeString;

//        echo gettype($this->sizeString);

        include ('dbcon.php');
        $sql = "SELECT * FROM shop.products WHERE ".self::$sizeString." ORDER BY createdDate DESC LIMIT 6";

//        echo $sql;
        $pdo = Database::connect();
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//        $sql = "SELECT * FROM shop.products WHERE ".$this->sizeString." ORDER BY createdDate DESC LIMIT 6";
        $q = $pdo->prepare($sql);

        $q->execute();

        $data = $q->fetchAll(PDO::FETCH_ASSOC);

        return json_encode($data);

    }

    public function getValue(){
        return "hello" . self::$sizeString;
    }
    public function setValue($val){
        $this->sqlCheck .=$val;
    }

}