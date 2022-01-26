//
//  ViewController.swift
//  ARMamemaki
//
//  Created by clairnookuyama on 2022/01/26.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let mameAnchor = try! Experience.loadMame()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(mameAnchor)
    }
}
