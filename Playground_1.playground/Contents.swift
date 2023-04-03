struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]){
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("done! fortiqfications")
    }
}

var town = Town(name: "Kagan Diyari", citizens: ["ben","sen"], resources: ["su" : 100])
print(town.citizens)
town.citizens.append("kaganxxd")
print(town.citizens)
