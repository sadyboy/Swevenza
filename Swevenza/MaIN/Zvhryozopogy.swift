import Foundation
import SpriteKit

class Nmyqvtrxkdi: SKNode {
    
    enum Bnjry: String, CaseIterable {
        case fcoa = "🍭"
        case zjzunrcqm = "🍫"
        case qdukdmxifmvzrm = "🍩"
        case fzbjgbganznuxy = "🧁"
        case fmmlewx = "🍬"
    }
    
    // Перенесем SpecialTileType в основной класс
    enum SpecialTileType {
        case chocolate, lollipop, candyCane, gumdrop
        case bomb, rainbow, clock
        
        var emoji: String {
            switch self {
            case .chocolate: return "🍫"
            case .lollipop: return "🍭"
            case .candyCane: return "🎄"
            case .gumdrop: return "🍬"
            case .bomb: return "💣"
            case .rainbow: return "🌈"
            case .clock: return "⏰"
            }
        }
        
        var points: Int {
            switch self {
            case .chocolate: return 50
            case .lollipop: return 75
            case .candyCane: return 100
            case .gumdrop: return 25
            case .bomb: return 150
            case .rainbow: return 200
            case .clock: return 30
            }
        }
    }
    
    var gotjcpigbgqk: Int
    var row: Int
    let tdakbwmaqodytj: Bnjry
    var isSpecial: Bool
    var specialType: SpecialTileType?
    
    private let background: SKShapeNode
    private let scrutdg: SKLabelNode
    
    func togbomwbgmwjar() {
        var sequence: SKAction
        
        if isSpecial {
            sequence = SKAction.sequence([
                SKAction.scale(to: 1.5, duration: 0.1),
                SKAction.group([
                    SKAction.fadeOut(withDuration: 0.3),
                    SKAction.rotate(byAngle: .pi, duration: 0.3)
                ]),
                SKAction.removeFromParent()
            ])
        } else {
            sequence = SKAction.sequence([
                SKAction.scale(to: 1.3, duration: 0.1),
                SKAction.fadeOut(withDuration: 0.2),
                SKAction.removeFromParent()
            ])
        }
        
        run(sequence)
    }
    
    func kbabvqncmrl() {
        let scale = SKAction.scale(to: 1.2, duration: 0.1)
        
        if isSpecial {
            background.fillColor = getSpecialTileColor().withAlphaComponent(0.5)
            background.strokeColor = UIColor.systemYellow
            background.lineWidth = 4
        } else {
            background.fillColor = UIColor.systemPink.withAlphaComponent(0.3)
        }
        
        run(scale)
    }
    
    func cqwobtesib() {
        let scale = SKAction.scale(to: 1.0, duration: 0.1)
        
        if isSpecial {
            background.fillColor = getSpecialTileColor()
            background.strokeColor = UIColor.systemYellow.withAlphaComponent(0.8)
            background.lineWidth = 3
        } else {
            background.fillColor = UIColor.white.withAlphaComponent(0.9)
            background.strokeColor = UIColor.systemPink.withAlphaComponent(0.5)
            background.lineWidth = 2
        }
        
        run(scale)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(position: CGPoint, row: Int, gotjcpigbgqk: Int, isSpecial: Bool = false) {
        self.row = row
        self.gotjcpigbgqk = gotjcpigbgqk
        self.isSpecial = isSpecial
        
        // Determine tile type
        if isSpecial {
            let specialTypes: [SpecialTileType] = [.bomb, .rainbow, .clock, .chocolate, .lollipop]
            self.specialType = specialTypes.randomElement()
            self.tdakbwmaqodytj = .fcoa // Default for special tiles
        } else {
            self.tdakbwmaqodytj = Bnjry.allCases.randomElement()!
            self.specialType = nil
        }
        
        // Background
        self.background = SKShapeNode(circleOfRadius: 28)
        
        // Emoji sprite
        self.scrutdg = SKLabelNode(text: isSpecial ? specialType?.emoji : tdakbwmaqodytj.rawValue)
        scrutdg.fontSize = isSpecial ? 32 : 40
        scrutdg.verticalAlignmentMode = .center
        
        super.init()
        
        self.position = position
        
        // Настройка внешнего вида после super.init()
        configureAppearance()
        
        addChild(background)
        addChild(scrutdg)
    }

    private func configureAppearance() {
        if isSpecial {
            background.fillColor = getSpecialTileColor()
            background.strokeColor = UIColor.systemYellow.withAlphaComponent(0.8)
            background.lineWidth = 3
            
            // Add glow effect for special tiles
            addGlowEffect()
        } else {
            background.fillColor = UIColor.white.withAlphaComponent(0.9)
            background.strokeColor = UIColor.systemPink.withAlphaComponent(0.5)
            background.lineWidth = 2
        }
    }
    private func getSpecialTileColor() -> UIColor {
        guard let specialType = specialType else { return UIColor.systemYellow.withAlphaComponent(0.3) }
        
        switch specialType {
        case .bomb:
            return UIColor.systemOrange.withAlphaComponent(0.3)
        case .rainbow:
            return UIColor.systemPurple.withAlphaComponent(0.3)
        case .clock:
            return UIColor.systemBlue.withAlphaComponent(0.3)
        case .chocolate:
            return UIColor.brown.withAlphaComponent(0.3)
        case .lollipop:
            return UIColor.systemPink.withAlphaComponent(0.3)
        case .candyCane:
            return UIColor.systemRed.withAlphaComponent(0.3)
        case .gumdrop:
            return UIColor.systemGreen.withAlphaComponent(0.3)
        }
    }
    
    private func addGlowEffect() {
        let glow = SKShapeNode(circleOfRadius: 32)
        glow.fillColor = .clear
        glow.strokeColor = UIColor.systemYellow.withAlphaComponent(0.4)
        glow.lineWidth = 4
        glow.glowWidth = 8
        glow.zPosition = -1
        
        addChild(glow)
        
        // Pulsing animation for glow
        let pulseAction = SKAction.sequence([
            SKAction.fadeAlpha(to: 0.3, duration: 0.8),
            SKAction.fadeAlpha(to: 0.7, duration: 0.8)
        ])
        glow.run(SKAction.repeatForever(pulseAction))
    }
}

// Extension with utility methods
extension Nmyqvtrxkdi {
    
    func ebtvcjfmccf() {
        // Utility method implementation
        let scaleAction = SKAction.sequence([
            SKAction.scale(to: 1.1, duration: 0.1),
            SKAction.scale(to: 1.0, duration: 0.1)
        ])
        run(scaleAction)
    }
    
    var xxcrm: [Int] {
        return [494, 151, 412, 502, 531]
    }
    
    // Helper method to check if this tile matches another
    func matches(_ other: Nmyqvtrxkdi) -> Bool {
        if isSpecial || other.isSpecial {
            return false // Special tiles don't match with regular ones
        }
        return self.tdakbwmaqodytj == other.tdakbwmaqodytj
    }
    
    // Get display text for the tile
    var displayText: String {
        if isSpecial, let specialType = specialType {
            return specialType.emoji
        }
        return tdakbwmaqodytj.rawValue
    }
}
