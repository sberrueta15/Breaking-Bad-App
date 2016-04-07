//
//  User.swift
//  EjercicioClase8
//
//  Created by SP26 on 7/4/16.
//
//

import Foundation


public class User
{
    var nombre:String
    var descripcion:String
    //var diccionario:[User:Int] = [:]
    
    init(nombre: String, descripcion: String){
        self.nombre = nombre
        self.descripcion = descripcion
    }

    
    
    /*
    func viewOrders(){
        print("User with email:\(self.email)")
        for order in orders{
            print("Order -> \(order.orderId)")
            if let credit = order.creditCard?.cardNumer {
                print("Payed with creditCard\(credit)")
            }
        }
    }
    */

    
}


