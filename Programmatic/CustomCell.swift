//
//  CustomCell.swift
//  Programmatic
//
//  Created by Onurcan Sever on 2022-02-25.
//

import UIKit

class CustomCell: UITableViewCell {
    
    public static let identifier = "CustomCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
