//
//  Service.swift
//  MyWeatherApp
//
//  Created by emil kurbanov on 06.05.2022.
//

import Foundation
import Alamofire
let weather = [Weather].self
class APIService {
    func getAPI(city: String, completion: @escaping ([Weather]) -> Void) {
        
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.openweathermap.org"
        urlComponents.path = "/data/2.5/forecast"
        urlComponents.queryItems = [
            URLQueryItem(name: "q", value: city),
            URLQueryItem(name: "cnt", value: "3"),
            URLQueryItem(name: "appid", value: "5ffd59f72252a63717086d600e61c8e5")
        ]
        
        guard let url = urlComponents.url else { return }
        
        AF.request(url).response { response in
            guard let data = response.data else { return }
            
            do {
                let jsonExample = try? JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(jsonExample as Any)
                let json = try JSONDecoder().decode(weather, from: data)
                DispatchQueue.main.async {
                    
                    completion(json)
                }
               
            } catch  {
                print(error)
            }
        }
    }
    
}
