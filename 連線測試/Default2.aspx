<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="負責人,負責人編號,代號" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="負責人編號" HeaderText="負責人編號" SortExpression="負責人編號" />
                <asp:BoundField DataField="負責人" HeaderText="負責人" ReadOnly="True" SortExpression="負責人" />
                <asp:BoundField DataField="代號" HeaderText="代號" SortExpression="代號" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/MCH醫院醫療儀器管理公告版.mdb" DeleteCommand="DELETE FROM [負責人] WHERE (([負責人] = ?) OR ([負責人] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [負責人] ([負責人編號], [負責人], [代號]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [負責人]" UpdateCommand="UPDATE [負責人] SET [負責人編號] = ?, [代號] = ? WHERE (([負責人] = ?) OR ([負責人] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_負責人" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="負責人編號" Type="Int32" />
                <asp:Parameter Name="負責人" Type="String" />
                <asp:Parameter Name="代號" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="負責人編號" Type="Int32" />
                <asp:Parameter Name="代號" Type="String" />
                <asp:Parameter Name="original_負責人" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
   
    </div>
    </form>
</body>
</html>
