//
//  ViewControllerTemas.swift
//  FoodChemisrtry
//
//  Created by Andrés Villanueva on 11/12/18.
//  Copyright © 2018 Andrés Villanueva. All rights reserved.
//

import UIKit

class ViewControllerTemas: UIViewController {

    @IBOutlet weak var uiColorantes: UIImageView!
    @IBOutlet weak var uiEdulcorantes: UIImageView!
    @IBOutlet weak var uiAromartizantes: UIImageView!
    @IBOutlet weak var uiPh: UIImageView!
    @IBOutlet weak var uiAntioxidantes: UIImageView!
    @IBOutlet weak var uiConservadores: UIImageView!
    @IBOutlet weak var uiSabor: UIImageView!
    @IBOutlet weak var uiTextura: UIImageView!
    
    @IBOutlet weak var btColorante: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiColorantes.image = UIImage (named: "colorantes")
        uiEdulcorantes.image = UIImage (named: "Edulcorantes")
        uiAromartizantes.image = UIImage (named: "Aromatizantes")
        uiPh.image = UIImage (named: "pH")
        uiAntioxidantes.image = UIImage (named: "Antioxidantes")
        uiConservadores.image = UIImage (named: "Conservantes")
        uiSabor.image = UIImage (named: "sabor")
        uiTextura.image = UIImage (named: "textura")

        // Do any additional setup after loading the view.

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindColorante(unwindSegue: UIStoryboardSegue)
    {
    }
    
    @IBAction func unwindEdulcorates(unwindSegue: UIStoryboardSegue)
    {
    }
    @IBAction func unwindAromatizantes(unwindSegue: UIStoryboardSegue)
    {
    }
    
    @IBAction func unwindPH(unwindSegue: UIStoryboardSegue)
    {
    }
    
    @IBAction func unwindAntioxidantes(unwindSegue: UIStoryboardSegue)
    {
    }
    
    @IBAction func unwindConservantes(unwindSegue: UIStoryboardSegue)
    {
    }
    
    @IBAction func unwindSabor(unwindSegue: UIStoryboardSegue)
    {
    }
    @IBAction func unwindTextura(unwindSegue: UIStoryboardSegue)
    {
    }
}
