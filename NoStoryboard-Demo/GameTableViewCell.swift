//
//  GameTableViewCell.swift
//  NoStoryboard-Demo
//
//  Created by Kent Winder on 03/23/2019.
//  Copyright © 2019 Kent Winder. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {
    static let identifier = "GameTableViewCell"
    
    fileprivate let coverImageView = UIImageView()
    fileprivate let gameNameLabel = UILabel()
    fileprivate let developerLabel = UILabel()
    fileprivate let descriptionLabel = UILabel()
    fileprivate let priceLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var game: Game! {
        didSet {
            coverImageView.image = UIImage(named: game.image)
            gameNameLabel.text = game.name
            developerLabel.text = "• \(game.developer)"
            descriptionLabel.text = game.desc
            priceLabel.text = "$\(game.price)"
        }
    }
    
    func setupViews() {
        coverImageView.translatesAutoresizingMaskIntoConstraints = false
        gameNameLabel.translatesAutoresizingMaskIntoConstraints = false
        developerLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // add views
        contentView.addSubview(coverImageView)
        contentView.addSubview(gameNameLabel)
        contentView.addSubview(developerLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(priceLabel)
        
        // setup views properties
        coverImageView.contentMode = .scaleAspectFit
        gameNameLabel.font = .boldSystemFont(ofSize: 17.0)
        gameNameLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        developerLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        developerLabel.textColor = .darkGray
        descriptionLabel.textColor = .darkGray
        descriptionLabel.numberOfLines = 3
        priceLabel.textColor = .red
        
        // setup views constraints
        let marginGuide = contentView.layoutMarginsGuide
        NSLayoutConstraint.activate([
            // game cover
            coverImageView.widthAnchor.constraint(equalToConstant: 60),
            coverImageView.heightAnchor.constraint(equalToConstant: 80),
            coverImageView.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor),
            coverImageView.topAnchor.constraint(equalTo: marginGuide.topAnchor),
            coverImageView.bottomAnchor.constraint(lessThanOrEqualTo: marginGuide.bottomAnchor),
            // game name
            gameNameLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor),
            gameNameLabel.leadingAnchor.constraint(equalTo: coverImageView.trailingAnchor, constant: 8),
            // developer
            developerLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor),
            developerLabel.leadingAnchor.constraint(equalTo: gameNameLabel.trailingAnchor, constant: 8),
            developerLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor),
            // description
            descriptionLabel.topAnchor.constraint(equalTo: gameNameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: coverImageView.trailingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor),
            // price
            priceLabel.topAnchor.constraint(greaterThanOrEqualTo: descriptionLabel.bottomAnchor, constant: 8),
            priceLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor),
            priceLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor)
            ])
    }
}
