//
//  libraryCollectionViewCell.swift
//  LibraryProject
//
//  Created by 나리강 on 2022/07/20.
//

import UIKit

class libraryCollectionViewCell: UICollectionViewCell {
 
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var movieposterImageView: UIImageView!
    @IBOutlet weak var movietitleLabel: UILabel!
    @IBOutlet weak var movieoverviewLabel: UILabel!
    
    
    func configureCell(cell : libraryCollectionViewCell){
        
      
        cell.contentView.layer.cornerRadius = 20
        cell.movietitleLabel.textColor = .white
        cell.movieoverviewLabel.textColor = .white
        cell.movieoverviewLabel.font = .boldSystemFont(ofSize: 10)
        cell.movietitleLabel.font = UIFont.boldSystemFont(ofSize: 15)
       
    }
    
    
}
