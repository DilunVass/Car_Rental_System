package com.Payment;

public class Payment {
	
    private int id;
    private String cardid;
    private String userid;
    private String vehicleid;
    private String rentalid;
    private String date;
    private String amount;


    public Payment(int id, String cardid, String userid, String vehicleid, String date, String amount, String rentalid) {
        this.id = id;
        this.cardid = cardid;
        this.userid = userid;
        this.vehicleid = vehicleid;
        this.rentalid = rentalid;
        this.date = date;
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public String getCardid() {
        return cardid;
    }

    public String getUserid() {
        return userid;
    }

    public String getVehicleid() {
        return vehicleid;
    }

    public String getRentalid() {
        return rentalid;
    }

    public String getDate() {
        return date;
    }

    public String getAmount() {
        return amount;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCardid(String cardid) {
        this.cardid = cardid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void setVehicleid(String vehicleid) {
        this.vehicleid = vehicleid;
    }

    public void setRentalid(String rentalid) {
        this.rentalid = rentalid;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }


}
