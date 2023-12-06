﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web_card.aspx.cs" Inherits="Bootstrap_Card.web_card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> 
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,300,600);
* {
  box-sizing: border-box;
}
*:after {
  box-sizing: border-box;
}

body, html {
  min-height: 100%;
}

body {
  background-color: #ECF0F1;
  font-family: "Open Sans", sans-serif;
}

img {
  max-width: 100%;
  width: 100%;
  height: auto;
}

a {
  transition: all 300ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}
a:hover {
  transition: all 300ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

#wrapper {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  float: left;
}

.card {
  background-image: linear-gradient(0deg, #2C3E50 0%, #16A085 100%);
  width: 350px;
  height: 350px;
  margin: 20px;
  position: relative;
  overflow: hidden;
}

.card-image {
  height: 350px;
  -o-object-fit: cover;
     object-fit: cover;
  transform: translate(0, 0);
  transition: all 400ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.card-meta {
  font-size: 0.6875em;
  text-transform: uppercase;
  letter-spacing: 1px;
}
.card-meta:before {
  content: "";
  height: 1px;
  width: 30px;
  background-color: #fff;
  position: relative;
  display: block;
  margin-bottom: 10px;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
  opacity: 0;
  transform: translate(0, -10px);
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.card-text {
  color: #FFF;
  background-color: rgba(17, 17, 17, 0.65);
  position: absolute;
  padding: 20px;
  z-index: 10;
  height: 100%;
  display: flex;
  flex-wrap: wrap;
  align-content: flex-end;
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.card-title {
  margin: 8px 0;
  font-weight: 300;
  font-size: 1.875em;
}

.card a:hover .card-text {
  background-color: rgba(17, 17, 17, 0.86);
}
.card a:hover .card-meta:before {
  transform: translate(0, 0);
  opacity: 1;
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}
.card a:hover .card-image {
  transform: translate(20px, 0);
  transition: all 400ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.line {
  width: 93%;
  height: 3px;
  background-color: #333;
 }

h1 {
  margin-right: 5px;
  font: bold;
  font-size: 20px;
}

#line-beside {
  display: flex;
  align-items: baseline;
  justify-content: center;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="line-beside">
            <h1>MAIS DESTAQUES</h1>
            <div class="line"></div>
        </div>
        <div>
            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/noticias.xml" TransformSource="~/card.xslt"></asp:Xml>
        </div>
    </form>
</body>
</html>
