//
//  ViewControllerPreguntas.swift
//  FoodChemisrtry
//
//  Created by Andrés Villanueva on 11/13/18.
//  Copyright © 2018 Andrés Villanueva. All rights reserved.
//

import UIKit

protocol protocoloSumarPuntos {
    func agregarScore(score: Int) -> Void
}

class ViewControllerPreguntas: UIViewController {
    
    var nivel =  Niveles()
    var delegado : protocoloSumarPuntos!

    @IBOutlet weak var lbPregunta: UILabel!
    @IBOutlet weak var btUno: UIButton!
    @IBOutlet weak var btDos: UIButton!
    @IBOutlet weak var btTres: UIButton!
    @IBOutlet weak var btCuatro: UIButton!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var imagenPregunta: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answer.text = ""
        title = nivel.nivel
        
        if nivel.imagen == nil
        {
            imagenPregunta.image = nil
            lbPregunta.text = nivel.pregunta
            lbPregunta.text = nivel.pregunta
            btUno.setTitle(nivel.arregloRespuestas[0], for: .normal)
            btDos.setTitle(nivel.arregloRespuestas[1], for: .normal)
            btTres.setTitle(nivel.arregloRespuestas[2], for: .normal)
            btCuatro.setTitle(nivel.arregloRespuestas[3], for: .normal)
        }
        else
        {
            imagenPregunta.image = nivel.imagen
            lbPregunta.text = ""
            btUno.setTitle(nivel.arregloRespuestas[0], for: .normal)
            btDos.setTitle(nivel.arregloRespuestas[1], for: .normal)
            btTres.setTitle(nivel.arregloRespuestas[2], for: .normal)
            btCuatro.setTitle(nivel.arregloRespuestas[3], for: .normal)
        }
        

        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButtonOne(_ sender: Any) {
        let titulo = btUno.currentTitle!
        if  titulo == nivel.arregloRespuestas?[nivel.posicionRespuesta]
        {
            //answer.text = "CORRECTO"
            //answer.textColor = UIColor.green
            
            delegado.agregarScore(score: 10)
            //Regresar a la Vista
            navigationController?.popViewController(animated: true)
        }
        else
        {
            answer.text = "INCORRECTO"
            answer.textColor = UIColor.red
        }
    }
    
    @IBAction func actionButtonTwo(_ sender: Any) {
        let titulo = btDos.currentTitle!
        if  titulo == nivel.arregloRespuestas?[nivel.posicionRespuesta]
        {
            //answer.text = "CORRECTO"
            //answer.textColor = UIColor.green
            delegado?.agregarScore(score: 10)
            //Regresar a la Vista
            navigationController?.popViewController(animated: true)
        }
        else
        {
            answer.text = "INCORRECTO"
            answer.textColor = UIColor.red
        }
    }
    
    @IBAction func actionButtonThree(_ sender: Any) {
        let titulo = btTres.currentTitle!
        if  titulo == nivel.arregloRespuestas?[nivel.posicionRespuesta]
        {
            //answer.text = "CORRECTO"
            //answer.textColor = UIColor.green
            delegado?.agregarScore(score: 10)
            //Regresar a la Vista
            navigationController?.popViewController(animated: true)
        }
        else
        {
            answer.text = "INCORRECTO"
            answer.textColor = UIColor.red
        }
    }
    
    @IBAction func actionButtonFour(_ sender: Any) {
        let titulo = btCuatro.currentTitle!
        if  titulo == nivel.arregloRespuestas?[nivel.posicionRespuesta]
        {
            //answer.text = "CORRECTO"
            //answer.textColor = UIColor.green
            delegado.agregarScore(score: 10)
            //Regresar a la Vista
            navigationController?.popViewController(animated: true)
        }
        else
        {
            answer.text = "INCORRECTO"
            answer.textColor = UIColor.red
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
