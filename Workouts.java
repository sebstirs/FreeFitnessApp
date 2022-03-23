import java.util.*;

public class Workouts {
    //private final int defaultNumExercise = 1;
    //private final String defaultExerciseName = "Default";
    
    private int numExercies;

    Scanner myScanner = new Scanner(System.in);

    public Workouts(){

    }
    
    public int getNumExercise(){
        System.out.println("Enter the number exercises in this workout: ");
        numExercies = myScanner.nextInt();
        return this.numExercies;
    }
    public String[] exerciseList(){
        String[] myWorkout = {};
        Excercise myExcercise = new Excercise();
        for(int i =0; i < numExercies; i++){
            myExcercise.getSet();
            myExcercise.getRep();
            myExcercise.getWeight();
            myExcercise.getName();
            myWorkout[i] += myExcercise.returnExercise();
        }

        return myExcercise.returnExercise();
    }
}
