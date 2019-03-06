<?php 
/**
 * 
 * @author ckanza
 *
 */
class Post {
 
    /**
     * Clé primaire
     * @var integer
     */
    public $id;
    
    /**
     * Titre du post
     * @var string
     */
    public $titre;
    
    /**
     * Description du post
     * @var string
     */
    public $description;
    
    
    /**
     * Constructeur par defaut, lorsqu'on instancie la classe
     * @param integer|null $id
     */
    public function __construct($id=null) {
        
        // Si l'id n'est pas vide
        if ( !empty($id)) {
            // Je me connecte à la BDD
            $bdd = BddConnexion::getInstance();
            // Je vais rechercher le post grace à l'identifiant saisi
            $req = $bdd->prepare('SELECT * FROM posts WHERE post_id=:id');
            // Cf. doc PDO des requêtes
            $req->bindValue(':id', $id, PDO::PARAM_INT);
            $req->execute();
            // On récupère la requête retourné par la BDD
            $data = $req->fetch();
            // Si post trouvé avec cet id, on hydrate notre objet
            if (!empty($data)) {
                $this->id           = $data['post_id'];
                $this->titre        = $data['post_title'];
                $this->description  = $data['post_content'];
            }                       
        }        
    }
    
    /**
     * Retourne la liste des posts présents en BDD
     * @return Post[]
     */
    public function getAllPosts()
    {
        // Liste des posts initialisée par un tableau vide
        $listPosts = [];
        // On appelle notre instance
        $bdd = BddConnexion::getInstance();
        // On récupère la liste de tous les posts
        $req = $bdd->query('SELECT * FROM posts ORDER BY post_id DESC');
        
        if($req) {
            // Pour chaque résultat que je récupère
            while($datas = $req->fetch()){
                // J'instancie mon post
                $post = new Post();
                // Et j'hydrate (MAJ) mon objet
                $post->id           = $datas['post_id'];
                $post->titre        = $datas['post_title'];
                $post->description  = $datas['post_content'];            
                // Ensuite je mets mon objet dans le tableau précédemment déclaré
                $listPosts[] = $post;
            }
        }
        // Je retourne le résultat final
        return $listPosts;
    }
    
    
}