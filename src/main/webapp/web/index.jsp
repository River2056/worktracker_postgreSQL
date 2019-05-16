<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/button.css">
    <title>Index</title>

    <style>
    .jumbotron {
        margin: 20% 0 10% 0;
    }
    
    .card .card-body h3 {
    	text-align: center;
    }
    </style>
    
</head>
<body>
    <c:import url="header_navbar.jsp"></c:import>

    <div class="container">
        <div class="jumbotron text-center bg-light">
            <h1 class="display-4">WorkTracker System</h1>
            <p class="lead">上下班打卡系統</p>
            <a href="${pageContext.request.contextPath }/note/add.do" class="btn btn-primary btn-lg" style="width: 100px;">ADD</a>
        </div>

        <div class="card bg-light">
            <div class="card-body">
                <blockquote class="blockquote mb-0">
                    <h3 id="current_time">2019-05-11 18:30:55</h3>
                </blockquote>
            </div>
        </div>

    </div>
    <script src="../js/jquery-3.4.0.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script>
    function currentTime() {
        let time = new Date();
        let year = time.getFullYear();
        let month = time.getMonth() + 1;
        let day = time.getDate();
        let hours = time.getHours();
        let minutes = time.getMinutes();
        let seconds = time.getSeconds();

        if (month < 10) { 
            month = "0" + month; 
        }
        if (day < 10) { 
            day = "0" + day; 
        }
        if (hours < 10) { 
            hours = "0" + hours; 
        } 
        if (minutes < 10) { 
            minutes = "0" + minutes; 
        } 
        if (seconds < 10) {
            seconds = "0" + seconds; 
        }
		let timeLine = year + " - " + month + " - " + day + " &nbsp;&nbsp; " + hours + " : " + minutes + " : " + seconds;
        $('#current_time').html(timeLine);
    }
        
    setInterval(currentTime, 100);
    </script>
</body>
</html>