package lierengu.commons.contants;

public enum Contants {
    CODE("1","0");

    private final String success;
    private final String fail;

    public String getSuccess() {
        return success;
    }

    public String getFail() {
        return fail;
    }

    Contants(String success, String fail) {
        this.success = success;
        this.fail = fail;
    }
}
