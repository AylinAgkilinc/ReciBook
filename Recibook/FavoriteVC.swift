//
//  FavoriteVC.swift
//  Recibook
//
//  Created by Aylin Ağkılınç on 9.08.2023.
//

import UIKit

class FavoriteVC: UIViewController {

    
    @IBOutlet weak var favoriteCollectionView: UICollectionView!
    @IBOutlet weak var myFavoriteLabel: UILabel!
   @IBOutlet weak var numberOfMyFavoriteLabel: UILabel!
    
    var favoriteList = [Recipes]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let f1 = Recipes(recipeId: 1, recipeName: "Sesame Udon Noodle")
        let f2 = Recipes(recipeId: 2, recipeName: "Chorizo & Mozzarella Gnocchi Bake")
        let f3 = Recipes(recipeId: 3, recipeName: "Zucchini Slice")
        let f4 = Recipes(recipeId: 4, recipeName: "Pumpkin Soup Recipe")
        let f5 = Recipes(recipeId: 5, recipeName: "Lasagna")
        let f6 = Recipes(recipeId: 6, recipeName: "Meatball")
        let f7 = Recipes(recipeId: 7, recipeName: "Mac & Cheese")
        let f8 = Recipes(recipeId: 8, recipeName: "Mango Daiquiri")
        let f9 = Recipes(recipeId: 9, recipeName: "Pizza")
        let f10 = Recipes(recipeId: 10, recipeName: "Apple Pie")
        
        favoriteList.append(f1)
        favoriteList.append(f2)
        favoriteList.append(f3)
        favoriteList.append(f4)
        favoriteList.append(f5)
        favoriteList.append(f6)
        favoriteList.append(f7)
        favoriteList.append(f8)
        favoriteList.append(f9)
        favoriteList.append(f10)
        
        favoriteCollectionView.delegate = self
        favoriteCollectionView.dataSource = self
        
        
        let design :UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = self.favoriteCollectionView.frame.size.width
        design.sectionInset = UIEdgeInsets(top: 40, left: 30, bottom: 40, right: 30)
        let cellWidth = (width - 90)/2
        design.itemSize = CGSize(width: cellWidth, height: cellWidth*1.40)
        design.minimumInteritemSpacing = 30
        design.minimumLineSpacing = 30
        favoriteCollectionView.collectionViewLayout = design
        numberOfMyFavoriteLabel.text = String(favoriteList.count)
        numberOfMyFavoriteLabel.layer.masksToBounds = true
        numberOfMyFavoriteLabel.layer.cornerRadius = 35
        
        
    }
    

}

extension FavoriteVC:UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let recipe = favoriteList[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "favoriteCell", for: indexPath) as! FavoriteCollectionViewCell
        cell.favoriteFoodNameLabel.text = recipe.recipeName
        
        cell.contentView.layer.cornerRadius = 35
        cell.contentView.layer.borderWidth = 3.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 5.0
        cell.layer.shadowOpacity = 4.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
                
        cell.favoriteFoodNameLabel.shadowColor = (UIColor .black)
        cell.favoriteFoodNameLabel.shadowOffset = CGSizeMake(0.0, -0.5)
        
        cell.favoriteFoodImageView.layer.masksToBounds = true
        cell.favoriteFoodImageView.layer.cornerRadius = 35
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toRecipeDetail", sender: indexPath.item)
    }
    
}
