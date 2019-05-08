//
//  TitlePage.swift
//  Seasons
//
//  Created by Andrea Perez on 5/5/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import SpriteKit
var readButton: SKSpriteNode!


class TitlePage: GameScene {

    override func getNextScene() -> SKScene? {
        return SKScene(fileNamed: "Scene01") as! Scene01
    }

    override func sceneDidLoad() {
        super.sceneDidLoad()
        readButton = childNode(withName: "readButton") as! SKSpriteNode
        
        btnNext.isHidden = true
        btnPrevious.isHidden = true
    }
    
    override func touchDown(at point: CGPoint) {
        if readButton.contains(point) {
            goToScene(scene: getNextScene()!)
        }
    }

    
}
