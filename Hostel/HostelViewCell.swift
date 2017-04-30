//
//  HostelViewCell.swift
//  Hostel
//
//  Created by Jushy Shen on 2017/4/28.
//  Copyright © 2017年 Jushy Shen. All rights reserved.
//

import UIKit

class HostelViewCell: UITableViewCell {
    
    public var nameLabel = UILabel()
    public var addressLabel =  UILabel()
    public var priceLabel =  UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
  
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        nameLabel.frame = CGRect.zero
        
        
        self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(addressLabel)
        self.contentView.addSubview(priceLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
