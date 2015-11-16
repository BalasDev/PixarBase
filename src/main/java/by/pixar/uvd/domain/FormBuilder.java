package by.pixar.uvd.domain;


public class FormBuilder {

    private  String fieldName;
    private  String RusFieldName;
    private  String row;
    private  String value;

    public FormBuilder(String rusFieldName,String fieldName,  String row, String value) {
        this.fieldName = fieldName;
        this.RusFieldName = rusFieldName;
        this.row = row;
        this.value = value;
    }

     public FormBuilder(String rusFieldName,String fieldName,  String row) {
         this.fieldName = fieldName;
         RusFieldName = rusFieldName;
         this.row = row;
     }



    public String getFieldName() {
         return fieldName;
     }

     public void setFieldName(String fieldName) {
         this.fieldName = fieldName;
     }

     public String getRusFieldName() {
         return RusFieldName;
     }

     public void setRusFieldName(String rusFieldName) {
         RusFieldName = rusFieldName;
     }

     public String getRow() {
         return row;
     }

     public void setRow(String row) {
         this.row = row;
     }

     public String getValue() {
         return value;
     }

     public void setValue(String value) {
         this.value = value;
     }
 }
