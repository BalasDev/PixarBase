package by.pixar.uvd.domain;

public enum AtributePersonal {
    NAME("���", "firstName");
    private String view;
    private String field;

    AtributePersonal(String view, String field) {
        this.view = view;
        this.field = field;
    }

}
