package br.com.Farmacia.GenFarm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.Farmacia.GenFarm.model.Categoria;

public interface CategoriaRepository  extends JpaRepository<Categoria, Long>{
	
	public List<Categoria> findAllByDescricaoContainingIgnoreCase(String descricao);

}
