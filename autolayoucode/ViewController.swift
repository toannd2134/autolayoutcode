//
//  ViewController.swift
//  autolayoucode
//
//  Created by Toan on 3/5/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var myview : UIView  = { ()
              let View = UIView()
              View.backgroundColor = .white
               View.translatesAutoresizingMaskIntoConstraints = false
              return View
          }()
    let uimage : UIImageView = {
        let image = UIImageView(image: UIImage(named: "harder") )
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    let nameimage : UIImageView = {
        let image = UIImageView(image: UIImage(named: "name") )
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    let sdtimage : UIImageView = {
           let image = UIImageView(image: UIImage(named: "phone") )
           image.translatesAutoresizingMaskIntoConstraints = false
           return image
       }()
    let paswimage : UIImageView = {
              let image = UIImageView(image: UIImage(named: "key") )
              image.translatesAutoresizingMaskIntoConstraints = false
              return image
          }()
    let repeatpwimage : UIImageView = {
              let image = UIImageView(image: UIImage(named: "key") )
              image.translatesAutoresizingMaskIntoConstraints = false
              return image
          }()
    let nametextfied : UITextField = {
        let textfied = UITextField()
        textfied.textAlignment = .center
        textfied.placeholder = "Ho va ten"
        textfied.translatesAutoresizingMaskIntoConstraints = false
        textfied.backgroundColor = .white
        textfied.font =   UIFont.systemFont(ofSize: 20)
        
        
    return textfied
    }()
    let paswwordtext : UITextField = {
        let textfied = UITextField()
        textfied.textAlignment = .center
        textfied.placeholder = "Password"
        textfied.translatesAutoresizingMaskIntoConstraints = false
        textfied.backgroundColor = .white
        textfied.font =   UIFont.systemFont(ofSize: 20)
        textfied.borderStyle = .none
        
    return textfied
    }()
    let sdttext : UITextField = {
        let textfied = UITextField()
        textfied.textAlignment = .center
        textfied.placeholder = "So dien thoai"
        textfied.translatesAutoresizingMaskIntoConstraints = false
        textfied.backgroundColor = .white
        textfied.font =   UIFont.systemFont(ofSize: 20)
        
    return textfied
    }()
   
    let  repeatPassword : UITextField = {
           let textfied = UITextField()
           textfied.textAlignment = .center
           textfied.placeholder = "Nhap lai mat khau"
           textfied.translatesAutoresizingMaskIntoConstraints = false
           textfied.backgroundColor = .white
           textfied.font =   UIFont.systemFont(ofSize: 20)
        
       return textfied
       }()
    let butonLogup : UIButton = {
        let buton = UIButton()
        buton.setTitle("Dang ky", for: .normal)
        buton.backgroundColor = .orange
        buton.layer.cornerRadius = 5
        buton.translatesAutoresizingMaskIntoConstraints = false
        return buton
    }()
    let taikhoanlable : UILabel = {
        let lable  = UILabel()
        lable.text  = "Da co tai khoan ?"
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    let dangNhaplable : UILabel = {
        let lable  = UILabel()
        lable.text  = "Dang nhap"
        lable.textColor = .orange
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    setup()
    }
    
    func setup(){
        view.addSubview(myview)
       
        myview.topAnchor.constraint(equalTo: view.topAnchor , constant: 0).isActive = true
       myview.bottomAnchor.constraint(equalTo:view.bottomAnchor, constant: 0).isActive = true
   myview.rightAnchor.constraint(equalTo:view.rightAnchor, constant: 0).isActive = true
        myview.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 0).isActive = true


        myview.addSubview(uimage)
        uimage.centerXAnchor.constraint(equalTo: myview.centerXAnchor, constant: 0).isActive = true
        uimage.topAnchor.constraint(equalTo: myview.topAnchor, constant: 50).isActive = true
//          uimage.heightAnchor.constraint(equalTo: myview.topAnchor, constant: 50).isActive = true
     
        myview.addSubview(nametextfied)
        nametextfied.topAnchor.constraint(equalTo: uimage.bottomAnchor, constant: 30).isActive = true
        nametextfied.centerXAnchor.constraint(equalTo: myview.centerXAnchor).isActive = true
//        nametextfied.rightAnchor.constraint(equalTo: myview.rightAnchor, constant: 30).isActive = true
//         nametextfied.leftAnchor.constraint(equalTo: myview.leftAnchor, constant: 30).isActive = true
        nametextfied.widthAnchor.constraint(equalTo: uimage.widthAnchor, multiplier: 1).isActive = true
        
        
      
        myview.addSubview(paswwordtext)
        paswwordtext.topAnchor.constraint(equalTo: nametextfied.bottomAnchor, constant: 30).isActive = true
        paswwordtext.centerXAnchor.constraint(equalTo: myview.centerXAnchor, constant: 1).isActive = true
        paswwordtext.widthAnchor.constraint(equalTo: nametextfied.widthAnchor, multiplier: 1).isActive = true
        
        myview.addSubview(sdttext)
        sdttext.topAnchor.constraint(equalTo: paswwordtext.bottomAnchor, constant: 30).isActive = true
        sdttext.centerXAnchor.constraint(equalTo: myview.centerXAnchor, constant: 1).isActive = true
        sdttext.widthAnchor.constraint(equalTo: paswwordtext.widthAnchor, multiplier: 1).isActive = true
        
        myview.addSubview(repeatPassword)
        repeatPassword.topAnchor.constraint(equalTo: sdttext.bottomAnchor, constant: 30).isActive = true
        repeatPassword.centerXAnchor.constraint(equalTo: myview.centerXAnchor, constant: 1).isActive = true
        repeatPassword.widthAnchor.constraint(equalTo: sdttext.widthAnchor, multiplier: 1).isActive = true
        
       myview.addSubview(butonLogup)
        butonLogup.topAnchor.constraint(equalTo: repeatPassword.bottomAnchor, constant: 30).isActive = true
        butonLogup.centerXAnchor.constraint(equalTo: myview.centerXAnchor, constant: 1).isActive = true
        butonLogup.heightAnchor.constraint(equalTo: repeatPassword.heightAnchor, multiplier: 1.5).isActive = true
         butonLogup.widthAnchor.constraint(equalTo: repeatPassword.widthAnchor, multiplier: 1).isActive = true
    
        myview.addSubview(nameimage)
        nameimage.rightAnchor.constraint(equalTo: nametextfied.leftAnchor, constant: 0).isActive = true
        nameimage.topAnchor.constraint(equalTo: uimage.bottomAnchor, constant: 30).isActive = true
        nameimage.heightAnchor.constraint(equalTo: nametextfied.heightAnchor, multiplier: 1).isActive = true
        
       myview.addSubview(paswimage)
       paswimage.rightAnchor.constraint(equalTo: paswwordtext.leftAnchor, constant: 0).isActive = true
       paswimage.topAnchor.constraint(equalTo:  nameimage.bottomAnchor, constant: 30).isActive = true
        paswimage.heightAnchor.constraint(equalTo: nameimage.heightAnchor, multiplier: 1).isActive = true
        
        myview.addSubview(sdtimage)
        sdtimage.rightAnchor.constraint(equalTo: sdttext.leftAnchor, constant: 0).isActive = true
        sdtimage.topAnchor.constraint(equalTo:  paswimage.bottomAnchor, constant: 30).isActive = true
        sdtimage.heightAnchor.constraint(equalTo: paswimage.heightAnchor, multiplier: 1).isActive = true
        myview.addSubview(repeatpwimage)
        repeatpwimage.rightAnchor.constraint(equalTo: repeatPassword.leftAnchor, constant: 0).isActive = true
        repeatpwimage.topAnchor.constraint(equalTo:  sdtimage.bottomAnchor, constant: 30).isActive = true
        repeatpwimage.heightAnchor.constraint(equalTo: sdtimage.heightAnchor, multiplier: 1).isActive = true
        myview.addSubview(taikhoanlable)
        taikhoanlable.topAnchor.constraint(equalTo: butonLogup.bottomAnchor, constant: 10).isActive = true
        taikhoanlable.leftAnchor.constraint(equalTo: butonLogup.leftAnchor, constant: 20  ).isActive = true
       
        myview.addSubview(dangNhaplable)
        dangNhaplable.topAnchor.constraint(equalTo: butonLogup.bottomAnchor, constant: 10).isActive = true
        dangNhaplable.leftAnchor.constraint(equalTo: taikhoanlable.rightAnchor, constant: 0  ).isActive = true
    }

}

