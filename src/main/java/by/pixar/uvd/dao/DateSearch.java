package by.pixar.uvd.dao;

/**
 * Created by Balas on 09.02.2016.
 */
public enum DateSearch {
    BIRTHDAY(1),
    CALLOFOVD(2),
    CONTRACT(3),
    DATEOFCERTIFICATION(4),
    DATEOFGOTRANK(5),
    CLASSLEVELGOTDATE(6)
    ;

    private int val;

    DateSearch(int val) {
        this.val = val;
    }

    public int val(){
        return val;
    }



}
