<%-- 
    Document   : createSale
    Created on : 27 Jun 2022, 08:58:16
    Author     : HP
--%>

<%@page import="za.co.carols_boutique_pos.models.Sale"%>
<%@page import="za.co.carols_boutique_pos.models.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Sale</title>
        <style>
            .mid {
            text-align: center;
            background-color: white;
            width: 950px;
            height: 500px;
            position: absolute;
            top: 80px;
            left: 305px;
            border-style: solid;
            border-width: 1px;
            border-color: grey;
            overflow: auto;
        }
        #heading {
            position: absolute;

            top: 0;
            left: 550px;
            font-family: Papyrus;
            font-size: 40px;
            font-style: italic;
            font-weight: bolder;
            letter-spacing: 6px;
            text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
            text-align: center;
            color: #a3881d;
            padding: 20px;
        }    
            h1,
        h2 {
            font-size: 35px;
        }
            #lineitemspage label {
            font-size: 25px;
        }

        #lineitemspage .bars {
            font-size: 30px;
        }

        #lineitemspage button {
            background-color: rgb(0, 128, 117);
            color: white;
            text-align: center;
            text-decoration: none;
            transition-duration: all 0.1s;
            cursor: pointer;
            font-size: 20px;
            width: 250px;
            height: 50px;
            border-style: solid;
            border-color: white;
            border-width: 3px;
            border-radius: 8px;
        }

        #lineitemspage table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #lineitemspage td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        #lineitemspage tr:nth-child(even) {
            background-color: #dddddd;
        }
        .b:hover {
            background-color: rgb(0, 0, 80);
        }

        .b.active {
            background-color: rgb(0, 0, 128);
        }

        .c:hover {
            background-color: rgb(0, 0, 80);
        }

        .c.active {
            background-color: rgb(0, 0, 50);
        }

        .mid button:hover {
            box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24);
        }
        .sideside {
            background-color: rgb(0, 0, 50);
            width: 100px;
            height: 100%;
            position: fixed;
            top: 0px;
            left: 120px;
            text-align: left;
        }

        .b {
            border: none;
            background-color: rgb(0, 0, 50);
            color: white;
            transition-duration: all 0.1s;
            font-size:14px;
            padding: 20px 10px;
            width:80px;
            height:40px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            cursor: pointer;
            text-decoration: none;
        }

        #copyright {
            Position: absolute;
            top: 600px;
            left: 680px;
        }

        .c {
            background-color: rgb(0, 0, 128);
            border: none;
            color: white;

            text-align: left;
            text-decoration: none;
            font-size: 18px;
            height: 70px;
            width: 120px;
            transition-duration: all 0.1s;
            cursor: pointer;
        }

        #side {
            align: right;

            height: 100%;
            width: 120px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: rgb(0, 0, 128);
            overflow-x: hidden;
            padding-top: 10px;
        }
        </style>
    </head>
    <body style="background-image:url('https://lh3.googleusercontent.com/pw/AM-JKLXMO5yDb4rwt4sEQrgiQOMODT_pJfb1SL2dd8vpb9xK6qq-v0-sLTcA7ci2YTgbCEc9EH-VWq56ksYL1wsRQOFNAtSXfc6cmCOwCtpfS-Hbcj4rYphCA-b4AYxOAjboLEyfbJ4HxwYWuwhl5jRgETc=w1095-h657-no?authuser=0'); background-size:cover;">
        <script type="text/javascript" src="instascan.js.min"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
        <label id="heading">Carol's Boutique</label>
    <div id="side">
        <button class="c" id="keepaside" name="button" onclick="openCity(event, 'Keepasidebar')">keep aside</button>
        <button class="c" id="viewreport" name="button" onclick="openCity(event, 'Reportbar')">view report </button>

        <button class="c" id="registerstore" name="button" onclick="openCity(event, 'storebar')">Store</button>
        <button class="c" id="updateemploye" name="button" onclick="openCity(event, 'employeebar')">Employee</button>
        <button class="c" id="ibt" name="button" onclick="openCity(event, 'IBTbar')">IBT</button>
        <button class="c" id="stock" name="button" onclick="openCity(event, 'Stockbar')">Stock</button>
        <button class="c" id="sale" name="button" onclick="openCity(event, 'Salebar')">Sale</button>
    </div>
    <div id="Salebar" class="sideside">
        <a href="Exchange.jsp" id="Exchangedb" class="b" name="button" value="Exchanged page"
            >Exchanged</a><br>
        <a href="Return.jsp" id="Returnb" class="b" name="button" value="Return page"
            >Return</a><br>
        <a href="createSale.jsp"id="LineItemsb" class="b" name="button" value="LineItems page"
            >Create Sale</a>
    </div>
    <div id="storebar" class="sideside">
        <a href="RegisterStore.jsp" id="registerstoreb" class="b" name="button" value="registerstorepage"
            >register store</a>
    </div>
    <div id="employeebar" class="sideside">
        <a href="RegisterEmployee.jsp" id="registeremployeeb" class="b" name="button" value="registerstorepage"
            >Register Employee</a><br>
        <a href="UpdateEmployee.jsp" id="registeremployeeb" class="b" name="button" value="registerstorepage"
            >Update Employee</a>
    </div>
    <div id="Keepasidebar" class="sideside">
        <a href="CreateKeepAside.jsp" id="createkeepasideb" class="b" name="button" value="createkeepasidepage"
            >create keep aside</a>
    </div>
    <div id="Stockbar" class="sideside">
        <a href ="CreateProduct.jsp" id="createproductb" class="b" name="button" value="createproduct page"
            >create product</a><br>
        <a href="DeleteProduct.jsp" id="deleteproductb" class="b" name="button" value="delete product page"
            >delete product</a><br>
        <a href="AddToStock.jsp" id="addtostockb" class="b" name="button" value="add to stock page"
            >add to stock</a><br>
        <a href ="RemoveFromStock.jsp" id="removefromstockb" class="b" name="button" value="remove from stock page"
            >remove from stock</a>
    </div>
    <div id="Reportbar" class="sideside">
        <a href="ViewTopEmployee.jsp" id="viewtopempb" class="b" name="button" value="view top employees page"
            >view top employees page</a><br>
        <a href="MonthlySales.jsp" id="monthlysalesb" class="b" name="button" value="view monthly sales page"
            >view monthly sales</a><br>
        <a href ="ViewTopSellingEmployees.jsp" id="topsellingempsb" class="b" name="button" value="view top selling employees page"
            >view top selling employees</a><br>
        <a href ="AcheivedTarget.jsp"id="achievedtargetb" class="b" name="button" value="view stores that achieved target page"
            >View stores that achieved target page</a><br>
        <a href ="ViewTopSellingEmployees.jsp" id="topsellingproductsb" class="b" name="button" value="view top selling products page"
            >View top selling products</a><br>
        <a href="LeastTopEmployees.jsp" id="leastperformingstoresb" class="b" name="button" value="view least performing stores page"
            >View least performing stores</a><br>
        <a href="ProductReport.jsp" id="productsreportb" class="b" name="button" value="view product report page"
            >View product report</a><br>
        <a href="ViewDailySales.jsp" id="dailysalesb" class="b" name="button" value="view daily sales page"
            >View daily sales page</a>
    </div>
    <div id="IBTbar" class="sideside">

        <a href ="RequestIBT.jsp" id="ibtrequestb" class="b" name="button" value="IBT Requests page"
            >Request IBT</a>
    </div>

    <label id="copyright">Carols Boutique pty.Ltd.<br>Reg.131 482 9132</label>
    <div id="lineitemspage" class="mid">
        <%Product product =(Product) request.getAttribute("product");
        
        %>
        <h1>Line Items</h1>
        <table>
            <tr>
                <th>ProductID
                </th>
                <th>Item
                </th>
                <th>Size
                </th>
                <th>Qty</th>
                <th>Price
                </th>
            </tr>
            <tr>
                <td><%product.getId().toString();%></td>
                <td><%product.getName().toString();%></td>
                <td><%product.getSize().toString();%></td>
                <td><%product.getDescription().toString();%></td>
                <td><%product.getPrice();%></td>
            </tr>
            <tr>
                <td>Total:</td>
                <td></td>
                <td></td>
                <%Sale sale = new Sale();%>
                <td><%sale.calculateTotal();%></td>
            </tr>
        </table>

        <button style="position:absolute;left:500px;" name="button" value="Scan" id="scan" onclick="scanner()">Scan</button>
        <script>
            function scanner(){
                let scanner = new Instascan.Scanner({video: document.getElementById('preview')});
            scanner.addListener('scan', function(c){
                document.getElementById('prodID').value=c;
            
            });            
            Instascan.Camera.getCameras().then(function(cameras){
                if(cameras.length > 0) {
                    scanner.start(cameras[0]);
                }else{
                    alert('no cameras found');
                }               
            }).catch(function(e){
                console.error(e);
            }); 
            }
        </script>

        <button style="position:absolute;left:0px;" name="button"
            value="InputintoLineItems">Input</button><br><br><br><br>
        <label style="position:absolute;left:0px;">ProductID</label><br><br>
        <Input style="position:absolute;left:0px;" type="text" name="ProductID" class="bars"> <br><br><br><br>
        <button style="position:absolute;left:0px;" name="button" value="ProceedtoCheckout">Proceed to
            checkout</button><br><br><br><br>
        <button style="position:absolute;left:0px;" name="button" value="Cash">Cash</button>
        <button style="position:absolute;left:500px;" name="button" value="Card">Card</button>
    </div>
    <script>
        function openCity(evt, cityName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("sideside");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("c");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
        }
    </script>
    
    <div class="container">
            <div class="col-md-6">
                <div class="row">
                    <video id="preview" width="100%" ></video>
                </div>
                <div class="col-md-6">
                    <label>SCAN QR CODE</label>
                    <form>
                        <label>QR CODE: <input type="text" id="prodID"></label>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
