package com.codegym.server;

import com.codegym.model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerServer {
    static List<Customer> customers = new ArrayList<>();
    static int count;
    static {
        customers.add(new Customer(count++,"Phong","15/3","ha nam"));
        customers.add(new Customer(count++,"Dai","kb","Hatinh"));
        customers.add(new Customer(count++,"Quynh","kb","Hanoi"));
        customers.add(new Customer(count++,"Huyen","kb","Hoabinh"));
    }
    public List<Customer> fillAll() {
        return customers;
    }
    public void add(Customer customer) {
        customers.add(customer);
    }
    public long getCount() {
        return count;
    }
    public Customer findOne(int id) {
        return customers.get(id);
    }
}
