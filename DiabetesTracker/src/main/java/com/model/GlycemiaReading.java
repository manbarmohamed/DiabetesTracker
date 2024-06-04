package com.model;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name = "glycemia_reading")
public class GlycemiaReading {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_glycemia")
    private Long id;
    @Column(name = "date")
    private LocalDate date;
    @Column(name = "name_patient")
    private String namePatient;
    @Column(name = "glycemia")
    private Double glycemia;
    @Column(name = "heart_beat")
    private Double HeartBeat;

    public GlycemiaReading() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getNamePatient() {
        return namePatient;
    }

    public void setNamePatient(String namePatient) {
        this.namePatient = namePatient;
    }

    public Double getGlycemia() {
        return glycemia;
    }

    public void setGlycemia(Double glycemia) {
        this.glycemia = glycemia;
    }

    public Double getHeartBeat() {
        return HeartBeat;
    }

    public void setHeartBeat(Double heartBeat) {
        HeartBeat = heartBeat;
    }

    @Override
    public String toString() {
        return "GlycemiaReading{" +
                "id=" + id +
                ", date=" + date +
                ", namePatient='" + namePatient + '\'' +
                ", glycemia=" + glycemia +
                ", HeartBeat=" + HeartBeat +
                '}';
    }
}
