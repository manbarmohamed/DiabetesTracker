package com.model;

import javax.persistence.*;

@Entity
@Table(name = "medicament")
public class Medicament {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idMedicament;

    @Column(length = 5000)
    private String label;

    private Integer dose;

    private Integer maxGlycemia;

    private Integer minGlycemia;

    @ManyToOne
    @JoinColumn(name = "id_glycemia", nullable = false)
    private GlycemiaReading glycemiaReading;


    public Integer getIdMedicament() {
        return idMedicament;
    }

    public void setIdMedicament(Integer idMedicament) {
        this.idMedicament = idMedicament;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public Integer getDose() {
        return dose;
    }

    public void setDose(Integer dose) {
        this.dose = dose;
    }

    public Integer getMaxGlycemia() {
        return maxGlycemia;
    }

    public void setMaxGlycemia(Integer maxGlycemia) {
        this.maxGlycemia = maxGlycemia;
    }

    public Integer getMinGlycemia() {
        return minGlycemia;
    }

    public void setMinGlycemia(Integer minGlycemia) {
        this.minGlycemia = minGlycemia;
    }

    public GlycemiaReading getGlycemiaReading() {
        return glycemiaReading;
    }

    public void setGlycemiaReading(GlycemiaReading glycemiaReading) {
        this.glycemiaReading = glycemiaReading;
    }
}

