package codes.romit.model;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class User {
    private int id;

    private String email;

    private String name;

    private String location;

    private String dateOfBirth;

    private String mobile;

    private String password;

    private int passwordHash;

    // CONSTRUCTORS
    public User(){
        this("","","","","","");
    }

    public User(String email,
                String password,
                String name,
                String dateOfBirth,
                String mobile,
                String location){

        this.email = email;
        this.password = password;
        this.passwordHash = password.hashCode();
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.mobile = mobile;
        this.location = location;
    }

    public void generateHash(){
        passwordHash = password.hashCode();
        password = null;
    }

    // GETTERS AND SETTERS

    public String getEmail() {
        return email;
    }

    public void setEmail(String username) {
        this.email = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public int getPasswordHash() {
        return passwordHash;
    }

    private void setPasswordHash(int passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
