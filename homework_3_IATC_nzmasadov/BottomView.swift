//
//  BottomView.swift
//  homework_3_IATC_nzmasadov
//
//  Created by Nazim Asadov on 22.04.22.
//

import UIKit

class BottomView: UIView {
    
    private lazy var homeImageView: UIImageView = {
       let imgView = UIImageView()
                
        imgView.contentMode = .scaleToFill
        imgView.image = UIImage(named: "ic_greenHome")
        
        self.addSubview(imgView)
        return imgView
    }()
    
    private lazy var searchImageView: UIImageView = {
       let imgView = UIImageView()

        imgView.contentMode = .scaleToFill
        imgView.image = UIImage(named: "ic_search")

        self.addSubview(imgView)
        return imgView
    }()
    
    private lazy var bookingImageView: UIImageView = {
       let imgView = UIImageView()
        
        imgView.contentMode = .scaleToFill
        imgView.image = UIImage(named: "ic_booking")

        self.addSubview(imgView)
        return imgView
    }()
    
    private lazy var profileImageView: UIImageView = {
       let imgView = UIImageView()
        
        imgView.contentMode = .scaleToFill
        imgView.image = UIImage(named: "ic_profile")

        self.addSubview(imgView)
        return imgView
    }()
    
    private lazy var homeLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        lbl.textColor = .lightGray
        lbl.textAlignment = .center
        lbl.text = "Home"
        
        self.addSubview(lbl)
        return lbl
    }()
    
    private lazy var searchLabel: UILabel = {
        let lbl = UILabel()

        lbl.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        lbl.textColor = .lightGray
        lbl.textAlignment = .center
        lbl.text = "Search"
        
        self.addSubview(lbl)
        return lbl
    }()
    
    private lazy var bookingLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        lbl.textColor = .lightGray
        lbl.textAlignment = .center
        lbl.text = "Booking"
        
        self.addSubview(lbl)
        return lbl
    }()
    
    private lazy var profileLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        lbl.textColor = .lightGray
        lbl.textAlignment = .center
        lbl.text = "Profile"
        
        self.addSubview(lbl)
        return lbl
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
        
        homeImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(7)
            make.left.equalToSuperview().offset(15)
            make.width.height.equalTo(25)
        }
        
        homeLabel.snp.makeConstraints { make in
            make.top.equalTo(homeImageView.snp.bottom).offset(5)
            make.centerX.equalTo(homeImageView.snp.centerX)
            make.bottom.equalToSuperview().offset(-5)
        }
        
        searchImageView.snp.makeConstraints { make in
            make.top.equalTo(homeImageView.snp.top)
            make.left.equalTo(homeImageView.snp.right).offset(60)
            make.width.height.equalTo(25)
        }
        
        searchLabel.snp.makeConstraints { make in
            make.top.equalTo(searchImageView.snp.bottom).offset(5)
            make.centerX.equalTo(searchImageView.snp.centerX)
        }
        
        bookingImageView.snp.makeConstraints { make in
            make.top.equalTo(homeImageView.snp.top)
            make.left.equalTo(searchImageView.snp.right).offset(60)
            make.width.height.equalTo(25)
        }
        
        bookingLabel.snp.makeConstraints { make in
            make.top.equalTo(bookingImageView.snp.bottom).offset(5)
            make.centerX.equalTo(bookingImageView.snp.centerX)
        }

        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(homeImageView.snp.top)
            make.width.height.equalTo(25)
            make.right.equalToSuperview().offset(-15)
        }
        
        profileLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(5)
            make.centerX.equalTo(profileImageView.snp.centerX)
        }
        
        
        }
}
