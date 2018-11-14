//
//  ViewController.swift
//  FoodChemisrtry
//
//  Created by Andrés Villanueva on 11/8/18.
//  Copyright © 2018 Andrés Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btIntroduccion: UIButton!
    @IBOutlet weak var btTemas: UIButton!
    @IBOutlet weak var btEjercicios: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btTemas.isEnabled = true
        btEjercicios.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    @IBAction func unwindConceptos(unwindSegue: UIStoryboardSegue)
    {
        
    }
    
    @IBAction func unwindFin(unwindSegue: UIStoryboardSegue)
    {
        btTemas.isEnabled = true
    }
    
    @IBAction func unwindTemas(unwindSegue: UIStoryboardSegue)
    {
        
    }
    
    @IBAction func unwindInicio(unwindSegue: UIStoryboardSegue)
    {
        
    }



}

