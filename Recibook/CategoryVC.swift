//
//  CategoryVC.swift
//  Recibook
//
//  Created by Aylin Ağkılınç on 9.08.2023.
//

import UIKit

class CategoryVC: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categoriesList = [Categories]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let c1 = Categories(categoryId: 1, categoryName: "Çorba", categoryPhoto: "soupIllustration", categoryBackground: UIColor(red: 244/255, green: 166/255, blue: 180/255, alpha: 0.5).cgColor)
        let c2 = Categories(categoryId: 2, categoryName: "Salata", categoryPhoto: "saladillustration", categoryBackground: UIColor(red: 229/255, green: 115/255, blue: 115/255, alpha: 0.5).cgColor)
        let c3 = Categories(categoryId: 3, categoryName: "Meze", categoryPhoto: "appetizerIllustration", categoryBackground: UIColor(red: 169/255, green: 214/255, blue: 166/255, alpha: 0.5).cgColor)
        let c4 = Categories(categoryId: 4, categoryName: "Aperitif", categoryPhoto: "warmStarterIllustration", categoryBackground: UIColor(red: 228/255, green: 195/255, blue: 77/255, alpha: 0.5).cgColor)
        let c5 = Categories(categoryId: 5, categoryName: "Fırın", categoryPhoto: "bakeryIllustration", categoryBackground: UIColor(red: 161/255, green: 136/255, blue: 127/255, alpha: 0.8).cgColor)
        let c6 = Categories(categoryId: 6, categoryName: "Ana Yemek", categoryPhoto: "mainDishIllustration", categoryBackground: UIColor(red: 104/255, green: 102/255, blue: 102/255, alpha: 1).cgColor)
        let c7 = Categories(categoryId: 7, categoryName: "Kebap", categoryPhoto: "kebabIllustration", categoryBackground: UIColor(red: 180/255, green: 112/255, blue: 234/255, alpha: 0.4).cgColor)
        let c8 = Categories(categoryId: 8, categoryName: "Tatlı", categoryPhoto: "dessertIllustration", categoryBackground: UIColor(red: 206/255, green: 147/255, blue: 216/255, alpha: 0.5).cgColor)
        let c9 = Categories(categoryId: 9, categoryName: "İçecek", categoryPhoto: "drinkIllustration", categoryBackground: UIColor(red: 255/255, green: 202/255, blue: 202/255, alpha: 0.5).cgColor)
        
        categoriesList.append(c1)
        categoriesList.append(c2)
        categoriesList.append(c3)
        categoriesList.append(c4)
        categoriesList.append(c5)
        categoriesList.append(c6)
        categoriesList.append(c7)
        categoriesList.append(c8)
        categoriesList.append(c9)
        
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        let design :UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = self.categoryCollectionView.frame.size.width
        design.sectionInset = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        let cellWidth = (width - 100)/2
        design.itemSize = CGSize(width: cellWidth, height: cellWidth*1.20)
        design.minimumInteritemSpacing = 30
        design.minimumLineSpacing = 30
        categoryCollectionView.collectionViewLayout = design
        
    }
}
    
    extension CategoryVC:UICollectionViewDelegate, UICollectionViewDataSource{
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return categoriesList.count
        }
        
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let category = categoriesList[indexPath.item]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
            
            cell.categoryNameLabel.text = category.categoryName
            cell.imageViewFoodImage.image = UIImage(named: category.categoryPhoto!)
            cell.contentView.layer.cornerRadius = 40
            cell.contentView.layer.borderWidth = 3.0
            cell.contentView.layer.borderColor = UIColor.clear.cgColor
            cell.contentView.layer.masksToBounds = true
            cell.contentView.layer.backgroundColor = category.categoryBackground
            cell.layer.shadowColor = UIColor.gray.cgColor
            cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            cell.layer.shadowRadius = 6.0
            cell.layer.shadowOpacity = 5.0
            cell.layer.masksToBounds = false
            cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
                    
            cell.categoryNameLabel.shadowColor = (UIColor .black)
            cell.categoryNameLabel.shadowOffset = CGSizeMake(0.0, -0.5)
            
    
            return cell
        }
        
        
        
    }

   


