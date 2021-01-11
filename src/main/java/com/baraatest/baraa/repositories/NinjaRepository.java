package com.baraatest.baraa.repositories;


import com.baraatest.baraa.models.Ninja;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface NinjaRepository extends CrudRepository<Ninja, Long> {
    List<Ninja> findAll();
}