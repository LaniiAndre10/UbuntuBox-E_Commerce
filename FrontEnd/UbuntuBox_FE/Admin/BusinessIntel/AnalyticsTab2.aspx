<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="AnalyticsTab2.aspx.cs" Inherits="UbuntuBox_FE.Admin.BusinessIntel.AnalyticsTab2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>📈2️⃣Analytics: Sales And Customer Data.2️⃣📉</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Analytics Controls.</h3>

                <div class="AnalyticControl">

                    <a href="../AdminLanding.aspx">
                    <img  Id="Sales" src="../Analytics/Icons/icons8-sales-50.png" alt="Sales Logo" width="40px">
                    <span>Data Tab I.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="P_Orders" src="../Analytics/Icons/icons8-customer-50.png" alt="Sales Logo" width="40px">
                    <span>Data Tab II.</span>
                    </a>
                    
                </div>


            </div>
        </div>
        
        <div class="charts">

            <div class="statgraph">

             <!--Add a Chart to  show the Average Order Value per Month -->


                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UbuntuBoxConnection %>" SelectCommand="SELECT 
    DATENAME(MONTH, O.OrderDate) AS MonthName,
    AVG(OI.Quantity * OI.UnitPrice) AS AvgOrderValue
FROM [Order] O
JOIN OrderItems OI ON O.OrderID = OI.OrderID
WHERE O.OrderDate &gt;= DATEADD(MONTH, -2, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
  AND O.OrderDate &lt; DATEADD(MONTH, 1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
GROUP BY DATENAME(MONTH, O.OrderDate), MONTH(O.OrderDate)
ORDER BY MONTH(O.OrderDate);
"></asp:SqlDataSource>

                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Height="357px" Width="348px">
                    <Titles>
                        <asp:Title Name="MainTitle" Text="Avg Order Value Trend for Current Quarter" />
                    </Titles>
                    <Series>
                        <asp:Series ChartType="Point" Name="Series1" 
                            XValueMember="MonthName" 
                            YValueMembers="AvgOrderValue" YValuesPerPoint="4" />
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="Month" />
                            <AxisY Title="Average Order Value (R)" />
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>

            </div>

            <div class="statgraph">

            <!--Add a Line graph of Current Quarter Gross Revenue vs Refunds, to see how much we are losing via refunds -->

                
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UbuntuBoxConnection %>" SelectCommand="-- Gross Revenue --
SELECT DATENAME(MONTH, O.OrderDate) AS MonthName,
       SUM(OI.Quantity * OI.UnitPrice) AS GrossRevenue
FROM [Order] O
JOIN OrderItems OI ON O.OrderID = OI.OrderID
WHERE O.OrderDate &gt;= DATEADD(MONTH, -2, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
  AND O.OrderDate &lt; DATEADD(MONTH, 1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
GROUP BY DATENAME(MONTH, O.OrderDate), MONTH(O.OrderDate);

-- Refunds (Cancelled + Returned) --
SELECT DATENAME(MONTH, O.OrderDate) AS MonthName,
       SUM(OI.Quantity * OI.UnitPrice) AS Refunds
FROM [Order] O
JOIN OrderItems OI ON O.OrderID = OI.OrderID
LEFT JOIN OrderCancellation OC ON O.OrderID = OC.OrderID
LEFT JOIN OrderReturn ORR ON O.OrderID = ORR.OrderID
WHERE (OC.OrderID IS NOT NULL OR ORR.OrderID IS NOT NULL)
  AND O.OrderDate &gt;= DATEADD(MONTH, -2, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
  AND O.OrderDate &lt; DATEADD(MONTH, 1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
GROUP BY DATENAME(MONTH, O.OrderDate), MONTH(O.OrderDate);
"></asp:SqlDataSource>

                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="358px" Width="351px">
                    <Titles>
                        <asp:Title Name="MainTitle" Text="Current Quarter Gross Revenue vs Refunds" />
                    </Titles>
                    <Series>
                        <asp:Series ChartType="Spline" Name="Series1" 
                            XValueMember="MonthName" 
                            YValueMembers="GrossRevenue" YValuesPerPoint="2" />
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="Month" />
                            <AxisY Title="Gross Revenue vs Refunds (R) " />
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>


                
            </div>

            <div class="statgraph">

                <!--Add a pie chart of Customer Segmentation, so see which buyer types are controbuting more to the platform -->
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UbuntuBoxConnection %>" SelectCommand="SELECT CS.CustomerType, COUNT(O.OrderID) AS OrdersPlaced
FROM [Order] O
JOIN CustomerStats CS ON O.UserID = CS.UserID
WHERE MONTH(O.OrderDate) = MONTH(GETDATE())
  AND YEAR(O.OrderDate) = YEAR(GETDATE())
GROUP BY CS.CustomerType;
"></asp:SqlDataSource>

                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="348px" Height="358px">
                    <Titles>
                        <asp:Title Name="MainTitle" Text="Current Month Sales by Customer Segmentation." />
                    </Titles>
                    <Series>
                        <asp:Series Name="Orders" 
                            XValueMember="CustomerType" 
                            YValueMembers="OrdersPlaced" 
                            ChartType="Pie" YValuesPerPoint="2" />
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title=" " />
                            <AxisY Title=" " />
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                
            </div>
            

        </div>

    </div>


</asp:Content>
