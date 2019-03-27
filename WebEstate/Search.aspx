<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebEstate.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    

    <title>Real Estate</title>
    <link href="css/style.css" rel="stylesheet" />
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

    <style type="text/css">
        .liste {
            height: 332px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">

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

                    <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server" placeholder="search" />

                    <asp:Button ID="btnArama" CssClass="btnArama" Text="Search" runat="server" />
                </div>

            </header>

            <div class="search">
                
                <div class="icerik">
            <div class="ust" >
                Find Your Dream Place
            </div>


            <div class="liste">

                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox1">
                    <asp:ListItem Value="0">Select a Sale/Rent</asp:ListItem>
                    <asp:ListItem Value="1">Sale</asp:ListItem>
                    <asp:ListItem Value="2">Rent</asp:ListItem>
                </asp:DropDownList>

                <br />

                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox1">

                    <asp:ListItem Value="0">Select a District </asp:ListItem>
                    <asp:ListItem Value="1">Atakoy</asp:ListItem>
                    <asp:ListItem Value="2">Bahcelievler</asp:ListItem>
                    <asp:ListItem Value="3">Bakirkoy</asp:ListItem>
                    <asp:ListItem Value="4">Zeytinburnu</asp:ListItem>
                    <asp:ListItem Value="5">Fatih</asp:ListItem>
                    <asp:ListItem Value="6">Taksim</asp:ListItem>

                </asp:DropDownList>

                <br />
                <br />

                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1" placeholder="search" ></asp:TextBox>

                <br />
                <br />

                

                <asp:GridView ID="View1" runat="server"
                    AutoGenerateColumns="False"
                    GridLines="None"
                    AllowPaging="true"
                    CssClass="Grid"
                    PagerStyle-CssClass="pgr"
                    AlternatingRowStyle-CssClass="alt" OnSelectedIndexChanged="View1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="rentORsell" HeaderText="STATUE" />
                        <asp:BoundField DataField="bedrooms" HeaderText="BEDROOM" />
                        <asp:BoundField DataField="bathrooms" HeaderText="BATHROOM" />
                        <asp:BoundField DataField="description" HeaderText="DESCRIPTION" />
                        <asp:BoundField DataField="city_area" HeaderText="CITY" />
                        <asp:BoundField DataField="price" HeaderText="PRICE" />
                        <asp:BoundField DataField="creation_date" HeaderText="DATE" />
                    </Columns>
                </asp:GridView>

                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="button1" />

            </div>


                </div>






        </div>
            
    </form>
</body>
</html>
