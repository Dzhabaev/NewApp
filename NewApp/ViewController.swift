//
//  ViewController.swift
//  NewApp
//
//  Created by Чингиз Джабаев on 12.06.2023.
//

import UIKit

class ViewController: UIViewController {
    //    Изображение создано и готово к показу
    @IBOutlet weak var skyImageView: UIImageView!
    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //        Тут имеет смысл наполнить наше view данными.
        skyImageView.image = UIImage(systemName: "moon")
        skyImageView.tintColor = .gray
        changeButton.backgroundColor = .green
        
    }
    @IBAction func buttonDidTap(_ sender: Any) {
        if isSun { //Мы проверям, что у нас сейчас Солнце.
            skyImageView.image = UIImage(systemName: "moon") // Если isSun содержит true, то мы устанавливаем в свойство image у skyImageView иконку Луны
        } else {
            skyImageView.image = UIImage(systemName: "sun.max") // Если isSun содержит false, устанавливаем в свойство image у skyImageView иконку Солнца.
        }
        isSun.toggle() //  зависимости от значения isSun, мы её инвертируем: если там было true, то станет false и наоборот.
    }
    
    @IBAction func buttonTouchDown(_ sender: Any) {
        print("Нажатие")
    }
    
    private var isSun: Bool = false
}

