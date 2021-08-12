//
//  ScheduleViewController.swift
//  Rebeccronograma
//
//  Created by Rebecca Mello on 12/08/21.
//

import Foundation
import UIKit

class ScheduleViewController: UIViewController{
    
    @IBOutlet weak var todayCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        todayCollectionView.dataSource = self
    }
}

extension ScheduleViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = todayCollectionView.dequeueReusableCell(withReuseIdentifier: "todayCell", for: indexPath)
        return cell
    }
}
