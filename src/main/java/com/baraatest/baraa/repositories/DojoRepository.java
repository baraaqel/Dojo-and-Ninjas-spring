package com.baraatest.baraa.repositories;

import java.util.List;

import com.baraatest.baraa.models.Dojo;
import org.springframework.data.repository.CrudRepository;


public interface DojoRepository extends CrudRepository<Dojo, Long>{
    List<Dojo> findAll();
}