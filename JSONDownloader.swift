//
//  JSONDownloader.swift
//  Weather-App
//
//  Created by Nika Kalandia on 19.02.2022.
//

import Foundation

class JSONDownloader {
    
    let session : URLSession
    
    // Eğer bir config nesnesi varsa bunu kullanacağız
    init(config : URLSessionConfiguration){
        self.session = URLSession(configuration: config)
    }
    // Eğer bir config nesnesi yoksa default olarak kullanılacak olan URLSession
    convenience init() {
        self.init(config : URLSessionConfiguration.default)
    }
    
    typealias JSON = [String: AnyObject]
    
    func jsonTask(with request : URLRequest , completionHandler completion : @escaping (JSON?, OpenWeatherMapError?) -> Void) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse else {
                
                completion(nil, OpenWeatherMapError.RequestError)
                return
            }
            
        }
        return task
    }
}

enum OpenWeatherMapError {
    case RequestError
}
