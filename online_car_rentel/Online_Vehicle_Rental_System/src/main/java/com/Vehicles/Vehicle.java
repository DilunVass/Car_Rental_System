package com.Vehicles;

public class Vehicle {
	
	private int id;
    private String Type;
    private String Model;
    private String Number;
    private String Color;
    private String EnNumber;
    private String Year;
    private String Features;
    private String Photo;
    private String Schedule;

    public Vehicle(int id, String type, String model, String number, String color, String enNumber, String year, String features, String photo, String schedule) {
        this.id = id;
        Type = type;
        Model = model;
        Number = number;
        Color = color;
        EnNumber = enNumber;
        Year = year;
        Features = features;
        Photo = photo;
        Schedule = schedule;
    }

    public int getId() {
        return id;
    }

    public String getType() {
        return Type;
    }

    public String getModel() {
        return Model;
    }

    public String getNumber() {
        return Number;
    }

    public String getColor() {
        return Color;
    }

    public String getEnNumber() {
        return EnNumber;
    }

    public String getYear() {
        return Year;
    }

    public String getFeatures() {
        return Features;
    }

    public String getPhoto() {
        return Photo;
    }

    public String getSchedule() {
        return Schedule;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setType(String type) {
        Type = type;
    }

    public void setModel(String model) {
        Model = model;
    }

    public void setNumber(String number) {
        Number = number;
    }

    public void setColor(String color) {
        Color = color;
    }

    public void setEnNumber(String enNumber) {
        EnNumber = enNumber;
    }

    public void setYear(String year) {
        Year = year;
    }

    public void setFeatures(String features) {
        Features = features;
    }

    public void setPhoto(String photo) {
        Photo = photo;
    }

    public void setSchedule(String schedule) {
        Schedule = schedule;
    }


    

}
