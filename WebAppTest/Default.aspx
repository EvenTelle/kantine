<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kantine</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
        }
        

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: black;
        }

        meny {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        section {
            display: flex;
            flex-direction: column;
            align-items: center;
            background: white;
            border: 1px solid black;
            height: 400px;
            width: 100%;
            margin: 30px;
            border-radius: 20px;
        }

        article {
            display: flex;
            justify-content: center;
            align-items: center;
            background: green;
            height: 150px;
            width: 200px;
            margin-top: 10px;
            border-radius: 20px;
        }

            article img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }


        p {
            margin: 10px 0 0;
            color: black;
            font-family: Arial, sans-serif;
        }

        .alleVarer {
        }


        /*table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        th {
            background-color: #04AA6D;
            color: white; 
        }*/
    </style>


</head>
<body>
    <form id="form1" runat="server">


        <h1>Meny</h1>

        <meny>

            <section>
                <article>

                    <!--<img src="img/mandag - Copy.jpg">-->

                </article>
                <p>Mandag</p>

                <p>Pris:<asp:Label ID="LabelManPris" runat="server" Text=""></asp:Label>
                </p>

            </section>

            <section>
                <article>
                    <!-- <img src="img/tirsdag">-->
                </article>
                <p>Tirsdag</p>

                <p>
                    Pris:
                    <asp:Label ID="LabelTirPris" runat="server" Text=""></asp:Label>
                </p>

            </section>

            <section>
                <article>
                    <!--<img src="img/ondstad.jpg">-->
                </article>
                <p>Onsdag</p>

                <p>Pris:<asp:Label ID="LabelOnsPris" runat="server" Text=""></asp:Label></p>
                <br />

            </section>

            <section>
                <article>
                    <!--<img src="img/torsdag - Copy.jfif">-->
                </article>
                <p>Torsdag</p>

                <p>Pris:<asp:Label ID="LabelTorPris" runat="server" Text=""></asp:Label></p>
                <br />

            </section>

            <section>
                <article>
                    <!-- <img src="img/fredag.webp">-->
                </article>
                <p>Fredag</p>

                <p>Pris:<asp:Label ID="LabelFrePris" runat="server" Text=""></asp:Label></p>
                <br />

            </section>

        </meny>

        <meny>
            <section>

            </section>
        </meny>

    </form>
    <br />

</body>
</html>
