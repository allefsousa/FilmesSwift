//
//  ViewController.swift
//  meusfilmes
//
//  Created by Allef Sousa Santos on 10/02/19.
//  Copyright © 2019 Allef Sousa Santos. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var filmes:[Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        var filme:Filme
        
        filme = Filme(titulo: "007 ", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. ",ima:#imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        filme = Filme(titulo: "Start Wars", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.",ima:#imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        filme = Filme(titulo: "Impacto Mortal", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.", ima:#imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        filme = Filme(titulo: "Deadpool", descricao: "DMussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.", ima:#imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        filme = Filme(titulo: "O regresso", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.", ima:#imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
        filme = Filme(titulo: "A herdeira", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.", ima:#imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        filme = Filme(titulo: "Caçadores de Emoção", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.", ima:#imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        filme = Filme(titulo: "O regresso do mal", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.", ima:#imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        filme = Filme(titulo: "Planeta dos macacos", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.", ima:#imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        filme = Filme(titulo: "Hardcore", descricao: "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.", ima:#imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
        
        
    }
    
    // sobre escrita de metodos
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    // metodo que preenche a view de maneira padrão
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = filmes[indexPath.row]
        let celula = "fil"
        let celul = tableView.dequeueReusableCell(withIdentifier: celula, for: indexPath) as! cell
        celul.imageFilme.image = filme.imagem
        celul.labelTilte.text = filme.titulo
        celul.labelDescription.text = filme.descricao
        
        //removendo linhas da table
        tableView.separatorStyle = .none
        
        celul.imageFilme.layer.cornerRadius = 40
        celul.imageFilme.clipsToBounds = true
        
        
        /*celul.textLabel?.text = filme.titulo
        celul.imageView?.image = filme.imagem
        tableView.separatorStyle = .none
        */
        return celul
        
    }
    
    // metodo chamado quando o usuario clica para abrir outra view
    // metodo que é responsavel por passar objetos entre as views
    // Lembrando que a segue precisa ter um identifier definido no storyboard
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme"{
            if let indexPatch = tableView.indexPathForSelectedRow{
                let filmeselecionado = filmes[indexPatch.row]
                let viewControllerDestino = segue.destination as! detalhesFilmes
                viewControllerDestino.filme = filmeselecionado
            }
        }
    }
    

}

