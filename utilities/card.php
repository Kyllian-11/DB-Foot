<!-- CARD -->   
<?php foreach ($joueurs as $joueur) { ?>  
<div class="card border border-dark bg-primary-subtle mb-3 " style="width: 18rem;">
  <img src="<?= $joueur['PathImg']?>" class="card-img-top" style="height: 410px;">
  <div class="card-body">
    <h5 class="card-title text-center fs-3"><?= $joueur['prenom']?></h5>
    <h5 class="card-title text-center fs-2 text-uppercase fw-bold"><?= $joueur['nom']?></h5>
  </div>
  <ul class="list-group list-group-flush">
    <!-- Detail de la card -->
    <li class="list-group-item">Age : <?= $joueur['age']?></li>
    <li class="list-group-item">Nationalité : <?= $joueur['nation']?></li>
    <li class="list-group-item">Club : <?= $joueur['club']?></li>
    <li class="list-group-item">Valeur : <?= $joueur['Valeur']?>M€</li>
    <li class="list-group-item">But : <?= $joueur['but']?></li>
    <li class="list-group-item">Passe D : <?= $joueur['passe']?></li>
    <li class="list-group-item">Matchs : <?= $joueur['nbre_match']?></li>
    <li class="list-group-item">Competition :  <?= $joueur['compet']?></li>
  </ul>
</div>
<?php } ?>