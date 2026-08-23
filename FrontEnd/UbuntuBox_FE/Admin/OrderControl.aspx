<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="OrderControl.aspx.cs" Inherits="UbuntuBox_FE.Admin.OrderManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🖋️Order Management: Pending Orders.🧾</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Order Controls.</h3>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="View Products" src="./OrderManagement/Logo/icons8-status-30.png" alt="Sales Logo" width="40px">
                    <span>View Pending Orders.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./OrderFolder/CompleteOrders.aspx">
                    <img  Id="P_Orders" src="./OrderManagement/Logo/icons8-pass-50.png" alt="Sales Logo" width="40px">
                    <span>View Complete Orders.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./OrderFolder/LoggedReturns.aspx">
                    <img  Id="BestSeller" src="./OrderManagement/Logo/icons8-return-50.png" alt="Sales Logo" width="40px">
                    <span>View Logged Returns.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./OrderFolder/CancelledOrders.aspx">
                    <img  Id="Errors" src="./OrderManagement/Logo/icons8-cancel-48.png" alt="Sales Logo" width="40px">
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
        <div>Num Items In Stock</div>
        <div>Date Ordered</div>
        <div>Status</div>
    </div>

    <div class="Rowcontainer">

        <div class="ProductRow">
            <div>41</div>
            <div>042</div>
            <div>Ndebele Pattern Necklace</div>
            <div>120</div>
            <div>2026-05-27</div>
            <div>Shipped</div>
        </div>
        <div class="ProductRow">
            <div>42</div>
            <div>043</div>
            <div>Zulu Beaded Earrings</div>
            <div>85</div>
            <div>2026-05-28</div>
            <div>Pending</div>
        </div>
        <div class="ProductRow">
            <div>43</div>
            <div>044</div>
            <div>Xhosa Traditional Shawl</div>
            <div>60</div>
            <div>2026-05-29</div>
            <div>Logged</div>
        </div>
        <div class="ProductRow">
            <div>44</div>
            <div>045</div>
            <div>Tsonga Handwoven Basket</div>
            <div>40</div>
            <div>2026-05-30</div>
            <div>Shipped</div>
        </div>
        <div class="ProductRow">
            <div>45</div>
            <div>046</div>
            <div>Sotho Wool Blanket</div>
            <div>25</div>
            <div>2026-05-31</div>
            <div>Pending</div>
        </div>
        <div class="ProductRow">
            <div>46</div>
            <div>047</div>
            <div>Swazi Clay Pot</div>
            <div>50</div>
            <div>2026-06-01</div>
            <div>Logged</div>
        </div>
        <div class="ProductRow">
            <div>47</div>
            <div>048</div>
            <div>Venda Drum Keychain</div>
            <div>200</div>
            <div>2026-06-02</div>
            <div>Shipped</div>
        </div>
        <div class="ProductRow">
            <div>48</div>
            <div>049</div>
            <div>Zulu Shield Wall Art</div>
            <div>15</div>
            <div>2026-06-03</div>
            <div>Pending</div>
        </div>
        <div class="ProductRow">
            <div>49</div>
            <div>050</div>
            <div>Xhosa Headwrap</div>
            <div>75</div>
            <div>2026-06-04</div>
            <div>Logged</div>
        </div>
        <div class="ProductRow">
            <div>50</div>
            <div>051</div>
            <div>Tswana Leather Sandals</div>
            <div>30</div>
            <div>2026-06-05</div>
            <div>Shipped</div>
        </div>



    </div>
</div>


    </div>

</asp:Content>
