package codes.romit.model;

public class Credentials {
    private int key;
    private String email;
    private String password;

    public Credentials(){
        email = "";
        password = "";
    }

    public void generateHash(){
        key = password.hashCode();
        password = null;
    }

    public int getKey() {
        return key;
    }

    public void setKey(int key) {
        this.key = key;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
