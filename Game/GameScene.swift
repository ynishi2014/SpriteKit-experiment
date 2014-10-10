//
//  GameScene.swift
//  Game
//
//  Created by 西村洋一郎 on 2014/10/10.
//  Copyright (c) 2014年 西村洋一郎. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {

	var spriteArray:[SKSpriteNode] = []

	override func didMoveToView(view: SKView) {
        /* Setup your scene here */
    }
	
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.2
            sprite.yScale = 0.2
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
			spriteArray.append(sprite);
            
            self.addChild(sprite)
			
			println("sprite" + spriteArray.count.description)
			if spriteArray.count > 5 {
				spriteArray[0].removeFromParent()
				spriteArray.removeAtIndex(0)
			}
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
