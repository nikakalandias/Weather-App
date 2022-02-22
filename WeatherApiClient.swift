//
//  WeatherApiClient.swift
//  Weather-App
//
//  Created by Nika Kalandia on 22.02.2022.
//

import Foundation

class WeatherApiClient {
    
    let apiKey : String = "1bbe135666fa7457d66b782089e51366"
    
    let latitude : Double = 33.44
    let longitude : Double = -94.04
    
    lazy var baseURL : URL = {
        return URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=\(self.latitude)&lon=\(self.longitude)&exclude=hourly,daily&appid=\(self.apiKey)")!
    }()
}

let downloader = JSONDownloader()


typealias CurrentWeatherCompletionHandler = (CurrentWeatherModel?, OpenWeatherMapError?) -> Void

func getCurrentWeather(at coordinate : Coordinate, completionHandler completion : @escaping (CurrentWeatherCompletionHandler) -> Void) {
    
}
