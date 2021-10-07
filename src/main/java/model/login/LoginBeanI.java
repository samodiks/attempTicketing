package model.login;

public interface LoginBeanI<T> {
    boolean checkUser(T t) throws Exception;
}
