<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="WebEstate.contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Contact Us</title>
    <link href="/css/style.css" rel="stylesheet" />

    <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>

    <script type="text/javascript">

        $("document").ready(function () {

            $("header nav ul li.konular-wrap").mouseover(function () {
                $("header nav ul li.konular-wrap .konular").css("display", "block")
            })
            $("header nav ul li.konular-wrap").mouseleave(function () {
                $("header nav ul li.konular-wrap .konular").css("display", "none")
            })

        })

    </script>
    <style>
        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=button] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            input[type=button]:hover {
                background-color: #45a049;
            }

        .asd {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="wrapper" style="margin-top: 1%;">

                <header>
                    <div class="logo">
                        <a href="#">
                            <img src="/images/logo.png" alt="" /></a>
                    </div>

                    <nav>

                        <ul>
                            <li>
                                <a href="default.aspx">Home</a>
                            </li>
                            <li class="konular-wrap">
                                <a href="#">Pages</a>
                                <div class="konular">
                                    <ul>

                                        <li>For Sale</li>

                                        <li>For Rent</li>

                                    </ul>
                                </div>
                            </li>

                            <li>
                                <a href="aboutus.aspx">About Us</a>
                            </li>

                            <li>
                                <a href="contactus.aspx">Contact Us</a>
                            </li>
                        </ul>

                    </nav>

                    <div class="arama-wrap">

                        <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server" placeholder="arama" />

                        <asp:Button ID="btnArama" CssClass="btnArama" Text="Ara" runat="server" style="width:25%; margin-left:1%;" />
                    </div>

                </header>

                <div class="banner">
                    Real Estate World
                </div>
            </div>
        </div>

        <div class="icerik" style="margin-left: 18.5%; width: 63.1%; background-color: #d5d5d5;">



            <div class="liste">
                <h3 style="margin-left:35%; margin-bottom:1%;"></h3>

                <div class="asd">
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    <asp:TextBox ID="txtname" runat="server" placeholder="Your name.." ></asp:TextBox>
                    
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtemail" runat="server" placeholder="Your email.." ></asp:TextBox>
                    
                    <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>
                    <asp:TextBox ID="txtsubject" runat="server" placeholder="Subject" ></asp:TextBox>
                    
                    <asp:Label ID="Label4" runat="server" Text="Message"></asp:Label>
                    <asp:TextBox ID="txtmesssage" runat="server"  placeholder="Your Message.." ></asp:TextBox>

                    <asp:Button ID="Button1" runat="server" Text="Submit"  />
                    
                </div>

                
            </div>
        </div>




        

        <footer>
         &copy   IKU CSE made by Ugur Eren Temel - Mucahit Tozal @ 2018
        </footer>

    </form>
</body>
</html>