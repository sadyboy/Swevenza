import SpriteKit
import SwiftUI


class Dcgrfzfkutp: SKScene {
    
    // MARK: - Enhanced Game Properties
    private var rjiwlajf: SKLabelNode!
    private var nxqrzglfd: SKLabelNode!
    private var knbrjhl: Nmyqvtrxkdi?
    private var rcuo: [[Nmyqvtrxkdi?]] = []
    private let tjnun = 8
    private let tovbypohtvo: CGFloat = 55
    private var juhgl = 25
    private var toa = 0
    private var vrkmi = true
    private var comboCount = 0
    private var lastMatchTime: TimeInterval = 0
    
    // MARK: - New Game Elements
    private var objectiveLabel: SKLabelNode!
    private var timerLabel: SKLabelNode!
    private var currentObjective: GameObjective?
    private var gameTimer: Timer?
    private var timeRemaining = 60
    private var collectedSpecialTiles: [Nmyqvtrxkdi.SpecialTileType: Int] = [:]
    
    // Используем SpecialTileType из Nmyqvtrxkdi
    typealias SpecialTileType = Nmyqvtrxkdi.SpecialTileType
    
    enum GameObjective {
        case collect(tile: SpecialTileType, count: Int)
        case reachScore(score: Int)
        case clearBoard(count: Int)
        case survive(time: Int)
        
        var description: String {
            switch self {
            case .collect(let tile, let count):
                return "Collect \(count) \(tile.emoji)"
            case .reachScore(let score):
                return "Reach \(score) points"
            case .clearBoard(let count):
                return "Clear \(count) tiles"
            case .survive(let time):
                return "Survive \(time) seconds"
            }
        }
    }
    
    // MARK: - Callbacks
    var bjeonn: ((Int) -> Void)?
    var mrnrpqat: ((Int) -> Void)?
    
    // MARK: - Enhanced Setup
    
    override func didMove(to view: SKView) {
        setupEnhancedBackground()
        nhucviq()
        setupGameObjectives()
        tcepwboadhlv()
        setupParticles()
        startGameTimer()
    }
    
    private func setupEnhancedBackground() {
        let background = SKSpriteNode(color: UIColor(red: 0.95, green: 0.90, blue: 0.98, alpha: 1.0), size: size)
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
        
        // Add grid pattern
        for i in 0...tjnun {
            let line = SKShapeNode()
            let path = CGMutablePath()
            
            // Vertical lines
            path.move(to: CGPoint(x: CGFloat(i) * tovbypohtvo, y: 0))
            path.addLine(to: CGPoint(x: CGFloat(i) * tovbypohtvo, y: size.height))
            
            // Horizontal lines
            path.move(to: CGPoint(x: 0, y: CGFloat(i) * tovbypohtvo))
            path.addLine(to: CGPoint(x: size.width, y: CGFloat(i) * tovbypohtvo))
            
            line.path = path
            line.strokeColor = UIColor.white.withAlphaComponent(0.1)
            line.lineWidth = 1
            line.zPosition = -0.5
            addChild(line)
        }
    }
    
    private func setupGameObjectives() {
        let objectives: [GameObjective] = [
            .collect(tile: .chocolate, count: 5),
            .collect(tile: .lollipop, count: 3),
            .reachScore(score: 1000),
            .clearBoard(count: 50),
            .survive(time: 60)
        ]
        
        currentObjective = objectives.randomElement()
        createObjectiveLabel()
    }
    
    private func createObjectiveLabel() {
        objectiveLabel = SKLabelNode(text: "Objective: \(currentObjective?.description ?? "")")
        objectiveLabel.fontSize = 16
        objectiveLabel.fontName = "Avenir-Bold"
        objectiveLabel.position = CGPoint(x: size.width / 2, y: size.height - 120)
        objectiveLabel.fontColor = .systemPurple
        objectiveLabel.zPosition = 10
        addChild(objectiveLabel)
        
        timerLabel = SKLabelNode(text: "Time: \(timeRemaining)s")
        timerLabel.fontSize = 16
        timerLabel.fontName = "Avenir-Bold"
        timerLabel.position = CGPoint(x: size.width / 2, y: size.height - 140)
        timerLabel.fontColor = .systemBlue
        timerLabel.zPosition = 10
        addChild(timerLabel)
    }
    
    private func startGameTimer() {
        gameTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            self.timeRemaining -= 1
            self.timerLabel.text = "Time: \(self.timeRemaining)s"
            
            if self.timeRemaining <= 0 {
                self.endGame()
            }
            
            if self.timeRemaining <= 10 {
                let flash = SKAction.sequence([
                    SKAction.fadeAlpha(to: 0.3, duration: 0.3),
                    SKAction.fadeAlpha(to: 1.0, duration: 0.3)
                ])
                self.timerLabel.run(flash)
            }
        }
    }
    
    // MARK: - Enhanced Tile Creation
    
    private func tcepwboadhlv() {
        let gmstzn = (size.width - CGFloat(tjnun) * tovbypohtvo) / 2
        let xmstz = (size.height - CGFloat(tjnun) * tovbypohtvo) / 2
        
        rcuo = Array(repeating: Array(repeating: nil, count: tjnun), count: tjnun)
        
        for row in 0..<tjnun {
            for gotjcpigbgqk in 0..<tjnun {
                let x = gmstzn + CGFloat(gotjcpigbgqk) * tovbypohtvo + tovbypohtvo / 2
                let y = xmstz + CGFloat(row) * tovbypohtvo + tovbypohtvo / 2
                let position = CGPoint(x: x, y: y)
                
                // 20% chance for special tile
                let isSpecial = Int.random(in: 1...100) <= 20
                let kifqgrxwgqdreh = Nmyqvtrxkdi(
                    position: position,
                    row: row,
                    gotjcpigbgqk: gotjcpigbgqk,
                    isSpecial: isSpecial
                )
                rcuo[row][gotjcpigbgqk] = kifqgrxwgqdreh
                addChild(kifqgrxwgqdreh)
            }
        }
        
        clearInitialMatches()
    }
    
    // MARK: - Добавляем недостающие методы
    
    private func clearInitialMatches() {
        let matches = vwnsdpaazp()
        if matches > 0 {
            run(SKAction.wait(forDuration: 0.3)) { [weak self] in
                self?.gtqkqhccgxprgc()
                self?.run(SKAction.wait(forDuration: 0.5)) {
                    self?.clearInitialMatches()
                }
            }
        }
    }
    
    private func showComboEffect(_ combo: Int, multiplier: Int) {
        let comboLabel = SKLabelNode(text: "Combo x\(multiplier)!")
        comboLabel.fontSize = 24
        comboLabel.fontName = "Avenir-Bold"
        comboLabel.fontColor = multiplier > 1 ? .systemRed : .systemOrange
        comboLabel.position = CGPoint(x: size.width / 2, y: size.height / 2)
        comboLabel.zPosition = 100
        
        addChild(comboLabel)
        
        let scaleAction = SKAction.sequence([
            SKAction.scale(to: 1.5, duration: 0.3),
            SKAction.wait(forDuration: 0.5),
            SKAction.fadeOut(withDuration: 0.3),
            SKAction.removeFromParent()
        ])
        
        comboLabel.run(scaleAction)
    }
    
    // MARK: - Enhanced Matching Logic with Special Tiles
    
    private func vwnsdpaazp() -> Int {
        var cwsgrkya: Set<Nmyqvtrxkdi> = []
        let currentTime = CACurrentMediaTime()
        
        // Combo system
        if currentTime - lastMatchTime < 2.0 {
            comboCount += 1
        } else {
            comboCount = 0
        }
        lastMatchTime = currentTime
        
        var specialTilesCollected: [SpecialTileType] = []
        
        // Enhanced matching with special tile detection
        for row in 0..<tjnun {
            var ukqxhlhlc = 1
            for gotjcpigbgqk in 1..<tjnun {
                if let current = rcuo[row][gotjcpigbgqk],
                   let previous = rcuo[row][gotjcpigbgqk - 1],
                   current.tdakbwmaqodytj == previous.tdakbwmaqodytj {
                    ukqxhlhlc += 1
                } else {
                    if ukqxhlhlc >= 3 {
                        for i in (gotjcpigbgqk - ukqxhlhlc)..<gotjcpigbgqk {
                            if let kifqgrxwgqdreh = rcuo[row][i] {
                                cwsgrkya.insert(kifqgrxwgqdreh)
                                if kifqgrxwgqdreh.isSpecial, let specialType = kifqgrxwgqdreh.specialType {
                                    specialTilesCollected.append(specialType)
                                }
                            }
                        }
                    }
                    ukqxhlhlc = 1
                }
            }
            if ukqxhlhlc >= 3 {
                for i in (tjnun - ukqxhlhlc)..<tjnun {
                    if let kifqgrxwgqdreh = rcuo[row][i] {
                        cwsgrkya.insert(kifqgrxwgqdreh)
                        if kifqgrxwgqdreh.isSpecial, let specialType = kifqgrxwgqdreh.specialType {
                            specialTilesCollected.append(specialType)
                        }
                    }
                }
            }
        }
        
        // Vertical matching
        for gotjcpigbgqk in 0..<tjnun {
            var ukqxhlhlc = 1
            for row in 1..<tjnun {
                if let current = rcuo[row][gotjcpigbgqk],
                   let previous = rcuo[row - 1][gotjcpigbgqk],
                   current.tdakbwmaqodytj == previous.tdakbwmaqodytj {
                    ukqxhlhlc += 1
                } else {
                    if ukqxhlhlc >= 3 {
                        for i in (row - ukqxhlhlc)..<row {
                            if let kifqgrxwgqdreh = rcuo[i][gotjcpigbgqk] {
                                cwsgrkya.insert(kifqgrxwgqdreh)
                                if kifqgrxwgqdreh.isSpecial, let specialType = kifqgrxwgqdreh.specialType {
                                    specialTilesCollected.append(specialType)
                                }
                            }
                        }
                    }
                    ukqxhlhlc = 1
                }
            }
            if ukqxhlhlc >= 3 {
                for i in (tjnun - ukqxhlhlc)..<tjnun {
                    if let kifqgrxwgqdreh = rcuo[i][gotjcpigbgqk] {
                        cwsgrkya.insert(kifqgrxwgqdreh)
                        if kifqgrxwgqdreh.isSpecial, let specialType = kifqgrxwgqdreh.specialType {
                            specialTilesCollected.append(specialType)
                        }
                    }
                }
            }
        }
        
        // Process special tiles
        for specialType in specialTilesCollected {
            processSpecialTile(specialType)
            collectedSpecialTiles[specialType, default: 0] += 1
        }
        
        // Enhanced scoring with combo multiplier and special tiles bonus
        let baseScore = 10
        let comboMultiplier = max(1, comboCount / 3 + 1)
        let specialBonus = specialTilesCollected.reduce(0) { $0 + $1.points }
        let matchScore = (baseScore * cwsgrkya.count * comboMultiplier) + specialBonus
        
        for kifqgrxwgqdreh in cwsgrkya {
            kifqgrxwgqdreh.togbomwbgmwjar()
            rcuo[kifqgrxwgqdreh.row][kifqgrxwgqdreh.gotjcpigbgqk] = nil
            createMatchParticles(at: kifqgrxwgqdreh.position, isSpecial: kifqgrxwgqdreh.isSpecial)
        }
        
        toa += matchScore
        
        if cwsgrkya.count > 0 {
            bjeonn?(toa)
            showComboEffect(comboCount, multiplier: comboMultiplier)
            checkObjectiveProgress()
        }
        
        return cwsgrkya.count
    }
    
    // ... остальные методы остаются такими же, но с исправленными типами ...
    
    private func processSpecialTile(_ type: SpecialTileType) {
        switch type {
        case .bomb:
            explodeBomb()
        case .rainbow:
            clearRandomColor()
        case .clock:
            timeRemaining += 10
            showTimeBonus()
        default:
            break
        }
    }
    
    private func explodeBomb() {
        let randomRow = Int.random(in: 1..<tjnun-1)
        let randomCol = Int.random(in: 1..<tjnun-1)
        
        for row in max(0, randomRow-1)...min(tjnun-1, randomRow+1) {
            for col in max(0, randomCol-1)...min(tjnun-1, randomCol+1) {
                if let tile = rcuo[row][col] {
                    tile.togbomwbgmwjar()
                    rcuo[row][col] = nil
                    createExplosionParticles(at: tile.position)
                    toa += 5
                }
            }
        }
    }
    
    private func clearRandomColor() {
        let colors = ["🔴", "🟢", "🔵", "🟡", "🟣"]
        if let randomColor = colors.randomElement() {
            for row in 0..<tjnun {
                for col in 0..<tjnun {
                    if let tile = rcuo[row][col], tile.tdakbwmaqodytj.rawValue == randomColor {
                        tile.togbomwbgmwjar()
                        rcuo[row][col] = nil
                        toa += 3
                    }
                }
            }
        }
    }
    
    private func showTimeBonus() {
        let bonusLabel = SKLabelNode(text: "+10s!")
        bonusLabel.fontSize = 20
        bonusLabel.fontName = "Avenir-Bold"
        bonusLabel.fontColor = .systemGreen
        bonusLabel.position = CGPoint(x: size.width / 2, y: size.height / 2)
        bonusLabel.zPosition = 100
        
        addChild(bonusLabel)
        
        let moveAction = SKAction.moveBy(x: 0, y: 50, duration: 1.0)
        let fadeAction = SKAction.fadeOut(withDuration: 1.0)
        let groupAction = SKAction.group([moveAction, fadeAction])
        
        bonusLabel.run(SKAction.sequence([groupAction, SKAction.removeFromParent()]))
    }
    
    private func checkObjectiveProgress() {
        guard let objective = currentObjective else { return }
        
        var isCompleted = false
        
        switch objective {
        case .collect(let tile, let count):
            let collected = collectedSpecialTiles[tile, default: 0]
            isCompleted = collected >= count
            objectiveLabel.text = "Collect \(tile.emoji): \(collected)/\(count)"
            
        case .reachScore(let target):
            isCompleted = toa >= target
            objectiveLabel.text = "Score: \(toa)/\(target)"
            
        case .clearBoard(let count):
            // This would need additional tracking
            break
            
        case .survive(let time):
            let remaining = max(0, time - (60 - timeRemaining))
            isCompleted = remaining <= 0
            objectiveLabel.text = "Survive: \(remaining)s"
        }
        
        if isCompleted {
            completeObjective()
        }
    }
    
    private func completeObjective() {
        toa += 500
        timeRemaining += 15
        
        let rewardLabel = SKLabelNode(text: "Objective Complete! +500")
        rewardLabel.fontSize = 24
        rewardLabel.fontName = "Avenir-Bold"
        rewardLabel.fontColor = .systemYellow
        rewardLabel.position = CGPoint(x: size.width / 2, y: size.height / 2 + 100)
        rewardLabel.zPosition = 100
        
        addChild(rewardLabel)
        
        let scaleAction = SKAction.sequence([
            SKAction.scale(to: 1.5, duration: 0.5),
            SKAction.scale(to: 1.0, duration: 0.5)
        ])
        
        rewardLabel.run(SKAction.sequence([
            scaleAction,
            SKAction.wait(forDuration: 1.0),
            SKAction.removeFromParent()
        ]))
        
        setupGameObjectives()
    }
    
    // MARK: - Enhanced Visual Effects
    
    private func createMatchParticles(at position: CGPoint, isSpecial: Bool) {
        let particles = SKEmitterNode()
        particles.particleBirthRate = isSpecial ? 200 : 100
        particles.particleLifetime = isSpecial ? 1.0 : 0.8
        particles.particleSpeed = isSpecial ? 200 : 150
        particles.particleScale = isSpecial ? 0.15 : 0.1
        particles.particleAlpha = 0.7
        particles.particleColorBlendFactor = 1.0
        particles.particleColor = isSpecial ? .systemYellow : .white
        particles.position = position
        particles.zPosition = 10
        
        addChild(particles)
        
        particles.run(SKAction.sequence([
            SKAction.wait(forDuration: isSpecial ? 1.0 : 0.8),
            SKAction.removeFromParent()
        ]))
    }
    
    private func createExplosionParticles(at position: CGPoint) {
        let particles = SKEmitterNode()
        particles.particleBirthRate = 300
        particles.particleLifetime = 1.2
        particles.particleSpeed = 250
        particles.particleScale = 0.2
        particles.particleAlpha = 0.8
        particles.particleColorBlendFactor = 1.0
        particles.particleColor = .systemOrange
        particles.position = position
        particles.zPosition = 10
        
        addChild(particles)
        
        particles.run(SKAction.sequence([
            SKAction.wait(forDuration: 1.2),
            SKAction.removeFromParent()
        ]))
    }
    
    // MARK: - Game End
    
    private func endGame() {
        gameTimer?.invalidate()
        vrkmi = false
        
        let finalScore = toa + (timeRemaining * 10)
        
        run(SKAction.sequence([
            SKAction.wait(forDuration: 1.0),
            SKAction.run { [weak self] in
                self?.mrnrpqat?(finalScore)
                self?.vgkxp()
            }
        ]))
    }
    
    // MARK: - Остальные оригинальные методы
    
    
    private func nhucviq() {
        rjiwlajf = SKLabelNode(text: "Score: 0")
        rjiwlajf.fontSize = 20
        rjiwlajf.fontName = "Avenir-Bold"
        rjiwlajf.position = CGPoint(x: size.width / 2, y: size.height - 50)
        rjiwlajf.fontColor = .systemPink
        addChild(rjiwlajf)
        
        nxqrzglfd = SKLabelNode(text: "Moves: \(juhgl)")
        nxqrzglfd.fontSize = 18
        nxqrzglfd.fontName = "Avenir-Medium"
        nxqrzglfd.position = CGPoint(x: size.width / 2, y: size.height - 80)
        nxqrzglfd.fontColor = .darkGray
        addChild(nxqrzglfd)
    }
    
    private func setupParticles() {
        let sparkleEmitter = SKEmitterNode()
        sparkleEmitter.particleBirthRate = 1
        sparkleEmitter.particleLifetime = 3
        sparkleEmitter.particleSpeed = 20
        sparkleEmitter.particleScale = 0.05
        sparkleEmitter.particleAlpha = 0.3
        sparkleEmitter.particleColor = .white
        sparkleEmitter.position = CGPoint(x: size.width/2, y: size.height/2)
        sparkleEmitter.zPosition = -0.3
        addChild(sparkleEmitter)
    }
    
    private func bkuph() {
        rjiwlajf.text = "Score: \(toa)"
        nxqrzglfd.text = "Moves: \(juhgl)"
        
        if juhgl <= 5 {
            let shake = SKAction.sequence([
                SKAction.moveBy(x: 5, y: 0, duration: 0.05),
                SKAction.moveBy(x: -10, y: 0, duration: 0.05),
                SKAction.moveBy(x: 5, y: 0, duration: 0.05)
            ])
            nxqrzglfd.run(shake)
            nxqrzglfd.fontColor = .red
        } else if juhgl <= 10 {
            nxqrzglfd.fontColor = .orange
        }
    }
    
    private func egiffm() {
        if juhgl <= 0 {
            vrkmi = false
            run(SKAction.sequence([
                SKAction.wait(forDuration: 1.0),
                SKAction.run { [weak self] in
                    self?.mrnrpqat?(self?.toa ?? 0)
                    self?.vgkxp()
                }
            ]))
        }
    }
    
    private func vgkxp() {
        let background = SKSpriteNode(color: .black.withAlphaComponent(0.8), size: size)
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zPosition = 100
        addChild(background)
        
        let container = SKShapeNode(rect: CGRect(x: -150, y: -100, width: 300, height: 200), cornerRadius: 20)
        container.fillColor = .white
        container.strokeColor = .systemPurple
        container.lineWidth = 4
        container.position = CGPoint(x: size.width / 2, y: size.height / 2)
        container.zPosition = 101
        addChild(container)
        
        let aiwl = SKLabelNode(text: "Game Over!")
        aiwl.fontSize = 32
        aiwl.fontName = "Avenir-Bold"
        aiwl.position = CGPoint(x: 0, y: 50)
        aiwl.fontColor = .systemPurple
        aiwl.zPosition = 102
        container.addChild(aiwl)
        
        let hgmf = SKLabelNode(text: "Final Score: \(toa)")
        hgmf.fontSize = 24
        hgmf.fontName = "Avenir-Medium"
        hgmf.position = CGPoint(x: 0, y: 0)
        hgmf.fontColor = .darkGray
        hgmf.zPosition = 102
        container.addChild(hgmf)
        
        container.alpha = 0.0
        container.setScale(0.5)
        
        container.run(SKAction.group([
            SKAction.fadeIn(withDuration: 0.3),
            SKAction.scale(to: 1.0, duration: 0.3)
        ]))
    }
    
    private func epkxe(_ tile1: Nmyqvtrxkdi, _ tile2: Nmyqvtrxkdi) -> Bool {
        let mugneaaskjtw = abs(tile1.row - tile2.row)
        let xxvaqfamneno = abs(tile1.gotjcpigbgqk - tile2.gotjcpigbgqk)
        return (mugneaaskjtw == 1 && xxvaqfamneno == 0) || (mugneaaskjtw == 0 && xxvaqfamneno == 1)
    }
    
    private func cuzrn(_ tile1: Nmyqvtrxkdi, _ tile2: Nmyqvtrxkdi) {
        tile1.run(SKAction.scale(to: 1.0, duration: 0.1))
        tile2.run(SKAction.scale(to: 1.0, duration: 0.1))
        
        rcuo[tile1.row][tile1.gotjcpigbgqk] = tile2
        rcuo[tile2.row][tile2.gotjcpigbgqk] = tile1
        
        let ilcnjo = tile1.row
        let pdkf = tile1.gotjcpigbgqk
        tile1.row = tile2.row
        tile1.gotjcpigbgqk = tile2.gotjcpigbgqk
        tile2.row = ilcnjo
        tile2.gotjcpigbgqk = pdkf
        
        let umrd = SKAction.move(to: tile2.position, duration: 0.3)
        let fxu = SKAction.move(to: tile1.position, duration: 0.3)
        
        let yaih = tile1.position
        tile1.position = tile2.position
        tile2.position = yaih
        
        tile1.run(fxu)
        tile2.run(umrd) { [weak self] in
            guard let self = self else { return }
            
            let uzouvz = self.vwnsdpaazp()
            
            if uzouvz > 0 {
                self.juhgl -= 1
                self.bkuph()
                self.gtqkqhccgxprgc()
                
                self.run(SKAction.wait(forDuration: 0.5)) {
                    self.lkcaotjvenipyf()
                }
            } else {
                let shake = SKAction.sequence([
                    SKAction.moveBy(x: 5, y: 0, duration: 0.05),
                    SKAction.moveBy(x: -10, y: 0, duration: 0.05),
                    SKAction.moveBy(x: 5, y: 0, duration: 0.05)
                ])
                tile1.run(shake)
                tile2.run(shake)
                
                self.cuzrn(tile1, tile2)
            }
        }
    }
    
    private func lkcaotjvenipyf() {
        let matches = vwnsdpaazp()
        if matches > 0 {
            gtqkqhccgxprgc()
            run(SKAction.wait(forDuration: 0.5)) { [weak self] in
                self?.lkcaotjvenipyf()
            }
        } else {
            egiffm()
        }
    }
    
    private func gtqkqhccgxprgc() {
        for gotjcpigbgqk in 0..<tjnun {
            for row in 0..<tjnun {
                if rcuo[row][gotjcpigbgqk] == nil {
                    for searchRow in (row + 1)..<tjnun {
                        if let kifqgrxwgqdreh = rcuo[searchRow][gotjcpigbgqk] {
                            rcuo[row][gotjcpigbgqk] = kifqgrxwgqdreh
                            rcuo[searchRow][gotjcpigbgqk] = nil
                            kifqgrxwgqdreh.row = row
                            
                            let sfkwwebaos = kifqgrxwgqdreh.position.y - CGFloat(searchRow - row) * tovbypohtvo
                            let move = SKAction.move(to: CGPoint(x: kifqgrxwgqdreh.position.x, y: sfkwwebaos), duration: 0.3)
                            kifqgrxwgqdreh.run(move)
                            break
                        }
                    }
                }
                
                if rcuo[row][gotjcpigbgqk] == nil {
                    let gmstzn = (size.width - CGFloat(tjnun) * tovbypohtvo) / 2
                    let xmstz = (size.height - CGFloat(tjnun) * tovbypohtvo) / 2
                    let x = gmstzn + CGFloat(gotjcpigbgqk) * tovbypohtvo + tovbypohtvo / 2
                    let y = xmstz + CGFloat(row) * tovbypohtvo + tovbypohtvo / 2
                    
                    let isSpecial = Int.random(in: 1...100) <= 20
                    let kifqgrxwgqdreh = Nmyqvtrxkdi(
                        position: CGPoint(x: x, y: y + tovbypohtvo * 3),
                        row: row,
                        gotjcpigbgqk: gotjcpigbgqk,
                        isSpecial: isSpecial
                    )
                    rcuo[row][gotjcpigbgqk] = kifqgrxwgqdreh
                    addChild(kifqgrxwgqdreh)
                    
                    let move = SKAction.move(to: CGPoint(x: x, y: y), duration: 0.3)
                    kifqgrxwgqdreh.run(move)
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard vrkmi, let touch = touches.first else { return }
        let location = touch.location(in: self)
        
        if let kifqgrxwgqdreh = dhtrypsecatja(location) {
            if let selected = knbrjhl {
                if epkxe(selected, kifqgrxwgqdreh) {
                    selected.run(SKAction.scale(to: 1.1, duration: 0.1))
                    kifqgrxwgqdreh.run(SKAction.scale(to: 1.1, duration: 0.1))
                    
                    run(SKAction.wait(forDuration: 0.1)) { [weak self] in
                        self?.cuzrn(selected, kifqgrxwgqdreh)
                    }
                }
                selected.cqwobtesib()
                knbrjhl = nil
            } else {
                kifqgrxwgqdreh.kbabvqncmrl()
                knbrjhl = kifqgrxwgqdreh
                
                let scaleAction = SKAction.sequence([
                    SKAction.scale(to: 1.2, duration: 0.1),
                    SKAction.scale(to: 1.1, duration: 0.1)
                ])
                kifqgrxwgqdreh.run(scaleAction)
            }
        }
    }
    
    private func dhtrypsecatja(_ location: CGPoint) -> Nmyqvtrxkdi? {
        for row in rcuo {
            for kifqgrxwgqdreh in row {
                if let kifqgrxwgqdreh = kifqgrxwgqdreh, kifqgrxwgqdreh.contains(location) {
                    return kifqgrxwgqdreh
                }
            }
        }
        return nil
    }
}
