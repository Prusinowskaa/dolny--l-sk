<!doctype html>
<html lang="ru">
<head>
</head>
<body>
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
        <td>Nazwa kraju:</td>
        <td><input type="text" name="miasto" value="<?= isset($_GET['red']) ? $product['miasto'] : ''; ?>"></td>
      </tr>
      <tr>
        <td>Adres:</td>
        <td><input type="text" name="adres" value="<?= isset($_GET['red']) ? $product['adres'] : ''; ?>"></td>
      </tr>
      <tr>
        <td>Nrtel:</td>
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
        <td>Godod:</td>
        <td><input type="text" name="godod" value="<?= isset($_GET['red']) ? $product['godod'] : ''; ?>"></td>
      </tr>
      <tr>
        <td><button class="glow-on-hover" type="button"><input class="b" type="submit" value="fwerfwe"></button></td>
      </tr>
    </table>
  </form>
  <?php
  $sql = mysqli_query($link, 'SELECT `ID`, `miasto`, `adres`, `nrtel`, `cena`, `opis`, `godod` FROM `test`');
  while ($result = mysqli_fetch_array($sql)) {
    echo "<p>{$result['ID']}) {$result['miasto']} - {$result['adres']} | Nrtel: {$result['nrtel']}, cena: {$result['cena']},{$result['opis']} - {$result['godod']} </p>";
  }
  ?>
</body>
</html>