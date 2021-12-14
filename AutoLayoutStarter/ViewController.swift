//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let purpleView: UIView = { //Sa
        let purpleBox = UIView(frame: CGRect.zero)
        purpleBox.translatesAutoresizingMaskIntoConstraints = false
        purpleBox.backgroundColor = .purple
        return purpleBox
    }()
    
    let blue1View: UIView = { //Sa
        let blueBox = UIView(frame: CGRect.zero)
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        blueBox.backgroundColor = .blue
        return blueBox
    }()
    
    
    let blue2View: UIView = { //Sa
        let blueBox = UIView(frame: CGRect.zero)
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        blueBox.backgroundColor = .blue
        return blueBox
    }()
    
    let blue3View: UIView = { //Sa
        let blueBox = UIView(frame: CGRect.zero)
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        blueBox.backgroundColor = .blue
        return blueBox
    }()
    
    let orangeView: UIView = { //Sa
        let orangeTable = UIView(frame: CGRect(x: 44, y: 44, width: 79, height: 79))
        orangeTable.translatesAutoresizingMaskIntoConstraints = false
        orangeTable.backgroundColor = .orange
        orangeTable.layer.borderColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1).cgColor
        orangeTable.layer.borderWidth = 5
        return orangeTable
    }()
    
    let orangeView1: UIView = { //Sa
        let orangeTable = UIView(frame: CGRect(x: 44, y: 44, width: 79, height: 79))
        orangeTable.translatesAutoresizingMaskIntoConstraints = false
        orangeTable.backgroundColor = .orange
        orangeTable.layer.borderColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1).cgColor
        orangeTable.layer.borderWidth = 5
        return orangeTable
    }()


    
    
  let mainView: UIView = {
    let main = UIView()
      
    // important when setting contraints programmatically
    main.translatesAutoresizingMaskIntoConstraints = false
    main.contentMode = .scaleAspectFit
    main.backgroundColor = .green
    return main
  }()
  
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  var widthAnchorPurple: NSLayoutConstraint? //sa
  var heightAnchorPurple: NSLayoutConstraint? //sa
  var widthAnchorBlue1: NSLayoutConstraint? //sa
  var heightAnchorBlue1: NSLayoutConstraint? //sa
  var widthAnchorBlue2: NSLayoutConstraint? //sa
  var heightAnchorBlue2: NSLayoutConstraint? //sa
  var widthAnchorBlue3: NSLayoutConstraint? //sa
  var heightAnchorBlue3: NSLayoutConstraint? //sa
  var widthAnchorOrange: NSLayoutConstraint? //sa
  var heightAnchorOrange: NSLayoutConstraint? //sa
  var widthAnchorOrange1: NSLayoutConstraint? //sa
  var heightAnchorOrange1: NSLayoutConstraint? //sa
    
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    view.addSubview(purpleView) //sa
    view.addSubview(blue1View) //sa
    view.addSubview(blue2View) //sa
    view.addSubview(blue3View) //sa
    view.addSubview(orangeView) //sa
    view.addSubview(orangeView1) //sa
     
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    purpleView.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -30).isActive = true //sa
    purpleView.centerYAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -60).isActive = true //sa
    blue1View.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true //sa
    blue1View.topAnchor.constraint(equalTo: mainView.topAnchor,constant: 20).isActive = true //sa
    blue2View.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true //sa
    blue2View.centerYAnchor.constraint(equalTo: mainView.centerYAnchor,constant: -40).isActive = true //sa
    blue3View.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true //sa
    blue3View.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -100).isActive = true //sa
    orangeView.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -30).isActive = true //sa
    orangeView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true //sa
    orangeView1.rightAnchor.constraint(equalTo: orangeView.rightAnchor, constant: -30).isActive = true //sa
    orangeView1.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true //sa

      
    
  
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.75, constant: 0)
    heightAnchor?.isActive = true
      
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75, constant: 0)
    widthAnchor?.isActive = true
      
    widthAnchorPurple = purpleView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.7, constant: 0) //sa
    widthAnchorPurple?.isActive = true //sa
      
    heightAnchorPurple = purpleView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0, constant: 60) //sa
    heightAnchorPurple?.isActive = true //sa
      
      widthAnchorBlue1 = blue1View.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0, constant: 50) //sa
    widthAnchorBlue1?.isActive = true //sa
        
    heightAnchorBlue1 = blue1View.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0, constant: 50) //sa
    heightAnchorBlue1?.isActive = true //sa
      
    widthAnchorBlue2 = blue2View.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0, constant: 50) //sa
    widthAnchorBlue2?.isActive = true //sa
          
    heightAnchorBlue2 = blue2View.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0, constant: 50) //sa
    heightAnchorBlue2?.isActive = true //sa
      
    widthAnchorBlue3 = blue3View.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0, constant: 50) //sa
    widthAnchorBlue3?.isActive = true //sa

    heightAnchorBlue3 = blue3View.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0, constant: 50) //sa
    heightAnchorBlue3?.isActive = true //sa
      
      widthAnchorOrange = orangeView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0, constant: 50) //sa
      widthAnchorOrange?.isActive = true //sa

      heightAnchorOrange = orangeView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0, constant: 38) //sa
      heightAnchorOrange?.isActive = true //sa
      
      widthAnchorOrange1 = orangeView1.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0, constant: 80) //sa
      widthAnchorOrange1?.isActive = true //sa

      heightAnchorOrange1 = orangeView1.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0, constant: 38) //sa
      heightAnchorOrange1?.isActive = true //sa
      
      
      
      

      
      
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
      
    
      
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 30),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

