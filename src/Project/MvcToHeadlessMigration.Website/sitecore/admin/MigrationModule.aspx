<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MigrationModule.aspx.cs" Inherits="MvcToHeadlessMigration.Website.sitecore.admin.MigrationModule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Migration Module</title>
    <link rel="Stylesheet" type="text/css" href="/sitecore/shell/themes/standard/default/WebFramework.css" />
    <link rel="Stylesheet" type="text/css" href="./default.css" />
    <style type="text/css">
        div.chunk.fullwidth {
            width: 100%;
        }

        .chunk table {
            width: 100%;
        }

            .chunk table td {
                width: 50%;
            }

        .error {
            font-style: italic;
            color: red;
        }

        .form-label {
            width: 100px;
            display: inline-block;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server" class="wf-container">
        <div class="wf-content" style="overflow: hidden;">
            <h1><a href="/sitecore/admin/">Administration Tools</a> - Migraton Module</h1>
            <br />
            <asp:Panel runat="server">
                <asp:Panel runat="server" ID="modulePanel">
                    <div class="chunk fullwidth">
                        <h3>Please enter the source Sitecore XP intance details</h3>
                        <asp:PlaceHolder ID="ErrorMessage" runat="server" />
                        <div class="source-form">
                            <span class="form-label">Connection String : </span>
                            <asp:TextBox ID="ConnectionStringTextBox" CssClass="wf-watermarked" ToolTip="Source Connection String" runat="server" Text="" />
                            <br />
                            <span class="form-label">Template Path: </span>
                            <asp:TextBox ID="PasswordTextBox" CssClass="wf-watermarked" ToolTip="Password" TextMode="Password" runat="server" />
                            <br />
                            <span class="form-label"></span>
                            <asp:Button runat="server" Text="Migrate" Id="btnClick" OnClick="btnClick_Click1"/>
                        </div>
                    </div>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>  
                </asp:Panel>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
