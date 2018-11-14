//
//  TableViewControllerEjercicios.swift
//  FoodChemisrtry
//
//  Created by Andrés Villanueva on 11/13/18.
//  Copyright © 2018 Andrés Villanueva. All rights reserved.
//

import UIKit

class TableViewControllerEjercicios: UITableViewController, protocoloSumarPuntos {
   
    
    
    @IBOutlet weak var score: UIBarButtonItem!
    var niveles = [Niveles]()
    var puntos = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.score.title = ""
        title = "Ejercicios"
        
        let  nivelUno = Niveles(nivel: "Nivel Uno", pregunta: "Identificar cual es el compuesto aditivo en los siguientes compuestos", arregloRespuestas: ["C22 H20 O13   (Ácido carmínico)" , "NaCl (Cloruro de Sodio)" , "HCl (Ácido clorhídrico)" , "KI (Yoduro de Potasio)"], posicionRespuesta: 0, imagen: nil)
        
        niveles.append(nivelUno)
        
        let nivelDos = Niveles(nivel: "Nivel Dos", pregunta: "Identificar cuál de los siguientes compuestos es un colorante (curcumina)", arregloRespuestas: ["H3 PO4 (Ácido Fosfórico)", "C21 H20 O6 (Curcumina)","AgCl (Cloruro de Plata)","CH3OH (Metanol)"], posicionRespuesta: 1, imagen: nil)
        
        niveles.append(nivelDos)
        
        let nivelTres = Niveles(nivel: "Nivel Tres", pregunta: "Identificar cuál de los siguientes compuestos es un antioxidante.", arregloRespuestas: ["C3 H6O (Propanona)", "C2 H2 (Acetileno)", "CH2O (Formol)", "C11 H16 O2 (BHA)"], posicionRespuesta: 3, imagen: nil)
        
        niveles.append(nivelTres)
        
        let nivelCuatro = Niveles(nivel: "Nivel Cuatro", pregunta: "Identificar cuál de los siguientes compuestos es un conservador.", arregloRespuestas: ["C7H6O2 (Ácido benzoico)", "C2H 6O (Etanol)","C3H8O (Isopropanol)",
            "C12 H22 O11 (Sacarosa)"], posicionRespuesta: 0, imagen: nil)
        
        niveles.append(nivelCuatro)
        
        let nivelCinco = Niveles(nivel: "Nivel Cinco", pregunta: "Identificar cuál  de los siguientes compuestos es un aromatizante", arregloRespuestas: ["C17H21NO4         (Cocaina)","C6H8O6 (Ácido ascórbico)", "C4H8O2 (Ácido butanoico)", "NH3 (Amoniaco)"], posicionRespuesta: 2, imagen: nil)
        
        niveles.append(nivelCinco)
        
        let nivelSeis = Niveles(nivel: "Nivel Seis", pregunta: "Identificar cuál de los siguientes compuestos es un regulador del pH", arregloRespuestas: ["NaHCO3 (Carbonato monoácido de Sodio)", "SiO2 (Óxido de Silicio)", "CaO (Cal)", "NaHCO3 (Bicarbonato de sodio)"], posicionRespuesta: 0, imagen: nil)
        
        niveles.append(nivelSeis)
        
        let nivelSiete = Niveles(nivel: "Nivel Siete", pregunta: "", arregloRespuestas: ["Bicarbonato de sodio", "Ácido linoleico", "Ácido Butírico", "Cloruro de Sodio"], posicionRespuesta: 0, imagen: UIImage(named: "BicarbonatoDeSodio"))
        
        niveles.append(nivelSiete)
        
        let nivelOcho = Niveles(nivel: "Nivel Ocho", pregunta: "", arregloRespuestas: ["Bicarbonato de sodio", "Sulfato de Magnesio", "Ácido Polmítico", "Cloruro de Sodio"], posicionRespuesta: 2, imagen: UIImage(named: "Grasas trans"))
        
        niveles.append(nivelOcho)
        
        let nivelNueve = Niveles(nivel: "Nivel Nueve", pregunta: "", arregloRespuestas: ["Ácido Polmítico", "Sulfato de Magnesio", "Bicarbonato de sodio", "Ácido Butírico "], posicionRespuesta: 3, imagen: UIImage(named: "acidoButirico"))
        
        niveles.append(nivelNueve)
        
        let nivelDiez = Niveles(nivel: "Nivel Diez", pregunta: "", arregloRespuestas: ["Ácido benzoico", "Sulfato de Magnesio", "Bicarbonato de sodio", "Ácido Butírico"], posicionRespuesta: 0, imagen: UIImage(named: "acidobenzoico"))
        
        niveles.append(nivelDiez)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return niveles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.red
        } else {
            cell.backgroundColor = UIColor.orange
        }

        // Configure the cell...

        cell.textLabel?.text = niveles[indexPath.row].nivel
        
        return cell
    }
    
    func agregarScore(score: Int) {
        puntos += score
        self.score.title = "Score: " + String(puntos)
    }
    


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "preguntas"
        {
            let viewDetalle = segue.destination as! ViewControllerPreguntas
            let indexPath = tableView.indexPathForSelectedRow
            viewDetalle.nivel = niveles[(indexPath?.row)!]
            viewDetalle.delegado = self
        }
       
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

}
