<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XmlToJson._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <div class="row">
        

        <asp:GridView ID="gvXmlToJson" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="HazardTask" HeaderText="Hazard Task" />
                <asp:BoundField ItemStyle-Width="50px" DataField="HazardCategory" HeaderText="Hazard Category" />
                <asp:BoundField ItemStyle-Width="150px" DataField="HazardAssociatedHarm" HeaderText="Hazard Associated Harm" />
                <asp:BoundField ItemStyle-Width="150px" DataField="HazardExistingControls" HeaderText="HazardE xisting Controls" />
                <asp:BoundField ItemStyle-Width="150px" DataField="HazardAdditionalControls" HeaderText="Hazard Additional Controls" />
                <asp:BoundField ItemStyle-Width="150px" DataField="RiskConsequence" HeaderText="Risk Consequence" />
                <asp:BoundField ItemStyle-Width="150px" DataField="RiskLikelihood" HeaderText="RiskLikelihood" />
                <asp:BoundField ItemStyle-Width="150px" DataField="HazardRiskRating" HeaderText="Hazard RiskRating" />
                <asp:BoundField ItemStyle-Width="150px" DataField="HazardCostControls" HeaderText="Hazard CostControls" />
                <asp:BoundField ItemStyle-Width="50px" DataField="HazardReasonablePracticable" HeaderText="Hazard Reasonable Practicable" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
