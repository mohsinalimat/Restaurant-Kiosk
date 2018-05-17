//
//  Item.swift
//  Restaurant Kiosk
//
//  Created by Huy Vu on 5/13/18.
//  Copyright © 2018 VietMyApps. All rights reserved.
//

import Foundation
struct FoodItem : Codable{
    var id : String = ""
    var name : String = ""
    var description : String?
    var img_url : String?
    var ingredient_array : [String]?
    var category_name : String?
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(String.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        description = try? values.decodeIfPresent(String.self, forKey: .description) ?? ""
        img_url = try? values.decodeIfPresent(String.self, forKey: .img_url) ?? ""
        ingredient_array = try? values.decodeIfPresent([String].self, forKey: .ingredient_array) ?? []
        category_name = try? values.decodeIfPresent(String.self, forKey: .category_name) ?? ""
    }
    
    init(){
    }
}