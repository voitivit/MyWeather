//
//  WeatherCollectionViewCell.swift
//  MyWeatherApp
//
//  Created by emil kurbanov on 06.05.2022.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {
    
    
    static let reuseId = "cellCollection"
    
    @IBOutlet weak var weatherImage: UIImageView!
   
    
     override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(image: UIImage?) {
      
        weatherImage.image = image
    }
    
}
