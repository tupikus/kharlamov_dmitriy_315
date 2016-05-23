 <!DOCTYPE HTML>
<html>
<head>

	<title>Садовые цветы</title>
</head>
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<body>


<?php
$connection = mysql_connect('localhost','root',''); /*Подключаемся к базе данных, с параметрами входа*/
$db = mysql_select_db('torg_set'); /*Выбираем базу данных*/
mysql_set_charset('utf8'); /*Выбираем кодировку*/
if (!$connection || !$db) /*Проверяем подключение к базе данных*/
{
	exit(mysql_error()); 
	echo Error;
}
$result = mysql_query("SELECT * FROM sad_cvet"); /*Выборка данных*/

mysql_close(); /*Закрываем соединение*/
 
while($row = mysql_fetch_array($result)) /*Цикл с выводом данных*/
{?>
<h1 align="left">Название: <?php echo $row['nazv_rast'].'<br>' ?></h1>
<h2 align="left">Описание: <?php echo $row['tip_rast'].'<br>'?></h2>
<h3> Цена: <?php echo $row['price'].'<br>'?></h3>
<hr />
<?php }?>
<ul class="hr" align='center'>
<li><a href = 'http://localhost/harlamov_dmitriy/index.php'>Главная</a></li>
<li><a href = 'http://localhost/harlamov_dmitriy/categorii2.0.php'>Категории</a></li>
</ul>
<p class="vid">
			&nbsp
</p>
<footer> <!-- Подвал сайта -->
   		&copy; Harlamov design 2016
</footer>



</body>
</html>