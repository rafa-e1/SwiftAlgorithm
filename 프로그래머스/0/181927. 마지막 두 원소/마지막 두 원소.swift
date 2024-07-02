import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    var updated_list = num_list
    let last_element = num_list[num_list.count - 1]
    let second_last_element = num_list[num_list.count - 2]
    
    if last_element > second_last_element {
        updated_list.append(last_element - second_last_element)
    } else {
        updated_list.append(last_element * 2)
    }
    
    return updated_list
}