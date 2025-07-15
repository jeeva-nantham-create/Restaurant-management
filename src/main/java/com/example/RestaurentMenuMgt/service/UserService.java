package com.example.RestaurentMenuMgt.service;

import com.example.RestaurentMenuMgt.model.User;
import com.example.RestaurentMenuMgt.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository repository;

    public User findByUsername(String username) {
        return repository.findByUsername(username);
    }

    public void save(User user) {
        repository.save(user);
    }
}
