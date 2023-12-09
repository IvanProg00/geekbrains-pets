package org.geekbrains.models;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

public class PackAnimalModel {
    private final Set<String> commands;
    private String name;
    private String animalType;
    private Date birthDate;

    public PackAnimalModel(String name, String animalType, Date birthDate, Set<String> commands) {
        this.name = name;
        this.animalType = animalType;
        this.birthDate = birthDate;
        this.commands = commands;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAnimalType() {
        return animalType;
    }

    public void setAnimalType(String animalType) {
        this.animalType = animalType;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public Set<String> getCommands() {
        return commands;
    }

    public void addCommand(String command) {
        this.commands.add(command);
    }

    @Override
    public String toString() {
        return "name: " + name + "; " +
                "animal type: " + animalType + "; " +
                "birth date: " + new SimpleDateFormat("yyyy-MM-dd").format(birthDate) + "; " +
                "commands: " + commands;
    }
}
