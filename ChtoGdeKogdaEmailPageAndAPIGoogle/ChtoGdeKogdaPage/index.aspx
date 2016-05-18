<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ChtoGdeKogdaPage.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Что? Где? Когда?</title>
    <link rel="shortcut icon" type="image/png" href="http://wildportal.ru/38_sova/3.jpg" />
    <script src="jquery-2.1.4.min.js"></script>
    <script src="bootstrap.js"></script>
    <link href="bootstrap.css" rel="stylesheet" />

</head>
<body>
    <form id="index" runat="server">
        <img src="http://wildportal.ru/38_sova/3.jpg" alt="constraction" style="width: 304px; height: 228px;" />
        &nbsp;<h1>Страница разрабатывается. Но вы можете прислать нам вопрос.</h1>
        <div class="form-group col-md-12 ">
            <div class="col-md-12">
                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="youname@gmail.com"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEmail" runat="server" ErrorMessage="*Введите Email" ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-12">
                <asp:Label ID="lblTeamName" runat="server" Text="Название Команды" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtCName" runat="server" CssClass="form-control" placeholder="Название Команды"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtCName" runat="server" ErrorMessage="*Введите Название Команды" ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-12">
                <asp:Label ID="lblAvtor" runat="server" Text="Имя и Фамилия Автора" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtAvtor" runat="server" CssClass="form-control" placeholder="Имя и Фамилия Автора"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtAvtor" runat="server" ErrorMessage="*Введите Имя Авора" ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-12">
                <asp:Label ID="lblVopros" runat="server" Text="Вопрос" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtVopros" runat="server" placeholder="Ваш Вопрос Здесь" CssClass="form-control" TextMode="MultiLine" Height="287px" Width="1040px" Style="resize: none;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtVopros" runat="server" ErrorMessage="*Введите Вопрос" ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-12">
                <asp:Label ID="lblOtvet" runat="server" Text="Ответ" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtOtvet" runat="server" placeholder="Ответ Здесь" CssClass="form-control" Height="287px" TextMode="MultiLine" Width="1040px" Style="resize: none;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtOtvet" runat="server" ErrorMessage="*Введите Ответ" ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-12">
                <asp:Label ID="lblKoment" runat="server" Text="Комментарий" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtKoment" runat="server" placeholder="Ваш Комментарий и Источник Здесь" CssClass="form-control" TextMode="MultiLine" Height="287px" Width="1040px" Style="resize: none;"></asp:TextBox>
            </div>
            <div class="panel-body col-md-12">
                <asp:Button ID="btnSubmit" runat="server" class="btn btn-success" Text="Отравить" data-toggle="modal" data-target="#myModal" OnClick="btnSubmit_Click" ValidationGroup="text" />
                <br />
                <br />
                <br />
                <br />
            </div>

            <div class="panel-body panel-footer navbar-fixed-bottom text-center col-md-12">
                <p>Developed by: Michael Minkovsky. Contact information: <a href="chto.gde.kogda.phila@gmail.com">Send EMail </a>Copyright © 2016 Moisha inc. All rights reserved. </p>
            </div>
        </div>


    </form>
</body>
</html>
