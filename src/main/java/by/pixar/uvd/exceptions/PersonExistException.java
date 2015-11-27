package by.pixar.uvd.exceptions;


public class PersonExistException extends RuntimeException {
    // Подумать над
    private final String MSG = "Такая запись уже существует";

    public String getMSG() {
        return MSG;
    }

}
