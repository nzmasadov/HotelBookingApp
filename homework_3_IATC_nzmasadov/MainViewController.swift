//
//  ViewController.swift
//  homework_3_IATC_nzmasadov
//
//  Created by Nazim Asadov on 20.04.22.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private lazy var mainScrollView: UIScrollView = {
        let view = UIScrollView()
        
        self.view.addSubview(view)
        return view
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        
        self.mainScrollView.addSubview(view)
        return view
    }()
    
    
    private lazy var headerView: HeaderView = {
        let view = HeaderView()
        
        self.contentView.addSubview(view)
        return view
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.text = "Hello, Daniel 👋"
        
        self.contentView.addSubview(label)
        return label
    }()
    
    private lazy var searchTextField: SearchView = {
        let view = SearchView()
        
        view.layer.cornerRadius = 16
        view.backgroundColor = #colorLiteral(red: 0.9688159823, green: 0.9688159823, blue: 0.9688159823, alpha: 1)
        
        self.contentView.addSubview(view)
        return view
    }()
    
    private lazy var scrollView1: UIScrollView = {
        let view = UIScrollView()
        
        self.contentView.addSubview(view)
        return view
    }()
    
    
    private lazy var suggestionStackView : SuggestionsView = {
        let view = SuggestionsView()
        
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.spacing = 10
        
        self.scrollView1.addSubview(view)
        return view
    }()
    
    private lazy var scrollView2: UIScrollView = {
        let view = UIScrollView()
        
        self.contentView.addSubview(view)
        return view
    }()
    
    private lazy var hotelsStackView : UIStackView = {
        let view = UIStackView()
        
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.spacing = 15
        
        self.scrollView2.addSubview(view)
        return view
    }()
    
    private lazy var bookedLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Recently Booked"
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.textColor = .black
        
        contentView.addSubview(label)
        return label
    }()
    
    private lazy var seeAllLabel: UILabel = {
        let label = UILabel()
        
        label.text = "See All"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .systemGreen
        
        contentView.addSubview(label)
        return label
    }()
    
    private lazy var listStackView : UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .equalSpacing
        view.spacing = 16
        
        self.contentView.addSubview(view)
        return view
    }()
    
    private lazy var bottomView: BottomView = {
        let view = BottomView()
        
        contentView.addSubview(view)
        return view
    }()
    
    
    let hotelCollections: [HotelCollectionModel] = [
        
        HotelCollectionModel(price: "$29", city: "Paris, France", hotelName: "Emeralda De Hotel", rating: "4.8", background: UIImage(named: "ic_hotel1")!),
        HotelCollectionModel(price: "$32", city: "Istanbul, Turkey", hotelName: "Laluna Hotel", rating: "4.6", background: UIImage(named: "ic_hotel2")!)
        
    ]
    
    let hotelLists: [HotelListModel] = [
        
        HotelListModel(title: "President Hotel", price: "$35", rating: "4.8", ratingCount: "(4.378 reviews)", savedImage: UIImage(named: "ic_bookmarkGreen") ?? UIImage(), subtitle: "Paris, France", hotelImage: UIImage(named: "icHotel1") ?? UIImage()),
        
        HotelListModel(title: "Palms Casino", price: "$29", rating: "4.9", ratingCount: "(5,283 reviews)", savedImage: UIImage(named: "icBookmark") ?? UIImage(), subtitle: "Amsterdam, Netherlands", hotelImage: UIImage(named: "icHotel2") ?? UIImage()),
        
        HotelListModel(title: "Palazzo Versace", price: "$36", rating: "4.7", ratingCount: "(3.277 reviews)", savedImage: UIImage(named: "ic_bookmarkGreen") ?? UIImage(), subtitle: "Rome, Italia", hotelImage: UIImage(named: "icHotel3") ?? UIImage()),
        
        HotelListModel(title: "Bulgari Resort", price: "$27", rating: "4.8", ratingCount: "(4,981 reviews)", savedImage: UIImage(named: "icBookmark") ?? UIImage(), subtitle: "Istanbul, Turkiye", hotelImage: UIImage(named: "icHotel4") ?? UIImage()),
        
        HotelListModel(title: "Martinez Cannes", price: "$32", rating: "4.6", ratingCount: "(3,672 reviews)", savedImage: UIImage(named: "icBookmark") ?? UIImage(), subtitle: "London, United Kingdom", hotelImage: UIImage(named: "icHotel5") ?? UIImage()),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
        
        self.hotelCollections.forEach { hotel in
            let hotelView = HotelCollectionView()
            hotelView.configure(hotel: hotel)
            self.hotelsStackView.addArrangedSubview(hotelView)
        }
        
        self.hotelLists.forEach { hotel in
            let hotelView = HotelListView()
            hotelView.configure(hotelList: hotel)
            self.listStackView.addArrangedSubview(hotelView)
        }
    }
    
    private func setupUI() {
        mainScrollView.snp.makeConstraints { make in
            
            make.edges.equalTo(self.view.safeAreaLayoutGuide.snp.edges).inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(self.mainScrollView.contentLayoutGuide.snp.edges).inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            
            make.width.equalTo(mainScrollView.snp.width)
            make.height.equalTo(1400)
            //            make.width.equalTo(mainScrollView.snp.width).multipliedBy(1)
            //            make.height.equalTo(mainScrollView.snp.height).multipliedBy(1).priority(250)
        }
        
        headerView.snp.makeConstraints { make in
            make.top.equalTo(self.contentView.snp.top).offset(25)
            make.left.equalTo(self.contentView.snp.left).offset(20)
            make.right.equalTo(self.contentView.snp.right).offset(-20)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom).offset(30)
            make.left.equalTo(headerView.snp.left)
        }
        
        searchTextField.snp.makeConstraints { make in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(25)
            make.left.equalTo(headerView.snp.left)
            make.right.equalTo(headerView.snp.right)
        }
        
        scrollView1.snp.makeConstraints { make in
            make.top.equalTo(searchTextField.snp.bottom).offset(20)
            make.left.equalTo(self.contentView.snp.left).offset(20)
            make.right.equalTo(self.contentView.snp.right)
        }
        
        suggestionStackView.snp.makeConstraints { make in
            make.top.equalTo(scrollView1.contentLayoutGuide.snp.top).offset(5)
            make.left.equalTo(scrollView1.contentLayoutGuide.snp.left).offset(5)
            make.right.equalTo(scrollView1.contentLayoutGuide.snp.right).offset(-5)
            make.centerY.equalTo(scrollView1.snp.centerY)
        }
        
        scrollView2.snp.makeConstraints { make in
            make.top.equalTo(scrollView1.snp.bottom).offset(20)
            make.left.equalTo(headerView.snp.left)
            make.right.equalToSuperview()
            make.width.equalTo(250)
            make.height.equalTo(330)
        }
        
        hotelsStackView.snp.makeConstraints { make in
            make.top.equalTo(scrollView2.contentLayoutGuide.snp.top).offset(5)
            make.left.equalTo(scrollView2.contentLayoutGuide.snp.left).offset(5)
            make.right.equalTo(scrollView2.contentLayoutGuide.snp.right).offset(-5)
        }
        
        bookedLabel.snp.makeConstraints { make in
            make.left.equalTo(headerView.snp.left).offset(5)
            make.top.equalTo(hotelsStackView.snp.bottom).offset(20)
        }
        
        seeAllLabel.snp.makeConstraints { make in
            make.right.equalTo(headerView.snp.right).offset(-5)
            make.centerY.equalTo(bookedLabel.snp.centerY)
        }
        
        listStackView.snp.makeConstraints { make in
            make.top.equalTo(scrollView2.snp.bottom).offset(120)
            make.left.equalTo(headerView.snp.left)
            make.right.equalTo(headerView.snp.right)
            make.height.equalTo(500)
        }
        
        bottomView.snp.makeConstraints { make in
            make.top.equalTo(listStackView.snp.bottom).offset(80)
            make.left.equalTo(contentView.snp.left).offset(40)
            make.right.equalTo(contentView.snp.right).offset(-40)
        }
    }
}

struct HotelCollectionModel {
    var price: String
    var city: String
    var hotelName: String
    var rating: String
    var background: UIImage
}

struct HotelListModel {
    let title: String
    let price: String
    let rating: String
    let ratingCount: String
    let savedImage: UIImage
    let subtitle: String
    let hotelImage: UIImage
}
