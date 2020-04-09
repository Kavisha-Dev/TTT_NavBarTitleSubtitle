//
//  UINavigationItem+Extensions.swift
//  TTT_NavBarTitleSubtitle
//
//  Created by Kavisha on 09/04/20.
//  Copyright © 2020 Kavisha. All rights reserved.
//

import UIKit

extension UINavigationItem {
    
    func setTitle(title: String, subtitle: String) {
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = .preferredFont(forTextStyle: UIFont.TextStyle.headline)
        titleLabel.textColor = UIColor.black
        
        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.font = .preferredFont(forTextStyle: UIFont.TextStyle.subheadline)
        subtitleLabel.textColor = UIColor.gray
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        stackView.axis = .vertical
        
        self.titleView = stackView
    }
}
