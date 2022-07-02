package com.betaplan.armando.dogs.models;

import com.sun.istack.NotNull;
import org.aspectj.lang.annotation.RequiredTypes;
import org.hibernate.annotations.NotFound;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name="dogs")
public class Dog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @NotBlank
    @Size(min=1,max = 100)
    private String name;

    @NotBlank
    @Size(min=1,max = 100)
    private String breed;

    @NotNull
    @PositiveOrZero
    private Integer age;

    @NotNull
    private Boolean house_broken;

    public Dog(String name, String breed, Integer age, Boolean house_broken) {
        this.name = name;
        this.breed = breed;
        this.age = age;
        this.house_broken = house_broken;
    }

    public Dog() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Boolean getHouse_broken() {
        return house_broken;
    }

    public void setHouse_broken(Boolean house_broken) {
        this.house_broken = house_broken;
    }
}
