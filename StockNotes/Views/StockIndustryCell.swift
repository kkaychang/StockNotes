//
//  StockIndustryCell.swift
//  StockNotes
//
//  Created by Oldkay Chang on 2021/5/5.
//

import UIKit

class StockIndustryCell: UICollectionViewCell {

    @IBOutlet weak var industryNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupCell(industryName: String) {
        industryNameLabel.text = industryName
    }
}
