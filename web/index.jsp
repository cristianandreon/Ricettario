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

        %>
        <script>            

            // Modalita' progettazione
            glLiquidGenesisToken = '<%= GenesisToken %>';

            // Caricamento controlli
        
            // Caricamento menuX
            Liquid.startMenuX('leftMenu', '<%=workspace.get_file_content(request, "/liquidJSONs/menuXLeft.json", true)%>', '');

            // Barre di navigazione
            Liquid.startNavigatorsBar("topNavigationBar");
            Liquid.startNavigatorsBar("bottomNavigationBar");
            
        </script>

        <%
            out.print(workspace.get_table_controls_in_folder(request, "/liquidJSONs", false));
        %>
        
        
        <!-- Tema Liquid personalizzato -->
        <style>

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
        .ag-theme-balham .ag-row-odd { background-color:rgb(247 247 247); }
        .ag-theme-balham .ag-row-even { }
        .ag-theme-balham .ag-row-selected { background-color: #9F1621 !important; border-color: #f6f6f6 !important;; color:whitesmoke !important;}
       
        </style>

        
        <!----------------------------------> 
        <!-- FINE Codice Framework Liquid -->
        <!----------------------------------> 

        
        
        

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ricettario</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    
    
    
    
    </head>
    
    
    
    
    
    <body id="page-top">
            

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-dark sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #9F1621 !important">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div>
          <img src="img/squirrel.png"/>
        </div>
        <div class="sidebar-brand-text mx-3">Ricettario</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <!--<li class="nav-item active">
        <a class="nav-link" href="index.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Main page</span></a>
        </li>-->

        <!-- Divider -->
        <!--<hr class="sidebar-divider">-->

        <!-- Heading -->
        <!--
        <div class="sidebar-heading">
          Impostazioni generali
        </div>
      -->
      <!-- Nav Item - Pages Collapse Menu -->
        <!--
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>Impostazioni</span>
          </a>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Custom Components:</h6>
              <a class="collapse-item" href="">Buttons</a>
              <a class="collapse-item" href="">Cards</a>
            </div>
          </div>
        </li>
      -->
      <!-- Nav Item - Utilities Collapse Menu -->
        <!--
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Utilità</span>
          </a>
          <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Custom Utilities:</h6>
              <a class="collapse-item" href="">Colors</a>
              <a class="collapse-item" href="">Borders</a>
              <a class="collapse-item" href="">Animations</a>
              <a class="collapse-item" href="">Other</a>
            </div>
          </div>
        </li>

        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Archivio</span>
          </a>
          <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Login Screens:</h6>
              <a class="collapse-item" href="login.php">Login</a>
              <a class="collapse-item" href="">Forgot Password</a>
              <div class="collapse-divider"></div>
            </div>
          </div>
        </li>
      -->
      <!-- Divider -->
      <!--<hr class="sidebar-divider">-->

      <!-- Heading -->
      <br><br><div class="sidebar-heading">
        Categorie
      </div>

      <!-- Nav Item - Pages Collapse Menu -->


      <!-- Nav Item - Charts -->

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="#ricette" style="padding-bottom: 0 !important;">
          <i class="fas fa-fw fa-table"></i>
          <span>Ricette</span></a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#sostenibilita" style="padding-top: 0 !important;">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Sostenibilità</span></a>
          </li>

          <!-- Divider -->
          <hr class="sidebar-divider d-none d-md-block">

          <!-- Sidebar Toggler (Sidebar) -->
          <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
          </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

          <!-- Main Content -->
          <div id="content">

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
                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Ricettario - Admin</span>
                    <!--<img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">>--
                  </a>
                  <!-- Dropdown - User Information -->
                  <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                    <!--<a class="dropdown-item" href="#">
                      <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                      Settings
                    </a>
                    <div class="dropdown-divider"></div>-->
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
              <div class="row">

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-6 col-md-12 mb-4">
                  <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                      <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                          <div class="font-weight-bold text-primary text-uppercase mb-1" style="width: 100%"><img src="img/cookbook.png" style="margin-right: 12px; float: left; top: -2px; position: relative;" /><a name="ricette"><h1>Ricette</h1></a>

                          </div>

                          <br><div class="h5 mb-0 font-weight-bold text-gray-800;">Ricette create:<br><br></div><div class="list-group"><form style="margin-bottom: 8px;" id="modificaRicetta76" method="POST" action="">
	<a class="list-group-item list-group-item-action">Cheescake alle ciliegie<input type="submit" class="btn btn-info submitBtn" onclick="modificaRicetta()" name="modifica" class="modifica" style="margin-left: 5%;" value="Modifica"</input>
	<input type="hidden" name="id" value="76" </input>
	<input type="button" class="btn btn-danger submitBtn" onclick="eliminaRicetta(76)" max-width: 200px" value="Elimina Ricetta"</input>
	</a>
	

	</form><form style="margin-bottom: 8px;" id="modificaRicetta77" method="POST" action="">
	<a class="list-group-item list-group-item-action">Biscotti bretoni con nocciolata bianca<input type="submit" class="btn btn-info submitBtn" onclick="modificaRicetta()" name="modifica" class="modifica" style="margin-left: 5%;" value="Modifica"</input>
	<input type="hidden" name="id" value="77" </input>
	<input type="button" class="btn btn-danger submitBtn" onclick="eliminaRicetta(77)" max-width: 200px" value="Elimina Ricetta"</input>
	</a>
	

	</form><form style="margin-bottom: 8px;" id="modificaRicetta78" method="POST" action="">
	<a class="list-group-item list-group-item-action">Nocciolatamisù senza uova<input type="submit" class="btn btn-info submitBtn" onclick="modificaRicetta()" name="modifica" class="modifica" style="margin-left: 5%;" value="Modifica"</input>
	<input type="hidden" name="id" value="78" </input>
	<input type="button" class="btn btn-danger submitBtn" onclick="eliminaRicetta(78)" max-width: 200px" value="Elimina Ricetta"</input>
	</a>
	

	</form><form style="margin-bottom: 8px;" id="modificaRicetta79" method="POST" action="">
	<a class="list-group-item list-group-item-action">Frozen yogurt<input type="submit" class="btn btn-info submitBtn" onclick="modificaRicetta()" name="modifica" class="modifica" style="margin-left: 5%;" value="Modifica"</input>
	<input type="hidden" name="id" value="79" </input>
	<input type="button" class="btn btn-danger submitBtn" onclick="eliminaRicetta(79)" max-width: 200px" value="Elimina Ricetta"</input>
	</a>
	

	</form></div>
                          <div class="form-group">
                          </div>
                        </div>
                      </div>
                      <br>
                      <form action="index.php" method="GET">
                        <input class="btn btn-primary" type="submit" name="nuovaRicetta" id="nuovaRicetta" value="Aggiungi Ricetta"/>
                      </form>
                      <br>
                                          </div>
                  </div>
                </div>

                <!-- Sostenibilità -->

                <div class="col-xl-6 col-md-12 mb-4">
                  <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                      <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                          <div class="font-weight-bold text-uppercase mb-1" style="width: 100%"><img src="img/sustainability.png" style="margin-right: 12px; float: left; top: -2px; position: relative;" /><a name="sostenibilita"><h1 style="color: #27CB90 !important;">Sostenibilità</h1></a>

                          </div>
                          <br><div class="h5 mb-0 font-weight-bold text-gray-800">Contenuto creato: </div><div class="list-group"><form id="modificaSosF1" method="POST" action="">
	<a class="list-group-item list-group-item-action">SOSTENIAMO UNA NUOVA FORMA DI SVILUPPO<input type="submit" class="btn btn-info submitBtn" onclick="modificaSosFunction()" name="modificaSos" class="modificaSos" style="margin-left: 5%;" value="Modifica"</input>
	<input type="hidden" name="id" value="1" </input>
	<!--<input type="button" class="btn btn-danger submitBtn" onclick="eliminaSos(1)" max-width: 200px" value="Elimina"</input>-->
	</a>


	</form></div>                          <div class="form-group">
                          </div>
                        </div>
                      </div>
                      <br>

                    </div>
                  </div>
                </div>

              <!-- Content Row -->

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
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->

      <!-- Scroll to Top Button-->
      <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
      </a>

      <!-- Logout Modal-->
      <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">LOGOUT</h5>
              <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
              </button>
            </div>
            <div class="modal-body">Confermi di voler eseguire il Logout?</div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">Annulla</button>
              <a class="btn btn-primary" href="logout.php">CONFERMA</a>
            </div>
          </div>
        </div>
      </div>

      <!-- Bootstrap core JavaScript-->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="js/sb-admin-2.min.js"></script>

      <!-- 
      <script src="vendor/chart.js/Chart.min.js"></script>
      <script src="js/demo/chart-area-demo.js"></script>
      <script src="js/demo/chart-pie-demo.js"></script>

        Page level plugins -->

      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

      <script type="text/javascript" src="jsFunction/modificaRicetta.js"></script>
      <script type="text/javascript" src="jsFunction/modificaSos.js"></script>






        </div>



  
        <!-----------------------------> 
        <!-- Codice Framework Liquid -->
        <!-----------------------------> 
        
        <table border=0 cellspacing=0 cellpadding=0 style="position:relative; width:calc(100% - 20px); height:calc(100% - 0px); top:100px; font-size:9pt; table-layout:auto; ">
            <tr>
            </tr>
            <tr>
                <td colspan="1" style="width:1px; z-index:90000; position:relative; padding-right: 3px;">
                  <div id="leftMenu" style="height:100%; float:left;"></div>
                </td>
                <td colspan="1" style="width:0%">
                    <div id="topNavigationBar" style="width:100%; height:30px; border:1px solid lightgray"></div>
                    <div id="WinXContainer" 
                         class="liquidWinXContainer" 
                         ondrop="Liquid.onDrop(event)" 
                         ondragover="Liquid.onAllowDrop(event);" 
                         style="width:100%; height:calc(100% - 74px); border:1px solid lightgray"></div>
                    <div id="bottomNavigationBar" style="width:100%; height:40px; border:1px solid lightgray"></div>
                </td>
            </tr>
        </table>
  
        
        
        
    </body>
</html>