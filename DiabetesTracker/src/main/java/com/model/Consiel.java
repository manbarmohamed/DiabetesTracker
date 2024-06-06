package com.model;
import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "consiel")
public class Consiel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idConsiel;

    @Column(length = 5000)
    private String description;

    private Integer maxGlycemia;

    private Integer minGlycemia;

    @OneToMany(mappedBy = "consiel", fetch = FetchType.LAZY)
    private List<GlycemiaReading> glycemiaReading;


    public Integer getIdConsiel() {
        return idConsiel;
    }

    public void setIdConsiel(Integer idConsiel) {
        this.idConsiel = idConsiel;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public List<GlycemiaReading> getGlycemiaReading() {
        return glycemiaReading;
    }

    public void setGlycemiaReading(List<GlycemiaReading> glycemiaReading) {
        this.glycemiaReading = glycemiaReading;
    }

    @Override
    public String toString() {
        return "Consiel{" +
                "idConsiel=" + idConsiel +
                ", description='" + description + '\'' +
                ", maxGlycemia=" + maxGlycemia +
                ", minGlycemia=" + minGlycemia +
                '}';
    }
}
