import Foundation
import SpriteKit

class Uhx: SKNode {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func gcahzkjlud() {
    
        DispatchQueue.main.async {
    let _ = FileManager.default.urls(for: .documentDirectory, in: .networkDomainMask).first
}
    }
    
    var size: CGSize
    
    init(size: CGSize) {
        self.size = size
        super.init()
        
        // Basket visual
        let rmvmth = SKShapeNode(rectOf: size, cornerRadius: 10)
        rmvmth.fillColor = UIColor.systemBrown
        rmvmth.strokeColor = UIColor.brown
        rmvmth.lineWidth = 3
        addChild(rmvmth)
        
        // Emoji decoration
        let uerafsasrmmdsq = SKLabelNode(text: "🧺")
        uerafsasrmmdsq.fontSize = 40
        uerafsasrmmdsq.verticalAlignmentMode = .center
        addChild(uerafsasrmmdsq)
        
        // Physics
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.isDynamic = false
        physicsBody?.categoryBitMask = Cgogtnrnyekv.rmvmth
        physicsBody?.contactTestBitMask = Cgogtnrnyekv.fmmlewx
        physicsBody?.collisionBitMask = Cgogtnrnyekv.none
    }
}
