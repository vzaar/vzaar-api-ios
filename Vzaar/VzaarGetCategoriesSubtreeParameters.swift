//
//  VzaarGetCategoriesSubtreeParameters.swift
//  Vzaar
//
//  Created by Andreas Bagias on 26/05/2017.
//  Copyright © 2017 Andreas Bagias. All rights reserved.
//

import Foundation

public class VzaarGetCategoriesSubtreeParameters: VzaarRequestParameters {
    
    //Category id - REQUIRED
    public var id: Int32?
    
    //Page number for paginated results.
    public var page: Int32?
    //Number of results per paginated page result.
    public var per_page: Int32?
    //Number of hierarchy levels to include. This is one-based so a value of 2 would return your root categories and only their immediate child categories
    public var levels: Int32?
    
    override init(){
        super.init()
    }
    
    public convenience init(id: Int32){
        self.init()
        
        self.id = id
        super.method = MethodType.get
        super.urlSuffix = "categories/\(id)/subtree"
    }
    
    func createQueryParameters(){
        var params: [String: Any] = [String: Any]()
        
        if let page = page{ params["page"] = page }
        if let per_page = per_page{ params["per_page"] = per_page }
        if let levels = levels{ params["levels"] = levels }
        
        queryParameters = params
    }
    
    override func createRequest(withConfig config: VzaarConfig) -> NSMutableURLRequest {
        createQueryParameters()
        return super.createRequest(withConfig: config)
    }
}
