<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="WebEstate.aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div style="    background-color: #d5d5d5;
">
                <div id="wrapper" style="margin-top: 1%;   background-color: #d5d5d5;">

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

                            <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server" placeholder="Search" />

                            <asp:Button ID="btnArama" CssClass="btnArama" Text="Search" runat="server" Style="width: 19%;" />
                        </div>

                    </header>

                    <div class="banner">
                        Real Estate World
                    </div>
                </div>
            </div>

            <div class="icerik" style="margin-left: 18.5%; width: 63.1%; background-color: #d5d5d5;">



                <div class="liste">
                    <div>
                        <div>
                            <h1 style="margin-left: 38%;">Hakkımızda</h1>
                        </div>
                        <div>
                            <p style="margin-left: 5%;word-wrap:break-word; ">2005 yılında kurulan RE/MAX, bugün dünyada en çok gayrimenkul satışı gerçekleştiren kurumudur. 97 Ülkede, yaklaşık 6.500 Civarı Franchise 0fisi ve 100.000'e yakın Gayrimenkul Danışmanı bulunmaktadır. Ülkemizde Tek Şirketler Grubu tarafından kurulan REAL ESTATE Türkiye Genel Müdürlük, Türkiye ve KKTC'yi kapsamaktadır.REAL ESTATE Türkiye ofisi ve gayrimenkul danışmanı tarafından yaygın modern ofisleri ile profesyonel gayimenkul pazarlama ve danışmanlık hizmeti vermektedir. 2010 yılından bugüne ülkemizde faaliyette bulunan REAL ESTATE, ülkemizde yeni iş kurmak isteyenlere muhteşem fırsatlar sunmaktadır. </p>
                            <h1 style="margin-left: 38%;">Vizyon</h1>
                            <p style="margin-left: 22%;">
                                Her ailenin RE/MAX’li bir Gayrimenkul Danışmanı Olmasıdır.
                            </p>

                            <h1 style="margin-left: 38%;">Misyon</h1>
                            <p style="margin-left: 30%;">
                                Girişimcilikte öncü olarak çığır açmak.
                            </p>
                        </div>

                    </div>
                    <div style="margin-top: 2%;">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6023.266824487575!2d28.837803129333498!3d40.98950742530301!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x658a212e6b4359b5!2zVC5DLiDEsHN0YW5idWwgS8O8bHTDvHIgw5xuaXZlcnNpdGVzaQ!5e0!3m2!1str!2str!4v1544382084034" width="600" height="280" frameborder="0" style="border: 0; width: 100%;" allowfullscreen></iframe>
                    </div>

                </div>
            </div>




            <div>

                <footer style="    background-color: #d5d5d5;
">
                   &copy IKU CSE made by  Ugur Eren Temel - Mucahit Tozal @ 2018 
                </footer>
            </div>


        </div>
    </form>
</body>
</html