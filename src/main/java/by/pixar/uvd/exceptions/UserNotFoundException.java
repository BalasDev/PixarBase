package by.pixar.uvd.exceptions;


public class UserNotFoundException extends RuntimeException {

    private String msg;

    public UserNotFoundException(String message, String msg) {
        super(message);
        this.msg = msg;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
