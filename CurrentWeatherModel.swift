//
//  CurrentWeather.swift
//  Weather-App
//
//  Created by Nika Kalandia on 14.02.2022.
//

import Foundation
import UIKit

struct CurrentWeatherModel {
    let temperature : Double // Derece
    let main : String // Havanın durumu
    let precipitation : Double // Yağmur yağma olasılığı
    let humidity : Double // Nem oranı
    let icon : String // JSON'dan gelen Icon'un adı
}

//  JSON'dan yani veriyi çekeceğimiz yerden gelen veriler burada tutuluyor. Çekeceğimiz verideki değerler ile üstteki değerler uyuşmak zorunda. Değişken adları aynı olmalı, tipleri aynı olmalı.

extension CurrentWeatherModel {
    
    var iconImage : String {
        
        switch icon {
            
        case "clear sky" : return "01d.png"
        case "few clouds" : return "02d.png"
        case "scattered clouds" : return "03d.png"
        case "broken clouds" : return "04d.png"
        case "shower rain" : return "09d.png"
        case "rain" : return "10d.png"
        case "thunderstorm" : return "11d.png"
        case "snow" : return "13d.png"
        case "mist" : return "50d.png"
        
        default: return "01.png"
            
        }
    }
}
