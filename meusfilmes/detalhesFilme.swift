//
//  detalhesFilme.swift
//  meusfilmes
//
//  Created by Allef Sousa Santos on 10/02/19.
//  Copyright © 2019 Allef Sousa Santos. All rights reserved.
//

import Foundation
import UIKit

// criando a classe que vai represnetar a view de detalhes do filme

class detalhesFilmes: UIViewController {
    
    // valor desta variavel é enviado via segue da tela anterior
    var filme : Filme!
    

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nomeFilme: UILabel!
    @IBOutlet weak var descricaoFilme: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // preenchendo os elementos da view com os resultados
        image.image = filme.imagem
        nomeFilme.text = filme.titulo
        descricaoFilme.text = filme.descricao
    }
    
}
