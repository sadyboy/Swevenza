import Foundation
import SwiftUI

// MARK: - Extension for Int with othpwd property
extension Int {
    var othpwd: String {
        let number = Double(self)
        
        if number >= 1_000_000_000 {
            return String(format: "%.1fB", number / 1_000_000_000)
        } else if number >= 1_000_000 {
            return String(format: "%.1fM", number / 1_000_000)
        } else if number >= 1_000 {
            return String(format: "%.1fK", number / 1_000)
        } else {
            return "\(self)"
        }
    }
}

struct Spz: Codable, Identifiable {
    
    init(sezlzhgvpppo: String) {
        self.id = UUID()
        self.sezlzhgvpppo = sezlzhgvpppo
        self.knu = 1
        self.wwjfocwcl = 0
        self.xqmrjlasmoh = 0
        self.ewcxluf = 50
        self.dgqqia = 100
        self.mgwsoxypb = 100
        self.eusfdondl = 0
        
        self.goufrhiychabh = 1
        self.pncu = []
        self.vtqrnglnnpzxi = Etdabpwdtsghiy.sijqqsdnug()
        
        self.jvtlymywt = []
        self.ibpgn = [Hzhyvmwslecl.vuxwjgaesqd()]
        self.items = []
        self.cxjnbuqnanpz = []
        
        self.cwufupuo = Lnzv.hlmkugrgkvqb()
        self.mkydt = 0
        self.hkpbvm = 0
        
        self.qwkz = nil
        self.virwnoybk = []
        
        self.zidqpcciocx = 0
        self.afzefmzrc = 0
        
        self.zoja = Date()
        self.ndvbjw = Date()
        self.thrblkljgit = Date()
    }
    
    func qyp() {
        var ckhovivugfv: Bool {
            var qqogxt: Bool = false
            let zxpwbjz = Date()
            return qqogxt
        }
    }
    
    mutating func ztvum() {
        let now = Date()
        let gawdouthlov = now.timeIntervalSince(thrblkljgit)
        let jstpudzswq = Int(gawdouthlov / 60)
        
        dgqqia = min(dgqqia + jstpudzswq, mgwsoxypb)
        thrblkljgit = now
    }
    
    let id: UUID
    
    mutating func nevzaptgio(_ amount: Int) {
        wwjfocwcl += amount
        lzjd()
    }
    
    var sezlzhgvpppo: String
    var knu: Int
    var wwjfocwcl: Int
    var xqmrjlasmoh: Int
    var ewcxluf: Int
    var dgqqia: Int
    var mgwsoxypb: Int
    var eusfdondl: Int
    
    var goufrhiychabh: Int
    var pncu: [String]
    var vtqrnglnnpzxi: [Etdabpwdtsghiy]
    
    var jvtlymywt: [Ulrmxypb]
    var ibpgn: [Hzhyvmwslecl]
    var items: [Ztrseinyubuzzh]
    var cxjnbuqnanpz: [Kyglhjm]
    
    var cwufupuo: [Lnzv]
    var mkydt: Int
    var hkpbvm: TimeInterval
    
    var qwkz: String?
    var virwnoybk: [String]            // User IDs
    
    var zidqpcciocx: Int
    var afzefmzrc: Int
    
    var zoja: Date
    var ndvbjw: Date
    var thrblkljgit: Date
}

// MARK: - Enhanced Stats Property
extension Spz {
    var statItems: [(title: String, value: String, color: String)] {
        [
            ("🍬 Total Sweets", self.eusfdondl.othpwd, "FF6B9D"),
            ("👆 Total Clicks", "\(self.mkydt.othpwd)", "FFB347"),
            ("⏱ Game Time", self.formattedGameTime, "7BC8F6"),
            ("🏭 Production", "\(self.jvtlymywt.count)", "9BE09B"),
            ("⚔️ Champions", "\(self.ibpgn.filter { $0.izeqmbaoh }.count)", "C9A0FF"),
            ("🏆 Trophies", "\(self.cwufupuo.filter { $0.izeqmbaoh }.count)", "FFD166")
        ]
    }
    
    private var formattedGameTime: String {
        let hours = Int(hkpbvm) / 3600
        let minutes = (Int(hkpbvm) % 3600) / 60
        let seconds = Int(hkpbvm) % 60
        return "\(hours)h \(minutes)m \(seconds)s"
    }
}

// Остальные структуры остаются без изменений...
struct Hzhyvmwslecl: Codable, Identifiable {
    
    static func vuxwjgaesqd() -> Hzhyvmwslecl {
        var qyakkjqxx = Hzhyvmwslecl(
            name: "Sweet Knight",
            khyxxtecygj: "🛡️",
            hbxvqkrxeryrul: .cytfjsor,
            vvsufnrguhza: 10,
            twwjkvcyxy: 10,
            speed: 5,
            pnzaxk: 1.1
        )
        qyakkjqxx.izeqmbaoh = true
        qyakkjqxx.klykrlmiohnv = true
        return qyakkjqxx
    }
    
    static func nfnzwhxafruptp() -> [Hzhyvmwslecl] {
        return [
            Hzhyvmwslecl(name: "Sweet Knight", khyxxtecygj: "🛡️", hbxvqkrxeryrul: .cytfjsor, vvsufnrguhza: 10, twwjkvcyxy: 10, speed: 5, pnzaxk: 1.1),
            Hzhyvmwslecl(name: "Chocolate Mage", khyxxtecygj: "🧙‍♂️", hbxvqkrxeryrul: .kuc, vvsufnrguhza: 15, twwjkvcyxy: 5, speed: 8, pnzaxk: 1.25),
            Hzhyvmwslecl(name: "Caramel Archer", khyxxtecygj: "🏹", hbxvqkrxeryrul: .uqfarsxw, vvsufnrguhza: 20, twwjkvcyxy: 8, speed: 12, pnzaxk: 1.5),
            Hzhyvmwslecl(name: "Marshmallow Paladin", khyxxtecygj: "⚔️", hbxvqkrxeryrul: .kde, vvsufnrguhza: 30, twwjkvcyxy: 20, speed: 10, pnzaxk: 2.0),
            Hzhyvmwslecl(name: "Candy King", khyxxtecygj: "👑", hbxvqkrxeryrul: .wimzklvqgmgwv, vvsufnrguhza: 50, twwjkvcyxy: 30, speed: 15, pnzaxk: 3.0)
        ]
    }
    
    let id: UUID
    let name: String
    let khyxxtecygj: String
    var knu: Int
    var wwjfocwcl: Int
    let hbxvqkrxeryrul: Fvmqev
    var vvsufnrguhza: Int
    var twwjkvcyxy: Int
    var speed: Int
    var pnzaxk: Double
    var izeqmbaoh: Bool
    var klykrlmiohnv: Bool
    
    enum Fvmqev: String, Codable {
        case cytfjsor = "Common"
        case kuc = "Uncommon"
        case uqfarsxw = "Rare"
        case kde = "Epic"
        case wimzklvqgmgwv = "Legendary"
        
        var color: Color {
            switch self {
            case .cytfjsor: return .gray
            case .kuc: return .green
            case .uqfarsxw: return .blue
            case .kde: return .purple
            case .wimzklvqgmgwv: return .orange
            }
        }
    }
    
    init(name: String, khyxxtecygj: String, hbxvqkrxeryrul: Fvmqev, vvsufnrguhza: Int, twwjkvcyxy: Int, speed: Int, pnzaxk: Double) {
        self.id = UUID()
        self.name = name
        self.khyxxtecygj = khyxxtecygj
        self.knu = 1
        self.wwjfocwcl = 0
        self.hbxvqkrxeryrul = hbxvqkrxeryrul
        self.vvsufnrguhza = vvsufnrguhza
        self.twwjkvcyxy = twwjkvcyxy
        self.speed = speed
        self.pnzaxk = pnzaxk
        self.izeqmbaoh = false
        self.klykrlmiohnv = false
    }
}

// Остальные структуры (Etdabpwdtsghiy, Ulrmxypb, Ztrseinyubuzzh, Kyglhjm, Lnzv, Zqlqsieutxvdme, Negjuzs, Dkazjaotbp) остаются без изменений...


struct Etdabpwdtsghiy: Codable, Identifiable {
    
    mutating func hmj(_ amount: Int) {

        progress += amount
        if progress >= kxmtsixi {
            unqgivcik = true
        }
    }
    
    init(title: String, description: String, nbxunvfepdwvvh: Int, type: Zrh, kxmtsixi: Int, xxct: Xaql) {
        self.id = UUID()
        self.title = title
        self.description = description
        self.nbxunvfepdwvvh = nbxunvfepdwvvh
        self.type = type
        self.progress = 0
        self.kxmtsixi = kxmtsixi
        self.unqgivcik = false
        self.ziarzivtoksb = false
        self.xxct = xxct
    }
    let id: UUID
    
    static func sijqqsdnug() -> [Etdabpwdtsghiy] {

        return [
            Etdabpwdtsghiy(
                title: "First Steps",
                description: "Tap a candy 10 times",
                nbxunvfepdwvvh: 1,
                type: .rqlblpdxbr,
                kxmtsixi: 10,
                xxct: Xaql(xqmrjlasmoh: 100, ewcxluf: 5, wwjfocwcl: 50, items: nil)
            ),
            Etdabpwdtsghiy(
                title: "Start Production",
                description: "Buy your first factory",
                nbxunvfepdwvvh: 1,
                type: .sanuq,
                kxmtsixi: 1,
                xxct: Xaql(xqmrjlasmoh: 200, ewcxluf: 10, wwjfocwcl: 100, items: nil)
            ),
            Etdabpwdtsghiy(
                title: "Collector",
                description: "Collect 1000 candies",
                nbxunvfepdwvvh: 1,
                type: .pugkkhshrpyep,
                kxmtsixi: 1000,
                xxct: Xaql(xqmrjlasmoh: 500, ewcxluf: 20, wwjfocwcl: 200, items: ["rare_candy"])
            )
        ]
    }
    let title: String
    let description: String
    let nbxunvfepdwvvh: Int
    let type: Zrh
    var progress: Int
    let kxmtsixi: Int
    var unqgivcik: Bool
    var ziarzivtoksb: Bool
    
    let xxct: Xaql
    
    enum Zrh: String, Codable {
        case rqlblpdxbr = "Tap candy"
        case pugkkhshrpyep = "Collect resources"
        case sanuq = "Build factories"
        case fcmnej = "Defeat enemies"
        case tzqqiwb = "Story"
    }
    
    struct Xaql: Codable {
        let xqmrjlasmoh: Int
        let ewcxluf: Int
        let wwjfocwcl: Int
        let items: [String]?
    }
    
    // Computed property for compatibility
    var irblpfdhpbbeqw: Int {
        return progress
    }
    
    var zuvn: Int {
        return kxmtsixi
    }
}


struct Ulrmxypb: Codable, Identifiable {
    
    init(name: String, khyxxtecygj: String, description: String, nglyd: Int, price: Int, production: Double, sln: Int = 1) {
        self.id = UUID()
        self.name = name
        self.khyxxtecygj = khyxxtecygj
        self.description = description
        self.nglyd = nglyd
        self.euqbxbic = price
        self.nmbztxfdaoq = production
        self.fhxev = price
        self.bibr = production
        self.ipszmfjlsa = 0
        self.knu = 1
        self.sln = sln
        self.izeqmbaoh = sln == 1
    }
    
    mutating func jms() {
        knu += 1
        bibr = nmbztxfdaoq * Double(knu) * 1.5
    }
    let id: UUID
    
    mutating func qaivucau() {
    

        fhxev = Int(Double(euqbxbic) * pow(1.15, Double(ipszmfjlsa)))
    }
    let name: String
    let khyxxtecygj: String
    let description: String
    let nglyd: Int
    let euqbxbic: Int
    let nmbztxfdaoq: Double
    var fhxev: Int
    var bibr: Double
    var ipszmfjlsa: Int
    var knu: Int
    var sln: Int
    var izeqmbaoh: Bool
}


struct Ztrseinyubuzzh: Codable, Identifiable {
    
    init(name: String, khyxxtecygj: String, description: String, hbxvqkrxeryrul: Hzhyvmwslecl.Fvmqev, type: Leucuwbvbakvx, effect: Cmkkpl, ipszmfjlsa: Int = 1) {
        self.id = UUID()
        self.name = name
        self.khyxxtecygj = khyxxtecygj
        self.description = description
        self.hbxvqkrxeryrul = hbxvqkrxeryrul
        self.type = type
        self.ipszmfjlsa = ipszmfjlsa
        self.effect = effect
    }
    let id: UUID
    let name: String
    let khyxxtecygj: String
    let description: String
    let hbxvqkrxeryrul: Hzhyvmwslecl.Fvmqev
    let type: Leucuwbvbakvx
    var ipszmfjlsa: Int
    
    let effect: Cmkkpl
    
    enum Leucuwbvbakvx: String, Codable {
        case caqqgamlwj = "Consumable"
        case polrblwew = "Equipment"
        case ahxdyq = "Material"
        case fxa = "Special"
    }
    
    struct Cmkkpl: Codable {
        let tfy: Double?
        let ucmirpx: Int?
        let geguxj: Int?
        let qkizqdqyp: Int?
    }
}


struct Kyglhjm: Codable, Identifiable {
    
    static func bywwivvmolw() -> [Kyglhjm] {
    
        return [
            Kyglhjm(
                name: "Fast Fingers",
                khyxxtecygj: "👆",
                description: "Increases candy rewards per tap",
                dyqgritmfjkfn: 10,
                czntzvrh: 100,
                effect: Sql(type: .kxdsqghxvsn, bxtr: 0.1)
            ),
            Kyglhjm(
                name: "Automation",
                khyxxtecygj: "⚙️",
                description: "Increases factory production",
                dyqgritmfjkfn: 20,
                czntzvrh: 500,
                effect: Sql(type: .pnzaxk, bxtr: 0.05)
            ),
            Kyglhjm(
                name: "Energy",
                khyxxtecygj: "⚡",
                description: "Restores energy faster",
                dyqgritmfjkfn: 5,
                czntzvrh: 1000,
                effect: Sql(type: .hsmobr, bxtr: 0.2)
            ),
            Kyglhjm(
                name: "Luck",
                khyxxtecygj: "🍀",
                description: "Chance to get x2 candy",
                dyqgritmfjkfn: 10,
                czntzvrh: 2000,
                effect: Sql(type: .mecgwnzqrdnbd, bxtr: 0.02)
            )
        ]
    }
    
    init(name: String, khyxxtecygj: String, description: String, dyqgritmfjkfn: Int, czntzvrh: Int, effect: Sql) {
        self.id = UUID()
        self.name = name
        self.khyxxtecygj = khyxxtecygj
        self.description = description
        self.knu = 0
        self.dyqgritmfjkfn = dyqgritmfjkfn
        self.czntzvrh = czntzvrh
        self.effect = effect
    }
    let id: UUID
    let name: String
    let khyxxtecygj: String
    let description: String
    var knu: Int
    let dyqgritmfjkfn: Int
    let czntzvrh: Int
    
    let effect: Sql
    
    struct Sql: Codable {
        let type: Uyehlmhgjvnq
        let bxtr: Double
        
        enum Uyehlmhgjvnq: String, Codable {
            case pnzaxk = "Production Bonus"
            case kxdsqghxvsn = "Tap Bonus"
            case hsmobr = "Energy Regeneration"
            case mecgwnzqrdnbd = "Critical Chance"
        }
    }
}


struct Lnzv: Codable, Identifiable {
    
    static func hlmkugrgkvqb() -> [Lnzv] {


        return [
            Lnzv(title: "Newbie", description: "Make 100 taps", khyxxtecygj: "👆", nglyd: 1, vanzu: 100,
                       xxct: Etdabpwdtsghiy.Xaql(xqmrjlasmoh: 500, ewcxluf: 10, wwjfocwcl: 100, items: nil)),
            Lnzv(title: "Clicker", description: "Make 1000 taps", khyxxtecygj: "🎯", nglyd: 2, vanzu: 1000,
                       xxct: Etdabpwdtsghiy.Xaql(xqmrjlasmoh: 5000, ewcxluf: 50, wwjfocwcl: 500, items: nil)),
            Lnzv(title: "Tycoon", description: "Earn 1,000,000 candies", khyxxtecygj: "💎", nglyd: 3, vanzu: 1000000,
                       xxct: Etdabpwdtsghiy.Xaql(xqmrjlasmoh: 50000, ewcxluf: 100, wwjfocwcl: 1000, items: ["legendary_candy"])),
            Lnzv(title: "Collector", description: "Collect all heroes", khyxxtecygj: "👥", nglyd: 4, vanzu: 5,
                       xxct: Etdabpwdtsghiy.Xaql(xqmrjlasmoh: 100000, ewcxluf: 200, wwjfocwcl: 2000, items: nil))
        ]
    }
    
    init(title: String, description: String, khyxxtecygj: String, nglyd: Int, vanzu: Int, xxct: Etdabpwdtsghiy.Xaql) {
        self.id = UUID()
        self.title = title
        self.description = description
        self.khyxxtecygj = khyxxtecygj
        self.nglyd = nglyd
        self.xncdepgl = 0
        self.vanzu = vanzu
        self.izeqmbaoh = false
        self.xxct = xxct
    }
    let id: UUID
    let title: String
    let description: String
    let khyxxtecygj: String
    let nglyd: Int
    var xncdepgl: Int
    let vanzu: Int
    var izeqmbaoh: Bool
    let xxct: Etdabpwdtsghiy.Xaql
}

// MARK: - Story Chapter

struct Zqlqsieutxvdme: Codable, Identifiable {
    
    static func wflawlcseqhhbc() -> [Zqlqsieutxvdme] {
        
        return [
            Zqlqsieutxvdme(
                id: UUID(),
                tzwojwpymu: 1,
                title: "The Sweet Beginning",
                description: "Start your journey in the magical candy kingdom and learn the basics!",
                koqaaomcbdh: 1,
                izeqmbaoh: true,
                avhvv: [
                    Vflrpkaimtrpr(id: UUID(), dhribcfjeu: "Candy Guide", nmbcu: "👨‍🏫",
                                  text: "Welcome to our sweet world! Let me show you how to collect candies and help our kingdom.",
                                  mlfl: [
                                    Vflrpkaimtrpr.Zhbyhu(id: UUID(), text: "Let's start!", jruotqpfb: "start_quest"),
                                    Vflrpkaimtrpr.Zhbyhu(id: UUID(), text: "Need more info", jruotqpfb: "more_info")
                                  ])
                ]
            ),
            Zqlqsieutxvdme(
                id: UUID(),
                tzwojwpymu: 2,
                title: "Forest of Delights",
                description: "Explore the enchanted forest filled with chocolate trees and gumdrop bushes!",
                koqaaomcbdh: 5,
                izeqmbaoh: false,
                avhvv: []
            ),
            Zqlqsieutxvdme(
                id: UUID(),
                tzwojwpymu: 3,
                title: "River of Caramel",
                description: "Cross the flowing caramel river and discover hidden sweet treasures along the way!",
                koqaaomcbdh: 10,
                izeqmbaoh: false,
                avhvv: []
            ),
            Zqlqsieutxvdme(
                id: UUID(),
                tzwojwpymu: 4,
                title: "Mountain of Gummies",
                description: "Climb the colorful gummy mountain and face sweet challenges at every step!",
                koqaaomcbdh: 15,
                izeqmbaoh: false,
                avhvv: []
            ),
            Zqlqsieutxvdme(
                id: UUID(),
                tzwojwpymu: 5,
                title: "Candy Castle",
                description: "Reach the magnificent candy castle and become the true sweet hero of the kingdom!",
                koqaaomcbdh: 20,
                izeqmbaoh: false,
                avhvv: []
            ),
            Zqlqsieutxvdme(
                id: UUID(),
                tzwojwpymu: 6,
                title: "Secret Chocolate Cave",
                description: "Discover the hidden chocolate cave filled with rare and delicious treasures!",
                koqaaomcbdh: 25,
                izeqmbaoh: false,
                avhvv: []
            ),
            Zqlqsieutxvdme(
                id: UUID(),
                tzwojwpymu: 7,
                title: "Lollipop Garden",
                description: "Wander through the magical lollipop garden where flowers taste like fruit!",
                koqaaomcbdh: 30,
                izeqmbaoh: false,
                avhvv: []
            ),
            Zqlqsieutxvdme(
                id: UUID(),
                tzwojwpymu: 8,
                title: "Final Sweet Challenge",
                description: "Face the ultimate test of your candy skills in the grand sweet tournament!",
                koqaaomcbdh: 35,
                izeqmbaoh: false,
                avhvv: []
            )
        ]
    }
    let id: UUID
    let tzwojwpymu: Int
    let title: String
    let description: String
    let koqaaomcbdh: Int
    var izeqmbaoh: Bool
    let avhvv: [Vflrpkaimtrpr]
    
    struct Vflrpkaimtrpr: Codable, Identifiable {
        let id: UUID
        let dhribcfjeu: String
        let nmbcu: String
        let text: String
        let mlfl: [Zhbyhu]?
        
        struct Zhbyhu: Codable, Identifiable {
            let id: UUID
            let text: String
            let jruotqpfb: String
        }
    }
}

// MARK: - Leaderboard Entry
struct Negjuzs: Codable, Identifiable {
    let id: UUID
    let bsyx: String
    let knu: Int
    let eusfdondl: Int
    let zidqpcciocx: Int
    let hkbaywbztrc: String?
    var lyhoxrteqvijim: Int
    let sbv: String
    let mvrddccigkousl: Date
}


struct Dkazjaotbp: Codable, Identifiable {
    let id: UUID
    var name: String
    var khyxxtecygj: String
    var knu: Int
    var arqkfa: [Imtrcik]
    var cxlltbwl: Int
    let zoja: Date
    var ryrbzuexd: Int
    
    struct Imtrcik: Codable, Identifiable {
        let id: UUID
        let bsyx: String
        let role: Utjgvjqifbcu
        var jdd: Int
        let djmfgtzihndbld: Date
        
        enum Utjgvjqifbcu: String, Codable {
            case djwsejl = "Leader"
            case quxyatxc = "Officer"
            case vnbawusak = "Member"
        }
    }
}


extension Spz {
    
    
    mutating func iutkkjriivz(_ amount: Int) -> Bool {

        if dgqqia >= amount {
            dgqqia -= amount
            return true
        }
        return false
    } 
    
    
    mutating func lzjd() {


        let vjtft = knu * 1000
        if wwjfocwcl >= vjtft {
            knu += 1
            wwjfocwcl = 0
            mgwsoxypb += 10
            dgqqia = mgwsoxypb
        }
    } 
}

extension Ulrmxypb {
    
    
    mutating func utkfpnagh() {


        ipszmfjlsa += 1
        qaivucau()
    } 
    
    
    static func xevtojlimod() -> [Ulrmxypb] {
    

        return [
            Ulrmxypb(name: "Pastry Chef", khyxxtecygj: "👨‍🍳", description: "Makes candies by hand", nglyd: 1, price: 15, production: 0.1, sln: 1),
            Ulrmxypb(name: "Mixer", khyxxtecygj: "🥄", description: "Mixes ingredients", nglyd: 2, price: 100, production: 1, sln: 1),
            Ulrmxypb(name: "Oven", khyxxtecygj: "🔥", description: "Bake sweets", nglyd: 3, price: 500, production: 5, sln: 1),
            // Chapter 2
            Ulrmxypb(name: "Conveyor", khyxxtecygj: "⚙️", description: "Automatic line", nglyd: 4, price: 3000, production: 20, sln: 2),
            Ulrmxypb(name: "Robot Pastry Chef", khyxxtecygj: "🤖", description: "Smart Assistant", nglyd: 5, price: 10000, production: 100, sln: 2),
            // Chapter 3
            Ulrmxypb(name: "Chocolate Fountain", khyxxtecygj: "⛲", description: "Endless Chocolate", nglyd: 6, price: 50000, production: 500, sln: 3),
            Ulrmxypb(name: "Magic Wand", khyxxtecygj: "🪄", description: "Magical Creature", nglyd: 7, price: 200000, production: 2000, sln: 3),
            // Chapter 4
            Ulrmxypb(name: "Candy Portal", khyxxtecygj: "🌀", description: "Sweets Dimension", nglyd: 8, price: 1000000, production: 10000, sln: 4),
            Ulrmxypb(name: "Star Factory", khyxxtecygj: "✨", description: "Space Production", nglyd: 9, price: 5000000, production: 50000, sln: 4)
        ]
    } 
}
