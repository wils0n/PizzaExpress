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
    var ingredientes:[String] = []
    
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

    @IBAction func selectedJamon(value: Bool) {
        if(value){
            ingredientes.append("Jamón")
            //resultado!.append("Pepperoni")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Jamón"}
            //resultado! = resultado!.filter(){ $0 != "Pepperoni"}
        }
    }
    
    @IBAction func selectedPepperoni(value: Bool) {
        if(value){
            ingredientes.append("Pepperoni")
            //resultado!.append("Pepperoni")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Pepperoni"}
            //resultado! = resultado!.filter(){ $0 != "Pepperoni"}
        }
    }
    
    @IBAction func selectedPavo(value: Bool) {
        if(value){
            ingredientes.append("Pavo")
            //resultado!.append("Pavo")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Pavo"}
            //resultado! = resultado!.filter(){ $0 != "Pavo"}
        }
    }
    
    @IBAction func selectedSalchicha(value: Bool) {
        if(value){
            ingredientes.append("Salchicha")
            //resultado!.append("Salchicha")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Salchicha"}
            //resultado! = resultado!.filter(){ $0 != "Salchicha"}
        }
    }
    
    @IBAction func selectedAceituna(value: Bool) {
        if(value){
            ingredientes.append("Aceituna")
            //resultado!.append("Aceituna")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Aceituna"}
            //resultado! = resultado!.filter(){ $0 != "Aceituna"}
        }
    }
    
    @IBAction func selectedCebolla(value: Bool) {
        if(value){
            ingredientes.append("Cebolla")
            //resultado!.append("Cebolla")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Cebolla"}
            //resultado! = resultado!.filter(){ $0 != "Cebolla"}
        }
    }
    
    @IBAction func selectedPimiento(value: Bool) {
        if(value){
            ingredientes.append("Pimiento")
            //resultado!.append("Pimiento")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Pimiento"}
            //resultado! = resultado!.filter(){ $0 != "Pimiento"}
        }
    }
    
    @IBAction func nextIngredientes() {
        let array: [[String]] = [resultado!, ingredientes]
        pushControllerWithName("IdentificadorConfirmacion", context: array)
        
    }
    
}
