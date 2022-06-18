<%@page import="beans.Alumnos"%>

    <%!
      Alumnos alum[]=new Alumnos[10];
    %>

        <%
            alum[0]=new Alumnos("57201000100", "RENE CARLOS",   "ALVAREZ NEPONUCENO", 10, 8,  10);
            alum[1]=new Alumnos("57201000101", "JALMIRA",       "ANACLETO ROMERO",    10, 9,  9);
            alum[2]=new Alumnos("57201000102", "SILVIA",        "BAUTISTA QUIROZ",    9,  8,  10);
            alum[3]=new Alumnos("57201000103", "JOSE ANTONIO",  "DIRCIO HERNANDEZ",   10, 10, 10);
            alum[4]=new Alumnos("57201000104", "YADIT ARLET",   "GALVEZ SANTOS",      9,  10, 10);
            alum[5]=new Alumnos("57201000105", "ANDREA",        "GOMEZ SANCHEZ",      10, 10, 9);
            alum[6]=new Alumnos("57201000106", "GUADALUPE",     "HERRERA VILLALVA",   10, 9,  10);
            alum[7]=new Alumnos("57201000107", "LEONEL",        "HERNANDEZ VAZQUEZ",  9,  10, 10);
            alum[8]=new Alumnos("57201000108", "OSIRIS",        "DE JESUS DIAZ",      10, 10, 10);
            alum[9]=new Alumnos("57201000109", "JOSEFA",        "JIMENEZ DIAZ",       10, 10, 10);
        %>

  <!DOCTYPE html>
    <title>Objetos Java</title>
    <link rel="stylesheet" href="estilos.css">
    
     <body>
         
         <h2>EXPRESIONES JAVA</h2>
           
      <table  id="tabla"  border="1">
           
            <thead>
                <tr>
                    <th>MATRICULA</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO</th>
                    <th>CVJ</th>
                    <th>DWI</th>
                    <th>ECDB</th>
                    <th>PROMEDIO</th>
                </tr>
            </thead>
            <% for (int i=0;i<10;i++){%>
            <tbody>
                <tr>
                    <td><%=alum[i].getMatricula()%></td>
                    <td><%=alum[i].getNombre()%></td> 
                    <td><%=alum[i].getApellido()%> </td> 
                    <td><%=alum[i].getCjv()%></td>
                    <td><%=alum[i].getDwi()%></td>
                    <td><%=alum[i].getEcbd()%></td>
                    <td><%=alum[i].Prom()%></td>
                   
                </tr>
                
              <% } %>
               
            </tbody>
        </table> 
              

                 <h2>SCRIPTLETS</h2> 
                <% 
                    out.println("<table>"
                               
                               + "<tr>"
                               + "<th>MATRICULA</th>"
                               + "<th>NOMBRE</th>"
                               + "<th>APELLIDO</th>"
                               + "<th>CJV</th>"
                               + "<th>DWI</th>"
                               + "<th>ACBD</th>"
                               + "<th>PROMEDIO</th>"
                               + "</tr>");
                  
               
                    for (int i=0;i<10;i++) 
                   
                       out.println("<tr>"
                            +"<td>"+alum[i].getMatricula() +"</td>"
                            +"<td>"+alum[i].getNombre()    +"</td>" 
                            +"<td>"+alum[i].getApellido() +"</td>"
                            +"<td>"+alum[i].getCjv()       +"</td>"
                            +"<td>"+alum[i].getDwi()       +"</td>"
                            +"<td>"+alum[i].getEcbd()      +"</td>"
                            +"<td>"+alum[i].Prom() +"</td>"
                         
                            +"</tr>");
                  out.println("</table>"); 
              %>
         
      </body>
</html>
