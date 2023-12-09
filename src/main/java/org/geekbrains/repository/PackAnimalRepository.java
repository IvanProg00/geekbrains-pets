package org.geekbrains.repository;

import org.geekbrains.exceptions.AnimalNotFound;
import org.geekbrains.models.PackAnimalModel;

import java.util.ArrayList;
import java.util.List;

public class PackAnimalRepository {
    private final List<PackAnimalModel> packAnimals;

    public PackAnimalRepository() {
        this.packAnimals = new ArrayList<>();
    }

    public void create(PackAnimalModel packAnimal) {
        packAnimals.add(packAnimal);
    }

    public List<PackAnimalModel> list() {
        return packAnimals;
    }

    public void addCommand(int petIndex, String command) throws AnimalNotFound {
        if (petIndex < 0 || petIndex >= packAnimals.size()) {
            throw new AnimalNotFound();
        }
        packAnimals.get(petIndex).addCommand(command);
    }
}
