//
//  VzaarGetEncodingPresetsParameters.swift
//  Vzaar
//
//  Created by Andreas Bagias on 26/05/2017.
//  Copyright © 2017 Andreas Bagias. All rights reserved.
//

import Foundation

public class VzaarGetEncodingPresetsParameters: VzaarRequestParameters {
    
    //Video attribute to sort results with.
    public var sort: String?
    //Specify sort order. Acceptable values are: asc, desc
    public var order: String?
    //Page number for paginated results.
    public var page: Int32?
    //Number of results per paginated page result.
    public var per_page: Int32?
    
    
    public override init(){
        super.init()
        
        super.method = MethodType.get
        super.urlSuffix = "encoding_presets"
    }
    
    func createQueryParameters(){
        var params: [String: Any] = [String: Any]()
        
        if let sort = sort{ params["sort"] = sort }
        if let order = order{ params["order"] = order }
        if let page = page{ params["page"] = page }
        if let per_page = per_page{ params["per_page"] = per_page }
        
        queryParameters = params
    }
    
    override func createRequest(withConfig config: VzaarConfig) -> NSMutableURLRequest {
        createQueryParameters()
        return super.createRequest(withConfig: config)
    }
}
