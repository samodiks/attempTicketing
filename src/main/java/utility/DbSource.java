package utility;

import com.mysql.cj.jdbc.MysqlDataSource;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DbSource {

        private static DataSource ds;
        private DataSource dataSource;

        private MysqlDataSource mysqlDs =  new MysqlDataSource();

        private DbSource(){
            try{
                InitialContext initialContext= new InitialContext();
                dataSource= (DataSource)initialContext.lookup("java:jboss/datasources/Ticketing");
            }
            catch(Exception ex) {
                System.out.println(ex.getMessage());
            }

        }

        public static DataSource getInstance(){
            if (ds == null)
                ds = new DbSource().getDataSource();

            return ds;
        }
/*
        public MysqlDataSource getMysqlDs() {
            return mysqlDs;
        }

        public void setMysqlDs(MysqlDataSource mysqlDs) {
            this.mysqlDs = mysqlDs;
        }
  */

    public DataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }
}
