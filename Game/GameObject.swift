//
//  GameObject.swift
//  Game
//
//  Created by 西村洋一郎 on 2014/10/13.
//  Copyright (c) 2014年 西村洋一郎. All rights reserved.
//

import SpriteKit

class GameObject : SKSpriteNode{

	var vRotation:CGFloat = 0

	func nextFrame(dt: CFTimeInterval){
        position = CGPointMake(position.x + cos(zRotation + 3.1 / 2) * speed, position.y + sin(zRotation + 3.1 / 2) * speed)
        zRotation += vRotation
    }
}