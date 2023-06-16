package com.schoolmanagementsystem.result;

public class NinetoTen extends SixtoEight {
    private double history;
    private double logic;

    private double economics;
    private double business;

    public NinetoTen() {
        super();
    }

    public NinetoTen(int id, double Ban1, double Ban2, double Eng1, double Eng2, double reli, double science,
            double math, double wellbeing, double crafts, double social, double economics, double history, double logic,
            double business) {
        super(id, Ban1, Ban2, Eng1, Eng2, reli, science, math, wellbeing, crafts, social);
        this.logic = logic;
        this.business = business;
        this.economics = economics;
        this.history = history;
    }

}
