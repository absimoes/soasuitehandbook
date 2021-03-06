package saibot.airport.finance;

import java.io.Serializable;

import java.util.Date;

public class AircraftMovement implements Serializable {
    @Override
    public String toString() {
        return "Aircraft Movement: at "+movementTimestamp+" for flight "+ carrierIataCode;
    }

    Date movementTimestamp   ;
    Integer flightnumber    ;
    String carrierIataCode  ;
    String airportIataCode ;
    String arrivalOrDeparture ;
    String aircraftIataEquipmentCode ;
    Integer numberOfPassengers ;

    public void setMovementTimestamp(Date movementTimestamp) {
        this.movementTimestamp = movementTimestamp;
    }

    public Date getMovementTimestamp() {
        return movementTimestamp;
    }

    public void setFlightnumber(Integer flightnumber) {
        this.flightnumber = flightnumber;
    }

    public Integer getFlightnumber() {
        return flightnumber;
    }

    public void setCarrierIataCode(String carrierIataCode) {
        this.carrierIataCode = carrierIataCode;
    }

    public String getCarrierIataCode() {
        return carrierIataCode;
    }

    public void setAirportIataCode(String airportIataCode) {
        this.airportIataCode = airportIataCode;
    }

    public String getAirportIataCode() {
        return airportIataCode;
    }

    public void setArrivalOrDeparture(String arrivalOrDeparture) {
        this.arrivalOrDeparture = arrivalOrDeparture;
    }

    public String getArrivalOrDeparture() {
        return arrivalOrDeparture;
    }

    public void setAircraftIataEquipmentCode(String aircraftIataEquipmentCode) {
        this.aircraftIataEquipmentCode = aircraftIataEquipmentCode;
    }

    public String getAircraftIataEquipmentCode() {
        return aircraftIataEquipmentCode;
    }

    public void setNumberOfPassengers(Integer numberOfPassengers) {
        this.numberOfPassengers = numberOfPassengers;
    }

    public Integer getNumberOfPassengers() {
        return numberOfPassengers;
    }
}
