package com.wu.pojo;

import org.springframework.stereotype.Repository;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Repository
public class Xinwen {

    private Integer id; //
    private String name; //政策名称
    private String type; //政策种类
    private String category; //用户密码
    private String range;  //实行范围
    private String document;  //政策文号
    private String form;   //发文主体
    private String organ; //发文机构
    private String viadata;    //通过日期
    private String pubdata;   //发布日期
    private String perdata; //每个时间
    private String text;     //正文


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getRange() {
        return range;
    }

    public void setRange(String range) {
        this.range = range;
    }

    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public String getOrgan() {
        return organ;
    }

    public void setOrgan(String organ) {
        this.organ = organ;
    }

    public String getViadata() {
        return viadata;
    }

    public void setViadata(String viadata) {
        this.viadata = viadata;
    }

    public String getPubdata() {
        return pubdata;
    }

    public void setPubdata(String pubdata) {
        this.pubdata = pubdata;
    }

    public String getPerdata() {
        return perdata;
    }

    public void setPerdata(String perdata) {
        this.perdata = perdata;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "Xinwen{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", category='" + category + '\'' +
                ", range='" + range + '\'' +
                ", document='" + document + '\'' +
                ", form='" + form + '\'' +
                ", organ='" + organ + '\'' +
                ", viadata='" + viadata + '\'' +
                ", pubdata='" + pubdata + '\'' +
                ", perdata='" + perdata + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
