package com.betaplan.armando.dogs.services;

import com.betaplan.armando.dogs.models.Dog;
import com.betaplan.armando.dogs.repositories.DogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DogService {

    @Autowired
    DogRepository dogRepo;

    public List<Dog> getAllTravels(){
        return dogRepo.findAll();
    }

    public void createDog(Dog dog){
        dogRepo.save(dog);
    }

    public Dog getDogDetails(Long id){
        return dogRepo.findById(id).orElse(null);
    }

    public void updateDog(Dog dog){
        dogRepo.save(dog);
    }

    public void deleteDog(Long id){
        dogRepo.deleteById(id);
    }
}
