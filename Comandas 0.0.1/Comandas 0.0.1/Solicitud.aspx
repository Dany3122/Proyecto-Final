<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solicitud.aspx.cs" Inherits="Comandas_0._0._1.index" %>

<%@ Register assembly="DevExpress.Web.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Apartado de pedidos</title>
</head>
<body>
    <header class="hdr">
        <h1>
            Pedidos Solisitados
        </h1>
    </header>
    <form id="form1" runat="server">
        <div>

            <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Idorden">
            <SettingsExport ExportSelectedCardsOnly="False"></SettingsExport>

                <Columns>
                    <dx:CardViewTextColumn FieldName="Idorden" ReadOnly="True" Visible="False">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="Nombres_Clnt" VisibleIndex="0">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="ApePaterno" VisibleIndex="1">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="Telefono" VisibleIndex="2">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="Orden" VisibleIndex="3">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="Direccion" VisibleIndex="4">
                    </dx:CardViewTextColumn>
                </Columns>

<StylesExport>
<Card BorderSize="1" BorderSides="All"></Card>

<Group BorderSize="1" BorderSides="All"></Group>

<TabbedGroup BorderSize="1" BorderSides="All"></TabbedGroup>

<Tab BorderSize="1"></Tab>
</StylesExport>
            </dx:ASPxCardView>
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
</body>
</html>
