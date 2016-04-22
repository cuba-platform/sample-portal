/*
 * Copyright (c) 2016 platform-sample-portal
 */
package com.company.platformsampleportal.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.haulmont.cuba.core.entity.annotation.Listeners;
import com.haulmont.cuba.security.entity.User;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import com.haulmont.cuba.core.entity.StandardEntity;
import java.util.Set;
import javax.persistence.OneToMany;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import javax.persistence.Column;

/**
 * @author petunin
 */
@Listeners("platformsampleportal_OrderListener")
@NamePattern("%s %s %s|food,user,createTs")
@Table(name = "PLATFORMSAMPLEPORTAL_ORDER")
@Entity(name = "platformsampleportal$Order")
public class Order extends StandardEntity {
    private static final long serialVersionUID = -3917135553904396951L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "USER_ID")
    protected User user;

    @JoinTable(name = "PLATFORMSAMPLEPORTAL_ORDER_FOOD_LINK",
        joinColumns = @JoinColumn(name = "ORDER_ID"),
        inverseJoinColumns = @JoinColumn(name = "FOOD_ID"))
    @ManyToMany
    protected Set<Food> food;

    @Column(name = "STATUS")
    protected Integer status;

    public void setStatus(Status status) {
        this.status = status == null ? null : status.getId();
    }

    public Status getStatus() {
        return status == null ? null : Status.fromId(status);
    }


    public Set<Food> getFood() {
        return food;
    }

    public void setFood(Set<Food> food) {
        this.food = food;
    }


    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }


}