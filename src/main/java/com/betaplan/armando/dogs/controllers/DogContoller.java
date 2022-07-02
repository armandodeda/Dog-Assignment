package com.betaplan.armando.dogs.controllers;

import com.betaplan.armando.dogs.models.Dog;
import com.betaplan.armando.dogs.services.DogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

@Controller
public class DogContoller {

    @Autowired
    DogService dogService;

    @GetMapping("/")
    public String display(Model model ){
       model.addAttribute("dogs", dogService.getAllTravels());
        return "display.jsp";
    }

    @GetMapping("/new")
    public String addDog(@ModelAttribute("newDog") Dog newDog){
        return "new.jsp";
    }

    @PostMapping("/new/dog")
    public String createTravel(@Valid  @ModelAttribute("newDog") Dog newDog, @NotBlank BindingResult result){
        if(result.hasErrors())
            return "new.jsp";
        dogService.createDog(newDog);
        return "redirect:/";
    }

    @RequestMapping("/edit/{id}")
    public String editTravel(@PathVariable(value = "id") Long id, Model model){
        Dog dog = dogService.getDogDetails(id);
        model.addAttribute("forEditing", dog);
        return "edit.jsp";
    }

    @PutMapping("/updateDog/{id}")
    public String updateTravel(@Valid @ModelAttribute("forEditing") Dog dog, @NotBlank BindingResult result){
        if(result.hasErrors())
            return "edit.jsp";
        dogService.updateDog(dog);
        return "redirect:/";
    }

    @DeleteMapping("/dog/{id}")
    public String deleteTravel(@PathVariable("id") Long id){
        dogService.deleteDog(id);
        return "redirect:/";
    }

    @RequestMapping("/dogDetails/{id}")
    public String showDetails(@PathVariable("id") Long id,Model model){
        model.addAttribute("dog", dogService.getDogDetails(id));
        return "details.jsp";
    }
}
