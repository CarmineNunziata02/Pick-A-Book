package catalogoManagement;

import utenteManagement.PasswordUtils;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GestoreCatalogoIDS implements GestoreCatalogoDAO{

	private DataSource ds = null;
	private Connection connection = null;

	public GestoreCatalogoIDS(DataSource ds) {
		super();
		this.ds = ds;
		try {
			connection = ds.getConnection();
		} catch (SQLException e) {
			logger.log(Level.ALL, ERROR, e);
		}
	}

	@Override
	public Boolean doSaveGestore(GestoreCatalogo gestoreCatalogo) throws SQLException {

	}

	@Override
	public Boolean doUpdateGestore(GestoreCatalogo gestoreCatalogo) throws SQLException {

	}

	@Override
	public Boolean doDeleteGestore(String email) throws SQLException {

	}

	@Override
	public GestoreCatalogo doRetrieveByAuthentication(String email, String password) throws SQLException {

	}

	/*** MACRO ***/
	private static final String TABLE = "gestore_catalogo";
	private static final String NOME = "nome";
	private static final String COGNOME = "cognome";

	/*** LOGGER ***/
	private static final Logger logger = Logger.getLogger(GestoreCatalogoIDS.class.getName());
	private static final String ERROR = "Errore";

}
