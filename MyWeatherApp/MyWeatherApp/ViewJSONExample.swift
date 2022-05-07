//
//  ViewJSONExample.swift
//  MyWeatherApp
//
//  Created by emil kurbanov on 06.05.2022.
//

import UIKit

class ViewJSONExample: UIViewController {
    var array: [Weather] = []
    
    @IBOutlet weak var labelOutlet: UILabel!
    let api = APIService()
    override func viewDidLoad() {
        super.viewDidLoad()
        api.getAPI(city: "Moscow") { [weak self] infoWeather in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.array = infoWeather
                self.labelOutlet.text = self.array.description
                self.labelOutlet.reloadInputViews()
                print(infoWeather)
            }
            
        }
        
    }
}
