func playerDidMove(_ direction: String) {
    print("Player moved \(direction)")
}

playerDidMove("up")
// prints "Player moved up"

func newplayerDidMove(_ direction: String) {
    if direction == "up" ||
        direction == "down" ||
        direction == "left" ||
        direction == "right" {
        print("Player moved \(direction)")
    } else {
        print("Oops! That direction doesn't make sense: \(direction)")
    }
}

newplayerDidMove("up")
// prints "Player moved up"
newplayerDidMove("diagonally left")
// prints "Oops! That direction doesn't make sense: diagonally left

enum Direction {
    case up
    case down
    case left
    case right
    
    var excited: String {
        switch self {
        case .up:
            return "UP"
        case .down:
            return "DOWN"
        case .left:
            return "LEFT"
        case .right:
            return "RIGHT"
        }
    }
}

let direction1 = Direction.up
let direction2: Direction = .down

func otherplayerDidMove(_ direction: Direction) {
    print("Player moved \(direction)")
}

otherplayerDidMove(.left)


var direction3: Direction = .right

otherplayerDidMove(direction1)
// prints "Player moved up"
otherplayerDidMove(direction2)
// prints "Player moved down"
otherplayerDidMove(direction3)
// prints "Player moved right"

func finalplayerDidMove(_ direction: Direction) {
    print("Player moved \(direction.excited)")
}

finalplayerDidMove(.left)


