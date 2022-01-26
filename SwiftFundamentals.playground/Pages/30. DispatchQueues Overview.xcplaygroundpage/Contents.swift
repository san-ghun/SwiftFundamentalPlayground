//: [Previous](@previous)

// subject: 30. DispatchQueues Overview
// created by Sanghun Park on 2021/05/28.
// about DispatchQueues: Serial, Concurrent, Async, & Sync
/// [Video](https://www.youtube.com/watch?v=tVJqvPg5i6M)

import Foundation

// 1. Concurrency in Swift

// Quiz) What will the print order be?
///*
let queue = DispatchQueue(label: "io.sanghun.queue")
queue.async {
    print("1")
    queue.sync {
        print("2")
        queue.async {
            print("3")
        }
    }
}
queue.async {
    print("4")
}
queue.async {
    print("5")
}
 
// 1
 
// */


/// ---


// 2. Serial vs. Concurrent

// 1) Serial case
// Serial, FIFO queued up
// Must end before the next thing gets executed
///*
let queue = DispatchQueue(label: "io.sanghun.queue")

queue.async {
    print("Task 1 started")
    print("Task 1 ended")
}
queue.async {
    print("Task 2 started")
    print("Task 2 ended")
}
// */
/*
 Task 1 started
 Task 1 ended
 Task 2 started
 Task 2 ended
 */


// 2) Concurrent case
// Concurrent, basically parallelize
///*
let queue = DispatchQueue(label: "io.sanghun.queue", attributes: .concurrent)

queue.async {
    print("Task 1 started")
    print("Task 1 ended")
}
queue.async {
    print("Task 2 started")
    print("Task 2 ended")
}
// */
/*
 Task 1 started
 Task 2 started
 Task 1 ended
 Task 2 ended
 */


/// ---


// 3. sync vs. async

// 1) sync
// sync, synchronous piece of work block the thread or queue and
// lock it from taking any other work until the work is complete.

let queue = DispatchQueue(label: "io.sanghun.queue", attributes: .concurrent)

queue.sync {
    print("Task 1 started")
    print("Task 1 ended")
}
queue.sync {
    print("Task 2 started")
    print("Task 2 ended")
}

/*
 Task 1 started
 Task 1 ended
 Task 2 started
 Task 2 ended
 */


//: [Next](@next)
