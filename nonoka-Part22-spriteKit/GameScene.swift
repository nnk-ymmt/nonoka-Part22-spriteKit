//
//  GameScene.swift
//  nonoka-Part22-spriteKit
//
//  Created by 山本ののか on 2021/03/06.
//

import SpriteKit
import GameplayKit

final class GameScene: SKScene {

    private var diceNode = SKSpriteNode(imageNamed: "dice1")

    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.brown
        diceNode.position = CGPoint(x: 0, y: 0)
        self.addChild(diceNode)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let nodes = self.nodes(at: location)
            for node in nodes {
                if node == self.diceNode {
                    let num = Int(arc4random_uniform(6) + 1)
                    self.diceNode.texture = SKTexture(imageNamed: "dice\(num)")
                }
            }
        }
    }
}
