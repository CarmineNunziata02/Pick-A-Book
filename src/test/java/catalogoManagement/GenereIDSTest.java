package catalogoManagement;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Collection;

import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.times;

public class GenereIDSTest {
    private DataSource ds;
    private Connection connection;
    private GenereIDS genereIDS;

    @BeforeEach
    public void setUp() throws Exception {

        ds = Mockito.mock(DataSource.class);
        Mockito.when(ds.getConnection())
                .thenReturn(connection = mock(Connection.class));
        genereIDS = new GenereIDS(ds);
    }


    @Test
    @DisplayName("TCU2_1_1 doRetrieveAllTest- Generi Trovati")
    public void doRetrieveAllTest() throws Exception {
        PreparedStatement preparedStatement = Mockito.mock(PreparedStatement.class);
        ResultSet resultSet = Mockito.mock(ResultSet.class);


        Mockito.when(connection.prepareStatement(anyString())).thenReturn(preparedStatement);
        Mockito.when(preparedStatement.executeQuery()).thenReturn(resultSet);

        Mockito.when(resultSet.next()).thenReturn(true,true,true,true , false);
        Mockito.when(resultSet.getString("nome")).thenReturn("Azione", "Classici", "Commedia", "Crimine");


        Collection<String> result = genereIDS.doRetrieveAll();

        assertEquals(4, result.size());

        Mockito.verify(preparedStatement, times(1)).executeQuery();
        Mockito.verify(resultSet, times(5)).next();
        Mockito.verify(resultSet, times(4)).getString("nome");

    }

    @Test
    @DisplayName("TCU2_2_1 checkGenereNameTest- Genere Presente")
    public void checkGenereNameTest() throws Exception{
        PreparedStatement preparedStatement = Mockito.mock(PreparedStatement.class);
        ResultSet resultSet = Mockito.mock(ResultSet.class);


        Mockito.when(connection.prepareStatement(anyString())).thenReturn(preparedStatement);
        Mockito.when(preparedStatement.executeQuery()).thenReturn(resultSet);


        Mockito.when(resultSet.next()).thenReturn(true);

        assertTrue(genereIDS.checkGenereName("Azione"));

        Mockito.verify(preparedStatement,times(1)).setString(1, "Azione");
        Mockito.verify(preparedStatement, times(1)).executeQuery();
        Mockito.verify(resultSet,times(1)).next();
    }

    @Test
    @DisplayName("TCU2_2_2 checkGenereNameTest- Genere Non Presente")
    public void checkGenereNameTest_NotFound() throws Exception{
        PreparedStatement preparedStatement = Mockito.mock(PreparedStatement.class);
        ResultSet resultSet = Mockito.mock(ResultSet.class);


        Mockito.when(connection.prepareStatement(anyString())).thenReturn(preparedStatement);
        Mockito.when(preparedStatement.executeQuery()).thenReturn(resultSet);


        Mockito.when(resultSet.next()).thenReturn(false);

        assertFalse(genereIDS.checkGenereName("Fantascientifico"));

        Mockito.verify(preparedStatement,times(1)).setString(1, "Fantascientifico");
        Mockito.verify(preparedStatement, times(1)).executeQuery();
        Mockito.verify(resultSet,times(1)).next();
    }
}
