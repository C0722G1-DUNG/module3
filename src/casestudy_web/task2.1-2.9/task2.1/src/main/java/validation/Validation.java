package validation;

public class Validation {
    public static boolean checkCode(String code){
        String regexCode ="^M-\\d{4}$";
        return code.matches(regexCode);
    }
    public  static boolean checkName(String name){
        String regexName = "(([A-ZĐ][a-záàảãạăâắằấầặẵẫêậéèẻẽẹếềểễệóòỏõọôốồổỗộơớờởỡợíìỉĩịđùúủũụưứửữựỷỹ]+[ ])*)+[A-ZĐ][a-záàảãạăâắằấầặẵẫậéèẻẽẹếềểễệóòêỏõọôốồổỗộơớờởỡợíìỉĩịđùúủũụưứửữựỷỹ]";
    return name.matches(regexName);
    }
}
