package repo;

import java.sql.SQLException;
import java.util.List;

public interface CrudRepo <T>{
    boolean create(T t) throws SQLException;
    List<T> viewAll() throws SQLException;
    boolean edit(T t);
    boolean remove(T t);
}
