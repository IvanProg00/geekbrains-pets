package org.geekbrains;

public class AnimalCounter {
    private Integer count;

    public AnimalCounter() {
        count = 0;
    }

    public Integer getCount() {
        return count;
    }

    public void increment() {
        count++;
    }
}
