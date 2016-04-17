//
//  MasaController.swift
//  PizzaExpress
//
//  Created by Wilson Mejía on 17/04/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {
    
    @IBOutlet var masaPicker: WKInterfacePicker!
    
    var masaList: [(String, String)] = [
        ("Delgada","Delgada"),
        ("Crujiente","Crujiente"),
        ("Gruesa","Gruesa")]
    
    
    var resultado:[String]?
    var masaElegida = "Delgada"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        resultado = context as? [String]
        NSLog("Seleccionado: \(resultado)")
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = masaList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        masaPicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func selectedMasa(value: Int) {
        NSLog("List Picker: \(masaList[value].0) selected")
        masaElegida = masaList[value].0
    }

    @IBAction func nextMasa() {
        if(resultado?.count == 2){
            resultado?.removeLast()
        }
        resultado!.append(masaElegida)
        pushControllerWithName("IdentificadorMasa", context: resultado)
    }
    
    
}
