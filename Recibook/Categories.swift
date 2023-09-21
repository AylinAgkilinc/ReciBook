//
//  Categories.swift
//  Recibook
//
//  Created by Aylin Ağkılınç on 15.08.2023.
//

import Foundation
import UIKit

class Categories {
    var categoryId:Int?
    var categoryName:String?
    var categoryPhoto:String?
    var categoryBackground:CGColor?
    
    
    init() {
        
    }
    init(categoryId:Int, categoryName:String, categoryPhoto:String, categoryBackground:CGColor){
        self.categoryId = categoryId
        self.categoryName = categoryName
        self.categoryPhoto = categoryPhoto
        self.categoryBackground = categoryBackground
    }
    
    
}
