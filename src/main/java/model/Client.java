package model;

import enumeration.Gender;
import enumeration.YesNo;

public class Client {
    private int id;
    private String clientId;
    private String clientName;
    private String email;
    private String clientAddress;
    private Gender gender;
    private String dob;
    private YesNo deleted;

    public Client(int id, String clientId, String clientName, String email, String clientAddress, Gender gender, String dob, YesNo deleted) {
        this.id = id;
        this.clientId = clientId;
        this.clientName = clientName;
        this.email = email;
        this.clientAddress = clientAddress;
        this.gender = gender;
        this.dob = dob;
        this.deleted = deleted;
    }

    public Client() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClientAddress() {
        return clientAddress;
    }

    public void setClientAddress(String clientAddress) {
        this.clientAddress = clientAddress;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public YesNo getDeleted() {
        return deleted;
    }

    public void setDeleted(YesNo deleted) {
        this.deleted = deleted;
    }
}
