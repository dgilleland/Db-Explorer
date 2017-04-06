<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Free Code for DMIT152 Lab</h1>
        <asp:Label ID="MessageLabel" runat="server" ForeColor="#FF3300"></asp:Label>
        <p>You can use the free code in the "FreeCode.AWSystem.dll" to populate DropDownLists related to a Foreign Key column in one of your tables in your forms <b><i>if</i></b> the table referenced in the Foreign Key is <b><i>not</i></b> part of your particular lab selection.</p>
        <p>Please note in your documentation if you are using this free code.</p>
        <p>To use this code, simply copy the "FreeCode.AWSystem.dll" and 
            &quot;FreeCode.AWSystem.pdb&quot; files from this website&#39;s bin folder into the bin folder of your website. 
            The fully qualified names of the two classes you will need to use are as 
            follows:</p>
        <ul>
            <li>FreeCode.AWSystem.BLL.<strong>ForeignKeyIDController</strong></li>
            <li>FreeCode.AWSystem.Data.<strong>ForeignKeyID</strong></li>
        </ul>
        <p>To have this DLL work in your application, you must include the following entry in 
            the web.config&#39;s connection strings:</p>
        <p><span style="font-size:9.5pt;line-height:115%;
font-family:Consolas;color:blue;">&lt;</span><span style="font-size:9.5pt;line-height:
115%;font-family:Consolas;color:#A31515;">add</span><span style="font-size:9.5pt;line-height:
115%;font-family:Consolas;color:blue;"> </span>
            <span style="font-size:9.5pt;line-height:115%;
font-family:Consolas;color:red;">name</span><span style="font-size:9.5pt;line-height:
115%;font-family:Consolas;color:blue;">=</span><span style="font-size:9.5pt;line-height:115%;
font-family:Consolas;">&quot;<span style="color:blue">AW</span>&quot;<span style="color:blue"> </span>
            <span style="color:red">connectionString</span><span style="color:blue">=</span>&quot;<span 
                style="color:blue">Data Source=.\SQLEXPRESS;Initial 
            Catalog=AdventureWorks_DMIT;Integrated Security=True</span>&quot;<span 
                style="color:blue"> </span><span style="color:red">providerName</span><span 
                style="color:blue">=</span>&quot;<span style="color:blue">System.Data.SqlClient</span>&quot;<span 
                style="color:blue">/&gt;</span></span></p>
        <div style="float:right; text-align:right;">
            <img alt="ForeignKeyID Class" src="Images/ForeignKeyID.png" />
            <br />
            <img alt="ForeignKeyIDController Class" src="Images/ForeignKeyIDController.png" /></div>
        <h3>
            Sample Instructor Code</h3>
        <table>
            <tr>
                <td>
                    Sales Territory IDs</td>
                <td>
                    <asp:DropDownList ID="SalesTerritories" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Customer IDs</td>
                <td>
                    <asp:DropDownList ID="Customers" runat="server" 
                        DataSourceID="CustomerDataSource" DataTextField="DisplayText" 
                        DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="CustomerDataSource" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="ListCustomerIDs" 
                        TypeName="FreeCode.AWSystem.BLL.ForeignKeyIDController"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Address IDs</td>
                <td>
                    <asp:DropDownList ID="Addresses" runat="server" 
                        DataSourceID="AddressDataSource" DataTextField="DisplayText" 
                        DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="AddressDataSource" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="ListAddressIDs" 
                        TypeName="FreeCode.AWSystem.BLL.ForeignKeyIDController"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Ship Method IDs</td>
                <td>
                    <asp:DropDownList ID="ShipMethods" runat="server" 
                        DataSourceID="ShipMethodDataSource" DataTextField="DisplayText" 
                        DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ShipMethodDataSource" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="ListShipMethodIDs" 
                        TypeName="FreeCode.AWSystem.BLL.ForeignKeyIDController"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Vendor IDs</td>
                <td>
                    <asp:DropDownList ID="Vendors" runat="server" DataSourceID="VendorDataSource" 
                        DataTextField="DisplayText" DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="VendorDataSource" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="ListVendorIDs" 
                        TypeName="FreeCode.AWSystem.BLL.ForeignKeyIDController"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Address Type IDs</td>
                <td>
                    <asp:DropDownList ID="AddressTypes" runat="server" 
                        DataSourceID="AddressTypeDataSource" DataTextField="DisplayText" 
                        DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="AddressTypeDataSource" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="ListAddressTypeIDs" 
                        TypeName="FreeCode.AWSystem.BLL.ForeignKeyIDController"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Contact Type IDs</td>
                <td>
                    <asp:DropDownList ID="ContactTypes" runat="server" 
                        DataSourceID="ContactTypeDataSource" DataTextField="DisplayText" 
                        DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ContactTypeDataSource" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="ListContactTypeIDs" 
                        TypeName="FreeCode.AWSystem.BLL.ForeignKeyIDController"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Special Offer IDs</td>
                <td>
                    <asp:DropDownList ID="SpecialOffers" runat="server" 
                        DataSourceID="SpecialOfferDataSource" DataTextField="DisplayText" 
                        DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="SpecialOfferDataSource" runat="server" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectMethod="ListSpecialOfferIDs" 
                        TypeName="FreeCode.AWSystem.BLL.ForeignKeyIDController"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Contact IDs</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="ContactDataSource" DataTextField="DisplayText" 
                        DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ContactDataSource" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="ListContacts" 
                        TypeName="FreeCode.AWSystem.BLL.ForeignKeyIDController">
                    </asp:ObjectDataSource>
                </td>
            </tr>
        </table>
        <br />
        <h3>Database Table Details</h3>
        <table>
            <tr>
                <td>
                    Database Tables</td>
                <td>
                    <asp:DropDownList ID="DatabaseTables" runat="server" 
                        AppendDataBoundItems="True" DataSourceID="TableInfoDataSource" 
                        DataTextField="FullyQualifiedTableName" DataValueField="TableName">
                        <asp:ListItem>[Select a table]</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:LinkButton ID="LookupTableInfo" runat="server">Lookup Table Info</asp:LinkButton>
                </td>
            </tr>
        </table>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="TableGraphDataSource">
            <EditItemTemplate>
                Columns:
                <asp:TextBox ID="ColumnsTextBox" runat="server" Text='<%# Bind("Columns") %>' />
                <br />
                DatabaseName:
                <asp:TextBox ID="DatabaseNameTextBox" runat="server" 
                    Text='<%# Bind("DatabaseName") %>' />
                <br />
                SchemaName:
                <asp:TextBox ID="SchemaNameTextBox" runat="server" 
                    Text='<%# Bind("SchemaName") %>' />
                <br />
                TableName:
                <asp:TextBox ID="TableNameTextBox" runat="server" 
                    Text='<%# Bind("TableName") %>' />
                <br />
                TableType:
                <asp:TextBox ID="TableTypeTextBox" runat="server" 
                    Text='<%# Bind("TableType") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                FullyQualifiedTableName:
                <asp:TextBox ID="FullyQualifiedTableNameTextBox" runat="server" 
                    Text='<%# Bind("FullyQualifiedTableName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EmptyDataTemplate>
                No table information for the selected database table.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                Columns:
                <asp:TextBox ID="ColumnsTextBox" runat="server" Text='<%# Bind("Columns") %>' />
                <br />
                DatabaseName:
                <asp:TextBox ID="DatabaseNameTextBox" runat="server" 
                    Text='<%# Bind("DatabaseName") %>' />
                <br />
                SchemaName:
                <asp:TextBox ID="SchemaNameTextBox" runat="server" 
                    Text='<%# Bind("SchemaName") %>' />
                <br />
                TableName:
                <asp:TextBox ID="TableNameTextBox" runat="server" 
                    Text='<%# Bind("TableName") %>' />
                <br />
                TableType:
                <asp:TextBox ID="TableTypeTextBox" runat="server" 
                    Text='<%# Bind("TableType") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                FullyQualifiedTableName:
                <asp:TextBox ID="FullyQualifiedTableNameTextBox" runat="server" 
                    Text='<%# Bind("FullyQualifiedTableName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Database Name:
                <asp:Label ID="DatabaseNameLabel" runat="server" 
                    Text='<%# Bind("DatabaseName") %>' Font-Bold="True" Font-Italic="True" />
                <br />
                Schema Name:
                <asp:Label ID="SchemaNameLabel" runat="server" 
                    Text='<%# Bind("SchemaName") %>' Font-Bold="True" Font-Italic="True" />
                <br />
                Table Name:
                <asp:Label ID="TableNameLabel" runat="server" Text='<%# Bind("TableName") %>' 
                    Font-Bold="True" Font-Italic="True" />
                <br />
                Table Type:
                <asp:Label ID="TableTypeLabel" runat="server" Text='<%# Bind("TableType") %>' 
                    Font-Bold="True" Font-Italic="True" />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Bind("Description") %>' Font-Bold="True" Font-Italic="True" 
                    ForeColor="#006600" />
                <br />
                Fully Qualified Table Name:
                <asp:Label ID="FullyQualifiedTableNameLabel" runat="server" 
                    Text='<%# Bind("FullyQualifiedTableName") %>' Font-Bold="True" 
                    Font-Italic="True" />
                <br />
                <br />
                Columns<br />
                <asp:GridView ID="GridView1" runat="server" DataSource='<%# Eval("Columns") %>'>
                </asp:GridView>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:ObjectDataSource ID="TableInfoDataSource" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="ListDatabaseTables" 
            TypeName="FreeCode.AWSystem.BLL.TableDataController" 
            onselected="TableDetails_Selected"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="TableGraphDataSource" runat="server" 
            OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetDatabaseTableDetails" 
            TypeName="FreeCode.AWSystem.BLL.TableDataController" 
            onselected="TableDetails_Selected">
            <SelectParameters>
                <asp:ControlParameter ControlID="DatabaseTables" Name="tableName" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
    </div>
    </form>
</body>
</html>
