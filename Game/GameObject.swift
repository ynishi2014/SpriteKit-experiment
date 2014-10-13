//
//  GameObject.swift
//  Game
//
//  Created by 西村洋一郎 on 2014/10/13.
//  Copyright (c) 2014年 西村洋一郎. All rights reserved.
//

import SpriteKit

class GameObject : SKSpriteNode{
	func nextFrame(dt: CFTimeInterval){
        let v:CGFloat = 10
        position = CGPointMake(position.x + cos(zRotation + 3.1 / 2) * v, position.y + sin(zRotation + 3.1 / 2) * v)
        zRotation += 0.1
    }
}