//
//  horoscopedata.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 5/4/24.
//

import Foundation
import UIKit


struct Horoscope {
    let image: UIImage?
    let name: String
    let id: String
    let date : String

    
}



struct HoroscopeList {
    
    var aries =  Horoscope (image: UIImage(named: "aries") , name: "Aries", id: "aries", date:"21 de marzo al 19 de abril")
    var taurus =  Horoscope (image: UIImage(named: "taurus") , name: "Taurus", id: "taurus", date:"20 de abril al 20 de mayo")
    var gemini =  Horoscope (image: UIImage(named: "gemini") , name: "Gemini", id: "gemini", date:"21 de mayo al 20 de junio")
    var cancer =  Horoscope (image: UIImage(named: "cancer") , name: "Cancer", id: "cancer", date:"21 de junio al 22 de julio")
    var leo =  Horoscope (image: UIImage(named: "leo") , name: "Leo", id: "leo", date:"23 de julio al 22 de agosto")
    var virgo =  Horoscope (image: UIImage(named: "virgo") , name: "Virgo", id: "virgo", date:"23 de agosto al 22 de septiembre")
    var libra =  Horoscope (image: UIImage(named: "libra") , name: "Libra", id: "libra", date:"23 de septiembre al 22 de octubre")
    var scorpio =  Horoscope (image: UIImage(named: "scorpius") , name: "Scorpio", id: "scorpio", date:"23 de octubre al 21 de noviembre")
    var sagittarius =  Horoscope (image: UIImage(named: "sagittarius") , name: "Sagittarius", id: "sagittarius", date:"22 de noviembre al 21 de diciembre")
    var capricorn =  Horoscope (image: UIImage(named: "capricornius") , name: "Capricorn", id: "capricorn", date:"22 de diciembre al 19 de enero")
    var aquarius =  Horoscope (image: UIImage(named: "aquarius") , name: "Aquarius", id: "aquarius", date:"20 de enero al 18 de febrero")
    var pisces =  Horoscope (image: UIImage(named: "pisces") , name: "Pisces", id: "pisces", date:"19 de febrero al 20 de marzo")
}

var list: [Horoscope] = [
    HoroscopeList().aries,
    HoroscopeList().taurus,
    HoroscopeList().gemini,
    HoroscopeList().cancer,
    HoroscopeList().leo,
    HoroscopeList().virgo,
    HoroscopeList().libra,
    HoroscopeList().scorpio,
    HoroscopeList().sagittarius,
    HoroscopeList().capricorn,
    HoroscopeList().aquarius,
    HoroscopeList().pisces,
    
]

