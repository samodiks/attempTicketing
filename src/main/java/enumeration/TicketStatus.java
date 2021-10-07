package enumeration;

public enum TicketStatus {
    ACTIVE ("Active"),
    Expired ("Expired"),
    PURCHASED ("Purchased"),
    USED ("Used");

    private final  String displayName;


    TicketStatus(String displayName) {
        this.displayName = displayName;
    }

    public String getDisplayName() {
        return displayName;
    }
}
