package br.com.GameOver.Play.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.GameOver.Play.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long>{ 
	
	public List<Categoria> findAllByDescricaoContainingIgnoreCase (String descricao);
	
}