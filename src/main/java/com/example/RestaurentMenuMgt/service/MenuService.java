package com.example.RestaurentMenuMgt.service;

import com.example.RestaurentMenuMgt.model.MenuItem;
import com.example.RestaurentMenuMgt.repository.MenuItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuService {

    @Autowired
    private MenuItemRepository repository;

    public List<MenuItem> getAllMenuItems() {
        return repository.findAll();
    }

    public MenuItem save(MenuItem item) {
        return repository.save(item);
    }

    public MenuItem findById(Long id) {
        return repository.findById(id).orElse(null);
    }

    public void delete(Long id) {
        repository.deleteById(id);
    }
}
