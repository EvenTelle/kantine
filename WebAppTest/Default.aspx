<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>


 body{
    margin: 0;
    height: 1000hv;
    
}
        h1 {
            font-family: Arial, Helvetica, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        meny{
            display: flex;
            align-items: center;
            justify-content: center;
}


        section {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: blue;
            height: 400px;
            width: 100%;
            margin: 30px;
        }

        article {
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: white;
            height: 150px;
            width: 200px;
            margin-top: 10px;
        }

        article img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
        }

        p {
            margin: 10px 0 0 0;
            color: white;
            font-family: Arial, sans-serif;
        }

        table {
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
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">

        <h1>Meny</h1>

        <meny>

            <section>
                <article>

                    <img src="img/mandag - Copy.jpg">

                </article>
                <p>mandag</p>

                <p>Pris: <asp:Label ID="LabelMan" runat="server" Text=""></asp:Label></p>

            </section>

            <section>
                <article>
                    <img src="img/tirsdag">
                </article>
                <p>tirsdag</p>
            </section>

            <section>
                <article>
                    <img src="img/ondstad.jpg">
                </article>
                <p>onsdag</p>
            </section>

            <section>
                <article>
                    <img src="img/torsdag - Copy.jfif">
                </article>
                <p>torsdag</p>
            </section>

            <section>
                <article>
                    <img src="img/fredag.webp">
                </article>
                <p>fredag</p>
            </section>

        </meny>



        
        <asp:Label ID="LabelTir" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="LabelOns" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="LabelTor" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="LabelFre" runat="server" Text=""></asp:Label>
        <br />

        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
    <br />

</body>
</html>
