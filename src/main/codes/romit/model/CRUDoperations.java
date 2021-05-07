package codes.romit.model;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.NoSuchElementException;

public class CRUDoperations implements UserDAO{
    private JdbcTemplate jdbcTemplate;

    public CRUDoperations(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void saveOrUpdate(User u) {
        if(u.getId() > 0){
            String sql = "UPDATE \"user\" SET name=?, email=?, dob=?, mobile=?, location=?" +
                            "WHERE id=?";
            jdbcTemplate.update(sql,u.getName(),u.getEmail(),u.getDateOfBirth(),
                    u.getMobile(),u.getLocation(),u.getId());
        }
        else{
            String sql = "INSERT INTO \"user\" (name, email, dob, key, mobile, location) " +
                    "VALUES (?, ?, ?, ?, ?, ?)";
            jdbcTemplate.update(sql, u.getName(), u.getEmail(), u.getDateOfBirth(),
                    u.getPasswordHash(), u.getMobile(), u.getLocation());
        }
    }

    @Override
    public void delete(String email, int key) {
        String sql = "DELETE FROM \"user\" WHERE email=? AND key=?";
        jdbcTemplate.update(sql, email, key);
    }

    @Override
    public User get(String email, int key) throws NoSuchElementException{
        String sql = "SELECT * FROM \"user\" WHERE email=? AND key=?";
        Object[] args = new Object[2];
        args[0] = email; args[1] = key;
        return getUser(sql, args);
    }

    @Override
    public User get(int id) {
        String sql = "SELECT * FROM \"user\" WHERE id=?";
        Object[] args = new Object[1];
        args[0] = id;
        return getUser(sql, args);
    }

    private User getUser(String sql, Object[] args) {
        return jdbcTemplate.query(sql,args,new ResultSetExtractor<User>() {
            @Override
            public User extractData(ResultSet resultSet) throws SQLException, DataAccessException {
                if(resultSet.next()) {
                    User user = new User();
                    user.setId(resultSet.getInt("id"));
                    user.setName(resultSet.getString("name"));
                    user.setEmail(resultSet.getString("email"));
                    user.setMobile(resultSet.getString("mobile"));
                    user.setDateOfBirth(resultSet.getString("dob"));
                    user.setLocation(resultSet.getString("location"));
                    return user;
                }
                throw new NoSuchElementException();
            }
        });
    }
}
