<%@ page import="utenteManagement.User" %>
<%@ page import="acquistoManagement.Carrello" %>

<% Object user = session.getAttribute("user");
	String text = "Accedi";
    String numeroProdotti = "";
	if(user != null && user instanceof User) {
        Carrello carrello = (Carrello) session.getAttribute("carrello");
        numeroProdotti = String.valueOf(carrello.getListaProdotti().size());
        text = "Area Personale";
    }
	else if(user != null)     
	text = "Area Personale";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <header class="main-head">
    <nav>
	      <h1 id="logo">‎‎‎‎‎‎‎‎.</h1>
	      <ul>
	        <li><a href="./index.jsp"><img src="./icons/home.ico" title="Homepage">Home</a></li>
	        <li><a href="./catalogo.jsp"><img src="./icons/book.ico" title="Catalogo">Catalogo</a></li>
  	        <li>
		      <a href="./carrello.jsp"><img src="./icons/cart.ico" title="Carrello">Carrello</a>
	        </li>
	        <li><a href="./areapersonale.jsp"><img src="./icons/user.ico" title="<%=text%>"> <%= text %> </a></li>
	      </ul>
    </nav>
  </header>
