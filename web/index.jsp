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
        .ag-theme-balham .ag-row-odd { background-color:rgb(247 247 247); }
        .ag-theme-balham .ag-row-even { }
        .ag-theme-balham .ag-row-selected { background-color: #9F1621 !important; border-color: #f6f6f6 !important; color:whitesmoke !important; 
       
        </style>

        
        <!----------------------------------> 
        <!-- FINE Codice Framework Liquid -->
        <!----------------------------------> 

        
        

    <!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    
    </head>
    
    
    
    
    
    <body id="page-top">
            


      <!-- Bootstrap core JavaScript-->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="js/sb-admin-2.min.js"></script>


      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>


      
      
        <!-----------------------------> 
        <!-- Codice Framework Liquid -->
        <!-----------------------------> 
        
        <table border=0 cellspacing=0 cellpadding=0 style="position:relative; width:calc(100% - 20px); height:calc(100% - 0px); top:30px; font-size:9pt; table-layout:auto; ">
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