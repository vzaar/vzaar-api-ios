//
//  VzaarError.swift
//  Vzaar
//
//  Created by Andreas Bagias on 02/03/2017.
//  Copyright © 2017 Andreas Bagias. All rights reserved.
//

import Foundation

public class VzaarError: NSObject{

    public var errors: NSArray?
    public var statusCode: Int?
    
    init(withDataDictionary dataDict: NSDictionary, statusCode: Int){
        
        self.statusCode = statusCode
        
        if let errors = dataDict["errors"] as? NSArray{
            self.errors = errors
        }
        
    }
    
}
