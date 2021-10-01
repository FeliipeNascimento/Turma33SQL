package br.com.Farmacia.GenFarm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.Farmacia.GenFarm.model.Produtos;

public interface ProdutosRepository  extends JpaRepository<Produtos, Long>{

	public List<Produtos> findAllByNomeProdutoContainingIgnoreCase(String nomeProduto);
}
