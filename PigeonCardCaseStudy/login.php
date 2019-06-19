<?php 
include'db.php';
if(isset($_GET['username']) && isset($_GET['password'])){
 
    $username = $_GET['username'];
    $password = $_GET['password'];
    $sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $query = mysqli_query($conn,$sql);
    if($query -> num_rows > 0){
 while($row = $query->fetch_row()){
                header("Location:dashboard.html");
            }  
    }else{
  echo "<script>
            alert('Invalid login information');
            window.location='index.html';
            </script>";
    }
    
}
?>