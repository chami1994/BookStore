<%-- 
    Document   : modifySuppliers2
    Created on : Mar 25, 2015, 10:44:34 AM
    Author     : Dushara Vitiyala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>

                                <%--Bootsrap CSS files--%>
        <link rel="stylesheet" href="http://localhost:8080/BookStore/adminPanel/css/bootstrap.css"/>
        <link rel="stylesheet" href="http://localhost:8080/BookStore/adminPanel/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="http://localhost:8080/BookStore/adminPanel/css/bootstrapValidator.css"/>

        <%--Bootsrap jS files--%>
        <script type="text/javascript" src="http://localhost:8080/BookStore/adminPanel/js/jquery.min.js"></script>
        <script type="text/javascript" src="http://localhost:8080/BookStore/adminPanel/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://localhost:8080/BookStore/adminPanel/js/bootstrapValidator.js"></script>

        <%-- my css files --%>
        <link href="http://localhost:8080/BookStore/adminPanel/css/startPage.css" rel="stylesheet">
        <link href="http://localhost:8080/BookStore/adminPanel/css/form.css" rel="stylesheet">
    </head>
    <body>
        <div class="container" style="background-color:#F5F5F0">
           <%@include file="HeaderFiles/suppliersHeader.jsp"%> 
            <div class="row">
                <%--left side navigation--%>
                <div class="col-lg-2">
                    <ul class="nav nav-pills nav-stacked ">
                        <li role="presentation" class="text_box" style="padding: 0px; text-align: left; font-size: 4em;">Suppliers</li>
                        <li>
                            <div id="topmenu">
                            <ul class="nav nav-pills nav-stacked topmenu">
                                <li role="presentation"><a href="addAuppliers.jsp"><font style="color: orange">Add Supplier</font></a></li>
                                <li role="presentation" class="active"><a href="#">Modify Supplier</a></li>
                                <li role="presentation"><a href="removeSuppliers.jsp"><font style="color: orange">Remove Supplier</font></a></li>
                            </ul>
                            </div>
                        </li>
                    </ul>  
                </div>
                <div class="col-lg-1">&nbsp;</div>
                <%--left side navigation end--%>
                
                <%--Form--%>
                <div class="col-lg-9">
                    <br>
                    <br>
                    <form>
                        <div id ="orange">
                            <div class="form-group orange">
                                <label>Supplier Name</label>
                                <input type="text" class="form-control" placeholder="Enter Supplier Name" name="modifySupplierName" required>
                            </div>
                        </div>
                        <div id ="orange">
                            <div class="form-group orange">
                                <label>Supplier Contact Number</label>
                                <input type="text" class="form-control" placeholder="Enter Contact Number" name="modifySupplierContactNO" required>
                            </div>
                        </div>
                        
                                                <div id ="orange">
                            <div class="form-group orange">
                                <label>Supplier Email</label>
                                <input type="email" class="form-control" name="modifySupplierEmail" placeholder="Enter Email" data-error="Email address is invalid" required>
                            </div>
                        </div>
                        
                                                <div id ="orange">
                            <div class="form-group orange">
                                <label>Supplier Address</label>
                                <input type="text" name="modifySupplierADD1" class="form-control" placeholder="Address Line 1" required>
                                <input type="text" name="modifySupplierADD2" class="form-control" placeholder="Address Line 2">
                                <input type="text" name="modifySupplierADD3" class="form-control" placeholder="Address Line 3">
                            </div>
                        </div>
                        
                        <button type="submit" class="btn btn-default">Modify Supplier</button>
                    </form>
                </div>
            </div>
            <%--Form end--%>
<div class="row">
                &nbsp;
            </div>
            <div class="row">
                &nbsp;
            </div>
                <div class="row">
                &nbsp;
            </div>
            <div class="row">
                &nbsp;
            </div>
                <div class="row">
                &nbsp;
            </div>
            <div class="row">
                &nbsp;
            </div>
                <div class="row">
                &nbsp;
            </div>
            <div class="row">
                &nbsp;
            </div>
            <div class="row" >
                <ol class="breadcrumb" style="background-color:#FF9933">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Library</a></li>
                    <li class="active">Data</li>
                </ol>
            </div> 
        </div>
    </body>
</html>