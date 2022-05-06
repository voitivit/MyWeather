//
//  WeatherCollectionViewController.swift
//  MyWeatherApp
//
//  Created by emil kurbanov on 06.05.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class WeatherCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // var arraImage: [UIImage?] = []
    private let arrayImage: [UIImage?] = [UIImage(systemName: "airpod.gen3.left"), UIImage(systemName: "airpods.gen3.chargingcase.wireless"), UIImage(systemName: "beats.fit.pro")]
    
    @IBOutlet weak var collectionView: UICollectionView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WeatherCollectionViewCell.reuseId, for: indexPath) as! WeatherCollectionViewCell
        cell.weatherImage.image = arrayImage[indexPath.row]
        return cell
    }
    

}
