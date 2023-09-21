//
//  Recipes.swift
//  Recibook
//
//  Created by Aylin Ağkılınç on 11.08.2023.
//

import Foundation

class Recipes {
    var recipeId:Int?
    var recipeName:String?
    //var recipePhoto:String?
    
    init() {
        
    }
    init(recipeId:Int, recipeName:String){
        self.recipeId = recipeId
        self.recipeName = recipeName
        //self.recipePhoto = recipePhoto
    }
    
    
}



