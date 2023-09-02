package com.wu.pojo;

import java.util.List;

public class Tree {

    public String label;
    public List<Tree> children;


    public Tree() {
    }

    public Tree(String label, List<Tree> children) {
        this.label = label;
        this.children = children;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public List<Tree> getChildren() {
        return children;
    }

    public void setChildren(List<Tree> children) {
        this.children = children;
    }
}
