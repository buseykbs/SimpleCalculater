//
//  ViewController.swift
//  SimpleCalculater
//
//  Created by Buse Atan on 10.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField! //firstText içindeki texti nasıl alabilirim?? firstText.text yazarak altta sum actionunda gösterdim.Optional string verir,oladabilir olmayadabilir
    
    @IBOutlet weak var secondText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
               result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
        
        
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                 result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                 result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
}
//Yukarıdaki viewDidLoad() fonksiyonu kullanıcı app'i açtığında atif olan bir fonksiyon burada kullanıcı app'i açtığında ekrana bir yazı yazdırabiliriz hoşgeldiniz vs gibi.

//fonksiyonun içinde olan fonksiyonun içinde kalır.
//scop denilen şey şudur fonkisiyonu  içinde tanımlanan değer , o fonksiyonun içinde kullanılır  başka fonksiyon içine kullanılmaz.
//bir tane değişken olsun heryerden ulaşayım bu değişkene herseferinde let result diye fonksiyonların latında oluşturmatatyım.Bunun için bu değeri class'ın altında oluşturabilirim.
//result değişkenini class'ta tanımlayıp altta fonksiyonlarda kullandım.(ÖNEMLİ)

