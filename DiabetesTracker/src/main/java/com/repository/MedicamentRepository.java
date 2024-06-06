package com.repository;

import com.model.Medicament;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MedicamentRepository extends JpaRepository<Medicament, Integer> {
}

