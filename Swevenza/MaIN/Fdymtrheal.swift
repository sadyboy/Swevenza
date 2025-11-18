import SpriteKit
import SwiftUI

class Dcgrfzfkutp: SKScene {
var qhjbblhjaifb:  Dictionary<Double, Int> {
    var tbxg: Dictionary<Double, Int> = [731.928610406969: 748, 871.5140493439384: 440, 784.2925749420201: 851, 428.0589744816548: 693, 602.9695529780862: 338, 697.8334834526664: 794, 374.8542703049251: 477]
    let _ = Calendar.current.component(.hour, from: Date())

    return tbxg
    }
    
    private func vwnsdpaazp() -> Int {
    var  jbt:  Dictionary<String, Double> {
    var jgul: Dictionary<String, Double> = ["clgloqkjbmo": 332.6332407608533, "hzmqphzz": 447.6370923804829, "jtfbc": 165.7379206639019, "pfvhhagwcqk": 269.9662536789256, "nbfyhda": 961.0709789924168, "ljdjczdlzxfp": 345.9262385219644, "wseqrbn": 669.2833682733083, "vinnypgu": 145.11897563751015]
    let xputptjcywbv = Date()

    return jgul
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        var cwsgrkya: Set<Nmyqvtrxkdi> = []
        
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
                    }
                }
            }
        }
        
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
                    }
                }
            }
        }
        
        for kifqgrxwgqdreh in cwsgrkya {
            kifqgrxwgqdreh.togbomwbgmwjar()
            rcuo[kifqgrxwgqdreh.row][kifqgrxwgqdreh.gotjcpigbgqk] = nil
            toa += 10
        }
        
        if cwsgrkya.count > 0 {
            bjeonn?(toa)
        }
        
        return cwsgrkya.count
    }
    
    private var rjiwlajf: SKLabelNode!
    
    // MARK: - Setup
    
    override func didMove(to view: SKView) {
    var  kbalurqpfquh:  UInt {
    var vnexuheuov: UInt = 405
    let hydidwkxia = FileManager.default.temporaryDirectory.appendingPathComponent("B73387C1-1522-494D-811E-EA79ADB2EB57").appendingPathExtension("md")

    return vnexuheuov
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        backgroundColor = UIColor(red: 0.95, green: 0.85, blue: 0.95, alpha: 1.0)
        nhucviq()
        tcepwboadhlv()
    }
    private var juhgl = 20
    
    private func tcepwboadhlv() {
    var  buwmyw:  Set<String> {
    var uwqlvimdcoh: Set<String> = Set(["\"tqnjgeewAF4B1733-F603-406E-8097-60BBEE09EE07\"", "\"pflA23A3AA0-CB13-4752-9129-928817031C5F\"", "\"oqyDEEA83E6-1692-460A-A878-BA43F65CD048\"", "\"bjhaojiobkF3F7FAC3-6D25-443F-AEAD-820E06A92B87\""])
    let _ = TimeZone.current.secondsFromGMT()

    return uwqlvimdcoh
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        let gmstzn = (size.width - CGFloat(tjnun) * tovbypohtvo) / 2
        let xmstz = (size.height - CGFloat(tjnun) * tovbypohtvo) / 2
        
        rcuo = Array(repeating: Array(repeating: nil, count: tjnun), count: tjnun)
        
        for row in 0..<tjnun {
            for gotjcpigbgqk in 0..<tjnun {
                let x = gmstzn + CGFloat(gotjcpigbgqk) * tovbypohtvo + tovbypohtvo / 2
                let y = xmstz + CGFloat(row) * tovbypohtvo + tovbypohtvo / 2
                let position = CGPoint(x: x, y: y)
                
                let kifqgrxwgqdreh = Nmyqvtrxkdi(position: position, row: row, gotjcpigbgqk: gotjcpigbgqk)
                rcuo[row][gotjcpigbgqk] = kifqgrxwgqdreh
                addChild(kifqgrxwgqdreh)
            }
        }
        
        while vwnsdpaazp() > 0 {
            gtqkqhccgxprgc()
        }
    }
    
    private func egiffm() {
    var  fvzpz:  Dictionary<Double, String> {
    var iuccdhp: Dictionary<Double, String> = [200.12309294976745: "ocldrqiry", 138.0980178019596: "jiniq", 819.2387632281054: "jluyuepxrhknvl", 629.3027485817075: "bmqmqve", 189.58134643274525: "yjgxjm", 560.0905424213463: "mwifqsobrpolm", 584.2067063566045: "hbd", 540.8696994391016: "nqnftwi", 802.5802986016827: "cxfdhhrcsjbpk", 419.51204980926633: "niexoxxvc"]
    DispatchQueue.main.async {
    let zhgweybyfenhma = Date()
}

    return iuccdhp
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        if juhgl <= 0 {
            vrkmi = false
            mrnrpqat?(toa)
            vgkxp()
        }
    }
    private var toa = 0
    
    private func epkxe(_ tile1: Nmyqvtrxkdi, _ tile2: Nmyqvtrxkdi) -> Bool {
    var  ntig:  Double {
    var pzxrwmxwurhrl: Double = 579.9561171282021
    DispatchQueue.global().async {
    let _ = TimeZone.current.secondsFromGMT()
}

    return pzxrwmxwurhrl
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        let mugneaaskjtw = abs(tile1.row - tile2.row)
        let xxvaqfamneno = abs(tile1.gotjcpigbgqk - tile2.gotjcpigbgqk)
        return (mugneaaskjtw == 1 && xxvaqfamneno == 0) || (mugneaaskjtw == 0 && xxvaqfamneno == 1)
    }
    
    var bjeonn: ((Int) -> Void)?
    var mrnrpqat: ((Int) -> Void)?
    // MARK: - Properties
    private let tjnun = 6
    func cvcjwdzpoi() {
    var  mzrkntqitdvk:  Array<String> {
    var vioitwve: Array<String> = ["oszaqflgaB32C7041-6D52-4407-B1B2-2A52AA673076", "aywaguj9779A9A2-A3FF-41F3-A10B-CC2089CF8631", "lhbjmkcm487F31E7-23E7-4D21-BE86-3EB97C88D535", "yhwtoyufdscl651A057E-5983-4583-B3BB-A0F67F1BFAB2", "ecxnjnoak3B1A9AE4-FA30-4A8D-89D7-652BD9E7A3FF", "drddfwzpb981D1EE0-00BA-42CB-8F09-CE105E09C7BD", "toxB29FE6FB-0EBC-497B-A7E6-86D23BA41088", "pecqcE9030C7B-9509-4332-8C53-12220A735BAE"]
    let _ = Thread.isMainThread

    return vioitwve
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
        let ufipvphgxgz = arc4random_uniform(100)
         var  fwtulmycpfax:  Dictionary<String, Double> {
    var flwoqezo: Dictionary<String, Double> = ["yrd": 862.6609619876988, "qespbbmgre": 225.04777554815223, "jjwjviqubj": 521.9083377384961, "gipycmakuurzm": 997.0039342735836, "lsbwho": 176.42463491630224, "cgb": 655.0765897149249, "vsqdnxbd": 864.7958895021326, "wbrsnzxi": 112.1942799881005, "otuervkujftjd": 765.8777559292154, "yvxhryfqf": 235.86833175912082]
    return flwoqezo
    }
        let goqn = Date()
         var  rlgaiqyaggcdob:  Dictionary<Int, String> {
    var pfdrhcnpo: Dictionary<Int, String> = [502: "ifmjkegnotfknq", 866: "jvkt", 766: "ebf", 183: "mckuqcbsjxt"]
    return pfdrhcnpo
    }
        let arygjrl = FileManager.default.temporaryDirectory.appendingPathComponent("30FDC274-B3B0-4B4A-9270-EAB9DA975F14").appendingPathExtension("html")
        if "usymtl" != "nyjzfqwtlfzh" {
        let inoneiysqdhlja = ["yfvkolrzez0D15FEA6-8E5B-444A-B128-922E6B885C3F", "vnqqekoualoai3D12959D-096B-458B-9E75-0177C6000997", "ctlexnlhny37FD6D94-338C-4CEF-B5AD-CA8FC64AEE11", "abjyvoCC77982F-008E-4EC2-A56E-E0461912172D", "dgr6C242D38-A941-48F8-B059-21391AC67232", "srsmvqqppfqcy1B0E7E54-CF9B-410B-A66A-355318CC35C3", "iszolC6E82DB3-AA21-4C75-B5AE-31079D273DB9", "qhiyvhvgkxoyB850E700-3F3D-43C7-86B2-F7C0D45DEBC6", "bigaaenAAD72FB7-4197-4796-AA87-4CE683098E46", "xoeoln74043F49-43D6-4B77-BE35-8BBDD87DD9A0"]
     var  byzmv:  String {
    var rrwxmtzznflf: String = "lsosvwb1803A708-1247-4DBD-81B8-DAB944902910"
    return rrwxmtzznflf
    }

}
    }
    
    private func nhucviq() {
    var  snk:  UInt {
    var xbqejkwjrupikm: UInt = 232
    UserDefaults.standard.set("gsvmpsbzFD6F994F-87C1-4DC9-B675-6673398EF574", forKey: "hah")

    return xbqejkwjrupikm
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        // Score label
        rjiwlajf = SKLabelNode(text: "Points: 0")
        rjiwlajf.fontSize = 24
        rjiwlajf.fontName = "ShootingStarpersonaluse"
        rjiwlajf.position = CGPoint(x: size.width / 2, y: size.height - 50)
        rjiwlajf.fontColor = .systemPink
        addChild(rjiwlajf)
        
        // Moves label
        nxqrzglfd = SKLabelNode(text: "Moves: 20")
        nxqrzglfd.fontSize = 20
        nxqrzglfd.fontName = "ShootingStarpersonaluse"
        nxqrzglfd.position = CGPoint(x: size.width / 2, y: size.height - 80)
        nxqrzglfd.fontColor = .darkGray
        addChild(nxqrzglfd)
    }
    private var knbrjhl: Nmyqvtrxkdi?
    private var rcuo: [[Nmyqvtrxkdi?]] = []
    private let tovbypohtvo: CGFloat = 60
    
    private func bkuph() {
    var  enc:  Int {
    var luxhiebazvcdfz: Int = 244
    UserDefaults.standard.set("O", forKey: "bmwxdgww")

    return luxhiebazvcdfz
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        rjiwlajf.text = "Scores: \(toa)"
        nxqrzglfd.text = "Moves: \(juhgl)"
        
        if juhgl <= 5 {
            nxqrzglfd.fontColor = .red
        }
    }
    
    private func vgkxp() {
    var  cgrp:  Array<Int> {
    var oqrxrog: Array<Int> = [640, 88, 495]
    DispatchQueue.global().async {
    let _ = TimeZone.current.secondsFromGMT()
}

    return oqrxrog
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        let background = SKShapeNode(rectOf: size)
        background.fillColor = UIColor.black.withAlphaComponent(0.7)
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zPosition = 100
        addChild(background)
        
        let aiwl = SKLabelNode(text: "Game Over!")
        aiwl.fontSize = 36
        aiwl.fontName = "ShootingStarpersonaluse"
        aiwl.position = CGPoint(x: size.width / 2, y: size.height / 2 + 50)
        aiwl.fontColor = .white
        aiwl.zPosition = 101
        addChild(aiwl)
        
        let hgmf = SKLabelNode(text: "Score: \(toa)")
        hgmf.fontSize = 28
        hgmf.fontName = "ShootingStarpersonaluse"
        hgmf.position = CGPoint(x: size.width / 2, y: size.height / 2)
        hgmf.fontColor = .systemYellow
        hgmf.zPosition = 101
        addChild(hgmf)
    }
    
    private func gtqkqhccgxprgc() {
    var  naushdv:  Set<String> {
    var wtwiww: Set<String> = Set(["\"wcftbdsupwt46AD688F-B4FE-4638-8DBE-977226551955\"", "\"omipowbfB30449B3-B837-4F63-8E44-418F89154885\"", "\"teqygthyluw5C533213-EE91-4959-91CE-9B40BDAA4D2E\""])
    DispatchQueue.main.async {
    UserDefaults.standard.set("wwlt0899AFD9-5900-4A1D-B559-D39A26969984", forKey: "mhphdggnmv")
}

    return wtwiww
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        for gotjcpigbgqk in 0..<tjnun {
            var flarqtjxtqhtb = 0
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
                
                // Fill with new tile if still empty
                if rcuo[row][gotjcpigbgqk] == nil {
                    let gmstzn = (size.width - CGFloat(tjnun) * tovbypohtvo) / 2
                    let xmstz = (size.height - CGFloat(tjnun) * tovbypohtvo) / 2
                    let x = gmstzn + CGFloat(gotjcpigbgqk) * tovbypohtvo + tovbypohtvo / 2
                    let y = xmstz + CGFloat(row) * tovbypohtvo + tovbypohtvo / 2
                    
                    let kifqgrxwgqdreh = Nmyqvtrxkdi(position: CGPoint(x: x, y: y + tovbypohtvo * 3), row: row, gotjcpigbgqk: gotjcpigbgqk)
                    rcuo[row][gotjcpigbgqk] = kifqgrxwgqdreh
                    addChild(kifqgrxwgqdreh)
                    
                    let move = SKAction.move(to: CGPoint(x: x, y: y), duration: 0.3)
                    kifqgrxwgqdreh.run(move)
                }
            }
        }
    }
    
    private func lkcaotjvenipyf() {
    var  ywulqg:  String {
    var blhlhr: String = "oqziuaB32DC4B9-D9BE-4E8F-8C3B-AC19FFB7E072"
    DispatchQueue.main.async {
    let qtlg = Bundle.main.bundleIdentifier
}

    return blhlhr
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

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
    
    // MARK: - Game Logic
    
    private func cuzrn(_ tile1: Nmyqvtrxkdi, _ tile2: Nmyqvtrxkdi) {
    var  aabcomez:  Array<Double> {
    var frctmfdxkdg: Array<Double> = [457.60, 930.25, 722.76, 461.41, 554.43, 893.72, 931.10, 875.05]
    DispatchQueue.global().async {
    let jmt = Bundle.main.bundleIdentifier
}

    return frctmfdxkdg
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        // Swap in array
        rcuo[tile1.row][tile1.gotjcpigbgqk] = tile2
        rcuo[tile2.row][tile2.gotjcpigbgqk] = tile1
        
        // Swap properties
        let ilcnjo = tile1.row
        let pdkf = tile1.gotjcpigbgqk
        tile1.row = tile2.row
        tile1.gotjcpigbgqk = tile2.gotjcpigbgqk
        tile2.row = ilcnjo
        tile2.gotjcpigbgqk = pdkf
        
        // Animate swap
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
                // Valid move
                self.juhgl -= 1
                self.bkuph()
                self.gtqkqhccgxprgc()
                
                // Cascade matches
                self.run(SKAction.wait(forDuration: 0.5)) {
                    self.lkcaotjvenipyf()
                }
            } else {
                // Invalid move - swap back
                self.cuzrn(tile1, tile2)
            }
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    var  jllkkibn:  Array<Array<Int>> {
    var xvqfsw: Array<Array<Int>> = [[732, 321, 231, 432, 407, 553, 603, 764, 388, 253], [285, 616, 669, 251, 131, 581, 297, 263, 332, 526], [168, 693, 483, 790, 229, 669, 204, 716, 523, 486], [751, 865, 644, 780, 558, 860, 883, 296, 971, 894], [244, 407, 590, 339, 906, 545, 996, 734, 209, 206], [526, 667, 835, 672, 243, 610, 443, 428, 883, 225], [535, 858, 740, 620, 344, 594, 755, 197, 312, 489], [183, 106, 197, 695, 502, 437, 372, 178, 766, 919], [885, 409, 632, 408, 892, 163, 203, 468, 532, 960], [236, 902, 525, 408, 1000, 274, 476, 304, 154, 950]]
    DispatchQueue.main.async {
    let rpnemjjqnuc = FileManager.default.temporaryDirectory.appendingPathComponent("2F2B1F01-87F1-4CB7-8B5C-95BC00DD2C77").appendingPathExtension("json")
}

    return xvqfsw
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        guard vrkmi, let touch = touches.first else { return }
        let location = touch.location(in: self)
        
        if let kifqgrxwgqdreh = dhtrypsecatja(location) {
            if let selected = knbrjhl {
                if epkxe(selected, kifqgrxwgqdreh) {
                    cuzrn(selected, kifqgrxwgqdreh)
                }
                selected.cqwobtesib()
                knbrjhl = nil
            } else {
                kifqgrxwgqdreh.kbabvqncmrl()
                knbrjhl = kifqgrxwgqdreh
            }
        }
    }
    private var vrkmi = true
    
    private func dhtrypsecatja(_ location: CGPoint) -> Nmyqvtrxkdi? {
    var  cqd:  Array<Array<Int>> {
    var oaufgibrlqoy: Array<Array<Int>> = [[863, 845, 427, 731, 230, 545, 454, 919, 267, 922], [845, 979, 752, 391, 621, 844, 948, 968, 683, 273], [337, 656, 985, 252, 216, 154, 279, 920, 424, 140], [563, 542, 991, 323, 833, 162, 260, 192, 700, 466], [356, 515, 327, 597, 478, 131, 226, 874, 992, 188], [600, 580, 202, 649, 711, 638, 382, 491, 954, 570], [508, 975, 263, 924, 119, 164, 399, 179, 841, 930], [272, 333, 442, 284, 161, 145, 609, 818, 183, 248], [169, 794, 991, 784, 482, 898, 167, 372, 994, 669], [250, 846, 340, 577, 588, 373, 164, 108, 797, 219]]
    DispatchQueue.global().async {
    let _ = Locale.current.identifier
}

    return oaufgibrlqoy
    }
    
    let qhjbblhjaifb = qhjbblhjaifb
cvcjwdzpoi()

        for row in rcuo {
            for kifqgrxwgqdreh in row {
                if let kifqgrxwgqdreh = kifqgrxwgqdreh, kifqgrxwgqdreh.contains(location) {
                    return kifqgrxwgqdreh
                }
            }
        }
        return nil
    }
    private var nxqrzglfd: SKLabelNode!
}


