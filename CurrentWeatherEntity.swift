//
//  CurrentWeatherModel.swift
//  Weather-App
//
//  Created by Nika Kalandia on 17.02.2022.
//

import Foundation
import UIKit

//  "CurrentWeatherModel"ın görevi JSON verisini çektiğimizde gelen verilerin tutulmasını sağlamak. Fakat "CurrentWeatherEntity" ise JSON verilerinden çektiğimiz "CurrentWeatherModel" nesnesini istediğimiz gibi kullanmamızı sağlayan yapıdır. Çünkü mesela humidity değerini  JSON'da double olarak tanımlandığı için CurrentWeather yapısında yine double olarak tanımladık. Bu bir zorunluluk. Fakat ben bunu string olarak kullanmak istediğim için veya bu tarz farklı işlemler yapmak istediğim için ayrı bir model oluşturdum. 

struct CurrentWeatherEntity {
    
    let temperature : String // Derece
    let main : String // Havanın durumu
    let precipitation : String // Yağmur yağma olasılığı
    let humidity : String // Nem oranı
    let icon : String // JSON'dan gelen Icon'un adı
    
    init(data : CurrentWeatherModel) {
        self.temperature = "\(Int(data.temperature))°"
        self.main = data.main
        self.precipitation = "\(data.precipitation)"
        self.humidity = "\(data.humidity * 100)"
        self.icon = data.iconImage
    }
}
