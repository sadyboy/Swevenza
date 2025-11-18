import Foundation

class RandomUser {
    let id: Int
    let name: String
    let email: String
    let age: Int
    let salary: Double
    let isActive: Bool
    let createdAt: Date
    
    init() {
        self.id = Int.random(in: 1000...9999)
        self.name = RandomUser.generateRandomName()
        self.email = RandomUser.generateRandomEmail()
        self.age = Int.random(in: 18...80)
        self.salary = Double.random(in: 30000...150000).roundede(toPlaces: 2)
        self.isActive = Bool.random()
        self.createdAt = RandomUser.generateRandomDate()
    }
    
    private static func generateRandomName() -> String {
        let firstNames = ["John", "Jane", "Michael", "Sarah", "David", "Emily", "Robert", "Lisa"]
        let lastNames = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Miller", "Davis"]
        return "\(firstNames.randomElement()!) \(lastNames.randomElement()!)"
    }
    
    private static func generateRandomEmail() -> String {
        let domains = ["gmail.com", "yahoo.com", "outlook.com", "hotmail.com"]
        let username = String((0..<8).map { _ in "abcdefghijklmnopqrstuvwxyz".randomElement()! })
        return "\(username)@\(domains.randomElement()!)"
    }
    
    private static func generateRandomDate() -> Date {
        let startDate = Date(timeIntervalSince1970: 1577836800) 
        let endDate = Date()
        let randomTime = TimeInterval.random(in: 0...endDate.timeIntervalSince(startDate))
        return startDate.addingTimeInterval(randomTime)
    }
    
    var description: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2
        let salaryString = formatter.string(from: NSNumber(value: salary)) ?? "$\(salary)"
        
        return "User \(id): \(name) (\(email)), Age: \(age), Salary: \(salaryString))"
    }
}

extension Double {
    func roundede(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
