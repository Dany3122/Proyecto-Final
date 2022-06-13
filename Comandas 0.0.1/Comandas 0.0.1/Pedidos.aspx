<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="Comandas_0._0._1.Pedidos" %>

<%@ Register assembly="DevExpress.Web.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hacer Pedido</title>
    <link rel="stylesheet" type="text/css" href="css/pedidos.css" />
</head>
<body>

    <header id="main-header">
        <a href="inicio.html"><img class="lg" src="img/Logo.png" tittle="Inicio"/></a>
        <center>
            <a id="logo-header" href="#">
                <span class="site-name">Hacer pedidos</span><br />
                <span class="site-desc"> Pedidos / Ordenes </span>
            </a>
        </center>
    </header>

    <nav class="br">
        <div>
            <h1></h1>
        </div>
    </nav>

    <nav class="br2">
        <div>
            <h1></h1>
        </div>
    </nav><br />

    <center>
    <div class="Sub_T">
            <h1>Ordenes</h1>
    </div>
    </center>
    <br />
    <br />

    <center>
        <section>
            <form id="form1" runat="server">
                <div>

                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Idorden" Theme="iOS">
                        <Columns>
                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="Idorden" ReadOnly="True" VisibleIndex="1">
                                <EditFormSettings Visible="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Nombres_Clnt" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ApePaterno" VisibleIndex="3">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="4">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Orden" VisibleIndex="5">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Direccion" VisibleIndex="6">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:ASPxGridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CMNDS_DBConnectionString %>" DeleteCommand="DELETE FROM [Orden] WHERE [Idorden] = @original_Idorden AND (([Nombres_Clnt] = @original_Nombres_Clnt) OR ([Nombres_Clnt] IS NULL AND @original_Nombres_Clnt IS NULL)) AND (([ApePaterno] = @original_ApePaterno) OR ([ApePaterno] IS NULL AND @original_ApePaterno IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Orden] = @original_Orden) OR ([Orden] IS NULL AND @original_Orden IS NULL)) AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL))" InsertCommand="INSERT INTO [Orden] ([Nombres_Clnt], [ApePaterno], [Telefono], [Orden], [Direccion]) VALUES (@Nombres_Clnt, @ApePaterno, @Telefono, @Orden, @Direccion)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Orden]" UpdateCommand="UPDATE [Orden] SET [Nombres_Clnt] = @Nombres_Clnt, [ApePaterno] = @ApePaterno, [Telefono] = @Telefono, [Orden] = @Orden, [Direccion] = @Direccion WHERE [Idorden] = @original_Idorden AND (([Nombres_Clnt] = @original_Nombres_Clnt) OR ([Nombres_Clnt] IS NULL AND @original_Nombres_Clnt IS NULL)) AND (([ApePaterno] = @original_ApePaterno) OR ([ApePaterno] IS NULL AND @original_ApePaterno IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Orden] = @original_Orden) OR ([Orden] IS NULL AND @original_Orden IS NULL)) AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Idorden" Type="Int32" />
                            <asp:Parameter Name="original_Nombres_Clnt" Type="String" />
                            <asp:Parameter Name="original_ApePaterno" Type="String" />
                            <asp:Parameter Name="original_Telefono" Type="String" />
                            <asp:Parameter Name="original_Orden" Type="String" />
                            <asp:Parameter Name="original_Direccion" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombres_Clnt" Type="String" />
                            <asp:Parameter Name="ApePaterno" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Orden" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombres_Clnt" Type="String" />
                            <asp:Parameter Name="ApePaterno" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Orden" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="original_Idorden" Type="Int32" />
                            <asp:Parameter Name="original_Nombres_Clnt" Type="String" />
                            <asp:Parameter Name="original_ApePaterno" Type="String" />
                            <asp:Parameter Name="original_Telefono" Type="String" />
                            <asp:Parameter Name="original_Orden" Type="String" />
                            <asp:Parameter Name="original_Direccion" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>
            </form>
        </section>
    </center>
    <br />

    <footer>
        <center>
        <table>
            <tr>
                <td>
                    <a href="index.html"><div class="Mnn"><center><h2 class="tx">Atras</h2><img class="bck" src="IMG/atras.png" title="Atras"/></center></div></a>
                </td>
            </tr>
        </table>
        </center>
    </footer>

   

</body>
</html>
