//
//  QuesoController.swift
//  PizzaExpress
//
//  Created by Wilson Mejía on 17/04/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {
    
    @IBOutlet var quesoPicker: WKInterfacePicker!
    
    let quesoList:[(String,String)] = [
        ("Mozarela","Morazela"),
        ("Cheddar","Cheddar"),
        ("Parmesano","Parmesano"),
        ("Sin Queso","Sin Queso")]

    
    var resultado:[String]?
    var quesoElegido = "Mozarela"
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        resultado = context as? [String]
        NSLog("Seleccionado hasta queso: \(resultado)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = quesoList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        quesoPicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selectedQueso(value: Int) {
        NSLog("List Picker: \(quesoList[value].0) selected")
        quesoElegido = quesoList[value].0
    }
    
    @IBAction func nextQueso() {
        resultado!.append(quesoElegido)
        pushControllerWithName("IdentificadorIngredientes", context: resultado)
    }
    
}
