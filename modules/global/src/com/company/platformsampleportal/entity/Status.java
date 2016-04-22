package com.company.platformsampleportal.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

public enum Status implements EnumClass<Integer> {
    COOKING(10),
    DELIVERING(20),
    FINISHED(30),
    CANCELED(40);

    private Integer id;

    Status (Integer id) {
        this.id = id;
    }

    @Override
    public Integer getId() {
        return id;
    }

    public static Status fromId(Integer id) {
        for (Status status : Status.values()) {
            if (status.getId().equals(id))
                return status;
        }
        return null;
    }
}