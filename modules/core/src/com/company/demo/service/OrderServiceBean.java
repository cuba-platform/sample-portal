package com.company.demo.service;

import com.company.demo.entity.Order;
import com.company.demo.entity.OrderItem;
import com.company.demo.entity.Status;
import com.haulmont.cuba.core.entity.Entity;
import com.haulmont.cuba.core.global.*;
import com.haulmont.cuba.security.entity.User;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Service(OrderService.NAME)
public class OrderServiceBean implements OrderService {

    @Inject
    private Metadata metadata;
    @Inject
    private DataManager dataManager;
    @Inject
    private UserSessionSource userSessionSource;

    @Override
    public Order placeOrder(List<OrderItem> items) {
        Order order = metadata.create(Order.class);
        items.forEach(item -> item.setOrder(order));

        CommitContext commitContext = new CommitContext(items).addInstanceToCommit(order);

        Set<Entity> resultSet = dataManager.commit(commitContext);

        Entity entity = resultSet.stream()
                .filter(e -> e instanceof Order)
                .findFirst()
                .orElseThrow( () -> new RuntimeException("Unable to retrieve created order"));

        return (Order) entity;
    }

    @Override
    public List<Order> getUserOrders() {
        User user = userSessionSource.getUserSession().getUser();

        LoadContext<Order> lc = new LoadContext<>(Order.class).setView("order-view");
        lc.setQueryString("select o from demo$Order o where o.user.id = :uid order by o.createTs desc")
                .setParameter("uid", user.getId());

        return dataManager.loadList(lc);
    }

    @Override
    public void cancelOrder(Order order) {
        Objects.requireNonNull(order);

        order = dataManager.reload(order, View.LOCAL);
        order.setStatus(Status.CANCELED);

        dataManager.commit(order);
    }


}