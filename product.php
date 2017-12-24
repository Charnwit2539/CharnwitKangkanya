<?php
include 'supplement.php';
?>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product List</title>
<link rel="stylesheet" href="jquery-ui-1.12.1.custom/jquery-ui.min.css">

<script src="jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>
<script src="jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
</head>

<body>
<table width="600" border="1" align="center" bordercolor="#666666">
  <tr>
    <td width="91" align="center" bgcolor="#CCCCCC"><strong>ภาพ</strong></td>
    <td width="200" align="center" bgcolor="#CCCCCC"><strong>ยี่ห้อรถ</strong></td>
    <td width="44" align="center" bgcolor="#CCCCCC"><strong>ราคา<br>(ต่อวัน)</strong></td>
    <td width="100" align="center" bgcolor="#CCCCCC"><strong>รายละเอียดการเช่า</strong></td>
  </tr>
  
  
  <?php
  //connect db
  include("connect.php");
  $sql = "select * from product order by p_id";  //เรียกข้อมูลมาแสดงทั้งหมด
  $result = mysqli_query($conn, $sql);
  while($row = mysqli_fetch_array($result))
  { 
  	echo "<tr>";
	  echo "<td align='center' bgcolor='#CCCCCC'><img src='img/" . $row["p_pic"] ." ' width='80'></td>";
	  echo "<td align='left' bgcolor='#CCCCCC'>" . $row["p_name"] . "</td>";
    echo "<td align='center' bgcolor='#CCCCCC'>" .number_format($row["p_price"],2). "</td>";
    echo "<td align='center' bgcolor='#CCCCCC'><a class='p_id'>คลิก</a><input type='hidden' value='$row[p_id]'></td>";
	  echo "</tr>";
  }
  ?>
  <!-- href='product_detail.php?p_id=$row[p_id]' -->
  <div id="dialog" style="display:none">
    <img id="imgP" style="width:270px;height:250px">
    <p id="tileP"></p>
    <pre id="detP"></pre>
    <p id="priceP"></p>  
    <input type="button" value="เพิ่ม" id="add">
  </div>

  <script> 
      $('.p_id').click(function(){
          var value = $(this).next().val();
          $.ajax({
              url:"getdescript.php",
              type:"POST",
              dataType:"JSON",
              data:{"ID":value},
              success:function(e){
                  $('#imgP').attr({"src":"img/"+e.url});
                  $('#titleP').html(e.title);
                  $('#detP').html(e.det);
                  $('#priceP').html(+e.price+" บาท");
              }
          });
          $('#add').click(function(){
            location.href = "cart.php?p_id="+value+"&act="+"add";
          });
          $('#dialog').dialog({"title":"Description"});
      });
  </script>
</table>

</body>
</html>