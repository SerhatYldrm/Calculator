//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by SERHAT YILDIRIM on 06/10/2016.
//  Copyright © 2016 SERHAT YILDIRIM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flag:Bool=false
    var isNumPress:Bool=false
    var result:Double=0
    var opr:String=""
    var first_opr:String=""
    var firstval:Double?=nil
    var textval:Double?=nil
    
    @IBOutlet weak var textcalculator: UITextField!
    
    @IBAction func btnresult(_ sender: AnyObject) {
        
        if opr == "*" {
            textval  = textval! * Double(textcalculator.text!)!
            textcalculator.text = String(textval!)
        }
        else if opr == "/" {
            textval  = textval! / Double(textcalculator.text!)!
            textcalculator.text = String(textval!)
        }
        
        if first_opr == "+" {
            firstval = firstval! + Double(textcalculator.text!)!
            first_opr = "+"
            textcalculator.text = "" + String(firstval!)
        }
        else if first_opr == "-" {
            firstval = firstval! - Double(textcalculator.text!)!
            first_opr = "+"
            textcalculator.text = "" + String(firstval!)
        }
        
        opr = ""
        first_opr = ""
        firstval = nil
        textval = nil
        flag = false
        
    }
    @IBAction func btnTurn(_ sender: AnyObject) {  // +/-
        
        if flag == false && textcalculator.text != "0" {
            if (textcalculator.text?.contains("-"))! {
                textcalculator.text = textcalculator.text?.replacingOccurrences(of: "-", with: "")
            }
            else{
                textcalculator.text = "-" + textcalculator.text!
            }
        }
        
        
    }
    @IBAction func btnvirgul(_ sender: AnyObject) {
        if flag == false && !(textcalculator.text?.contains("."))!{
            textcalculator.text = textcalculator.text! + "."
        }
        
    }
    
    @IBAction func btnyuzde(_ sender: AnyObject) {
      
            
            
            if opr == "*" {
                textval  = (textval! * Double(textcalculator.text!)!)/100
                textcalculator.text = String(textval!)
                opr = ""
            }
            else if opr == "/" {
                textval  = (textval! / Double(textcalculator.text!)!)/100
                textcalculator.text = String(textval!)
                opr = ""
            }
            else if opr == "+"{
                firstval =  (firstval! + Double(textcalculator.text!)!)/100
                textcalculator.text = String(firstval!)
                opr = ""
                first_opr = ""
            }
            else if opr == "-"{
                firstval =  (firstval! - Double(textcalculator.text!)!)/100
                textcalculator.text = String(firstval!)
                opr = ""
                first_opr = ""
            }
            else {//textview boşsa hata
                
                firstval = Double(textcalculator.text!)!/100
                textcalculator.text = String(firstval!)
                
                
            }
            
      
        
    }

    func numberPressed(number : String){
        
        if flag==false {
            textcalculator.text = textcalculator.text! + number
        }
        else{  //işlem varsa
            textcalculator.text = number
            flag = false
            
        }

        
    }
    
    @IBAction func btn0(_ sender: AnyObject) {
        
        if flag==false && textcalculator.text != "0"{
            textcalculator.text = textcalculator.text! + "0"
        }
        else{  //işlem varsa
            textcalculator.text = "0"
            flag = false
            
        }

    }
    
    @IBAction func btn1(_ sender: AnyObject) {
        
        numberPressed(number: "1")
        /*if flag==false {
            textcalculator.text = textcalculator.text! + "1"
        }
        else{  //işlem varsa
            textcalculator.text = "1"
            flag = false
            
        }*/
    }
    
    @IBAction func btn2(_ sender: AnyObject) {
        numberPressed(number: "2")
    }
    
    @IBAction func btn3(_ sender: AnyObject) {
        numberPressed(number: "3")
    }
    
    @IBAction func btn4(_ sender: AnyObject) {
        numberPressed(number: "4")
    }
    
    @IBAction func btn5(_ sender: AnyObject) {
        numberPressed(number: "5")
    }
    
    @IBAction func btn6(_ sender: AnyObject) {
        numberPressed(number: "6")
    }
    
    @IBAction func btn7(_ sender: AnyObject) {
        numberPressed(number: "7")
    }
    
    @IBAction func btn8(_ sender: AnyObject) {
        numberPressed(number: "8")
    }
    
    @IBAction func btn9(_ sender: AnyObject) {
        numberPressed(number: "9")
    }
    
    @IBAction func btnac(_ sender: AnyObject) {
        textcalculator.text = ""
        flag = false
        opr = ""
        first_opr = ""
        firstval = nil
        textval = nil
        
    }
    
    @IBAction func btnPlus(_ sender: AnyObject) {
        if flag == false {
            
            if opr == "*" {
                textval  = textval! * Double(textcalculator.text!)!
                textcalculator.text = String(textval!)
            }
            else if opr == "/" {
                textval  = textval! / Double(textcalculator.text!)!
                textcalculator.text = String(textval!)
            }
            
        flag=true
        opr = "+"
        if first_opr == "" {
            first_opr = "+"
            firstval = Double(textcalculator.text!)!
        }
        else if first_opr == "+" {
            firstval = firstval! + Double(textcalculator.text!)!
            first_opr = "+"
            textcalculator.text = "" + String(firstval!)
        }
        else if first_opr == "-" {
            firstval = firstval! - Double(textcalculator.text!)!
            first_opr = "+"
            textcalculator.text = "" + String(firstval!)
        }
        }
        
    }
    
    @IBAction func btnMinus(_ sender: AnyObject) {
        if flag == false {
            
            if opr == "*" {
                textval  = textval! * Double(textcalculator.text!)!
                textcalculator.text = String(textval!)
            }
            else if opr == "/" {
                textval  = textval! / Double(textcalculator.text!)!
                textcalculator.text = String(textval!)
            }
        
        flag=true
        opr = "-"
        if first_opr == "" {
            first_opr = "-"
            firstval = Double(textcalculator.text!)!
        }
        else if first_opr == "+" {
            firstval = firstval! + Double(textcalculator.text!)!
            first_opr = "-"
            textcalculator.text =  String(firstval!)
            
        }
        else if first_opr == "-" {
            firstval = firstval! - Double(textcalculator.text!)!
            first_opr = "-"
            textcalculator.text =  String(firstval!)
        }
        }
    }
    
    @IBAction func btnMultiple(_ sender: AnyObject) {
        if flag == false {
            
        
        if opr == "*" {
            textval  = textval! * Double(textcalculator.text!)!
            textcalculator.text = String(textval!)
        }
        else if opr == "/" {
            textval  = textval! / Double(textcalculator.text!)!
            textcalculator.text =  String(textval!)
        }
        else {
            textval = Double(textcalculator.text!)!
        }
        opr = "*"
        flag = true
        /*var temp:Int
        temp = Int(textcalculator.text!)!*/
        
        //result += textcalculator.text
        }
    }
    
    @IBAction func btnDivide(_ sender: AnyObject) {
        if flag == false {
            
        
        if opr == "*" {
            textval  = textval! * Double(textcalculator.text!)!
            textcalculator.text = String(textval!)
        }
        else if opr == "/" {
            textval  = textval! / Double(textcalculator.text!)!
            textcalculator.text = String(textval!)
        }
        else {
            textval = Double(textcalculator.text!)!
        }
        opr = "/"
        flag = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

