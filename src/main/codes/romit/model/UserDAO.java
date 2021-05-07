package codes.romit.model;

public interface UserDAO {
    public void saveOrUpdate(User user);

    void delete(String email, int key);

    public User get(String email, int key);

    public User get(int id);
}
