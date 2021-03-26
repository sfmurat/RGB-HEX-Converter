//
//  ViewController.swift
//  Project 01 - RGB HEX Converter
//
//  Created by sfms on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtRed: UITextField!
    @IBOutlet weak var txtGreen: UITextField!
    @IBOutlet weak var txtBlue: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnConvert: UIButton!
    @IBOutlet weak var lblSelected: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnConvertClick(_ sender: UIButton) {
        RGBtoHEX()
    }
    
    func RGBtoHEX(){
        if let redValue = UInt8(txtRed.text!){
            if let greenValue = UInt8(txtGreen.text!){
                if let blueValue = UInt8(txtBlue.text!){
                    
                    let redHex = String(format: "%2X", redValue)
                    let greenHex = String(format: "%2X", greenValue)
                    let blueHex = String(format: "%2X", blueValue)
                    
                    lblResult.text = "Hex Color: #\(redHex)\(greenHex)\(blueHex)"
                    lblSelected.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
                }
            }
        }
    }
}

