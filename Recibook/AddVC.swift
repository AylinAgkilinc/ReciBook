//
//  AddVC.swift
//  Recibook
//
//  Created by Aylin Ağkılınç on 9.08.2023.
//

import UIKit

class AddVC: UIViewController {

    
    @IBOutlet weak var addFoodCategoryLabel: UILabel!
    @IBOutlet weak var addFoodNameLabel: UILabel!
    @IBOutlet weak var addFoodImageView: UIImageView!
    @IBOutlet weak var addFoodIgredientsLabel: UILabel!
    @IBOutlet weak var addFoodRecipeLabel: UILabel!
    @IBOutlet weak var addFoodIgredientsTextField: UITextField!
    @IBOutlet weak var addFoodRecipeTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addFoodImageView.layer.masksToBounds = true
        addFoodImageView.layer.cornerRadius = 45
        addFoodIgredientsTextField.layer.masksToBounds = true
        addFoodIgredientsTextField.layer.cornerRadius = 45
        addFoodRecipeTextField.layer.masksToBounds = true
        addFoodRecipeTextField.layer.cornerRadius = 45
        
        
    }
    

   
}
