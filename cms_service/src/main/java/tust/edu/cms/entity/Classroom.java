package tust.edu.cms.entity;

public class Classroom {
    private String num;
    private Integer seating;
    private boolean media;

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public Integer getSeating() {
        return seating;
    }

    public void setSeating(Integer seating) {
        this.seating = seating;
    }

    public boolean isMedia() {
        return media;
    }

    public void setMedia(boolean media) {
        this.media = media;
    }
}
