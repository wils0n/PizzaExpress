//
//  ConfirmationController.swift
//  PizzaExpress
//
//  Created by Wilson Mejía on 17/04/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmationController: WKInterfaceController {
    
    @IBOutlet var tamanioLbl: WKInterfaceLabel!
    @IBOutlet var masaLbl: WKInterfaceLabel!
    @IBOutlet var quesoLbl: WKInterfaceLabel!
    
    @IBOutlet var ingredientesLbl: WKInterfaceLabel!
    
    var resultado: [[String]]?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        resultado = context as? [[String]]
        tamanioLbl.setText(resultado![0][0])
        masaLbl.setText(resultado![0][1])
        quesoLbl.setText(resultado![0][2])
        
        let ingredientes = resultado![1]
        var texto:String = ""
        for ingrediente in ingredientes {
            texto += "\(ingrediente) \n"
        }
        NSLog("Texto: \(texto)")
        ingredientesLbl.setText(texto)
        NSLog("Elegidos: \(resultado)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func nextConfirmation() {
        let fin = ""
        pushControllerWithName("IdentifiquerFin", context: fin)
    }
}
