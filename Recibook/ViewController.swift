//
//  ViewController.swift
//  Recibook
//
//  Created by Aylin Ağkılınç on 8.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recipesCollectionView: UICollectionView!
    @IBOutlet weak var recipeMyRecipeLabel: UILabel!
    @IBOutlet weak var recipeNumberOfRecipesLabel: UILabel!
    
    var recipesList = [Recipes]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let r1 = Recipes(recipeId: 1, recipeName: "Sesame Udon Noodle")
        let r2 = Recipes(recipeId: 2, recipeName: "Chorizo & Mozzarella Gnocchi Bake")
        let r3 = Recipes(recipeId: 3, recipeName: "Zucchini Slice")
        let r4 = Recipes(recipeId: 4, recipeName: "Pumpkin Soup Recipe")
        let r5 = Recipes(recipeId: 5, recipeName: "Lasagna")
        let r6 = Recipes(recipeId: 6, recipeName: "Meatball")
        let r7 = Recipes(recipeId: 7, recipeName: "Mac & Cheese")
        let r8 = Recipes(recipeId: 8, recipeName: "Mango Daiquiri")
        let r9 = Recipes(recipeId: 9, recipeName: "Pizza")
        let r10 = Recipes(recipeId: 10, recipeName: "Apple Pie")
        
        recipesList.append(r1)
        recipesList.append(r2)
        recipesList.append(r3)
        recipesList.append(r4)
        recipesList.append(r5)
        recipesList.append(r6)
        recipesList.append(r7)
        recipesList.append(r8)
        recipesList.append(r9)
        recipesList.append(r10)
        
        recipesCollectionView.delegate = self
        recipesCollectionView.dataSource = self
        
        let design :UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = self.recipesCollectionView.frame.size.width
        design.sectionInset = UIEdgeInsets(top: 40, left: 30, bottom: 40, right: 30)
        let cellWidth = (width - 90)/2
        design.itemSize = CGSize(width: cellWidth, height: cellWidth*1.40)
        design.minimumInteritemSpacing = 30
        design.minimumLineSpacing = 30
        recipesCollectionView.collectionViewLayout = design
        recipeNumberOfRecipesLabel.text = String(recipesList.count)
        
        recipeNumberOfRecipesLabel.layer.masksToBounds = true
        recipeNumberOfRecipesLabel.layer.cornerRadius = 35
        
    
    }

}

extension ViewController:UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipesList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let recipe = recipesList[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! RecipesCollectionViewCell
        cell.recipeNameLabel.text = recipe.recipeName
        
        cell.contentView.layer.cornerRadius = 35
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 5.0
        cell.layer.shadowOpacity = 4.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
                
        cell.recipeNameLabel.shadowColor = (UIColor .black)
        cell.recipeNameLabel.shadowOffset = CGSizeMake(0.0, -0.5)
        
        cell.recipeImageView.layer.masksToBounds = true
        cell.recipeImageView.layer.cornerRadius = 35
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toRecipeDetail", sender: indexPath.item)
    }
    
}
