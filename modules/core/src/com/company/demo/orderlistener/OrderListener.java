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

package com.company.demo.orderlistener;

import com.company.demo.entity.Status;
import com.haulmont.cuba.core.global.UserSessionSource;
import com.haulmont.cuba.security.entity.User;
import org.springframework.stereotype.Component;
import com.haulmont.cuba.core.listener.BeforeInsertEntityListener;
import com.company.demo.entity.Order;

import javax.inject.Inject;

@Component("demo_OrderListener")
public class OrderListener implements BeforeInsertEntityListener<Order> {

    @Inject
    private UserSessionSource userSessionSource;

    @Override
    public void onBeforeInsert(Order entity) {
        User currentUser = userSessionSource.getUserSession().getUser();
        if (entity.getUser() == null) {
            entity.setUser(currentUser);
            entity.setStatus(Status.COOKING);
        }
    }
}