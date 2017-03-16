package com.bataille.navale.beans;

import javafx.stage.Stage;

import java.util.ArrayList;

/**
 * Created by Mol on 16/03/2017.
 */

public class StageInterface {
    private Integer width;
    private Integer height;
    private String title;

    public Integer getWidth() {
        return width;
    }

    public void setWidth(Integer width) {
        this.width = width;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public StageInterface(Integer width, Integer height, String title) {
        this.width = width;
        this.height = height;
        this.title = title;
    }
}
