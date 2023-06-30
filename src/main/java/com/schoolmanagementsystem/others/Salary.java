package com.schoolmanagementsystem.others;

import java.time.LocalDate;

public class Salary {

    private int baseSalary;
    private int rentPercentage;
    private int medicalAllowance;
    private int noOfChildren;
    private LocalDate date;

    public Salary(int baseSalary, int rentPercentage, int medicalAllowance, int noOfChildren, LocalDate date) {
        this.baseSalary = baseSalary;
        this.rentPercentage = rentPercentage;
        this.medicalAllowance = medicalAllowance;
        this.noOfChildren = noOfChildren;
        this.date = date;
    }

    public Salary() {

    }

    public int getBaseSalary() {
        return baseSalary;
    }

    public int getRentPercentage() {
        return rentPercentage;
    }

    public int getMedicalAllowance() {
        return medicalAllowance;
    }

    public int getNoOfChildren() {
        return noOfChildren;
    }

    public LocalDate getDate() {
        return date;
    }

}
