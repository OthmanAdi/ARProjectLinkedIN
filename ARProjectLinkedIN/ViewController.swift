//
//  ViewController.swift
//  ARProjectLinkedIN
//
//  Created by Yunlong.Adi on 07.09.21.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //define an Anchor to attach something to it Horizontally or Vertically
        let anchorOfSomething = AnchorEntity(plane: .any)
        
        //attach the anchor to the scene
        arView.scene.addAnchor(anchorOfSomething)
        
        //to load the Plane Model we will need a Loading model entity process
//        let planeModel = try! Entity.loadModel(named: "toy_biplane")
        
        let planeModel = try! Experience.loadPlane()
        
//        let planeModel2 = try! Entity.loadModel(named: "LemonMeringuePie")
        //add the child anchor to the view
        anchorOfSomething.addChild(planeModel)
        
//        anchorOfSomething.addChild(planeModel2)
    }
}
