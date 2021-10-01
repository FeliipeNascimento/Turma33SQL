package br.com.GameOver.Play.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.GameOver.Play.model.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Long>{ 
	

	public List<Produto> findAllByNomeProdutoContainingIgnoreCase (String nomeProduto);
	
}
