package com.codingdojo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.models.Dojo;
import com.codingdojo.models.Ninja;
import com.codingdojo.repositories.DojoRepository;
import com.codingdojo.repositories.NinjaRepository;

@Service
public class DNService {
	private final DojoRepository dojoRep;
	private final NinjaRepository ninjaRep;
	
	public DNService(NinjaRepository ninjaRep, DojoRepository dojoRep) {
		this.dojoRep = dojoRep;
		this.ninjaRep = ninjaRep;
	}
	
	public List<Dojo> getDojos(){
		return dojoRep.findAll();
	}
	
	public List<Ninja> ninjasByDojo(Dojo dojo){
		return ninjaRep.findByDojo(dojo);
	}
	
	public Ninja createNinja(Ninja n) {
		return ninjaRep.save(n);
	}
	
	public Dojo createDojo(Dojo d) {
		return dojoRep.save(d);
	}
	
	public Dojo getDojo(Long id) {
		Optional<Dojo> dojo = dojoRep.findById(id);
		if(dojo.isPresent()) {
            return dojo.get();
        } else {
            return null;
        }
	}
	
}
