//
//  HoroscopeViewCellTableViewCell.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 8/4/24.
//

import UIKit

class HoroscopeViewCell: UITableViewCell {
    
   
    @IBOutlet var signImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    
    @IBOutlet var favoriteButton: UIButton!
    
    func render(horoscope: Horoscope) {
        signImageView.image = horoscope.image
        titleLabel.text = horoscope.name
        subTitleLabel.text = horoscope.date
        let favoriteHoroscope = UserDefaults.standard.string(forKey: "FAVORITE_HOROSCOPE") ?? ""
        let isFavorite = horoscope.id == favoriteHoroscope
        
        favoriteButton.isHidden = !isFavorite
        
    }
    
    
    
}
