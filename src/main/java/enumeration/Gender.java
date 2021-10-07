package enumeration;

public enum Gender {
    MALE("Male"),
    FEMALE("Female");

    private final String displayName;

    public String getDisplayName() {
        return displayName;
    }

    Gender(String displayName) {
        this.displayName = displayName;
    }
}
