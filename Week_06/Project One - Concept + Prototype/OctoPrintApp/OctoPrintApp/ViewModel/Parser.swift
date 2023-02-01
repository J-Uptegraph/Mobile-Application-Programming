//
//  Parser.swift
//  OctoPrintApp
//
//  Created by Johnathan Uptegraph on 10/18/22.
//

import Foundation

struct Parser {
    // Convert Location to [Location] in the future if you want to access an array of data
    func parse(comp : @escaping ([Location])->()) {
        
        // replace with OCTOPI API
        let api = URL(string: "http://api.weatherapi.com/v1/forecast.json?key=b3b5a48aadea441997a143521221810&q=45056&days=7&aqi=yes&alerts=yes")
       
        // Check URL
         print ("URL FOR API: ", api!)
        
        // Opens the URL session and returns data, response, error
        URLSession.shared.dataTask(with: api!){
            data, response, error in
            
            // If there is some sort of error, print the description of that error
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            
            // If there is no error call the JSON decoder
            do {
          let result = try JSONDecoder().decode(Welcome.self, from: data!)
                print (result)
            comp(result.locations)
            
            } catch {
                
            }
            
        }.resume()
    }
    
}
