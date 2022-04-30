//
//  HotelListView.swift
//  homework_3_IATC_nzmasadov
//
//  Created by Nazim Asadov on 21.04.22.
//

import UIKit

class HotelListView: UIView {
    
    lazy var hotelImageView: UIImageView = {
        let imgView = UIImageView()
        
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = 18
        imgView.contentMode = .scaleToFill
        
        addSubview(imgView)
        return imgView
    }()
    
    lazy var titleLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textAlignment = .left
        label.numberOfLines = 1
        
        addSubview(label)
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        
        addSubview(label)
        return label
    }()
    
    lazy var starImageView: UIImageView = {
        let view = UIImageView()
        
        view.contentMode = .scaleToFill
        view.image = UIImage(named: "icStar")
        
        addSubview(view)
        return view
    }()
    
    lazy var ratingLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .systemGreen
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        addSubview(label)
        return label
    }()
    
    lazy var reviewLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .left
        label.textColor = .lightGray
        
        addSubview(label)
        return label
    }()
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .systemGreen
        
        addSubview(label)
        return label
    }()
    
    lazy var nightLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 11)
        label.textAlignment = .right
        label.text = "/ night"
        
        addSubview(label)
        return label
    }()
    
    lazy var savedImageView: UIImageView = {
        let view = UIImageView()
        
        view.contentMode = .scaleToFill
        
        addSubview(view)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    
    private func setupUI() {
        
        //        backgroundColor = UIColor(named: "backgroundColor")
        
        layer.cornerRadius = 22
        
        hotelImageView.snp.makeConstraints { make in
            make.left.equalTo(snp.left).offset(17)
            make.height.width.equalTo(95)
            make.centerY.equalTo(snp.centerY)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalTo(hotelImageView.snp.top).offset(15)
            make.left.equalTo(hotelImageView.snp.right).offset(17)
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.left.equalTo(titleLabel.snp.left)
            make.centerY.equalTo(hotelImageView.snp.centerY)
        }
        
        starImageView.snp.makeConstraints { make in
            make.height.width.equalTo(12)
            make.left.equalTo(subtitleLabel.snp.left)
            make.centerY.equalTo(hotelImageView.snp.bottom).offset(-16)
        }
        
        ratingLabel.snp.makeConstraints { make in
            make.left.equalTo(starImageView.snp.right).offset(7)
            make.centerY.equalTo(hotelImageView.snp.bottom).offset(-16)
        }
        
        reviewLabel.snp.makeConstraints { make in
            make.left.equalTo(ratingLabel.snp.right).offset(7)
            make.centerY.equalTo(hotelImageView.snp.bottom).offset(-16)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.centerY.equalTo(titleLabel.snp.centerY)
            make.right.equalTo(snp.right).offset(-17)
        }
        
        nightLabel.snp.makeConstraints { make in
            make.right.equalTo(priceLabel.snp.right)
            make.centerY.equalTo(subtitleLabel.snp.centerY).offset(-4)
        }
        
        savedImageView.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.centerY.equalTo(reviewLabel.snp.centerY)
            make.right.equalTo(snp.right).offset(-19)
        }
    }
    
    public func configure(hotelList: HotelListModel ) {
        self.titleLabel.text = hotelList.title
        self.subtitleLabel.text = hotelList.subtitle
        self.hotelImageView.image = hotelList.hotelImage
        self.ratingLabel.text = hotelList.rating
        self.reviewLabel.text = hotelList.ratingCount
        self.priceLabel.text = hotelList.price
        self.savedImageView.image = hotelList.savedImage
    }
    
}
