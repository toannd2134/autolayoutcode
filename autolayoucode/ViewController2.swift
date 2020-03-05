//
//  ViewController2.swift
//  autolayoucode
//
//  Created by Toan on 3/5/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var View : UIView = {
        let View = UIView()
        View.translatesAutoresizingMaskIntoConstraints = false
        View.backgroundColor = .white
        
        return View
    }()
    var View2 : UIView = {
        let View = UIView()
        View.translatesAutoresizingMaskIntoConstraints = false
        View.backgroundColor = .brown
        
        return View
    }()
    let Hoso : UILabel = {
        let lable  = UILabel()
        lable.text  = "Ho so "
        lable.textColor = UIColor.white
        lable.font =  UIFont.systemFont(ofSize: 20)
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.backgroundColor = .brown
        return lable
    }()
    var menubutton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .brown
        return button
    }()
    var capnhat : UIButton = {
        let button = UIButton()
        button.setTitle("Cap Nhat", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .brown
        return button
    }()
    
    var image2 : UIImageView = {
        
         let image = UIImageView(image: UIImage(named: "avatar"))
        image.transform = image.transform.concatenating(CGAffineTransform(rotationAngle: -CGFloat.pi/2))
        image.translatesAutoresizingMaskIntoConstraints = false
        
        
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()// Do any additional setup after loading the view.
    }
    func setup(){
        /* let topContrant = NSLayoutConstraint(item: chulView,
                                                        attribute: NSLayoutConstraint.Attribute.top,
                                                        relatedBy: .equal,
                                                        toItem: self.view,
                                                        attribute: .top,
                                                        multiplier: 1,
                                                        constant: 44)
                   chulView.translatesAutoresizingMaskIntoConstraints = false
                   view.addConstraints([topContrant,rightConstrant,leftContrant,heightConstrant])*/
        view.addSubview(View)
        let topContrant = NSLayoutConstraint(item: View,
                                             attribute: .top,
                                             relatedBy: .equal,
                                             toItem: self.view,
                                             attribute: .top,
                                             multiplier: 1,
                                             constant: 0)
        let botomContrant = NSLayoutConstraint(item: View,
                                               attribute: .bottom,
                                               relatedBy: .equal,
                                               toItem: self.view,
                                               attribute: .bottom,
                                               multiplier: 1,
                                               constant: 0)
        let leftContrant = NSLayoutConstraint(item: View,
                                                      attribute: .left,
                                                      relatedBy: .equal,
                                                      toItem: self.view,
                                                      attribute: .left,
                                                      multiplier: 1,
                                                      constant: 0)
    let rightContrant = NSLayoutConstraint(item: View,
                                                  attribute: .right,
                                                  relatedBy: .equal,
                                                  toItem: self.view,
                                                  attribute: .right,
                                                  multiplier: 1,
                                                  constant: 0)
        
        view.addConstraints([topContrant,leftContrant,rightContrant,botomContrant])
        
        View.addSubview(View2)
        let topContrantView2 = NSLayoutConstraint(item: View2,
        attribute: .top,
        relatedBy: .equal,
        toItem: View,
        attribute: .top,
        multiplier: 1,
        constant: 30)
        let leftContrantView2 = NSLayoutConstraint(item: View2,
        attribute: .left,
        relatedBy: .equal,
        toItem: View,
        attribute: .left,
        multiplier: 1,
        constant: 0)
        let rightContrantView2 = NSLayoutConstraint(item: View2,
        attribute: .right,
        relatedBy: .equal,
        toItem: View,
        attribute: .right,
        multiplier: 1,
        constant: 0)
        let heightContrantView2 = NSLayoutConstraint(item: View2,
                                                     attribute: .height,
                                                     relatedBy: .equal,
                                                     toItem: View,
                                                     attribute: .height,
                                                     multiplier: 1/9,
                                                     constant: 0)
        view.addConstraints([topContrantView2,leftContrantView2,rightContrantView2,heightContrantView2])
    
        View2.addSubview(menubutton)
        let topButton = NSLayoutConstraint(item: menubutton,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: View2,
                                     attribute: .top,
                                     multiplier: 1,
                                     constant: 0)
        let leftButton = NSLayoutConstraint(item: menubutton,
        attribute: .left,
        relatedBy: .equal,
        toItem: View2,
        attribute: .left,
        multiplier: 1,
        constant: 0)
        
        let widthButton = NSLayoutConstraint(item: menubutton,
        attribute: .width,
        relatedBy: .equal,
        toItem: View2,
        attribute: .width,
        multiplier: 1/8,
        constant: 10)
        let heightButton = NSLayoutConstraint(item: menubutton,
        attribute: .height,
        relatedBy: .equal,
        toItem: View2,
        attribute: .height,
        multiplier: 0.8,
        constant: 10)
        view.addConstraints([topButton,leftButton,widthButton,heightButton])
       
        View2.addSubview(Hoso)
        let leftHoso = NSLayoutConstraint(item: Hoso,
               attribute: .left,
               relatedBy: .equal,
               toItem: menubutton,
               attribute: .right,
               multiplier: 1,
               constant: 20)
        let topHoso = NSLayoutConstraint(item: Hoso,
        attribute: .top,
        relatedBy: .equal,
        toItem: View2,
        attribute: .top,
        multiplier: 1,
        constant: 20)
        let widthHoso = NSLayoutConstraint(item: Hoso,
        attribute: .width,
        relatedBy: .equal,
        toItem: View2,
        attribute: .width,
        multiplier: 1/8,
        constant: 20)
        let heightHoso = NSLayoutConstraint(item: Hoso,
        attribute: .height,
        relatedBy: .equal,
        toItem: View2,
        attribute: .height,
        multiplier: 1/8,
        constant: 20)
        
        view.addConstraints([leftHoso,topHoso,widthHoso,heightHoso])
        View2.addSubview(capnhat)
        let rightcapnhatButton = NSLayoutConstraint(item: capnhat,
              attribute: .right,
              relatedBy: .equal,
              toItem: View2,
              attribute: .right,
              multiplier: 1,
              constant: 0)
              
              let capnhatwidthButton = NSLayoutConstraint(item: capnhat,
              attribute: .width,
              relatedBy: .equal,
              toItem: View2,
              attribute: .width,
              multiplier: 1/5,
              constant: 10)
              let capnhatheightButton = NSLayoutConstraint(item:capnhat,
              attribute: .height,
              relatedBy: .equal,
              toItem: View2,
              attribute: .height,
              multiplier: 0.8,
              constant: 10)
        view.addConstraints([rightcapnhatButton,capnhatwidthButton,capnhatheightButton])
        
       
    }

  
}
