<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메일</title>
    <tiles:insertAttribute name="asset"></tiles:insertAttribute>    
    <!-- <link href="css/inmail.css" rel="stylesheet"> -->
    <style>
        html,
        body {
            height: 100%;
            width: 100%;
            padding: 0px;
            margin: 0px;
        }

        .header {
            float: left;
            width: 120px;
            height: 100%;
            background-color: #023E8A;
            text-align: center;
        }

        .header .icon {
            font-size: 30px;
            color: white;
            text-align: center;
            opacity: 0.7;
            height: 75px;
            width: 75px;
            padding-top: 25px;
            border-bottom: 1px solid white;
            margin-left: 20px;
        }

        .header .icon:hover {
            opacity: 1;
            cursor: pointer;
        }

        body {
            -ms-overflow-style: none;
        }

        ::-webkit-scrollbar {
            display: none;
        }

        .btn:active,
        .btn:focus {
            outline: none;
            box-shadow: none;
        }
    </style>
</head>

<body>
	<tiles:insertAttribute name="header"></tiles:insertAttribute>    

    <main class="container">

        <!-- Mail Header -->
        <tiles:insertAttribute name="mailHeader"></tiles:insertAttribute>

        <!-- Mail Sidebar-->
        <tiles:insertAttribute name="mailSidebar"></tiles:insertAttribute>

        <!-- Mail Content -->
        <section id="mail-content">
        	<tiles:insertAttribute name="content"></tiles:insertAttribute>            
        </section>
    </main>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>

        $('#searchDetail').hide();

        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

        $(function () {
            $('.btn-search-detail')
        })
        $('.btn-search-detail').click(function () {
            $('#searchDetail').slideToggle(250);
        });
    </script>
</body>
</html>