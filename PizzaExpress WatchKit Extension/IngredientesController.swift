//
//  IngredientesController.swift
//  PizzaExpress
//
//  Created by Wilson Mejía on 17/04/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {

    var resultado:[String]?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        resultado = context as? [String]
        NSLog("Seleccionado hasta ingredientes: \(resultado)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
