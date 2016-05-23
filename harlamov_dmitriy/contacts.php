<!DOCTYPE HTML>
<html>
<head>

	<title>Контакты</title>
</head>
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<body>
<h1 align='center'>Контакты</h1>

<?php
$connection = mysql_connect('localhost','root',''); /*Подключаемся к базе данных, с параметрами входа*/
$db = mysql_select_db('torg_set'); /*Выбираем базу данных*/
mysql_set_charset('utf8'); /*Выбираем кодировку*/
if (!$connection || !$db) /*Проверяем подключение к базе данных*/
{
	exit(mysql_error());
	echo error;
}
$result = mysql_query("SELECT * FROM info"); /*Выборка данных*/

mysql_close(); /*Закрываем соединение*/

while($row = mysql_fetch_array($result)) /*Цикл с выводом данных*/
{?>
<h2 align="left">Телефон: <?php echo $row['phone'].'<br>' ?></h2>
<h3 align="left">Адрес: <?php echo $row['adress'].'<br>'?></h3>
<?php }?>
<h3><a href = 'http://localhost/harlamov_dmitriy/index.php'>Главная</a></h3>
<footer> <!-- Подвал сайта -->
   		&copy; Harlamov design 2016
</footer>



</body>
</html>