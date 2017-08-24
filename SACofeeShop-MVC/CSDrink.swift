//
//  CSDrink.swift
//  SACofeeShop-MVC
//
//  Created by Sulabh Agarwal on 8/23/17.
//  Copyright © 2017 Sulabh Agarwal. All rights reserved.
//

import Foundation

enum drinkName : String {
    
    case drinkNameLatte = "Latte"
    case drinkNameAmerican = "Americano"
    case drinkNameEspresso = "Espresso"
}

enum drinkSize : Int {
    
    case drinkSizeSmall = 0
    case drinkSizeMedium
    case drinkSizeGrande
}

enum icedOrHotType : Int {
    case iced = 0
    case hot = 1
}

class CSDrinkModel {
    
    var numOfShots : Int = 0
    var isIced : Bool = true
    var name : drinkName = .drinkNameEspresso
    var size : drinkSize = .drinkSizeMedium
    
    private var drinkisIcedType : String {
        
        return isIced ? "ICED" : "HOT"
    }
    
    private var drinkName : String {

        return name.rawValue
    }
    
    
    func setDrinkName(segmentIndex : Int) {
        
        switch  segmentIndex{
        case 0:
            self.name = .drinkNameLatte
        case 1:
            self.name = .drinkNameAmerican
        case 2:
            self.name = .drinkNameEspresso
        default :
            self.name = .drinkNameEspresso
        }
    }
    
    
    func setCofeeIceOrHotType(type : icedOrHotType) {
        
        switch type  {
        case .iced:
             isIced = true
        case .hot:
             isIced = false
        }
    }
    
    func setCofeeDrinkSize(dsize : drinkSize) {
        self.size = dsize
    }
    
    func prepareOrder(sucess: (Bool) -> ())  {
        //Order Prepared
        print("DrinkName:\(self.drinkName) , No.Shots: \(numOfShots) , isIced : \(isIced)) , size : \(String(describing: size))")
        sucess(true)
    
    }
    
}
