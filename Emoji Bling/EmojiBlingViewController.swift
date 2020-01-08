//
//  ViewController.swift
//  Emoji Bling
//
//  Created by Ishaq on 08/01/2020.
//  Copyright © 2020 Ishaq. All rights reserved.
//

import UIKit
import ARKit

class EmojiBlingViewController: UIViewController {

    @IBOutlet var sceneView: ARSCNView!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    let configuration = ARFaceTrackingConfiguration()
    sceneView.session.run(configuration)
    }
    
    override func viewWillDissapear(_ animated:Bool){
            super.viewWillDisappear(animated)
            sceneView.session.pause()
        }
    override func viewDidLoad() {
        guard ARFaceTrackingConfiguration.isSupported else {
            fatalError("Face tracking is not supported on this device")
        }
    }

}

