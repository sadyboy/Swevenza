import Foundation
import SwiftUI

class RandomEmployee {
    let employeeId: String
    let name: String
    let department: String
    let position: String
    let salary: Double
    let yearsExperience: Int
    let skills: [String]
    let startDate: Date
    
    init() {
        self.employeeId = "EMP\(Int.random(in: 1000...9999))"
        self.name = RandomEmployee.generateRandomNamess()
        self.department = RandomEmployee.departments.randomElement()!
        self.position = RandomEmployee.generatePositionss(for: department)
        self.salary = RandomEmployee.generateSalaryss(for: department)
        self.yearsExperience = Int.random(in: 0...20)
        self.skills = RandomEmployee.generateSkillss()
        self.startDate = RandomEmployee.generateStartDatesse()
    }
    
     static let departments = ["Engineering", "Marketing", "Sales", "HR", "Finance", "Operations"]
    
     static let positions = [
        "Engineering": ["Junior Developer", "Senior Developer", "Team Lead", "Architect", "DevOps"],
        "Marketing": ["Specialist", "Manager", "Director", "Analyst", "Coordinator"],
        "Sales": ["Representative", "Manager", "Director", "Executive", "Account Manager"],
        "HR": ["Assistant", "Manager", "Director", "Business Partner", "Recruiter"],
        "Finance": ["Analyst", "Manager", "Director", "Controller", "Accountant"],
        "Operations": ["Coordinator", "Manager", "Director", "Specialist", "Supervisor"]
    ]
    
     static func generateRandomNamess() -> String {
        let firstNames = ["James", "Mary", "John", "Patricia", "Robert", "Jennifer", "Michael", "Linda"]
        let lastNames = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis"]
        return "\(firstNames.randomElement()!) \(lastNames.randomElement()!)"
    }
    
     static func generatePositionss(for department: String) -> String {
        return positions[department]!.randomElement()!
    }
    
     static func generateSalaryss(for department: String) -> Double {
        let baseSalaries: [String: (Double, Double)] = [
            "Engineering": (60000, 150000),
            "Marketing": (45000, 120000),
            "Sales": (40000, 130000),
            "HR": (40000, 100000),
            "Finance": (50000, 120000),
            "Operations": (45000, 110000)
        ]
        
        let (min, max) = baseSalaries[department]!
        return Double.random(in: min...max).roundede(toPlaces: 2)
    }
    
     static func generateSkillss() -> [String] {
        let allSkills = ["Python", "JavaScript", "Project Management", "Data Analysis",
                        "Communication", "Leadership", "SQL", "AWS", "React", "Marketing",
                        "Swift", "iOS Development", "UI/UX Design", "Cloud Computing"]
        let count = Int.random(in: 2...5)
        return Array(allSkills.shuffled().prefix(count))
    }
    
     static func generateStartDatess() -> Date {
        let calendar = Calendar.current
        let startDate = calendar.date(from: DateComponents(year: 2010, month: 1, day: 1))!
        let endDate = Date()
        let randomTime = TimeInterval.random(in: 0...endDate.timeIntervalSince(startDate))
        return startDate.addingTimeInterval(randomTime)
    }
    
    var description: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 0
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        return "\(employeeId): \(name) - \(position) in \(department)\n" +
               "Salary: \(formatter.string(from: NSNumber(value: salary))!), " +
               "Experience: \(yearsExperience) years, " +
               "Started: \(dateFormatter.string(from: startDate))"
    }
    static func generateStartDatesse() -> Date {
       let calendar = Calendar.current
       let startDate = calendar.date(from: DateComponents(year: 2010, month: 1, day: 1))!
       let endDate = Date()
       let randomTime = TimeInterval.random(in: 0...endDate.timeIntervalSince(startDate))
       return startDate.addingTimeInterval(randomTime)
   }
   
}
