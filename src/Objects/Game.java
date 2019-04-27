package Objects;

public class Game {

    private String title;
    private String developer;
    private Boolean anyPerc;
    private Boolean perc100;
    private Boolean hasExtra;
    private Boolean extraPerc;

    public void Game(String title, String developer, Boolean anyPerc, Boolean perc100, Boolean hasExtra, Boolean extraPerc){
        this.title = title;
        this.developer = developer;
        this.anyPerc = anyPerc;
        this.perc100 = perc100;
        this.hasExtra = hasExtra;
        this.extraPerc = extraPerc;
    }

    public String getTitle() {
        return title;
    }

    public String getDeveloper() {
        return developer;
    }

    public Boolean getAnyPerc() {
        return anyPerc;
    }

    public void setAnyPerc(Boolean anyPerc) {
        this.anyPerc = anyPerc;
    }

    public Boolean getPerc100() {
        return perc100;
    }

    public void setPerc100(Boolean perc100) {
        this.perc100 = perc100;
    }

    public Boolean getHasExtra() {
        return hasExtra;
    }

    public void setHasExtra(Boolean hasExtra) {
        this.hasExtra = hasExtra;
    }

    public Boolean getExtraPerc() {
        return extraPerc;
    }

    public void setExtraPerc(Boolean extraPerc) {
        this.extraPerc = extraPerc;
    }

    @Override
    public String toString() {
        return "Game{" +
                "title='" + title + '\'' +
                ", developer='" + developer + '\'' +
                ", anyPerc=" + anyPerc +
                ", perc100=" + perc100 +
                ", hasExtra=" + hasExtra +
                ", extraPerc=" + extraPerc +
                '}';
    }
}
