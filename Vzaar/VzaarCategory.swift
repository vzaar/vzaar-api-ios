//
//  VzaarCategory.swift
//  Vzaar
//
//  Created by Andreas Bagias on 03/03/2017.
//  Copyright © 2017 Andreas Bagias. All rights reserved.
//

import Foundation

public class VzaarCategory: NSObject{

    public var id: Int?
    public var account_id: Int?
    public var user_id: Int?
    public var name: String?
    public var categoryDescription: String?
    public var parent_id: Int?
    public var depth: Int?
    public var node_children_count: Int?
    public var tree_children_count: Int?
    public var node_video_count: Int?
    public var tree_video_count: Int?
    public var created_at: String?
    public var updated_at: String?
    
    init(withDictionary dict: NSDictionary){
    
        if let id = dict["id"] as? Int{
            self.id = id
        }
        if let account_id = dict["account_id"] as? Int{
            self.account_id = account_id
        }
        if let user_id = dict["user_id"] as? Int{
            self.user_id = user_id
        }
        if let name = dict["name"] as? String{
            self.name = name
        }
        if let categoryDescription = dict["description"] as? String{
            self.categoryDescription = categoryDescription
        }
        if let parent_id = dict["parent_id"] as? Int{
            self.parent_id = parent_id
        }
        if let depth = dict["depth"] as? Int{
            self.depth = depth
        }
        if let node_children_count = dict["node_children_count"] as? Int{
            self.node_children_count = node_children_count
        }
        if let tree_children_count = dict["tree_children_count"] as? Int{
            self.tree_children_count = tree_children_count
        }
        if let node_video_count = dict["node_video_count"] as? Int{
            self.node_video_count = node_video_count
        }
        if let tree_video_count = dict["tree_video_count"] as? Int{
            self.tree_video_count = tree_video_count
        }
        if let created_at = dict["created_at"] as? String{
            self.created_at = created_at
        }
        if let updated_at = dict["updated_at"] as? String{
            self.updated_at = updated_at
        }
        
    }
    
}
