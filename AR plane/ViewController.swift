//
//  ViewController.swift
//  AR plane
//
//  Created by TPFLAP146 on 08/05/20.
//  Copyright © 2020 vijay. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         showARObject(objectName:"toy_car")
    }
    func showARObject(objectName:String) {
       
       //Adding horizontal anchor to the view
       let anchor = AnchorEntity(plane:.horizontal)
       arView.scene.addAnchor(anchor)
       
       //Adding AR Object
       let arModel = try! Entity.loadModel(named:objectName)
       anchor.addChild(arModel)
       
    }
}
