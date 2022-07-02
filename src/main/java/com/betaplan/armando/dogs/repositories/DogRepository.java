package com.betaplan.armando.dogs.repositories;

import com.betaplan.armando.dogs.models.Dog;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DogRepository extends CrudRepository<Dog,Long> {

    List<Dog> findAll();
}
