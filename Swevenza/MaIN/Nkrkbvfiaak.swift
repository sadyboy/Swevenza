import SpriteKit
import SwiftUI

class Gyknugrn: SKScene {
    
    // MARK: - Enhanced Properties
    var queyrscgm: (() -> Void)?
    var jbtbex: String = "🍭" {
        didSet {
            updateCandyAppearance()
        }
    }
    
    private var jqctxclge: SKNode?
    private var syljdzglxu: SKLabelNode?
    private var uxjlegb: SKShapeNode?
    private var swqatfqboe: SKLabelNode?
    private var mwxvb: [SKEmitterNode] = []
    private var ohhx: [SKSpriteNode] = []
    private var rdxaoecctr: [SKShapeNode] = []
    private var floatingCandies: [SKNode] = []
    private var powerUpNodes: [SKNode] = []
    
    private var gzbjdefikfkak = 0
    private var zal: TimeInterval = 0
    private var lastTapPosition: CGPoint = .zero
    private var candyEvolutionLevel = 0
    private var specialEffectsActive = false
    
    // Power-up system
    private var activePowerUps: [PowerUpType: TimeInterval] = [:]
    
    enum PowerUpType {
        case multiTap, timeWarp, candyRain, megaCombo
    }
    
    // MARK: - Enhanced Setup Methods
    
    override func didMove(to view: SKView) {
        backgroundColor = .clear
        setupEnhancedBackground()
        createMainCandy()
        setupParticleSystems()
        setupComboDisplay()
        setupFloatingElements()
        startAmbientAnimations()
        setupPowerUpSpawner()
    }
    
    
    func ncqup(_ khyxxtecygj: String) {
        jbtbex = khyxxtecygj
        updateCandyAppearance()
        
        // Add transition effect when candy changes
        if let candy = jqctxclge {
            let transitionEffect = SKAction.sequence([
                SKAction.scale(to: 1.3, duration: 0.1),
                SKAction.scale(to: 1.0, duration: 0.2)
            ])
            candy.run(transitionEffect)
        }
    }
    private func setupEnhancedBackground() {
        // Multi-layer parallax background with candy themes
        let backgroundLayers = [
            (color: UIColor(red: 1.0, green: 0.95, blue: 0.98, alpha: 1.0), speed: 0.1, size: 1.2),
            (color: UIColor(red: 0.98, green: 0.92, blue: 0.96, alpha: 0.8), speed: 0.3, size: 1.1),
            (color: UIColor(red: 0.96, green: 0.88, blue: 0.94, alpha: 0.6), speed: 0.5, size: 1.0)
        ]
        
        for (index, layer) in backgroundLayers.enumerated() {
            let backgroundNode = SKSpriteNode(color: layer.color,
                                            size: CGSize(width: size.width * layer.size,
                                                        height: size.height * layer.size))
            backgroundNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
            backgroundNode.zPosition = CGFloat(-10 - index)
            addChild(backgroundNode)
            ohhx.append(backgroundNode)
        }
        
        // Add decorative candy elements
        createBackgroundCandies()
    }
    
    private func createBackgroundCandies() {
        let candyTypes = ["🍬", "🍫", "🍭", "🧁", "🍩", "🎂", "🍪"]
        
        for _ in 0..<15 {
            let candy = SKLabelNode(text: candyTypes.randomElement())
            candy.fontSize = CGFloat.random(in: 20...40)
            candy.position = CGPoint(
                x: CGFloat.random(in: 0...size.width),
                y: CGFloat.random(in: 0...size.height)
            )
            candy.zPosition = -5
            candy.alpha = 0.3
            candy.verticalAlignmentMode = .center
            addChild(candy)
            
            // Floating animation
            let floatDuration = Double.random(in: 3...8)
            let floatAction = SKAction.sequence([
                SKAction.moveBy(x: CGFloat.random(in: -20...20),
                              y: CGFloat.random(in: 10...30),
                              duration: floatDuration),
                SKAction.moveBy(x: CGFloat.random(in: -20...20),
                                y: CGFloat.random(in: -30 ... -10),
                              duration: floatDuration)
            ])
            candy.run(SKAction.repeatForever(floatAction))
        }
    }
    
    private func createMainCandy() {
        jqctxclge = SKNode()
        jqctxclge?.position = CGPoint(x: size.width / 2, y: size.height / 2)
        jqctxclge?.zPosition = 10
        jqctxclge?.name = "mainCandy"
        
        // Enhanced glow effect with multiple layers
        createCandyAura()
        
        // Main candy sprite with shadow
        syljdzglxu = SKLabelNode(text: jbtbex)
        syljdzglxu?.fontSize = 120
        syljdzglxu?.verticalAlignmentMode = .center
        syljdzglxu?.zPosition = 2
        
        // Add shadow
        let shadowNode = SKLabelNode(text: jbtbex)
        shadowNode.fontSize = 120
        shadowNode.verticalAlignmentMode = .center
        shadowNode.zPosition = 1
        shadowNode.position = CGPoint(x: 4, y: -4)
        shadowNode.alpha = 0.3
        shadowNode.fontColor = .black
        
        jqctxclge?.addChild(shadowNode)
        jqctxclge?.addChild(syljdzglxu!)
        
        addChild(jqctxclge!)
        startCandyIdleAnimations()
    }
    
    private func createCandyAura() {
        // Inner glow
        let innerGlow = SKShapeNode(circleOfRadius: 70)
        innerGlow.fillColor = .clear
        innerGlow.strokeColor = UIColor.systemPink.withAlphaComponent(0.8)
        innerGlow.lineWidth = 4
        innerGlow.glowWidth = 8
        jqctxclge?.addChild(innerGlow)
        
        // Outer glow
        let outerGlow = SKShapeNode(circleOfRadius: 90)
        outerGlow.fillColor = .clear
        outerGlow.strokeColor = UIColor.systemYellow.withAlphaComponent(0.4)
        outerGlow.lineWidth = 2
        outerGlow.glowWidth = 15
        jqctxclge?.addChild(outerGlow)
        
        uxjlegb = outerGlow
    }
    
    private func setupParticleSystems() {
        // Multiple particle systems for different effects
        let particleTypes = [
            (color: UIColor.systemPink, speed: 100, scale: 0.3),
            (color: UIColor.systemYellow, speed: 80, scale: 0.4),
            (color: UIColor.systemPurple, speed: 120, scale: 0.2),
            (color: UIColor.systemOrange, speed: 150, scale: 0.5)
        ]
        
        for type in particleTypes {
            let emitter = createParticleEmitter(color: type.color,
                                                speed: CGFloat(type.speed),
                                              scale: type.scale)
            emitter.position = CGPoint(x: size.width / 2, y: size.height / 2)
            emitter.zPosition = 5
            emitter.particleBirthRate = 0
            addChild(emitter)
            mwxvb.append(emitter)
        }
    }
    
    private func createParticleEmitter(color: UIColor, speed: CGFloat, scale: CGFloat) -> SKEmitterNode {
        let emitter = SKEmitterNode()
        
        let particleSize = CGSize(width: 8, height: 8)
        let renderer = UIGraphicsImageRenderer(size: particleSize)
        let image = renderer.image { context in
            color.setFill()
            context.cgContext.fillEllipse(in: CGRect(origin: .zero, size: particleSize))
        }
        
        emitter.particleTexture = SKTexture(image: image)
        emitter.particleLifetime = 1.5
        emitter.particleLifetimeRange = 0.5
        emitter.particleSpeed = speed
        emitter.particleSpeedRange = speed * 0.3
        emitter.particleScale = scale
        emitter.particleScaleRange = scale * 0.5
        emitter.particleScaleSpeed = -0.3
        emitter.particleAlpha = 1.0
        emitter.particleAlphaSpeed = -0.8
        emitter.particleColor = color
        emitter.particleColorBlendFactor = 1.0
        emitter.particleBlendMode = .add
        emitter.numParticlesToEmit = 0
        emitter.particlePositionRange = CGVector(dx: 80, dy: 80)
        emitter.emissionAngleRange = .pi * 2
        
        return emitter
    }
    
    // MARK: - Enhanced Touch Handling
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        lastTapPosition = location
        
        let touchedNodes = nodes(at: location)
        
        // Check for power-up collection
        if let powerUp = touchedNodes.first(where: { $0.name?.hasPrefix("powerup") == true }) {
            collectPowerUp(powerUp)
            return
        }
        
        // Main candy tap
        if touchedNodes.contains(where: { $0.name == "mainCandy" }) {
            handleCandyTap(at: location)
        }
    }
    
    private func handleCandyTap(at location: CGPoint) {
        queyrscgm?()
        
        // Enhanced combo system
        let currentTime = Date().timeIntervalSince1970
        let timeSinceLastTap = currentTime - zal
        
        if timeSinceLastTap < 0.8 {
            gzbjdefikfkak += 1
            updateComboDisplay()
            
            // Special effects for high combos
            if gzbjdefikfkak >= 5 {
                triggerComboEffects()
            }
        } else {
            gzbjdefikfkak = 1
        }
        zal = currentTime
        
        // Enhanced visual feedback
        playTapAnimation()
        spawnTapParticles(at: location)
        showFloatingText(at: location, value: gzbjdefikfkak)
        
        // Screen shake for significant combos
        if gzbjdefikfkak >= 3 {
            performScreenShake(intensity: min(CGFloat(gzbjdefikfkak) * 0.5, 8))
        }
        
        // Candy evolution
        checkCandyEvolution()
        
        // Power-up effects
        applyActivePowerUps()
    }
    
    // MARK: - Enhanced Visual Effects
    
    private func playTapAnimation() {
        guard let candy = jqctxclge else { return }
        
        // Stop idle animations temporarily
        candy.removeAction(forKey: "idleAnimation")
        
        // Complex tap animation sequence
        let tapAnimation = SKAction.sequence([
            SKAction.group([
                SKAction.scale(to: 0.8, duration: 0.05),
                SKAction.rotate(byAngle: 0.1, duration: 0.05)
            ]),
            SKAction.group([
                SKAction.scale(to: 1.3, duration: 0.1),
                SKAction.rotate(byAngle: -0.2, duration: 0.1)
            ]),
            SKAction.group([
                SKAction.scale(to: 1.0, duration: 0.1),
                SKAction.rotate(byAngle: 0.1, duration: 0.1)
            ])
        ])
        
        candy.run(tapAnimation) { [weak self] in
            self?.startCandyIdleAnimations()
        }
        
        // Color flash effect
        if let candySprite = syljdzglxu {
            let originalColor = candySprite.fontColor
            let flashSequence = SKAction.sequence([
                SKAction.customAction(withDuration: 0.1) { node, _ in
                    if let label = node as? SKLabelNode {
                        label.fontColor = .systemYellow
                    }
                },
                SKAction.customAction(withDuration: 0.2) { node, _ in
                    if let label = node as? SKLabelNode {
                        label.fontColor = originalColor
                    }
                }
            ])
            candySprite.run(flashSequence)
        }
    }
    
    private func spawnTapParticles(at position: CGPoint) {
        // Activate all particle systems with delays for cascade effect
        for (index, emitter) in mwxvb.enumerated() {
            let delay = TimeInterval(index) * 0.05
            
            run(SKAction.wait(forDuration: delay)) {
                emitter.resetSimulation()
                emitter.particleBirthRate = 80 + CGFloat(self.gzbjdefikfkak * 10)
                emitter.position = position
                
                // Stop emission after burst
                self.run(SKAction.wait(forDuration: 0.2)) {
                    emitter.particleBirthRate = 0
                }
            }
        }
        
        // Additional particles for high combos
        if gzbjdefikfkak >= 10 {
            spawnSpecialParticles(at: position)
        }
    }
    
    private func spawnSpecialParticles(at position: CGPoint) {
        let specialEmitter = SKEmitterNode(fileNamed: "SparkleParticle.sks") ?? createParticleEmitter(color: .systemOrange, speed: 200, scale: 0.6)
        specialEmitter.position = position
        specialEmitter.zPosition = 8
        specialEmitter.particleBirthRate = 150
        addChild(specialEmitter)
        
        run(SKAction.sequence([
            SKAction.wait(forDuration: 0.5),
            SKAction.run { specialEmitter.particleBirthRate = 0 },
            SKAction.wait(forDuration: 2.0),
            SKAction.run { specialEmitter.removeFromParent() }
        ]))
    }
    
    private func showFloatingText(at position: CGPoint, value: Int) {
        let textNode = SKLabelNode()
        textNode.fontName = "AvenirNext-Bold"
        textNode.zPosition = 15
        
        // Enhanced text styling based on combo
        if value > 1 {
            textNode.text = "✧\(value) COMBO!✧"
            textNode.fontSize = min(28 + CGFloat(value) * 2, 50)
            textNode.fontColor = .systemOrange
            
            // Add glow effect for high combos
            if value >= 10 {
                let glowNode = textNode.copy() as! SKLabelNode
                glowNode.fontColor = .systemYellow
                glowNode.zPosition = textNode.zPosition - 1
                glowNode.alpha = 0.6
                addChild(glowNode)
                
                let glowAction = SKAction.sequence([
                    SKAction.fadeOut(withDuration: 0.5),
                    SKAction.removeFromParent()
                ])
                glowNode.run(glowAction)
            }
        } else {
            textNode.text = "+1"
            textNode.fontSize = 24
            textNode.fontColor = .systemPink
        }
        
        textNode.position = position
        addChild(textNode)
        
        // Enhanced floating animation with rotation
        let floatAction = SKAction.group([
            SKAction.moveBy(x: CGFloat.random(in: -50...50),
                          y: 120 + CGFloat(value * 10),
                          duration: 1.2),
            SKAction.rotate(byAngle: CGFloat.random(in: -1...1), duration: 1.2),
            SKAction.sequence([
                SKAction.fadeIn(withDuration: 0.1),
                SKAction.wait(forDuration: 0.3),
                SKAction.fadeOut(withDuration: 0.8)
            ])
        ])
        
        let removeAction = SKAction.removeFromParent()
        textNode.run(SKAction.sequence([floatAction, removeAction]))
    }
    
    // MARK: - Combo System
    
    private func updateComboDisplay() {
        guard let label = swqatfqboe, gzbjdefikfkak > 1 else { return }
        
        label.text = "\(gzbjdefikfkak)x COMBO!"
        label.fontSize = min(32 + CGFloat(gzbjdefikfkak) * 2, 60)
        
        let comboAnimation = SKAction.sequence([
            SKAction.scale(to: 1.2, duration: 0.1),
            SKAction.wait(forDuration: 0.3),
            SKAction.scale(to: 1.0, duration: 0.2),
            SKAction.fadeOut(withDuration: 0.3)
        ])
        
        label.run(comboAnimation)
        
        // Special effects for milestone combos
        if gzbjdefikfkak == 5 || gzbjdefikfkak == 10 || gzbjdefikfkak == 20 {
            triggerMilestoneEffect()
        }
    }
    
    private func triggerComboEffects() {
        // Visual effects for maintaining combo
        if gzbjdefikfkak >= 5 {
            // Pulsing border effect
            let borderPulse = SKAction.sequence([
                SKAction.scale(to: 1.1, duration: 0.1),
                SKAction.scale(to: 1.0, duration: 0.1)
            ])
            jqctxclge?.run(borderPulse)
        }
    }
    
    private func triggerMilestoneEffect() {
        // Screen flash
        let flashNode = SKSpriteNode(color: .white, size: size)
        flashNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        flashNode.zPosition = 99
        flashNode.alpha = 0
        addChild(flashNode)
        
        let flashAction = SKAction.sequence([
            SKAction.fadeAlpha(to: 0.3, duration: 0.1),
            SKAction.fadeOut(withDuration: 0.3),
            SKAction.removeFromParent()
        ])
        flashNode.run(flashAction)
        
        // Celebration particles
        for emitter in mwxvb {
            emitter.particleBirthRate = 200
            run(SKAction.wait(forDuration: 0.5)) {
                emitter.particleBirthRate = 0
            }
        }
    }
    
    // MARK: - Candy Evolution System
    
    private func checkCandyEvolution() {
        let evolutionThresholds = [10, 25, 50, 100, 250]
        
        for threshold in evolutionThresholds {
            if gzbjdefikfkak >= threshold && candyEvolutionLevel < evolutionThresholds.firstIndex(of: threshold)! {
                evolveCandy(to: evolutionThresholds.firstIndex(of: threshold)! + 1)
                break
            }
        }
    }
    
    private func evolveCandy(to level: Int) {
        candyEvolutionLevel = level
        
        // Visual evolution effects
        let evolutionParticles = SKEmitterNode(fileNamed: "EvolutionParticles.sks") ?? createParticleEmitter(color: .systemPurple, speed: 150, scale: 0.8)
        evolutionParticles.position = jqctxclge?.position ?? CGPoint.zero
        evolutionParticles.zPosition = 20
        evolutionParticles.particleBirthRate = 300
        addChild(evolutionParticles)
        
        // Scale up candy
        let evolveAction = SKAction.sequence([
            SKAction.scale(to: 1.5, duration: 0.3),
            SKAction.scale(to: 1.2, duration: 0.2)
        ])
        jqctxclge?.run(evolveAction)
        
        // Stop particles after effect
        run(SKAction.sequence([
            SKAction.wait(forDuration: 1.0),
            SKAction.run { evolutionParticles.particleBirthRate = 0 },
            SKAction.wait(forDuration: 2.0),
            SKAction.run { evolutionParticles.removeFromParent() }
        ]))
    }
    
    // MARK: - Power-up System
    
    private func setupPowerUpSpawner() {
        let spawnPowerUp = SKAction.sequence([
            SKAction.wait(forDuration: 15.0),
            SKAction.run { [weak self] in
                self?.spawnRandomPowerUp()
            }
        ])
        run(SKAction.repeatForever(spawnPowerUp), withKey: "powerUpSpawner")
    }
    
    private func spawnRandomPowerUp() {
        let powerUpTypes: [PowerUpType] = [.multiTap, .timeWarp, .candyRain, .megaCombo]
        guard let randomType = powerUpTypes.randomElement() else { return }
        
        let powerUpNode = createPowerUpNode(type: randomType)
        
        // Random position around the screen edges
        let side = Int.random(in: 0...3)
        var position = CGPoint.zero
        
        switch side {
        case 0: // Top
            position = CGPoint(x: CGFloat.random(in: 50...size.width-50), y: size.height - 50)
        case 1: // Right
            position = CGPoint(x: size.width - 50, y: CGFloat.random(in: 50...size.height-50))
        case 2: // Bottom
            position = CGPoint(x: CGFloat.random(in: 50...size.width-50), y: 50)
        case 3: // Left
            position = CGPoint(x: 50, y: CGFloat.random(in: 50...size.height-50))
        default:
            position = CGPoint(x: size.width/2, y: size.height/2)
        }
        
        powerUpNode.position = position
        addChild(powerUpNode)
        
        // Float toward center
        let floatAction = SKAction.move(to: CGPoint(x: size.width/2, y: size.height/2), duration: 8.0)
        powerUpNode.run(floatAction)
        
        // Remove if not collected
        run(SKAction.sequence([
            SKAction.wait(forDuration: 10.0),
            SKAction.run { powerUpNode.removeFromParent() }
        ]))
    }
    
    private func createPowerUpNode(type: PowerUpType) -> SKNode {
        let node = SKNode()
        node.name = "powerup_\(type)"
        
        let baseNode = SKShapeNode(circleOfRadius: 25)
        baseNode.fillColor = getPowerUpColor(type: type)
        baseNode.strokeColor = .white
        baseNode.lineWidth = 2
        baseNode.glowWidth = 5
        
        let iconNode = SKLabelNode(text: getPowerUpIcon(type: type))
        iconNode.fontSize = 20
        iconNode.verticalAlignmentMode = .center
        iconNode.fontName = "AvenirNext-Bold"
        
        node.addChild(baseNode)
        node.addChild(iconNode)
        
        // Pulsing animation
        let pulseAction = SKAction.sequence([
            SKAction.scale(to: 1.1, duration: 0.5),
            SKAction.scale(to: 0.9, duration: 0.5)
        ])
        node.run(SKAction.repeatForever(pulseAction))
        
        return node
    }
    
    private func collectPowerUp(_ powerUpNode: SKNode) {
        guard let powerUpName = powerUpNode.name,
              let typeString = powerUpName.split(separator: "_").last,
              let type = PowerUpType.from(string: String(typeString)) else { return }
        
        // Visual collection effect
        let collectParticles = createParticleEmitter(color: getPowerUpColor(type: type), speed: 100, scale: 0.4)
        collectParticles.position = powerUpNode.position
        collectParticles.particleBirthRate = 100
        addChild(collectParticles)
        
        powerUpNode.removeFromParent()
        
        // Activate power-up
        activatePowerUp(type)
        
        // Stop particles
        run(SKAction.sequence([
            SKAction.wait(forDuration: 1.0),
            SKAction.run { collectParticles.particleBirthRate = 0 },
            SKAction.wait(forDuration: 2.0),
            SKAction.run { collectParticles.removeFromParent() }
        ]))
    }
    
    private func activatePowerUp(_ type: PowerUpType) {
        activePowerUps[type] = Date().timeIntervalSince1970 + getPowerUpDuration(type: type)
        
        // Immediate visual feedback
        showPowerUpActivation(type)
        
        // Schedule deactivation
        run(SKAction.wait(forDuration: getPowerUpDuration(type: type))) { [weak self] in
            self?.activePowerUps.removeValue(forKey: type)
        }
    }
    
    private func applyActivePowerUps() {
        for (type, _) in activePowerUps {
            switch type {
            case .multiTap:
                // Double the tap value
                break
            case .timeWarp:
                // Slow down time (combo timer)
                break
            case .candyRain:
                // Spawn extra candies
                spawnBonusCandies()
            case .megaCombo:
                // Boost combo multiplier
                gzbjdefikfkak += 1
            }
        }
    }
    
    // MARK: - Utility Methods
    
    private func performScreenShake(intensity: CGFloat) {
        let shakeDuration = 0.3
        let shakeActions = [
            SKAction.moveBy(x: intensity, y: intensity, duration: shakeDuration/6),
            SKAction.moveBy(x: -intensity*2, y: -intensity*2, duration: shakeDuration/3),
            SKAction.moveBy(x: intensity, y: intensity, duration: shakeDuration/6)
        ]
        
        camera?.run(SKAction.sequence(shakeActions))
    }
    
    private func startCandyIdleAnimations() {
        guard let candy = jqctxclge else { return }
        
        let breatheAction = SKAction.sequence([
            SKAction.scale(to: 1.05, duration: 1.5),
            SKAction.scale(to: 0.95, duration: 1.5)
        ])
        
        let rotateAction = SKAction.sequence([
            SKAction.rotate(byAngle: 0.1, duration: 2.0),
            SKAction.rotate(byAngle: -0.1, duration: 2.0)
        ])
        
        let idleAnimation = SKAction.group([breatheAction, rotateAction])
        candy.run(SKAction.repeatForever(idleAnimation), withKey: "idleAnimation")
    }
    
    private func updateCandyAppearance() {
        syljdzglxu?.text = jbtbex
    }
    
    private func setupComboDisplay() {
        swqatfqboe = SKLabelNode(text: "")
        swqatfqboe?.fontSize = 32
        swqatfqboe?.fontName = "AvenirNext-Bold"
        swqatfqboe?.fontColor = .systemOrange
        swqatfqboe?.position = CGPoint(x: size.width / 2, y: size.height / 2 + 150)
        swqatfqboe?.zPosition = 20
        swqatfqboe?.alpha = 0
        addChild(swqatfqboe!)
    }
    
    private func setupFloatingElements() {
        // Implementation for floating UI elements
    }
    
    private func startAmbientAnimations() {
        // Implementation for ambient background animations
    }
    
    private func spawnBonusCandies() {
        // Implementation for candy rain power-up
    }
    
    private func showPowerUpActivation(_ type: PowerUpType) {
        // Implementation for power-up activation feedback
    }
    
    // MARK: - Power-up Helper Methods
    
    private func getPowerUpColor(type: PowerUpType) -> UIColor {
        switch type {
        case .multiTap: return .systemBlue
        case .timeWarp: return .systemPurple
        case .candyRain: return .systemPink
        case .megaCombo: return .systemOrange
        }
    }
    
    private func getPowerUpIcon(type: PowerUpType) -> String {
        switch type {
        case .multiTap: return "✧"
        case .timeWarp: return "⏰"
        case .candyRain: return "🌧️"
        case .megaCombo: return "⭐"
        }
    }
    
    private func getPowerUpDuration(type: PowerUpType) -> TimeInterval {
        switch type {
        case .multiTap: return 10.0
        case .timeWarp: return 8.0
        case .candyRain: return 6.0
        case .megaCombo: return 5.0
        }
    }
}

// MARK: - PowerUpType Extension

extension Gyknugrn.PowerUpType {
    static func from(string: String) -> Gyknugrn.PowerUpType? {
        switch string {
        case "multiTap": return .multiTap
        case "timeWarp": return .timeWarp
        case "candyRain": return .candyRain
        case "megaCombo": return .megaCombo
        default: return nil
        }
    }
}
