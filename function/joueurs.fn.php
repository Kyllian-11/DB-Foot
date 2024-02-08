<?php
// Fonction pour afficher tous les joueurs et joindre les images au joueur correspondant et leur competition 
function findAllJoueur($db) {
    $sql = "SELECT * FROM joueurs AS j
            INNER JOIN competition_joueurs cj ON j.id = cj.JoueursID
            INNER JOIN competitions c ON cj.CompetitionsID = c.id
            INNER JOIN picture p ON j.ID = p.joueursID";
    $requete = $db->query($sql);
    $joueurs = $requete->fetchAll();
    return $joueurs;
}

// Fonction pour trier les joueurs
function FindJoueur($db, $choice){
    if (isset($_POST['selection'])) {
          $choice = $_POST['selection'];
          $sql = "SELECT * FROM joueurs AS j
            INNER JOIN competition_joueurs cj ON j.id = cj.JoueursID
            INNER JOIN competitions c ON cj.CompetitionsID = c.id
            INNER JOIN picture p ON j.ID = p.joueursID
            ORDER BY $choice";
          $result = $db-> query($sql);
          $joueurs = $result->fetchAll();
      }
      return $joueurs;
    }
