//
//  GroupCell.swift
//  HomeWorkIOS
//
//  Created by Герман Яренко on 22.11.23.
//

import UIKit

final class GroupCell: UITableViewCell {
    
    private var groupsImageView = UIImageView(image: UIImage(systemName: "house"))
    
    private var text: UILabel = {
        let label = UILabel()
        label.text = "GeekBrainsIOS"
        label.textColor = .black
        return label
    }()
    
    private var text2: UILabel = {
        let label = UILabel()
        label.text = "Тоже должен быть текст"
        label.textColor = .black
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        
        setupViews()
    }
    
    private func setupViews() {
        contentView.addSubview(groupsImageView)
        contentView.addSubview(text)
        contentView.addSubview(text2)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        groupsImageView.translatesAutoresizingMaskIntoConstraints = false
        text.translatesAutoresizingMaskIntoConstraints = false
        text2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            groupsImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            groupsImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            groupsImageView.heightAnchor.constraint(equalToConstant: 50),
            groupsImageView.widthAnchor.constraint(equalTo: groupsImageView.heightAnchor),
            
            text.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            text.leadingAnchor.constraint(equalTo: groupsImageView.trailingAnchor, constant: 10),
            text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            text2.topAnchor.constraint(equalTo: text.bottomAnchor, constant: 5),
            text2.leadingAnchor.constraint(equalTo: text.leadingAnchor),
            text2.trailingAnchor.constraint(equalTo: text.trailingAnchor),
            text2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
}

