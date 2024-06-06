package com.model;

import javax.persistence.*;

@Entity
@Table(name = "ropat")
public class Ropat {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idRopat;

    @Column(length = 5000)
    private String ingredient;

    private Integer maxGlycemia;

    private Integer minGlycemia;

    @ManyToOne
    @JoinColumn(name = "id_glycemia", nullable = false)
    private GlycemiaReading glycemiaReading;

    public Integer getIdRopat() {
        return idRopat;
    }

    public void setIdRopat(Integer idRopat) {
        this.idRopat = idRopat;
    }

    public String getIngredient() {
        return ingredient;
    }

    public void setIngredient(String ingredient) {
        this.ingredient = ingredient;
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
