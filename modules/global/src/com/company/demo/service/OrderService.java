package com.company.demo.service;


import com.company.demo.entity.Order;
import com.company.demo.entity.OrderItem;

import java.util.List;

public interface OrderService {
    String NAME = "demo_OrderService";

    Order placeOrder(List<OrderItem> items);

    List<Order> getUserOrders();

    void cancelOrder(Order order);
}