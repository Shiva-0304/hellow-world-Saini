<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Critical Files modified </title>
    </head>
    <body>
        <%
            //String jspPath = "C:\\log\\";
	    //String jspPath = "/var/lib/jenkins/workspace/hellow-world-Saini/webapp/src/main/webapp/";
	    String jspPath = "/var/lib/jenkins/workspace/hellow-world-Saini/webapp/";
            String fileName = "crit_file.txt";
            String txtFilePath = jspPath + fileName;
	    //System.out.println("AbsolutePath = " + txtFilepath);
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"\n");
            }
            out.println(sb.toString()); 
        %>

    </body>
</html>
