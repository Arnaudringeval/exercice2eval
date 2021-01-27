<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
    try
    {
$pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '',$pdo_options);
$sql = 'SELECT id, auteur, titre, contenu, dateAjout, dateModif FROM news ORDER BY id ASC';
$requete = $db->query($sql ); 

echo"<table border>";
while ($news = $requete->fetch())
{
    echo "<tr>";
echo "<th>".$news['id']."<th></br>";
echo "<th>".$news['auteur']."<th>"."</br>";
echo "<th>".$news['titre']."<th>"."</br>";
echo "<th>".$news['contenu']."<th>"."</br>";
echo "<th>".$news['dateAjout']."<th>"."</br>";
echo "</tr>";
}
echo"</table>";
$requete->closeCursor(); }
catch(Exception $e)
{
die('Erreur : '.$e->getMessage());
}
?>
 
</body>
</html>