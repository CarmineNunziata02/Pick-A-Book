package view.catalogo;

import catalogoManagement.Prodotto;
import catalogoManagement.ProdottoIDS;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;
import java.io.*;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024,
		maxFileSize = 1024 * 1024 * 10,
		maxRequestSize = 1024 * 1024 * 11
)
@WebServlet("/AddProdottoServlet")
public class AddProdottoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;


//generica metto i metodi in giornata

	/*** MACRO ***/

	private static final String ISBN = "isbn";
	private static final String NOME = "nome";
	private static final String AUTORE = "autore";
	private static final String DESCRIZIONE = "descrizione";
	private static final String PREZZO = "prezzo";
	private static final String QUANTITA = "quantita";
	private static final String GENERE = "genere";
	private static final String CATEGORIA = "categoria";

	private static final String STATUS = "status";

	private static final String URL = "url";

	private static final String contentType = "application/json";

	/*** LOGGER ***/
	private static final Logger logger = Logger.getLogger(AddProdottoServlet.class.getName());
	private static final String ERROR = "Errore";
}
