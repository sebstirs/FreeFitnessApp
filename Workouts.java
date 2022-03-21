public class Workouts {
    private final int defaultNumExercise = 1;
    private final String defaultExerciseName = "Default";
    
    private int numExercies;
    private String exerciseName;
    
    public Workouts(int num, String name){
        this.numExercies=num;
        this.exerciseName=name;
    }
    public int getNumExercise(){
        return this.numExercies;
    }
    public String getExerciseName(){
        return this.exerciseName;
    }

}
