package enumeration;

public enum EventStatus {
    ACTIVE("Active"),
    POSTPONE("Postpone"),
    ENDED("Ended");

    private final String displayName;

    EventStatus(String displayName) {
        this.displayName = displayName;
    }
    public String getDisplayName() {
        return displayName;
    }
}
