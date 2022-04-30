//
//  HeaderView.swift
//  homework_3_IATC_nzmasadov
//
//  Created by Nazim Asadov on 20.04.22.
//

import UIKit
import SnapKit

class HeaderView: UIView {
    
    private lazy var logoImgView : UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.clipsToBounds = true
        view.layer.cornerRadius = 12
        view.image = UIImage(named: "ic_mainIcon")
        
        addSubview(view)
        return view
    }()
    
    private lazy var titleLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 21, weight: .bold)
        label.text = "Helia"
        
        addSubview(label)
        return label
    }()
    
    
    private lazy var notificationImgView : UIImageView = {
        let view = UIImageView()
        
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "ic_notification")
        
        addSubview(view)
        return view
    }()
    
    private lazy var savedImgView : UIImageView = {
        let view = UIImageView()
        
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "ic_bookmark")

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
        logoImgView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            make.bottom.equalToSuperview().offset(-5)
            make.height.equalTo(36)
            make.width.equalTo(32)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(logoImgView.snp.right).offset(15)
            make.centerY.equalTo(logoImgView.snp.centerY)
        }
        
        savedImgView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-5)
            make.centerY.equalTo(logoImgView.snp.centerY).offset(-2)
            make.width.height.equalTo(27)
        }
        
        notificationImgView.snp.makeConstraints { make in
            make.right.equalTo(savedImgView.snp.left).offset(-30)
            make.centerY.equalTo(logoImgView.snp.centerY)
            make.width.height.equalTo(27)
        }
    }
}
