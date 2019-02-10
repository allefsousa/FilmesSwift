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
        
        filme = Filme(titulo: "Filme 1", descricao: "DESCRICAO 1")
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 1", descricao: "DESCRICAO 1")
        filmes.append(filme)
        
    }
    
    // sobre escrita de metodos
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    // metodo que preenche a view
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = filmes[indexPath.row] 
        let celula = "fil"
        let celul = tableView.dequeueReusableCell(withIdentifier: celula, for: indexPath)
        celul.textLabel?.text = filme.titulo
        
        return celul
        
    }


}

