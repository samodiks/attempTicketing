package enumeration;

public enum  YesNo {
    YES("Yes"),
    NO("No");
 private final String displayName;

    YesNo(String displayName) {
        this.displayName = displayName;
    }

    public String getDisplayName() {
        return displayName;
    }

}
