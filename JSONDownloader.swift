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
    typealias JSONDownloaderCompletionH = (JSON?, OpenWeatherMapError?) -> Void
    
    func jsonTask(with request : URLRequest , completionHandler completion : @escaping JSONDownloaderCompletionH ) -> URLSessionDataTask {
        
        let task = session.dataTask(with: request) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, .RequestError)
                return
            }
            if httpResponse.statusCode == 200 {
                if let data = data {
                    
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? JSON
                        completion(json, nil)
                    }catch {
                        completion(nil, .JSONParsingError)
                    }
                    
                }else {
                    // Data'da sorun varsa, veya elde edilemediyse.
                    completion(nil, .InvalidData)
                }
            } else {
                // Hata meydana geldi.
                completion(nil, .ResponseUnsuccesful)
            }
            
            
        }
        return task
    }
}

enum OpenWeatherMapError {
    case RequestError
    case ResponseUnsuccesful
    case InvalidData
    case JSONParsingError
}
