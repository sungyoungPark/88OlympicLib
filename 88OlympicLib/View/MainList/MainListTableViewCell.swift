//
//  MainListTableViewCell.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/09/11.
//

import UIKit
import SnapKit

class MainListTableViewCell: UITableViewCell {

    static let CellIdentifier = "DetailContent"
    
    lazy var baseStackView : UIStackView = {
        let sv = UIStackView()
        
        sv.axis = .vertical
        sv.alignment = .leading
        sv.distribution = .equalSpacing
        
        return sv
    }()
    
    lazy var titleStackView : UIStackView = {
        let sv = UIStackView()
        sv.backgroundColor = .brown
        sv.axis = .horizontal
        sv.alignment = .leading
        sv.distribution = .equalSpacing
        
        return sv
    }()
    
    lazy var descriptionStackView : UIStackView = {
        let sv = UIStackView()
        sv.backgroundColor = .red
        sv.axis = .vertical
        sv.alignment = .leading
        sv.distribution = .equalSpacing
        
        return sv
    }()
    
    lazy var alternativeTitle : UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var detailTitle : UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var descriptionLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    lazy var subDescriptionLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    var content : RecordDetailContent?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(baseStackView)
        baseStackView.snp.makeConstraints { make in
            make.edges.equalTo(0)

        }
        
        baseStackView.addArrangedSubview(titleStackView)
        titleStackView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(0)
        }
        
        baseStackView.addArrangedSubview(descriptionStackView)
        descriptionStackView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(0)
        }
        
        titleStackView.addArrangedSubview(alternativeTitle)
        alternativeTitle.snp.makeConstraints { make in
            make.top.bottom.equalTo(0)
        }
        
        titleStackView.addArrangedSubview(detailTitle)
        detailTitle.snp.makeConstraints { make in
            make.top.bottom.equalTo(0)
        }
        
        descriptionStackView.addArrangedSubview(subDescriptionLabel)
        subDescriptionLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(0)
        }
        
        descriptionStackView.addArrangedSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(0)
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setContent(_ content : RecordDetailContent?){
        if let content = content {
            self.content = content
            alternativeTitle.text = content.alternativeTitle
            detailTitle.text = content.title
            
            descriptionLabel.text = content.description
            subDescriptionLabel.text = content.subDescription
            
        }
    }
    
}
