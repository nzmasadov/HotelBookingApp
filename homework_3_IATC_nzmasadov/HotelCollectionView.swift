//
//  HotelView.swift
//  homework_3_IATC_nzmasadov
//
//  Created by Nazim Asadov on 21.04.22.
//

import UIKit

class HotelCollectionView: UIView {
    
    private lazy var backgroundImgView: UIImageView = {
        let backgroundView = UIImageView()
        
        backgroundView.contentMode = .scaleToFill
        backgroundView.backgroundColor = .lightGray
        backgroundView.image = UIImage(named: "ic_hotel1")
        backgroundView.clipsToBounds = true
        backgroundView.layer.cornerRadius = 22
        addSubview(backgroundView)
        
        return backgroundView
    }()
    
    private lazy var ratingView: UIView = {
        let view = UIView()
        
        view.clipsToBounds = true
        view.layer.cornerRadius = 16
        view.backgroundColor = UIColor(named: "greenColor")
        backgroundImgView.addSubview(view)
        
        return view
    }()
    
    
    private lazy var hotelNameLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .left
        
        backgroundImgView.addSubview(label)
        
        return label
    }()
    
    private lazy var cityLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textAlignment = .left
        
        backgroundImgView.addSubview(label)
        
        return label
    }()
    
    private lazy var priceLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        backgroundImgView.addSubview(label)
        
        return label
    }()
    
    private lazy var accomodationLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.text = "/ per night"
        
        backgroundImgView.addSubview(label)
        
        return label
    }()
    
    
    private lazy var savedImgView : UIImageView = {
        let view = UIImageView()
        
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "ic_whiteBookmark")

        
        backgroundImgView.addSubview(view)
        
        return view
    }()
    
    private lazy var starImgView : UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "ic_whiteStar")

        
        ratingView.addSubview(view)
        
        return view
    }()
    
    private lazy var ratingLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.text = "4.8"
        
        ratingView.addSubview(label)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    func setupUI() {
        backgroundImgView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            make.width.equalTo(250)
            make.height.equalTo(320)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        accomodationLabel.snp.makeConstraints { make in
            make.left.equalTo(priceLabel.snp.right).offset(5)
            make.bottom.equalTo(priceLabel.snp.bottom)
        }
        
        cityLabel.snp.makeConstraints { make in
            make.bottom.equalTo(priceLabel.snp.top).offset(-10)
            make.left.equalTo(priceLabel.snp.left)
        }
        
        hotelNameLabel.snp.makeConstraints { make in
            make.bottom.equalTo(cityLabel.snp.top).offset(-10)
            make.left.equalTo(priceLabel.snp.left)
        }
        
        savedImgView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
            make.centerY.equalTo(priceLabel.snp.centerY)
            make.width.height.equalTo(30)
        }
        
        ratingView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(25)
            make.right.equalToSuperview().offset(-19)
            make.width.equalTo(70)
            //            make.height.equalTo(25)
        }
        
        starImgView.snp.makeConstraints { make in
            make.width.height.equalTo(12)
            make.left.equalToSuperview().offset(14)
            make.top.equalToSuperview().offset(10)
            make.centerY.equalTo(ratingView.snp.centerY)
        }
        
        ratingLabel.snp.makeConstraints { make in
            make.left.equalTo(starImgView.snp.right).offset(10)
            make.centerY.equalTo(starImgView.snp.centerY)
            
        }
    }
    
    func configure(hotel: HotelCollectionModel) {
        cityLabel.text = hotel.city
        priceLabel.text = hotel.price
        hotelNameLabel.text = hotel.hotelName
        ratingLabel.text = hotel.rating
        backgroundImgView.image = hotel.background
    }
}


    extension UIColor {
      
      convenience init(_ hex: String, alpha: CGFloat = 1.0) {
        var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if cString.hasPrefix("#") { cString.removeFirst() }
        
        if cString.count != 6 {
          self.init("ff0000") // return red color for wrong hex input
          return
        }
        
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
      }

    }
