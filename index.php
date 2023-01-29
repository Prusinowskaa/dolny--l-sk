<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>maps</title>
  <link rel="stylesheet" href="style.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
</head>
<body>
  
  <nav class="navbar">
    <div class="container">
      <a href="index.php?page=main" class="navbar-brand">Dolno Śląsk</a>

      <div class="navbar-wrap">
        <ul class="navbar-menu">
          <li><a href="index.php?page=add">Add</a></li>
          <li><a href="index.php?page=info">Info</a></li>
          <li><a href="index.php?page=contacts">Contacts</a></li>
        </ul>

        <a href="index.php?page=callback" class="callback">Callback</a>
      </div>
    </div>
  </nav>

  <DIV id="tresc">
		<?php
		if (!isset($_GET["page"]))
		 {$plik = 'main';}
		else
		 {$plik = $_GET["page"];}
		$roz = '.php';
		include("$plik$roz");
		?>
	</DIV>
  
</body>
</html>