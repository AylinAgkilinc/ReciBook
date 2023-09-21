//
//  RecipeDetailViewController.swift
//  Recibook
//
//  Created by Aylin Ağkılınç on 11.08.2023.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    @IBOutlet weak var recipeDetailImageView: UIImageView!
    @IBOutlet weak var recipeDetailTitleLabel: UILabel!
    @IBOutlet weak var recipeDetailCategoryLabel: UILabel!
    @IBOutlet weak var recipeDetailIngredientsLabel: UILabel!
    @IBOutlet weak var recipeDetailAllIngredientsLabel: UILabel!
    @IBOutlet weak var recipeDetailRecipeTitleLabel: UILabel!
    @IBOutlet weak var recipeDetailRecipeLabel: UILabel!
    @IBOutlet weak var recipeDetailLinkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recipeDetailImageView.layer.masksToBounds = true
        recipeDetailImageView.layer.cornerRadius = 45
    }
    

}
