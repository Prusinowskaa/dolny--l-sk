<!doctype html>
<html lang="ru">
<head>
<title>Dolny Śląsk</title> 
	<meta charset="UTF-8"> 
	<meta name="description" content="Strona poświęcona regionowi Dolnego Śląska"> 
	<style> 
		body { 
			font-family: Arial, sans-serif; 
			margin: 0; 
			padding: 0; 
		} 
		header { 
			background-color: #4CAF50; 
			color: white; 
			padding: 1em; 
			text-align: center; 
		} 
		nav { 
			background-color: #333; 
			color: white; 
			float: left; 
			width: 20%; 
      height: 80%;
			padding: 1em; 
		} 
		nav a { 
			color: white; 
			text-decoration: none; 
			display: block; 
			padding: 1em; 
			transition: background-color 0.5s ease; 
		} 
		nav a:hover { 
			background-color: #4CAF50; 
		} 
		nav ul { 
			list-style-type: none; 
			margin: 0; 
			padding: 0; 
		} 
		main { 
			background-color: #f2f2f2; 
			float: left; 
			padding: 1em; 
			width: 60%; 
		} 
		footer { 
			clear: both; 
			background-color: #333; 
			color: white; 
			padding: 1em; 
			text-align: center; 
		} 
      
	</style> 
</head>
<body>
<header> 
		<h1>Dolny Śląsk</h1> 
	</header> 
	<nav> 
		<ul> 
			<li><a href="index.php">Strona główna </a></li> 
			<li><a href="Historia.php">Historia</a></li> 
            <li><a href="atrakcje.php">Atrakcje turystyczne</a></li> 
			<li><a href="kultura.php">Kultura</a></li>
			<li><a href="add.php">Dodaj Atrakcje</a></li>
		</ul> 
	</nav> 
	<main> 
  <section id="atrakcje"> 
			<h2>Dolny Śląsk</h2> 
      <h3>Dodawanie</h3>
  <?php
    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db_name = 'wtf';
    $link = mysqli_connect($host, $user, $pass, $db_name);

    if (!$link) {
      echo 'Nie można połączyć się z bazą danych. Kod błędu: ' . mysqli_connect_errno() . ', błąd: ' . mysqli_connect_error();
      exit;
    }

    if (isset($_POST["miasto"])) {
        $sql = mysqli_query($link, "INSERT INTO `test` (`miasto`, `adres`,`nrtel`,`cena`,`opis`,`godod`) VALUES ('{$_POST['miasto']}', '{$_POST['adres']}', '{$_POST['nrtel']}', '{$_POST['cena']}', '{$_POST['opis']}', '{$_POST['godod']}')");

      if ($sql) {
        echo '<p>Z powodzeniem!</p>';
      } else {
        echo '<p>Wystąpił błąd: ' . mysqli_error($link) . '</p>';
      }
    }

    if (isset($_GET['red'])) {
      $sql = mysqli_query($link, "SELECT `ID`, `miasto`, `adres`, `nrtel`, `cena`, `opis`, `godod` FROM `test` WHERE `ID`={$_GET['red']}");
      $product = mysqli_fetch_array($sql);
    }
  ?>
  <form action="" method="post">
    <table> 
      <tr>
        <td>Miasto:</td>
        <td><input type="text" name="miasto" value="<?= isset($_GET['red']) ? $product['miasto'] : ''; ?>"></td>
      </tr>
      <tr>
        <td>Adres:</td>
        <td><input type="text" name="adres" value="<?= isset($_GET['red']) ? $product['adres'] : ''; ?>"></td>
      </tr>
      <tr>
        <td>Numer telefonu:</td>
        <td><input type="text" name="nrtel" value="<?= isset($_GET['red']) ? $product['nrtel'] : ''; ?>"></td>
      </tr>
      <tr>
        <td>Cena:</td>
        <td><input type="text" name="cena" value="<?= isset($_GET['red']) ? $product['cena'] : ''; ?>"></td>
      </tr>
      <tr>
        <td>Opis:</td>
        <td><input type="text" name="opis" value="<?= isset($_GET['red']) ? $product['opis'] : ''; ?>"></td>
      </tr>
      <tr>
        <td>Godziny:</td>
        <td><input type="text" name="godod" value="<?= isset($_GET['red']) ? $product['godod'] : ''; ?>"></td>
      </tr>
      <tr>
        <td><button class="glow-on-hover" type="button"><input class="b" type="submit" value="dodaj"></button></td>
        <td><button class="glow-on-hover" type="button"><input class="b" type="reset" value="usun"></button></td>
      </tr>
    </table>
  </form>
  <?php
  $sql = mysqli_query($link, 'SELECT `ID`, `miasto`, `adres`, `nrtel`, `cena`, `opis`, `godod` FROM `test`');
  while ($result = mysqli_fetch_array($sql)) {
    echo "<p>{$result['ID']}) {$result['miasto']} - {$result['adres']} | Nrtel: {$result['nrtel']}, cena: {$result['cena']},{$result['opis']} - {$result['godod']} </p>";
  }
  ?>
  </section> 
</main>
</body>
</html>