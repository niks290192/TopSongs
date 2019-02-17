//
//  SelectCategoriesViewController.swift
//  iTunesTopCharts
//
//  Created by NiKhil AroRa on 14/01/19.
//  Copyright © 2019 Nikhil Arora. All rights reserved.
//

import UIKit

class SelectCategoriesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
    
    @IBOutlet weak var browseCollectioView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        browseCollectioView.collectionViewLayout = CardsCollectionViewLayout()
        browseCollectioView.dataSource = self
        browseCollectioView.delegate = self
        browseCollectioView.isPagingEnabled = true
        browseCollectioView.showsHorizontalScrollIndicator = false
        
        // Do any additional setup after loading the view.
    }
    

    var colors: [UIColor]  = [
        UIColor(red: 237, green: 37, blue: 78),
        UIColor(red: 249, green: 220, blue: 92),
        UIColor(red: 194, green: 234, blue: 189),
        UIColor(red: 1, green: 25, blue: 54),
        UIColor(red: 255, green: 184, blue: 209)
    ]
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellReuseIdentifier", for: indexPath)
        cell.layer.cornerRadius = 7.0
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red)/255 ,
                  green: CGFloat(green)/255,
                  blue: CGFloat(blue)/255,
                  alpha: 1.0)
    }
}
