//
//  DetailViewController.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 9/4/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var horoscope: Horoscope? = nil
    
    
    @IBOutlet var imageViewSign: UIImageView!
    
    
    @IBOutlet var labelViewSign: UILabel!
    
    @IBOutlet var textViewDetail: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labelViewSign.text = horoscope?.name
        imageViewSign.image = horoscope?.image
        
        getHoroscopeDescription()
       
        
        
        
        
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
