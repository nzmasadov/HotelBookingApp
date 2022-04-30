//
//  SuggestionView.swift
//  homework_3_IATC_nzmasadov
//
//  Created by Nazim Asadov on 20.04.22.
//

import UIKit

class SuggestionsView: UIStackView {
    
    private lazy var recommendedLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.backgroundColor = UIColor(named: "greenColor")
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Recomended"
        label.layer.cornerRadius = 16
        label.clipsToBounds = true
        label.textAlignment = .center
        
        addArrangedSubview(label)
        
        return label
    }()
    
    private lazy var popularLabel: UILabel = {
        let label = UILabel()
        
        label.backgroundColor = .white
        label.textColor = .systemGreen
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Popular"
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor(named: "greenColor")?.cgColor
        
        label.clipsToBounds = true
        label.layer.cornerRadius = 16
        
        addArrangedSubview(label)
        
        return label
    }()
    
    private lazy var trendingLabel: UILabel = {
        let label = UILabel()
        
        label.backgroundColor = .white
        label.textColor = .systemGreen
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Trending"
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor(named: "greenColor")?.cgColor
//        label.layer.borderColor = CGColor.init(red: 0, green: 45, blue: 0, alpha: 0)
        
        label.clipsToBounds = true
        label.layer.cornerRadius = 16
        
        addArrangedSubview(label)
        
        return label
    }()
    
    private lazy var favouriteLabel: UILabel = {
        let label = UILabel()

        label.backgroundColor = .white
        label.textColor = .systemGreen
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.text = "Favourite"
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor(named: "greenColor")?.cgColor
        label.clipsToBounds = true
        label.layer.cornerRadius = 16

        addArrangedSubview(label)

        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        recommendedLabel.snp.makeConstraints { make in
            make.width.equalTo(135)
            make.height.equalTo(33)
        }
        
        popularLabel.snp.makeConstraints { make in
            make.width.equalTo(95)
            make.height.equalTo(recommendedLabel.snp.height)
        }
        
        trendingLabel.snp.makeConstraints { make in
            make.width.equalTo(95)
            make.height.equalTo(recommendedLabel.snp.height)
        }
        
        favouriteLabel.snp.makeConstraints { make in
            make.width.equalTo(98)
            make.height.equalTo(recommendedLabel.snp.height)
        }
}
}
