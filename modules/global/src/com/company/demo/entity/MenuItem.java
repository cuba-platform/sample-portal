package com.company.demo.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@NamePattern("%s - %s USD|name,price")
@Table(name = "DEMO_MENU_ITEM")
@Entity(name = "demo$MenuItem")
public class MenuItem extends StandardEntity {
    private static final long serialVersionUID = 581089908970270007L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "WEIGHT")
    protected Integer weight;

    @Column(name = "PRICE")
    protected Integer price;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getPrice() {
        return price;
    }


}