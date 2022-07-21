//
//  GameScene.swift
//  SpaceWar
//
//  Created by Pavel Naumov on 21.07.2022.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var spaceShip: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        setupSpaceShip()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: self)
            let moveAction = SKAction.move(to: touchLocation, duration: 0.6)
            spaceShip.run(moveAction)
        }
    }
    
    private func setupBackgroundImage() {
        
    }
    
    private func setupSpaceShip() {
        spaceShip = SKSpriteNode(imageNamed: "SpaceShip")
        spaceShip.position = CGPoint(x: 0, y: -300)
        addChild(spaceShip)
        spaceShip.size.height = 200
        spaceShip.size.width = 200
    }
}
