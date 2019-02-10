//
//  Filme.swift
//  meusfilmes
//
//  Created by Allef Sousa Santos on 10/02/19.
//  Copyright © 2019 Allef Sousa Santos. All rights reserved.
//

import UIKit
class Filme {
    
    var titulo:String!
    var descricao:String!
    var imagem:UIImage!
    
    init(titulo:String,descricao:String,ima:UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = ima
    
    }
    
}
