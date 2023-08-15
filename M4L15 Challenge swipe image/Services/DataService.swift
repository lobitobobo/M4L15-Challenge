//
//  DataService.swift
//  M4L15 Challenge swipe image
//
//  Created by Orlando J on 13-08-23.
//

import Foundation

class DataService {
    
    static func getLocalData () -> [Book] {
        
        // Use Bundle for get pathString and Parse local json file
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        // check if pathString is not nil, otherwise... use guard != nil else return empty array
        guard pathString != nil else {
            return [Book]()
        }
        
        // 2 Create a url object
        let url = URL(fileURLWithPath: pathString!)

        do {
            // 3 Create a Data object with url
            let data = try Data(contentsOf: url)
            
            // 4 call JSONDecoder() for Decode the data
            let decoder = JSONDecoder()
            
            do {
                // use decoder.decode for extract data into variableData
                let bookData = try decoder.decode([Book].self, from: data)
                
                    // 5Add the unique IDs

                        
                        // Add unique IDs to recipe ingredients

                    // 6Return the recipes
                    return bookData
                
            } catch {
                // Print error parsing json
                print(error)
            }

        } catch {
            // Print error getting Data
            print(error)
        }
        return [Book]()
    }


}
