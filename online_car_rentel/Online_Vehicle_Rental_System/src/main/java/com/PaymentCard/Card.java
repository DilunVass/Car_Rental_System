package com.PaymentCard;

public class Card {

    private int id;
    private String name;
    private String cardNumber;
    private String cvv;
    private String expDate;
    

    public Card(int id, String name, String cardNumber, String cvv, String expDate) {
        this.id = id;
        this.name = name;
        this.cardNumber = cardNumber;
        this.cvv = cvv;
        this.expDate = expDate;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public String getCvv() {
        return cvv;
    }

    public String getExpDate() {
        return expDate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    public void setExpDate(String expDate) {
        this.expDate = expDate;
    }

}
