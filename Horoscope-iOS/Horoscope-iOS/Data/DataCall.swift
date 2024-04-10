//
//  DataCall.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 9/4/24.
//

import Foundation



struct HoroscopeResponse: Decodable {
    let data : HoroscopeDataResponse
    
}



struct HoroscopeDataResponse: Decodable {
    let horoscope_data: String
}

func getHoroscopeFromApi(horoscopeId: String) async throws -> String {
    
    let url = URL(string: "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign=\(horoscopeId)&day=TODAY")!
    
    let (data, _) = try await URLSession.shared.data(from: url)
    
    let decoded = try JSONDecoder().decode(HoroscopeResponse.self, from: data)
    
    return decoded.data.horoscope_data
    
}


/*json
 "data": {
"date": ......  ,
  "horoscope_data":........
 

 */
