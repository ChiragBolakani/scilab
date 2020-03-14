<?php
$conn = mysqli_connect("localhost","root","");
if(!$conn)
{
die('Not connected'.mysqli_error())."<br>";
}
else
{
echo "Connected"."<br>";
}

//Step2:-Creating a database
$sql = "create database students ";
if(mysqli_query($conn,$sql))
{ echo " DB created"."<br>"; }
else
{
die('could not create Database'.mysqli_error($conn))."<br>";
}

//Step3:-Creating a table
$c = "create table student(roll int not null , name varchar(20) not null , grade
varchar(1) not null)";
if(mysqli_query($conn,$c))
{ echo "Table Created"; }
else{
echo "Table not Created".mysqli_error($conn)."<br>"; }

//Step4:-Inserting a table
$n1 = "insert into student(roll,name,grade)
value(1,'Lucifer','A')";
if(mysqli_query($conn,$n1))
{ echo "Column inserted"."<br>"; }
else{ echo "Not inserted".mysqli_error($conn); }
$n1 = "insert into student(roll,name,grade)
value(2,'Jack','B')";
if(mysqli_query($conn,$n1))
{ echo "Column inserted"."<br>"; }
else{ echo "Not inserted".mysqli_error($conn); }
$n1 = "insert into student(roll,name,grade)
value(2,'Jane','B')";
if(mysqli_query($conn,$n1))
{ echo "Column inserted"."<br>"; }
else{ echo "Not inserted".mysqli_error($conn)."<br>"; }
