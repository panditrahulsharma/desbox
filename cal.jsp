<!DOCTYPE html>
<!--Author     : @arboshiki-->
<html> 
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Deskbox</title>
        <link rel="shortcut icon" href="img/logo/lobiadmin-logo-16.ico" />
        
        <link rel="stylesheet" href="cal/cssc/bootstrap.min.css">
        <link rel="stylesheet" href="cal/cssc/font-awesome.min.css"/>
        <link rel="stylesheet" href="cal/cssc/weather-icons.min.css"/>

        <!--lobiadmin-with-plugins.css contains all LobiAdmin css plus lobiplugins all css files, plus third party plugins-->
        <link rel="stylesheet" href="cal/cssc/lobiadmin-with-plugins.css"/>
        <!--Put your css here-->
        
        <!--This css file is for only demo usage-->
        <link rel="stylesheet" href="cal/cssc/demo.css"/>
    </head>
    <body>
    
        <div id="main">
            <div id="ribbon" class="hidden-print">
                <a href="index.jsp" class="btn-ribbon" data-container="#main" data-toggle="tooltip" data-title="Show dashboard"><i class="fa fa-home"></i></a>
                <span class="vertical-devider">&nbsp;</span>
                <button class="btn-ribbon" data-container="#main" data-action="reload" data-toggle="tooltip" data-title="Reload content by ajax"><i class="fa fa-refresh"></i></button>
                <ol class="breadcrumb">
                </ol>
            </div>
            <div id="content">
                
            </div>
        </div>
                    <button class="btn btn-primary btn-block btn-pretty" data-action="clear-storage"><i class="fa fa-refresh"></i> Clear local storage</button>
                </fieldset>
            </form>
        </div>

   

        <script type="text/javascript" src="cal/jsc/lib/jquery.min.js"></script>
        <script type="text/javascript" src="cal/jsc/lib/jquery-ui.min.js"></script>
        <script type="text/javascript" src="cal/jsc/bootstrap/bootstrap.min.js"></script>
        <script type="text/javascript" src="cal/jsc/lobi-plugins/lobipanel.min.js"></script>
        <script type="text/javascript" src="cal/jsc/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
        <script type="text/javascript" src="cal/jsc/config.js"></script>
        <script type="text/javascript" src="cal/jsc/LobiAdmin.min.js"></script>
        <script type="text/javascript" src="cal/jsc/app.js"></script>
        <script type="text/javascript" src="cal/jsc/demo.js"></script>
    </body>
</html>
