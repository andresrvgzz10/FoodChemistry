//
//  Niveles.swift
//  FoodChemisrtry
//
//  Created by Andrés Villanueva on 11/13/18.
//  Copyright © 2018 Andrés Villanueva. All rights reserved.
//

import UIKit

class Niveles: NSObject {
    
    var nivel: String!
    var pregunta: String!
    var arregloRespuestas: [String]!
    var posicionRespuesta: Int!
    var imagen: UIImage!
    
    override init() {
        nivel = ""
        pregunta = ""
        arregloRespuestas = [""]
        posicionRespuesta = 0
        imagen = nil
        
    }
    init(nivel: String, pregunta: String, arregloRespuestas: [String], posicionRespuesta: Int, imagen: UIImage?)
    {
        self.nivel = nivel
        self.pregunta = pregunta
        self.arregloRespuestas = arregloRespuestas
        self.posicionRespuesta = posicionRespuesta
        self.imagen = imagen
    }

}
