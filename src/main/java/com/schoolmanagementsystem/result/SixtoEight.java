package com.schoolmanagementsystem.result;

public class SixtoEight extends PrimarySubject {
    private double wellbeing;
    private double crafts;

    private double social;

    public SixtoEight() {
        super();
    }

    public SixtoEight(int id, double Ban1, double Ban2, double Eng1, double Eng2, double reli, double science,
            double math, double wellbeing, double crafts, double social) {
        super(id, Ban1, Ban2, Eng1, Eng2, reli, science, math);

        this.wellbeing = wellbeing;
        this.crafts = crafts;
        this.social = social;
    }

}
