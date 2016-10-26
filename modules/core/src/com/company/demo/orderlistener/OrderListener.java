package com.company.demo.orderlistener;

import com.company.demo.entity.Status;
import com.haulmont.cuba.core.global.UserSessionSource;
import com.haulmont.cuba.security.entity.User;
import org.springframework.stereotype.Component;
import com.haulmont.cuba.core.listener.BeforeInsertEntityListener;
import com.company.demo.entity.Order;

import javax.inject.Inject;
import com.haulmont.cuba.core.EntityManager;

@Component("demo_OrderListener")
public class OrderListener implements BeforeInsertEntityListener<Order> {

    @Inject
    private UserSessionSource userSessionSource;

    @Override
    public void onBeforeInsert(Order entity, EntityManager entityManager) {
        User currentUser = userSessionSource.getUserSession().getUser();
        if (entity.getUser() == null) {
            entity.setUser(currentUser);
            entity.setStatus(Status.COOKING);
        }
    }
}