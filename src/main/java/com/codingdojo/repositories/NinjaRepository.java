package com.codingdojo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.models.Dojo;
import com.codingdojo.models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long>{
	public List<Ninja> findAll();
	
	public List<Ninja> findByDojo(Dojo dojo);
}
