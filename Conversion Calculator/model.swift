//
//  model.swift
//  Conversion Calculator
//
//  Created by Aidan Verhulst on 10/3/17.
//  Copyright © 2017 Sean Winegar. All rights reserved.
// Test Push cuz xcode being wonky

import Foundation
//: Playground - noun: a place where people can play

import UIKit

class Conversions {
    enum Unit: Int {
        case yards = 0, millimeters, centimeters, inches, meters, gallons, pints, liters, millileters, fahrenheit, celsius, pounds, kilograms, ounces, stones
        
        func convertTo(unit to: Unit, value val: Double) -> Double? {
            var constant = 1.0
            switch self {
            //LENGTH ---------------------
            case .inches:
                if to == .centimeters {
                    constant = 2.54
                } else if to == .meters {
                    constant = 0.0254
                } else if to == .millimeters {
                    constant = 25.4
                } else if to == .yards {
                    constant == 0.027778
                }
                
            case .centimeters:
                if to == .inches {
                    constant = 0.0393701
                } else if to == .yards {
                    constant = 0.0109361
                } else if to == .millimeters {
                    constant = 10
                } else if to == .meters {
                    constant = 0.01
                }
                
                
            case .millimeters:
                if to == .yards {
                    constant = 0.00109361
                } else if to == .centimeters {
                    constant = 0.1
                } else if to == .inches {
                    constant = 0.0393701
                } else if to == .meters {
                    constant = 0.001
                }
                
            case .meters:
                if to == .yards {
                    constant = 1.09361
                } else if to == .centimeters {
                    constant = 100
                } else if to == .millimeters {
                    constant = 1000
                } else if to == .inches {
                    constant = 39.3701
                }
                
            case .yards:
                if to == .meters {
                    constant = 0.9144
                } else if to == .inches {
                    constant = 36
                } else if to == .millimeters {
                    constant = 914.4
                } else if to == .centimeters {
                    constant = 91.44
                }
            //VOLUME -----------------------------
            case .gallons:
                if to == .pints {
                    constant = 8
                } else if to == .liters {
                    constant = 3.78541
                } else if to == .millileters {
                    constant = 3785.41
                }
                
            case .pints:
                if to == .gallons {
                    constant = 0.9144
                } else if to == .liters {
                    constant = 36
                } else if to == .millileters {
                    constant = 914.4
                }
                
            case .liters:
                if to == .gallons {
                    constant = 0.264172
                } else if to == .pints {
                    constant = 2.11338
                } else if to == .millileters {
                    constant = 1000
                }
                
                
            case .millileters:
                if to == .gallons {
                    constant = 0.000264172
                } else if to == .pints {
                    constant = 0.00211338
                } else if to == .liters {
                    constant = 0.001
                }
                
            default:
                break;
            }
            return constant * val;
        }
    }
    
    var inputValueString = ""
    
    //makes input a double and initializes it to 0.0
    var input: Double {
        return Double(inputValueString) ?? 0.0
    }
    
    //converts from a string to an enum case
    //    func fromString(_ string: String) -> Unit? {
    //        if string == "inch"{
    //            return .inches
    //        } else if string == "centimeters" {
    //            return .centimeters
    //        } else if string == "millimeters" {
    //            return .millimeters
    //        } else if string == "meters" {
    //            return .meters
    //        } else if string == "yards" {
    //            return .yards
    //        } else {
    //            return nil
    //        }
    //
    //    } not sure if i need this or not
    
    //appends a decimal if input doesn't have one
    func appendDecimal() {
        guard !inputValueString.contains(".") else {
            return
        }
        
        if inputValueString.isEmpty {
            inputValueString += "0."
        } else{
            inputValueString += "."
        }
    }
    
    func clearInput(){
        inputValueString = ""
    }
    
    
}







