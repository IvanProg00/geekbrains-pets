package org.geekbrains.service;

import org.geekbrains.exceptions.AnimalNotFound;
import org.geekbrains.exceptions.InvalidAnimalType;
import org.geekbrains.models.PackAnimalModel;
import org.geekbrains.models.PetModel;
import org.geekbrains.repository.PackAnimalRepository;
import org.geekbrains.repository.PetRepository;

import java.util.Date;
import java.util.HashSet;
import java.util.List;

public class AnimalService {
    private final PetRepository petRepository;
    private final PackAnimalRepository packAnimalRepository;

    public AnimalService(PetRepository petRepository, PackAnimalRepository packAnimalRepository) {
        this.petRepository = petRepository;
        this.packAnimalRepository = packAnimalRepository;
    }

    public List<PetModel> listPets() {
        return petRepository.list();
    }

    public List<PackAnimalModel> listPackAnimals() {
        return packAnimalRepository.list();
    }

    public void createAnimal(String name, String animalType, Date birthDate) throws InvalidAnimalType {
        switch (animalType) {
            case "dog", "cat", "hamster" -> {
                PetModel pet = new PetModel(name, animalType, birthDate, new HashSet<>());
                petRepository.create(pet);
            }
            case "donkey", "horse", "camel" -> {
                PackAnimalModel packAnimal = new PackAnimalModel(name, animalType, birthDate, new HashSet<>());
                packAnimalRepository.create(packAnimal);
            }
            default -> throw new InvalidAnimalType();
        }
    }

    public void addCommandToPet(int petIndex, String command) throws AnimalNotFound {
        petRepository.addCommand(petIndex, command);
    }

    public void addCommandToPackAnimal(int petIndex, String command) throws AnimalNotFound {
        packAnimalRepository.addCommand(petIndex, command);
    }
}
