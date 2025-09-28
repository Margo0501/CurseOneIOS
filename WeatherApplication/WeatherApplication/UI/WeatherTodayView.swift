//
//  UIView.swift
//  WeatherApplication
//
//  Created by Маргарита Куратник on 20.09.25.
//
import UIKit

class WeatherTodayView: UIView {
    private let weatherIcon: UIImageView = {
        let icon = UIImageView(image: UIImage(systemName: "sun.max.fill"))
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        icon.tintColor = .systemYellow
        icon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 50).isActive = true
        return icon
    }()
    
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " Жодино, +23ºC "
        label.textColor = .white
        label.font = .systemFont(ofSize: 35, weight: .bold)
        return label
    }()
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " Сб, 20 сентября,16:30"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Солнечно"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .light)
        return label
    }()
    private let feelsLikeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ощущается как +25ºC"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .light)
        return label
    }()
    private let humidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Влажность 80%"
        label.textColor = .white
        label.font = .systemFont(ofSize: 10, weight: .medium)
        return label
    }()
    private let windLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ветер 10 м/с"
        label.textColor = .white
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        return label
    }()
    private let pressureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Давление 749 мм рт.ст."
        label.textColor = .white
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        return label
    }()
    private let uvIndexLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "UV индекс 5"
        label.textColor = .white
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        return label
    }()
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Погода сегодня"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        stack.alignment = .center
        return stack
    }()
    
    private let verticalStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        stack.alignment = .center
        return stack
    }()
    
 
    
    


    override init(frame: CGRect) {
         super.init(frame: frame)
        
//        let gradient = CAGradientLayer()
//        gradient.frame = self.bounds
//         gradient.colors = [UIColor.systemMint.cgColor, UIColor.systemBlue.cgColor]
//         gradient.startPoint = .init(x: 0, y: 0)
//         gradient.endPoint = .init(x: 1, y: 1)
//        self.layer.addSublayer(gradient)
//        
        
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        
        
        self.addSubview(titleLabel)
        self.addSubview(stackView)
        self.addSubview(verticalStackView)

        stackView.addArrangedSubview(weatherIcon)
        stackView.addArrangedSubview(cityLabel)
        stackView.addArrangedSubview(dateLabel)
        stackView.addArrangedSubview(descriptionLabel)
        stackView.addArrangedSubview(feelsLikeLabel)
        verticalStackView.addArrangedSubview(humidityLabel)
        verticalStackView.addArrangedSubview(windLabel)
        verticalStackView.addArrangedSubview(pressureLabel)
        verticalStackView.addArrangedSubview(uvIndexLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            verticalStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
            verticalStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            verticalStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
        ])
        
        
    }
    
}
