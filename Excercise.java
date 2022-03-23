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
import java.util.*;

public class Excercise {
    Scanner myScanner = new Scanner(System.in);
    private final int defaultvalue=1; // we can change the default value here
    private final double defaultweight=5;// default value for weight=5lbs
    private String excerciseName;
    private int sets;
    private int reps;
    private double weight; //weight calculated in lbs
    public Excercise(){

    }
    public Excercise(int s, int r, double w, String n){
        this.sets=s;
        this.reps=r;
        this.weight=w;
        this.excerciseName=n;
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
    public Excercise(String n){
        this.excerciseName=n; //we set name to default name
    }
    public String getName(){
        System.out.print("Enter the name of this exercise: ");
        excerciseName = myScanner.next();
        return this.excerciseName;
    }
    public int getSet(){
        System.out.print("Enter the number of sets in this exercise: ");
        sets = myScanner.nextInt();
        return this.sets;
    }
    public int getRep(){
        System.out.print("Enter the number of reps in this exercise: ");
        reps = myScanner.nextInt();
        return this.reps;
    }
    public double getWeight(){
        System.out.print("Enter the target weight in this exercise: ");
        weight = myScanner.nextInt();
        return this.weight;
    }
    public String[] returnExercise(){
        String [] exercise = {excerciseName, String.valueOf(reps), String.valueOf(sets), String.valueOf(weight)};
        return exercise;
    }
}
