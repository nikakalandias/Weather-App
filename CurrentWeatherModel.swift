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
    
    init(temperature : Double, main : String, precipitation : Double, humidity : Double) {
        
        self.temperature = temperature
        self.main = main
        self.precipitation = precipitation
        self.humidity = humidity
    }
}

//  JSON'dan yani veriyi çekeceğimiz yerden gelen veriler burada tutuluyor. Çekeceğimiz verideki değerler ile üstteki değerler uyuşmak zorunda. Değişken adları aynı olmalı, tipleri aynı olmalı. İşlenmemiş veriyi burada tutuyoruz.
