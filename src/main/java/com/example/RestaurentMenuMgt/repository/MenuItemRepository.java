package com.example.RestaurentMenuMgt.repository;

import com.example.RestaurentMenuMgt.model.MenuItem;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MenuItemRepository extends JpaRepository<MenuItem, Long> {}

