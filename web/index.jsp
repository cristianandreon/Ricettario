<%@page import="com.liquid.workspace"%>
<%@ page
    language="java" 
    import="javax.servlet.*"
    import="javax.servlet.http.*"
    import="javax.servlet.jsp.*"
    errorPage="" 
%><%!

%><%

%>
<%-- 
    Document   : index
    Created on : Mar 20, 2020, 12:19:08 PM
    Author     : Cristitan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Ricettario</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="./images/favicon.ico" type="image/x-icon">

        
        
        
        <!-----------------------------> 
        <!-- Codice Framework Liquid -->
        <!-----------------------------> 

        <%  
            
            com.liquid.connection.addLiquidDBConnection( "mariadb", "localhost", "3307", "ricettario", "root", "root");
            com.liquid.connection.addLiquidDBConnection( "mysql", "localhost", "3306", "ricettario", "liquid", "liquid");
            
        %>
         
        
        <!-- Start Liquid Engine -->
        <%@ include file="/liquid/liquidXHeader.jsp" %>
        <%@ include file="/liquid/liquidSelector.jsp" %>
        <%@ include file="/liquid/liquidAssets.jsp" %>



        <%  
            
            //
            // Modalità progettazione : 
            String GenesisToken = workspace.enableProjectMode();

            //
            // imposta la cartella di lavoro dei file json
            workspace.set_project_folder(request, "Z:\\home\\ubuntu\\Ricettario\\web\\liquidJSONs", GenesisToken);
            
            // Black list
            // workspace.addToBlackList("*","*","cfg");
            
            // Definizione dati di login
            // login.driver = "mariadb";
            // login.host = "localhost";
            // login.port = "3307";
            // login.user = "root";
            // login.password = "root";
            login.database = "ricettario";
            login.schema = "ricettario";
            login.table = "login_users";

            login.setApplicationId(request, "Ricettario");
            login.setDomainId(request, "Ricettario");
            login.setDaysValidity(request, 30);
            login.setEmailAppName(request, "Ricettario Demo Portal");
            login.setEmailAppURL(request, "http://localhost:8080/");
            login.setEmailAppImage(request, "../images/favicon.ico");
            login.setEmailFrom(request, "info@ricettario.com");

            // log the events
            login.schemaLog = login.schema;
            login.tableLog = "login_events";


            emailer.Host = "smtp.ricettario.com";
            emailer.Port = "587";
            emailer.Username = "info@ricettario.com";
            emailer.Password = "ricettario";

            String GLUserID = login.getLoggedID(request);
            session.setAttribute("GLUserID", GLUserID);
            

            // force password
            // login.setPassword(null, null, "provaadmin", "ciaociao", request);
        %>
        

        <%
            out.print(workspace.get_table_controls_in_folder(request, "/liquidJSONs", false));
        %>
        
        
        <script>            
            
            function startup() {

                <%  if(GLUserID == null || GLUserID.isEmpty()) { %>
                        
                <%  } else { %>

                // Modalita' progettazione
                glLiquidGenesisToken = '<%= GenesisToken %>';

                // Caricamento controlli

                // Caricamento menuX
                Liquid.startMenuX('leftMenu', '<%=workspace.get_file_content(request, "/liquidJSONs/menuXLeft.json", true)%>', '');

                // Barre di navigazione
                Liquid.startNavigatorsBar("topNavigationBar");
                Liquid.startNavigatorsBar("bottomNavigationBar");

                Liquid.captionIconFilter = "invert(1)";
                Liquid.captionIconSize = 16;
                
                <%  } %>
            }

            function onLogout(liquid, params) {
                if(params) {
                    location.href = "./";
                }
            }

        </script>

        
        <!-- Tema Liquid personalizzato -->
        <style>

        a:hover { text-decoration: none; cursor: pointer; color : darkRed !important; }
        
        .liquidMenuXLeft {
            background-color: #9F1621 !important;        
        }
        .liquidPopupCaption {
            background-color: #9F1621 !important;        
        }    
        .LiquidButtonHOver {
            background-color: #821b23 !important;        
            border:1px solid lightgray !important;
            color: white !important;
        }
        .ui-accordion-header {
            background-color: #9F1621 !important;
            color: #777777 !important;
        }
        .ui-accordion-content {
            background-color: #9F1621 !important;
            color: #bdc3c7 !important;
        }
        .toast-info {
            background-color: #9F1621 !important;
        }
        .ui-accordion-header { 
            color: whitesmoke !important; 
        }
        .ui-state-active {
            color:white !important;
            border: 1px solid orange !important;
            background: #821b23 !important;
        }
        .ag-theme-balham .ag-row-hover { background-color: #f3a199 !important; }
        .ag-theme-balham .ag-row-odd { background-color: rgb(247,247,247); }
        .ag-theme-balham .ag-row-even { }
        .ag-theme-balham .ag-row-selected { background-color: #9F1621 !important; border-color: #f6f6f6 !important; color:whitesmoke !important; 
       
        </style>

        
        <!----------------------------------> 
        <!-- FINE Codice Framework Liquid -->
        <!----------------------------------> 

        
        

    <!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="./vendor/css/sb-admin-2.min.css" rel="stylesheet">
    
    </head>
    
    
    
    
    
    <body id="page-top" onload="startup()">
            


        <!-- Bootstrap core JavaScript-->
        <script src="./vendor/jquery/jquery.min.js"></script>
        <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="./vendor/js/sb-admin-2.min.js"></script>


        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>


      
      
        <!-----------------------------> 
        <!-- Codice Framework Liquid -->
        <!-----------------------------> 

        <%  if(GLUserID == null || GLUserID.isEmpty()) { %>
            <!-- Login Form -->
            <center>
                <div style="margin-top:150px;">
                    <%@ include file="/Login/loginForm.jsp" %>
                </div>
            </center>

        <%  } else { %>
        
            <table border=0 cellspacing=0 cellpadding=0 style="position:relative; width:calc(100% - 20px); height:calc(100% - 0px); top:30px; font-size:9pt; table-layout:auto; ">
                <tr>
                    <td colspan="1" style="width:1px; z-index:90000; position:relative; padding-right: 3px;">
                      <div id="leftMenu" style="height:100%; float:left;"></div>
                    </td>
                    <td colspan="1" style="width:0%">
                        <!-- <div id="topNavigationBar" style="width:100%; height:30px; border:1px solid lightgray"></div> -->

                        <div id="content" style="height: 100%;">


                            <!-- Topbar -->
                            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                            <!-- Sidebar Toggle (Topbar) -->
                            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                                <i class="fa fa-bars"></i>
                            </button>


                            <!-- Topbar Navbar -->
                            <ul class="navbar-nav ml-auto">

                                <div class="topbar-divider d-none d-sm-block"></div>

                                <!-- Nav Item - User Information -->
                                <li class="nav-item dropdown no-arrow">
                                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="mr-2 d-none d-lg-inline text-gray-600 small">Rigoni di Asiago - Admin</span>
                                    </a>
                                    <!-- Dropdown - User Information -->
                                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                        <a class="dropdown-item" href="logout.php" data-toggle="modal" data-target="#logoutModal">
                                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                            Logout
                                        </a>
                                    </div>
                                </li>

                            </ul>

                        </nav>
                        <!-- End of Topbar -->

                        <!-- Begin Page Content -->
                        <div class="container-fluid">

                            <!-- Page Heading -->
                            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                <h1 class="h3 mb-0 text-gray-800">GESTIONE CONTENUTI</h1>
                            </div>

                            <!-- Content Row -->
                            <div class="row" style="height: -webkit-fill-available;">

                                <!-- Earnings (Monthly) Card Example -->
                                <div class="col-xl-6 col-md-12 mb-4">
                                    <div id="WinXContainer1" class="liquidWinXContainer card border-left-primary shadow h-100 py-2" style="overflow:hidden; min-height: 600px; border-left: .25rem solid #4e73df!important;"></div>
                                </div>

                                <!-- Sostenibilità -->
                                <div class="col-xl-6 col-md-12 mb-4">
                                    <div id="WinXContainer2" class="liquidWinXContainer card border-left-primary shadow h-100 py-2" style="overflow:hidden; min-height: 600px; border-left: .25rem solid darkcyan!important;">

                                    </div>
                                </div>

                                <!-- Novita SKiro -->
                                <div class="col-xl-6 col-md-12 mb-4">
                                    <div id="WinXContainer3" class="liquidWinXContainer card border-left-primary shadow h-100 py-2" style="overflow:hidden; min-height: 600px; border-left: .25rem solid darkred!important;"></div>                                
                                </div>

                                <div class="row">
                                </div>


                            </div>
                            <!-- /.container-fluid -->

                        </div>
                        <!-- End of Main Content -->

                        <!-- Footer -->
                        <footer class="sticky-footer bg-white">
                            <div class="container my-auto">
                                <div class="copyright text-center my-auto">
                                    <span>Powered by Mocchi's Srl</span>
                                </div>
                            </div>
                        </footer>
                        <!-- End of Footer -->

                    </div>
                    </td>
                </tr>
            </table>

        <% } %>

    </body>
</html>