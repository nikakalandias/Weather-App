//
//  ViewController.swift
//  Weather-App
//
//  Created by Nika Kalandia on 14.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelVC: UILabel!
    
    let apiKey : String = "1bbe135666fa7457d66b782089e51366"
    let latitude : Double = 33.44
    let longitude : Double = -94.04
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "weatherbackground.png")!)
        
        let URL = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=\(latitude)&lon=\(longitude)&exclude=hourly,daily&appid=\(apiKey)")

       let request = URLRequest(url: URL!)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let task = session.dataTask(with: request) { data, response, error in
            if error == nil {
                let jsonData = try! JSONSerialization.jsonObject(with: data!, options: [])
                print(jsonData)
            }
        }
        
        task.resume()
        
        let weather = CurrentWeatherModel(temperature: 1.3, main: "Cloud", precipitation: 3.5, humidity: 6.3)
        let viewModel = CurrentWeatherEntity(data: weather)
        
        showWeather(model: viewModel)
        
    }
    
    func showWeather(model : CurrentWeatherEntity) {
        labelVC.text = "\(model.temperature)"
    }
}

