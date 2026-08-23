<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="LoggedReturns.aspx.cs" Inherits="UbuntuBox_FE.Admin.OrderFolder.LoggedReturns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🖋️Order Management: Logged Returns.🧾</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Order Controls.</h3>

                <div class="AnalyticControl">

                    <a href="../OrderControl.aspx">
                    <img  Id="View Products" src="../OrderManagement/Logo/icons8-status-30.png" alt="Sales Logo" width="40px">
                    <span>View Pending Orders.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./CompleteOrders.aspx">
                    <img  Id="P_Orders" src="../OrderManagement/Logo/icons8-pass-50.png" alt="Sales Logo" width="40px">
                    <span>View Complete Orders.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="BestSeller" src="../OrderManagement/Logo/icons8-return-50.png" alt="Sales Logo" width="40px">
                    <span>View Logged Returns.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./CancelledOrders.aspx">
                    <img  Id="Errors" src="../OrderManagement/Logo/icons8-cancel-48.png" alt="Sales Logo" width="40px">
                    <span>View Cancelled Orders.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="cover">
    <div class="TopHeader">
        <div>Order ID</div>
        <div>Product ID</div>
        <div>Product Name</div>
        <div>Return Date</div>
        <div>Status</div>
        <div>Reason For Return</div>
    </div>

    <div class="Rowcontainer">

        <div class="ProductRow">
            <div>51</div>
            <div>052</div>
            <div>Ndebele Pattern Necklace</div>
            <div>2026-06-06</div>
            <div>Approved</div>
            <div>Damaged on delivery</div>
        </div>
        <div class="ProductRow">
            <div>52</div>
            <div>053</div>
            <div>Zulu Beaded Earrings</div>
            <div>2026-06-07</div>
            <div>Pending</div>
            <div>Wrong size</div>
        </div>
        <div class="ProductRow">
            <div>53</div>
            <div>054</div>
            <div>Xhosa Traditional Shawl</div>
            <div>2026-06-08</div>
            <div>Rejected</div>
            <div>No defect found</div>
        </div>
        <div class="ProductRow">
            <div>54</div>
            <div>055</div>
            <div>Tsonga Handwoven Basket</div>
            <div>2026-06-09</div>
            <div>Approved</div>
            <div>Broken handle</div>
        </div>
        <div class="ProductRow">
            <div>55</div>
            <div>056</div>
            <div>Sotho Wool Blanket</div>
            <div>2026-06-10</div>
            <div>Pending</div>
            <div>Customer dissatisfaction</div>
        </div>
        <div class="ProductRow">
            <div>56</div>
            <div>057</div>
            <div>Swazi Clay Pot</div>
            <div>2026-06-11</div>
            <div>Approved</div>
            <div>Cracked during shipping</div>
        </div>
        <div class="ProductRow">
            <div>57</div>
            <div>058</div>
            <div>Venda Drum Keychain</div>
            <div>2026-06-12</div>
            <div>Pending</div>
            <div>Wrong item sent</div>
        </div>
        <div class="ProductRow">
            <div>58</div>
            <div>059</div>
            <div>Zulu Shield Wall Art</div>
            <div>2026-06-13</div>
            <div>Rejected</div>
            <div>Return window expired</div>
        </div>
        <div class="ProductRow">
            <div>59</div>
            <div>060</div>
            <div>Xhosa Headwrap</div>
            <div>2026-06-14</div>
            <div>Approved</div>
            <div>Color mismatch</div>
        </div>
        <div class="ProductRow">
            <div>60</div>
            <div>061</div>
            <div>Tswana Leather Sandals</div>
            <div>2026-06-15</div>
            <div>Pending</div>
            <div>Size too small</div>
        </div>


    </div>
</div>


    </div>


</asp:Content>
