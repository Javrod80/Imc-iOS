//
//  DetailViewController.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 9/4/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var horoscope: Horoscope? = nil
    var isFavorite: Bool = false
    
    
    @IBOutlet var imageViewSign: UIImageView!
    
    @IBOutlet var labelViewSign: UILabel!
    
    @IBOutlet var textViewDetail: UITextView!
    
    @IBOutlet var favoriteButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let favoriteHoroscope = UserDefaults.standard.string(forKey: "FAVORITE_HOROSCOPE") ?? ""
        isFavorite = horoscope?.id == favoriteHoroscope
        
        setFavoriteButtomItem()
        
        labelViewSign.text = horoscope?.name
        imageViewSign.image = horoscope?.image
        self.navigationItem.title = "Zodiac"
        
        getHoroscopeDescription()
        
        
    }
    

    @IBAction func selectFavorite(_ sender: UIBarButtonItem) {
        isFavorite = !isFavorite
        if (isFavorite) {
            UserDefaults.standard.setValue(horoscope?.id, forKey: "FAVORITE_HOROSCOPE")
        } else {
            UserDefaults.standard.setValue("", forKey: "FAVORITE_HOROSCOPE")
        }
        setFavoriteButtomItem()
        
    
        
    }
    
    func setFavoriteButtomItem() {
        if (isFavorite) {
            favoriteButton.image = UIImage(named: "favorite_1")
        } else {
            favoriteButton.image = UIImage(systemName: "heart")
        }
    }
    
    
    
    
    
    func getHoroscopeDescription() {
        
        Task {
            do {
                let detail = try await getHoroscopeFromApi(horoscopeId: horoscope!.id)
                textViewDetail.text = detail
                
            }catch {
                print(error)
            }
        }
    }
    
    
    
    
    
    
}
