<?php 


require 'classes/BddConnexion.php';
require 'classes/Post.php';

########## 1er cas on recupère une donnée existante
// On récupère notre 1er post
$objetPost = new Post(1);
// On affiche le résultat
echo '<pre>';
    var_dump($objetPost);
echo '</pre>';



########## 2e cas on recupère toutes les données présentes en base
// On recupère toute la liste des posts contenus en BDD
$objetPost = new Post();
$listPosts = $objetPost->getAllPosts();
// On affiche le résultat
echo '<pre>';
    var_dump($listPosts);
echo '</pre>';