package org.geekbrains.repository;

import org.geekbrains.exceptions.AnimalNotFound;
import org.geekbrains.models.PetModel;

import java.util.ArrayList;
import java.util.List;

public class PetRepository {
    private final List<PetModel> pets;

    public PetRepository() {
        this.pets = new ArrayList<>();
    }

    public void create(PetModel pet) {
        pets.add(pet);
    }

    public List<PetModel> list() {
        return pets;
    }

    public void addCommand(int petIndex, String command) throws AnimalNotFound {
        if (petIndex < 0 || petIndex >= pets.size()) {
            throw new AnimalNotFound();
        }
        pets.get(petIndex).addCommand(command);
    }
}
