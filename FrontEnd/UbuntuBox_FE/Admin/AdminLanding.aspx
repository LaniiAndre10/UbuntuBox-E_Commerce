<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminLanding.aspx.cs" Inherits="UbuntuBox_FE.Admin.WebForm1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="pagecontent">
        <h2>📈1️⃣Analytics: Sales And Operational Efficiency.1️⃣📉</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Analytics Controls.</h3>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="Sales" src="./Analytics/Icons/icons8-sales-50.png" alt="Sales Logo" width="40px">
                    <span>Data Tab I.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="BusinessIntel/AnalyticsTab2.aspx">
                    <img  Id="P_Orders" src="./Analytics/Icons/icons8-customer-50.png" alt="Sales Logo" width="40px">
                    <span>Data Tab II.</span>
                    </a>
                    
                </div>


            </div>
        </div>
        
        <div class="charts">

            <div class="statgraph">

             <!--Add Line graph of Revenue trend for the past this Quarter -->


                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UbuntuBoxConnection %>" SelectCommand="SELECT 
    DATENAME(MONTH, O.OrderDate) AS MonthName,
    SUM(OI.Quantity * OI.UnitPrice) AS Revenue
FROM [Order] O
INNER JOIN OrderItems OI ON O.OrderID = OI.OrderID
WHERE O.OrderDate &gt;= DATEADD(MONTH, -2, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
  AND O.OrderDate &lt; DATEADD(MONTH, 1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
GROUP BY DATENAME(MONTH, O.OrderDate), MONTH(O.OrderDate)
ORDER BY MONTH(O.OrderDate);
"></asp:SqlDataSource>

                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Height="357px" Width="348px">
                    <Titles>
                        <asp:Title Name="MainTitle" Text="Revenue Trend for the Current Quarter" />
                    </Titles>
                    <Series>
                        <asp:Series ChartType="Line" Name="Series1" 
                            XValueMember="MonthName" 
                            YValueMembers="Revenue" YValuesPerPoint="4" />
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="Months" />
                            <AxisY Title="Revenue (Rands)" />
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>

            </div>

            <div class="statgraph">

            <!--Add Radar of How the boxes are selling this current month by Category -->

                
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UbuntuBoxConnection %>" SelectCommand="SELECT 
    P.BoxCategory,
    SUM(OI.Quantity) AS UnitsSold
FROM [Order] O
INNER JOIN OrderItems OI ON O.OrderID = OI.OrderID
INNER JOIN Product P ON OI.ProductID = P.ProductID
WHERE MONTH(O.OrderDate) = MONTH(GETDATE())
  AND YEAR(O.OrderDate) = YEAR(GETDATE())
GROUP BY P.BoxCategory
ORDER BY UnitsSold DESC;
"></asp:SqlDataSource>

                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="358px" Width="351px">
                    <Titles>
                        <asp:Title Name="MainTitle" Text="Current Month Box Category Sales" />
                    </Titles>
                    <Series>
                        <asp:Series ChartType="Bubble" Name="Series1" 
                            XValueMember="BoxCategory" 
                            YValueMembers="UnitsSold" YValuesPerPoint="2" />
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="Box Category" />
                            <AxisY Title="Units Sold" />
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>


                
            </div>

            <div class="statgraph">

                <!--Add a pie chart of order Distribution per Month by  Order Status ( Pending, Completed, Cancelled, and Returned ) | Operational Efficiency Analytics. -->
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UbuntuBoxConnection %>" SelectCommand="SELECT 
                    OrderStatus,
                    COUNT(*) AS TotalOrders
                FROM [Order]
                WHERE MONTH(OrderDate) = MONTH(GETDATE())
                  AND YEAR(OrderDate) = YEAR(GETDATE())
                GROUP BY OrderStatus;
                "></asp:SqlDataSource>

                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="348px" Height="358px">
                    <Titles>
                        <asp:Title Name="MainTitle" Text="Current Month Order Distribution" />
                    </Titles>
                    <Series>
                        <asp:Series Name="Orders" 
                            XValueMember="OrderStatus" 
                            YValueMembers="TotalOrders" 
                            ChartType="Column" />
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="Order Status" />
                            <AxisY Title="Number of Orders Processed" />
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                
            </div>
            

        </div>

    </div>


</asp:Content>
