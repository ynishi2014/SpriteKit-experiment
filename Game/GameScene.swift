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
            
            sprite.xScale = 0.1
            sprite.yScale = 0.1
            sprite.position = location
            
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
    	for sprite: SKSpriteNode in spriteArray {
	        let v:CGFloat = 10
        	sprite.position = CGPointMake(sprite.position.x + cos(sprite.zRotation + 3.1 / 2) * v, sprite.position.y + sin(sprite.zRotation + 3.1 / 2) * v)
            sprite.zRotation += 0.1
        }
    }
}
