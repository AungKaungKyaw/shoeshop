<?php

class Database
{
    private static $host = 'localhost';
    private static $dbname = 'shop';
    private static $port = 3307;
    private static $username = 'kaungkyaw';
    private static $password = 'admin';
    private static $connection = null;

    public static function connect()
    {
        try {
            $attr = "mysql:host=" . self::$host . ";port=" . self::$port . ";dbname=" . self::$dbname;
            self::$connection = new PDO($attr, self::$username, self::$password);
            return self::$connection;

        } catch (PDOException $e) {
            echo "connection failed - " . $e->getMessage();
            return self::$connection;
        }
    }

    public static function disconnect()
    {
        self::$connection = null;
    }
}
?>