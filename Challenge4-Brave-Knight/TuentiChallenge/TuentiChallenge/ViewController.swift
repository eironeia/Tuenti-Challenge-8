//
//  ViewController.swift
//  TuentiChallenge
//
//  Created by Alex Cuello ortiz on 25/04/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import UIKit
import Foundation
import BigInt



class ViewController: UIViewController {
    
    /* MAZE INFO */
    enum Cell: Character {
        case Empty = "."
        case Lava = "#"
        case Knight = "S"
        case Goal = "P"
        case Path = "*"
    }
    
    typealias Maze = [[Cell]]
    
    struct MazeLocation: Hashable, Equatable {
        let row: Int
        let col: Int
        var hashValue: Int { return row.hashValue ^ col.hashValue }
        
        static func == (lhs: MazeLocation, rhs: MazeLocation) -> Bool {
            return lhs.row == rhs.row && lhs.col == rhs.col
        }
    }
    
    var firstGoal:ViewController.MazeLocation!
    var secondGoal: ViewController.MazeLocation!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        srand48(time(nil)) // seed random number generator
        
        var maze2 = generateMaze(rows: 4, columns: 5, sparseness: 0.2)
        printMaze(maze2)
        
        let start = MazeLocation(row: 0, col: 3)
        self.firstGoal = MazeLocation(row: 0, col: 0)
        self.secondGoal = MazeLocation(row: 3, col: 2)
        
        if let solution = bfs(initialState: start, goalTestFn: goalTest, successorFn:
            successorsForMaze(maze2)) {
            
            let path = nodeToPath(solution)
            
            let newStart = self.firstGoal!
            self.firstGoal = self.secondGoal
            maze2[0][0] = .Empty
            maze2[3][1] = .Goal
            if let solution2 = bfs(initialState: newStart, goalTestFn: goalTest, successorFn:
                successorsForMaze(maze2)) {
                
                let path2 = nodeToPath(solution2)
                print("Found solution with \(path2.count - 1 + path.count - 1) steps")
            }
            else {
                print("No second solution")
            }
        }
        else {
            print("No solution")
        }
        
        // sparseness is the approximate percentage of walls represented
        // as a number between 0 and 1
        
        
        
        self.view.backgroundColor = UIColor.green
    }
    
    func goalTest(ml: MazeLocation) -> Bool {
        return ml == firstGoal
    }
    
    func generateMaze(rows: Int, columns: Int, sparseness: Double) -> Maze {
        // initialize maze full of empty spaces
        var maze: Maze = Maze(repeating: [Cell](repeating: .Empty, count: columns),
                              count: rows)
        // put walls in
        maze[0][0] = .Goal
        maze[0][1] = .Lava
        maze[0][3] = .Knight
        maze[0][4] = .Lava
        
        maze[1][1] = .Lava
        
        maze[2][0] = .Lava
        maze[2][2] = .Lava
        
        maze[3][1] = .Empty
        maze[3][3] = .Lava

        return maze
    }
    
    
    func printMaze(_ maze: Maze) {
        for i in 0..<maze.count {
            print(String(maze[i].map{ $0.rawValue }))
        }
    }
    
    func successorsForMaze(_ maze: Maze) -> (MazeLocation) -> [MazeLocation] {
        func successors(ml: MazeLocation) -> [MazeLocation] { //no diagonals    -> Modify that
            var newMLs: [MazeLocation] = [MazeLocation]()
            
            //vert
            if (ml.row + 1 < maze.count) && (maze[ml.row + 1][ml.col] != .Lava) {
                newMLs.append(MazeLocation(row: ml.row + 1, col: ml.col))
            }
            if (ml.row - 1 >= 0) && (maze[ml.row - 1][ml.col] != .Lava) {
                newMLs.append(MazeLocation(row: ml.row - 1, col: ml.col))
            }
            
            //hor
            if (ml.col + 1 < maze[0].count) && (maze[ml.row][ml.col + 1] != .Lava) {
                newMLs.append(MazeLocation(row: ml.row, col: ml.col + 1))
            }
            if (ml.col - 1 >= 0) && (maze[ml.row][ml.col - 1] != .Lava) {
                newMLs.append(MazeLocation(row: ml.row, col: ml.col - 1))
            }
            
            //cross
            if (ml.row + 1 < maze.count) && (ml.col + 1 < maze[0].count) && (maze[ml.row+1][ml.col + 1] != .Lava) {
                newMLs.append(MazeLocation(row: ml.row+1, col: ml.col + 1))
            }
            
            
            if (ml.row - 1 >= 0) && (ml.col + 1 < maze[0].count) && (maze[ml.row-1][ml.col+1] != .Lava) {
                newMLs.append(MazeLocation(row: ml.row-1, col: ml.col+1))
            }
            
            
            if (ml.row + 1 < maze.count) && (ml.col - 1 >= 0) && (maze[ml.row+1][ml.col-1] != .Lava) {
                newMLs.append(MazeLocation(row: ml.row+1, col: ml.col - 1))
            }
            
            
            if (ml.row - 1 >= 0) && (ml.col - 1 >= 0) && (maze[ml.row-1][ml.col - 1] != .Lava) {
                newMLs.append(MazeLocation(row: ml.row-1, col: ml.col - 1))
            }
            
            
            return newMLs
        }
        return successors
    }
    
    
    class Node<T>: Comparable, Hashable {
        let state: T
        let parent: Node?
        let cost: Float
        let heuristic: Float
        init(state: T, parent: Node?, cost: Float = 0.0, heuristic: Float = 0.0) {
            self.state = state
            self.parent = parent
            self.cost = cost
            self.heuristic = heuristic
        }
        
        var hashValue: Int { return (Int) (cost + heuristic) }
        
        static func < <T>(lhs: Node<T>, rhs: Node<T>) -> Bool {
            return (lhs.cost + lhs.heuristic) < (rhs.cost + rhs.heuristic)
        }
        
        static func == <T>(lhs: Node<T>, rhs: Node<T>) -> Bool {
            return lhs === rhs
        }
    }
    
    public class Queue<T> {
        private var container: [T] = [T]()
        public var isEmpty: Bool { return container.isEmpty }
        public func push(thing: T) { container.append(thing) }
        public func pop() -> T { return container.removeFirst() }
    }
    
    func nodeToPath<StateType>(_ node: Node<StateType>) -> [StateType] {
        var path: [StateType] = [node.state]
        var currentNode = node.parent
        // work backwards from end to front
        
        var mazeLocation = currentNode?.state as? ViewController.MazeLocation
        
        while (currentNode != nil || (self.firstGoal.row != mazeLocation?.row && self.firstGoal.col != mazeLocation?.col )){
            print(mazeLocation)
            if let cNode = currentNode {
                path.insert(currentNode!.state, at: 0)
                currentNode = currentNode?.parent
                mazeLocation = currentNode?.state as? ViewController.MazeLocation
            }
            else {
                break
            }
            
        }
        return path
    }
    
    func markMaze(_ maze: inout Maze, path: [MazeLocation], start: MazeLocation,
                  goal: MazeLocation) {
        for ml in path {
            maze[ml.row][ml.col] = .Path
        }
        maze[start.row][start.col] = .Knight
        maze[goal.row][goal.col] = .Goal
    }
    
    

    
    func bfs<StateType: Hashable>(initialState: StateType, goalTestFn: (StateType)
        -> Bool, successorFn: (StateType) -> [StateType]) -> Node<StateType>? {
        // frontier is where we've yet to go
        let frontier: Queue<Node<StateType>> = Queue<Node<StateType>>()
        frontier.push(thing: Node(state: initialState, parent: nil))
        // explored is where we've been
        var explored: Set<StateType> = Set<StateType>()
        explored.insert(initialState)
        // keep going while there is more to explore
        while !frontier.isEmpty {
            
            let currentNode = frontier.pop()
            let currentState = currentNode.state
            print(currentState)
            // if we found the goal, we're done
            if goalTestFn(currentState) {
                print("SOLUTION FOUND")
                return currentNode
                
            }
            // check where we can go next and haven't explored
            for child in successorFn(currentState) where !explored.contains(child) {
                explored.insert(child)
                frontier.push(thing: Node(state: child, parent: currentNode))
            }
        }
        return nil // never found the goal
    }











    
    
    
    
    
    
    
    
    
    
    
    


}

