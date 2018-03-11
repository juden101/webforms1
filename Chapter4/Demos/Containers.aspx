<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="Containers.aspx.cs" Inherits="Chapter4.Containers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CheckBox ID="CheckBox1" runat="server" Text=" Show Panel"  AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged"/>
    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <asp:Wizard ID="Wizard1" runat="server" Width="560px" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <WizardSteps>
                <asp:WizardStep runat="server" title="About">
                    <asp:Label ID="Label1" runat="server" Text="Your Name"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Favourite Language" StepType="Finish">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>Visual Basic</asp:ListItem>
                        <asp:ListItem>Java</asp:ListItem>
                    </asp:DropDownList>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
                    <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </asp:Panel>
</asp:Content>
