//
//  ViewController.swift
//  Color_Picker
//
//  Created by Gonçalo Fialho on 12/05/2019.
//  Copyright © 2019 Gonçalo Fialho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Red = 0
    var Green = 0
    var Blue = 0
    var Alpha = 255
    
    var labelCor:UILabel?
    var labelRGBA:UILabel?
    var labelTitulo:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //instanciar os elementos
        labelTitulo = UILabel()
        labelTitulo?.frame = CGRect(x: 120, y:0, width: 300, height: 210)
        labelTitulo?.text = "Color Picker" //texto a apresentar
        labelTitulo?.textColor = UIColor.blue //cor do texto
        labelTitulo?.font = UIFont (name: "AppleSDGothicNeo-Medium", size: 40) //estilo e tamanho do texto
        
        
        
        labelCor = UILabel()
        labelCor?.frame = CGRect(x: 70, y:180, width: 210, height: 210)
        labelCor?.backgroundColor = UIColor.purple//cor de fundo
        labelCor?.center.x = self.view.center.x//posição central
        
        labelRGBA = UILabel()
        labelRGBA?.frame = CGRect(x: 110, y:430, width: 200, height: 30)//posição e tamanho
        labelRGBA?.font = labelRGBA?.font.withSize(20) //tamanho da letra
        labelRGBA?.text = "R: \(Red) G: \(Green) B: \(Blue) A: \(Alpha)"//texto a mostrar
        
        let redSlider = UISlider()
        redSlider.frame = CGRect(x: 100, y: 500, width: 200, height: 20)
        redSlider.maximumValue = 255 //valor máximo até onde o slider vai
        redSlider.minimumValue = 0
        redSlider.tintColor = UIColor.red
        redSlider.addTarget(self, action: #selector(red), for: .valueChanged)
        
        let greenSldier = UISlider()
        greenSldier.frame = CGRect(x: 100, y: 550, width: 200, height: 20)
        greenSldier.maximumValue = 255
        greenSldier.minimumValue = 0
        greenSldier.tintColor = UIColor.green
        greenSldier.addTarget(self, action: #selector(green), for: .valueChanged)
        
        
        let blueSlider = UISlider()
        blueSlider.frame = CGRect(x: 100, y: 600, width: 200, height: 20)
        blueSlider.maximumValue = 255
        blueSlider.minimumValue = 0
        blueSlider.tintColor = UIColor.blue
        blueSlider.addTarget(self, action: #selector(blue), for: .valueChanged)
        
        
        let AlphaSlider = UISlider()
        AlphaSlider.frame = CGRect(x: 100, y: 650, width: 200, height: 20)
        AlphaSlider.maximumValue = 255
        AlphaSlider.minimumValue = 0
        AlphaSlider.value = 0 //valor onde o slider começa
        greenSldier.tintColor = UIColor.black
        AlphaSlider.addTarget(self, action: #selector(alpha), for: .valueChanged)
        
        //introduzir elementos no layout
        self.view.addSubview(labelCor!)
        self.view.addSubview(labelRGBA!)
        self.view.addSubview(redSlider)
        self.view.addSubview(greenSldier)
        self.view.addSubview(blueSlider)
        self.view.addSubview(AlphaSlider)
        self.view.addSubview(labelTitulo!)
        
    }
    
    //instancias para realizar o calculo das cores através dos sliders
     @objc
     func red(_ sender:UISlider){
     Red = Int(sender.value)
     colorCalc()
     }
     
     @objc
     func green(_ sender:UISlider){
     Green = Int(sender.value)
     colorCalc()
     }
     
     @objc
     func blue(_ sender:UISlider!){
     Blue = Int(sender.value)
     colorCalc()
     }
     
     @objc
     func alpha(_ sender:UISlider){
     Alpha = Int(sender.value)
     colorCalc()
     }
    //calculo dar cor após receber os números dos sliders
    @objc
    func colorCalc(){
        labelCor?.backgroundColor = UIColor(red:CGFloat(Red)/255, green:CGFloat(Green)/255, blue:CGFloat(Blue)/255, alpha:CGFloat(Alpha)/255)
        labelRGBA?.text = "R:\(String(Red)) G:\(String(Green)) B:\(String(Blue)) A:\(String(Alpha))"
    }
    
   
    
}

