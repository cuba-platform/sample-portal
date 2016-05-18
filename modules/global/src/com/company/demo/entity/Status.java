/*
 * Copyright (c) 2016 Haulmont
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.company.demo.entity;

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