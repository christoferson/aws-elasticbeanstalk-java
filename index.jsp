<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.BufferedWriter" %>
<%@page import="java.io.FileWriter" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.Scanner" %>
<%
if ("POST".equalsIgnoreCase(request.getMethod())) {
  String logFileName = "/tmp/sample-app.log";
  BufferedWriter writer = new BufferedWriter(new FileWriter(logFileName, true));
  Scanner scanner = new Scanner(request.getInputStream()).useDelimiter("\\A");
  if (scanner.hasNext()) {
    writer.write(String.format("%s Received message: %s.\n", String.valueOf(new Date()), scanner.next()));
  }
  writer.flush();
  writer.close();
} else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Demo Elastic Beanstalk</title>
  <style>
    .container {
      padding: 2em;
      position: absolute;
      top: 0px;
      right: 50%;
      bottom: 0px;
      left: 0px;
      text-align: left;
      padding-top: 8em;
      background-color: #b4a7c9;
      color: rgb(16, 16, 102);
    }      
    </style>  
</head>
<body>
  <div class="container">
    <h1>ElasticBeanstalk Java!</h1>
    <p>AWS Elastic Beanstalk Java application (ver1) is now running</p>
  </div>
</script>
</body>
</html>
<% } %>
