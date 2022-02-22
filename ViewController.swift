//
//  ViewController.swift
//  Weather-App
//
//  Created by Nika Kalandia on 14.02.2022.
//

//  Object-Oriented Programming yapısını kullanarak yazmış olduğumuz çoğu fonksiyonu tekrardan kullanılabilir hale getirdik. Normalde veriyi sadece ViewController sınıfı altında çekip işleyebilirdik ve istediğimiz sonucu elde ederdik. Ancak bu tek seferlik olurdu ve 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelVC: UILabel!
    
    let apiKey : String = "1bbe135666fa7457d66b782089e51366"

    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "weatherbackground.png")!)
        
        let weather = CurrentWeatherModel(temperature: 1.3, main: "Cloud", precipitation: 3.5, humidity: 6.3)
        let viewModel = CurrentWeatherEntity(data: weather)
        
        showWeather(model: viewModel)
        
    }
    
    func showWeather(model : CurrentWeatherEntity) {
        labelVC.text = "\(model.temperature)"
    }
}

