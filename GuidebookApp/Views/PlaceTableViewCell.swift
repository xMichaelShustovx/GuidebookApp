//
//  PlaceTableViewCell.swift
//  GuidebookApp
//
//  Created by Michael Shustov on 16.11.2021.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    @IBOutlet weak var shadowView: UIView!
    
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var placeImageView: UIImageView!
    
    @IBOutlet weak var placeNameLabel: UILabel!
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // Style the cell background
        cardView.layer.cornerRadius = 10
        shadowView.layer.cornerRadius = 10
        shadowView.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowOffset = CGSize(width: 5, height: 5)
        shadowView.layer.shadowRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Methods
    func setCell(_ p: Place) {
        
        // Set the image
        placeImageView.image = UIImage(named: p.imageName ?? "")
        
        // Set the label
        placeNameLabel.text = p.name
    }
}
