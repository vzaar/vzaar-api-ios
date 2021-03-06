//
//  VzaarQueryParameters.swift
//  Vzaar
//
//  Created by Andreas Bagias on 24/05/2017.
//  Copyright © 2017 Andreas Bagias. All rights reserved.
//

import Foundation

public class VzaarGetVideosParameters: VzaarRequestParameters {

    //Search query 
    public var q: String?
    //Video attribute to sort results with.
    public var sort: String?
    //Specify sort order. Acceptable values are: asc, desc.
    public var order: String?
    //Page number for paginated results.
    public var page: Int32?
    //Number of results per paginated page result.
    public var per_page: Int32?
    //Category for filtered results.
    public var category_id: Int32?
    //Filter videos on whether they are categorised or not.
    public var categorised: Bool?
    //Video state for filtered results. Acceptable values are: processing, ready, failed
    public var state: VzaarGetVideosParametersState?
    
    public override init(){
        super.init()
        
        super.method = MethodType.get
        super.urlSuffix = "videos"
    }
    
    func createQueryParameters(){
        var params: [String: Any] = [String: Any]()
        
        if let q = q{ params["q"] = q }
        if let sort = sort{ params["sort"] = sort }
        if let order = order{ params["order"] = order }
        if let page = page{ params["page"] = page }
        if let per_page = per_page{ params["per_page"] = per_page }
        if let category_id = category_id{ params["category_id"] = category_id }
        if let categorised = categorised{ params["categorised"] = categorised }
        if let state = state{ params["state"] = state.rawValue}
        
        queryParameters = params
    }
    
    
    override func createRequest(withConfig config: VzaarConfig) -> NSMutableURLRequest {
        createQueryParameters()
        
        return super.createRequest(withConfig: config)
    }
    
}

public enum VzaarGetVideosParametersState: String{
    case ready = "ready"
    case processing = "processing"
    case failed = "failed"
}
