package com.baraatest.baraa;



import com.baraatest.baraa.models.Dojo;
import com.baraatest.baraa.models.Ninja;
import com.baraatest.baraa.repositories.DojoRepository;
import com.baraatest.baraa.repositories.NinjaRepository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class AppService {
    private final DojoRepository dojoRepo;
    private final NinjaRepository ninjaRepo;
    public AppService(DojoRepository dRepo, NinjaRepository nRepo) {
        this.dojoRepo = dRepo;
        this.ninjaRepo = nRepo;
    }
    public Dojo createDojo(Dojo dojo) {
        return dojoRepo.save(dojo);
    }
    public Ninja createNinja(Ninja ninja) {
        return ninjaRepo.save(ninja);
    }
    public List<Dojo> allDojos() {
        return dojoRepo.findAll();
    }
    public List<Ninja> allNinjas() {
        return ninjaRepo.findAll();
    }
    public Dojo findDojo(Long id) {
        return this.dojoRepo.findById(id).orElse(null);
    }
}