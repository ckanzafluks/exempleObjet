<?php
/**
 * 
 * @author ckanza
 *
 */
class BddConnexion
{
    /**
     * @var PDO
     */
    private static $_dbInstance;

    /**
     * Constructeur
     */
    protected function __construct()
    {
        if ( is_null(self::$_dbInstance) ) {
            self::$_dbInstance = new PDO('mysql:host=localhost;dbname=exemple_p3_pdo;charset=utf8', 'camille', 'camille');
        }
    }

    /**
     * Appel static au connecteur PDO par  BddConnexion::getInstance()
     * @return PDO
     */
    public static function getInstance() {
        if ( is_null(self::$_dbInstance) ) {
            new BddConnexion();
        }
        return self::$_dbInstance;
    }
}