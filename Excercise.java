/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package excerciseclass;

/**
 *
 * @author hoangdao
 */
public class Excercise {
    private final int defaultvalue=0; // we can change the default value here
    private final double defaultweight=5;// default value for weight=5lbs
    private int sets;
    private int reps;
    private double weight; //weight calculated in lbs
    public Excercise(int s, int r, double w){
        this.sets=s;
        this.reps=r;
        this.weight=w;
    }
    public Excercise(double w){
        this.weight=w;
        this.sets=defaultvalue; //we set "sets" as default value
        this.reps=defaultvalue;//we set "reps" as default value
    }
    public Excercise(int s,int r){
        this.sets=s;
        this.reps=r;
        this.weight=defaultweight; // we set weight as default weight value
    }
    public int getRep(){
        return this.reps;
    }
    public int getSet(){
        return this.sets;
    }
    public double getWeight(){
        return this.weight;
    }
}
