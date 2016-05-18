<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="chtoGdeKogda.frmHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Что? Где? Когда?</title>
    <script type="text/javascript" src="jquery-2.1.4.min.js"></script>
     <script type="text/javascript" src="bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="bootstrap.css"/>
    <link href="navbar.css" rel="stylesheet" />
    
<script>
    $(document).ready(function () {
        $('.button').on('click', function () {
            $('.content').toggleClass('isOpen');
        });
    });

    </script>
</head>
<body>
    <form id="form1" runat="server">
     
   
<div class='wrapper'>
  <div class='sidebar'>
    <div class='title'>
      Меню
    </div>
    <ul class='nav'>
      <li>
          <asp:Image ID="Image1" runat="server" ImageUrl="sova.jpg" Width="220px" Height="250px"/>
      </li>  
      <li>
        <a class='active'>Домашняя Страница</a>
      </li>
      <li>
        <a>Статистика</a>
      </li>
      <li>
        <a>Анонс</a>
      </li>
      <li>
        <a>Календарь</a>
      </li>
      <li>
        <a>Спонсоры</a>
      </li>
      <li>
        <a>Карта</a>
      </li>
      <li>
        <a href="http://www.chtogdekogda.org/index.aspx">Послать нам вопрос</a>
      </li>
       
    </ul>
  </div>
  <div class='content'>
    <a class='button' style="font-size: 20px;"> Меню</a>
    
        <div class="col-md-12 panel-body">
            <p style="font-size: 20px; line-height: 25px; ">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
             Donec consequat vitae sem ac dictum. Nullam eget tempor diam.
             Pellentesque pellentesque erat sit amet aliquam convallis.
             Nullam sodales neque vitae magna rhoncus, sit amet mollis leo suscipit.
             Aliquam erat volutpat. Mauris nec diam enim. Suspendisse sodales purus quam, 
            eu dignissim risus varius nec. Donec porta varius iaculis. Ut ornare lacinia velit sit amet auctor. 
            Nunc egestas leo ante, sed vestibulum ligula cursus non. 
            Maecenas sodales arcu vel quam viverra, vel scelerisque neque lobortis. 
            Suspendisse sollicitudin, arcu sit amet commodo ultricies, 
            nulla lacus accumsan arcu, nec scelerisque turpis felis quis neque. Duis sed faucibus felis. 
            Morbi venenatis tellus nec justo dictum euismod sed in ligula. 
            Quisque mi nunc, malesuada at felis non, accumsan commodo massa. 
            Maecenas ac dolor ac nisi dignissim pellentesque. 
            Nunc vulputate aliquam suscipit. 
            Morbi convallis ac lorem in aliquam. Sed dictum varius leo, sit amet congue metus cursus sit amet. 
            Maecenas vehicula placerat scelerisque.
             Nullam congue egestas est nec fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus.
                <br />
                <a class="test">

                </a>
                <br />
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            </p>

            </div>
</div>
            </div>
    </form>


</body>
</html>
