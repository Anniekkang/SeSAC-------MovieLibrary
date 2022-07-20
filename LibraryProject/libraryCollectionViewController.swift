//
//  libraryCollectionViewController.swift
//  LibraryProject
//
//  Created by 나리강 on 2022/07/20.
//

import UIKit

class libraryCollectionViewController: UICollectionViewController {

    var movieLibrary = MovieInfo()
    var color : [UIColor] = [.systemPink, .systemYellow, .gray, .systemGreen,.blue,.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //컬렉션뷰의 셀 크기, 셀 사이의 간격 등등 설정 (Estimate Size None으로 설정)
        
        
        
        let layout = UICollectionViewFlowLayout()
        let spacing :CGFloat = 6
        let width = UIScreen.main.bounds.width - (3 * spacing)
        layout.itemSize = CGSize(width: width / 2, height: width / 2 )
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        layout.sectionInset = UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6)
        collectionView.collectionViewLayout = layout
        
        
        
    }

   
    //셀의 갯수, 셀의모양
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "libraryCollectionViewCell", for: indexPath) as! libraryCollectionViewCell
        
        cell.contentView.layer.cornerRadius = 20
        cell.backgroundImageView.backgroundColor = color.randomElement()
        cell.movietitleLabel.textColor = .white
        cell.movieoverviewLabel.textColor = .white
        cell.movieoverviewLabel.font = .boldSystemFont(ofSize: 15)
        cell.movietitleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
        
        return cell
    }
    
    
}