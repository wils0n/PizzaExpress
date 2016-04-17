//
//  TamanioController.swift
//  PizzaExpress
//
//  Created by Wilson Mejía on 17/04/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import WatchKit
import Foundation


class TamanioController: WKInterfaceController {

    @IBOutlet var tamanioPicker: WKInterfacePicker!
    
    var tamanioList: [(String, String)] = [
        ("Grande","Grande"),
        ("Mediana","Mediana"),
        ("Pequeña","Pequeña")]
    
    var tamanioElegido = "Grande"
    
    var resultado:[String] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = tamanioList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        tamanioPicker.setItems(pickerItems)
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selectedTamanio(value: Int) {
        NSLog("List Picker: \(tamanioList[value].0) selected")
        
        tamanioElegido = tamanioList[value].0
    }
    
    @IBAction func nextTamanio() {
        if(resultado.count == 1){
            resultado.removeLast()
        }
        resultado.append(tamanioElegido)
        pushControllerWithName("IdentificadorTamanio", context: resultado)
    }
    
}
