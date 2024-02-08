<?php 
require __DIR__ . ('/utilities/header.php'); 
require_once  __DIR__ . ('/config/config.php');
require_once  __DIR__ . ('/function/database.fn.php');
$db = getPDOlink($config);
require __DIR__ . ('/function/joueurs.fn.php'); 

// Appel des fonctions
if (isset($_POST['selection'])) {
$joueurs = FindJoueur($db, $_POST['selection']);
} else {
    $joueurs = findAllJoueur($db);}
?>

<!-- Formulaire de tri -->
<div class="p-3 d-flex justify-content-center">
    <div class="col-md-3 col-10">
        <form action="Stats.php" method="post" class="d-flex">
            <select name="selection" class="form-select" aria-label="default select example" onchange="this.form.submit()">
                <!-- Option de tri -->
                <option value="age ASC">Age -</option>
                <option value="but DESC">But +</option>
                <option value="passe DESC">Passe D +</option>
                <option value="nom ASC">Nom A-Z</option>
                <option value="nom DESC">Nom Z-A</option>
                <option value="valeur DESC">Valeur +</option>
                <option value="nbre_match DESC">Match +</option>
                <option value="prenom ASC">Prenom A-Z</option>
                <option value="prenom DESC">Prenom Z-A</option>
            </select>
        </form>
    </div>
</div>
<div class="d-flex justify-content-around flex-wrap gap-3">
    <?php require __DIR__ . ('/utilities/card.php');?> 
    </div>
    <?php require __DIR__ . ('/utilities/footer.php');?>




