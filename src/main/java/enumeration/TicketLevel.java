package enumeration;

public enum  TicketLevel {
    VVIP("VVIP"),
    VIP("VIP"),
    REGULAR("Regular");

    private final String displayName;

    public String getDisplayName() {
        return displayName;
    }

    TicketLevel(String displayName) {
        this.displayName = displayName;
    }
}
