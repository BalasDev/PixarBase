package by.pixar.uvd.exceptions;


public class UserExistException extends RuntimeException {

    private final String MSG = "Пользователь с таким логином уже существует";

    public String getMSG() {
        return MSG;
    }
}
