//
//  SearchView.swift
//  homework_3_IATC_nzmasadov
//
//  Created by Nazim Asadov on 20.04.22.
//

import UIKit

class SearchView: UIView {
    
    private lazy var searchImgView : UIImageView = {
        let view = UIImageView()
        
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "ic_search")
        
        addSubview(view)
        return view
    }()
    
    private lazy var searchLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor.lightGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.text = "Search"
        
        addSubview(label)
        return label
    }()
    
    private lazy var filterImgView : UIImageView = {
        let view = UIImageView()
        
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "ic_filter")
        
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
        searchImgView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(17)
            make.left.equalToSuperview().offset(25)
            make.bottom.equalToSuperview().offset(-17)
            make.width.height.equalTo(22)
        }
        searchLabel.snp.makeConstraints { make in
            make.left.equalTo(searchImgView.snp.right).offset(15)
            make.centerY.equalTo(searchImgView.snp.centerY)
        }
        filterImgView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-25)
            make.centerY.equalTo(searchImgView.snp.centerY)
            make.width.height.equalTo(22)
        }
    }
}
