package com.schoolmanagementsystem.result;

public class CompulsorySubject{
    private double Ban1;
    private double Ban2;
    private double Eng1;
    private double Eng2;

    private int Class;

    public CompulsorySubject() {
        super();
    }

    public CompulsorySubject(int Class, double Ban1, double Ban2, double Eng1, double Eng2) {
        this.Ban1 = Ban1;
        this.Ban2 = Ban2;
        this.Eng1 = Eng1;
        this.Eng2 = Eng2;
        this.Class = Class;
    }

}
