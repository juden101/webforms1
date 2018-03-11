<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="checkbox.aspx.cs" Inherits="Chapter4.Demos.checkbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Panel" OnCheckedChanged="CheckBox1_CheckedChanged" />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:Wizard ID="Wizard1" runat="server">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="About You"></asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2"></asp:WizardStep>
                <asp:WizardStep runat="server" Title="Ready">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </asp:Panel>
    <br />
</asp:Content>
