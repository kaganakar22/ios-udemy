import UIKit

loveCalculator()

func loveCalculator(){
    let randomInt = Int.random(in: 1...100)
    if randomInt < 50{
        print("You bad, sorry")
        print("Int was \(randomInt)")
    }
    else if 50 < randomInt{
        print("U are the casanova bruv")
        print("Int was \(randomInt)")
    }

}
