<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminLanding.aspx.cs" Inherits="UbuntuBox_FE.Admin.WebForm1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="pagecontent">
        <h2>📈Analytics: Revenue Charts.📉</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Analytics Controls.</h3>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="Sales" src="./Analytics/Icons/icons8-sales-50.png" alt="Sales Logo" width="40px">
                    <span>Revenue.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="P_Orders" src="./Analytics/Icons/icons8-customer-50.png" alt="Sales Logo" width="40px">
                    <span>Customer Analytics.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="#">
                    <img  Id="Errors" src="./Analytics/Icons/icons8-error-64.png" alt="Sales Logo" width="40px">
                    <span>Failed Payments.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="BestSeller" src="./Analytics/Icons/icons8-best-seller-30.png" alt="Sales Logo" width="40px">
                    <span>Best Selling Products.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="charts">

            <div class="statgraph">

                <h4>Revenue.</h4>
                <p>Add Graph Here.</p>

            </div>

            <div class="statgraph">

                <h4>Expenses</h4>
                <p>Add Graph Here.</p>
                
            </div>

            <div class="statgraph">

                <h4>Income</h4>
                <p>Add Graph Here.</p>
                
            </div>
            

        </div>

    </div>


</asp:Content>
