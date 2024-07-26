package com.tools.management.store.repositories;

import com.tools.management.store.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
