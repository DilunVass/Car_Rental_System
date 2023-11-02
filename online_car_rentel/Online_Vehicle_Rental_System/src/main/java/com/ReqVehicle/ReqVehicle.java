package com.ReqVehicle;

public class ReqVehicle {
	
    String reqId;
    String vehicleId;
    String vehicleType;
    String NoOfDays;
    String ScheduleDate;

    public ReqVehicle(String reqId, String vehicleId, String vehicleType, String NoOfDays, String ScheduleDate) {
        this.reqId = reqId;
        this.vehicleId = vehicleId;
        this.vehicleType = vehicleType;
        this.NoOfDays = NoOfDays;
        this.ScheduleDate = ScheduleDate;
    }

    public String getReqId() {
        return reqId;
    }
    
    public String getVehicleId() {
        return vehicleId;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public String getNoOfDays() {
        return NoOfDays;
    }

    public String getScheduleDate() {
        return ScheduleDate;
    }

    public void setReqId(String reqId) {
        this.reqId = reqId;
    }

    public void setVehicleId(String vehicleId) {
        this.vehicleId = vehicleId;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public void setNoOfDays(String NoOfDays) {
        this.NoOfDays = NoOfDays;
    }

    public void setScheduleDate(String ScheduleDate) {
        this.ScheduleDate = ScheduleDate;
    }


}
