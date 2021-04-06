package utils;

import org.junit.Test;

import java.util.Random;
import java.util.Scanner;

public class Util {


    public static int gamennum(){
        Random random=new Random();
        return random.nextInt(100)+1;
    }


    public static int GetRandom_longsize(){
        Random random=new Random();
        int i = random.nextInt(10000000);
        return i+10000000;
    }

    public static int GetRandom_zero2ten(){
        Random random=new Random();
        int i = random.nextInt(10);
        return i;
    }

     public static int GetRandom_zero2three(){
        Random random=new Random();
        int i = random.nextInt(3);
        return i;
    }
    public static String GetRandS(){
        int i = Util.GetRandom_zero2three();
        switch (i){
            case 0:
                return "+";
            case 1:
                return "-";
            case 2:
                return "*";
        }
        return null;
    }








}
