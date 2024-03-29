import Foundation

enum InputError: Error {
    case invalidInput
    case invalidPriceRange
    case invalidQuantityRange
    case invalidItemCountRange
    case invalidTotalPriceRange
}

extension InputError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidInput:
            return "입력 형식이 올바르지 않습니다."
        case .invalidPriceRange:
            return "구매한 물건의 가격은 1부터 1백만 사이의 숫자만 입력해주세요."
        case .invalidQuantityRange:
            return "구매한 개수는 1부터 10 사이의 숫자만 입력해주세요."
        case .invalidItemCountRange:
            return "구매한 물건 종류의 수는 1부터 100 사이의 숫자만 입력해주세요."
        case .invalidTotalPriceRange:
            return "총 금액은 1부터 10억 사이의 숫자만 입력해주세요."
        }
    }
}

struct Item {
    var price: Int
    var quantity: Int
}

struct ReceiptCalculator {
    static func calculateTotal(items: [Item]) -> Int {
        return items.reduce(0) { $0 + $1.price * $1.quantity }
    }
    
    static func isReceiptCorrect(totalPrice: Int, items: [Item]) -> Bool {
        return calculateTotal(items: items) == totalPrice
    }
}

class InputHandler {
    func isValidTotalPrice() throws -> Int {
        guard let readLine = readLine(), let input = Int(readLine) else {
            throw InputError.invalidInput
        }
        
        guard input >= 1 && input <= 1_000_000_000 else {
            throw InputError.invalidTotalPriceRange
        }
        
        return input
    }

    func isValidNumberOfItems() throws -> Int {
        guard let readLine = readLine(), let input = Int(readLine) else {
            throw InputError.invalidInput
        }
        
        guard input >= 1 && input <= 100 else {
            throw InputError.invalidItemCountRange
        }
        
        return input
    }

    func isValidPrice() throws -> Item {
        guard let readLine = readLine()?.split(separator: " ").compactMap({ Int($0) }),
              readLine.count == 2
        else {
            throw InputError.invalidInput
        }
        
        guard readLine[0] >= 1 && readLine[0] <= 1_000_000 else {
            throw InputError.invalidPriceRange
        }
        
        guard readLine[1] >= 1 && readLine[1] <= 10 else {
            throw InputError.invalidQuantityRange
        }
        
        return Item(price: readLine[0], quantity: readLine[1])
    }
}

class ReceiptVerifier {
    func verifyReceiptTotal() {
        let inputHandler = InputHandler()
        do {
            let totalPrice = try inputHandler.isValidTotalPrice()
            let numberOfItems = try inputHandler.isValidNumberOfItems()
            
            var items = [Item]()
            for _ in 0..<numberOfItems {
                let item = try inputHandler.isValidPrice()
                items.append(item)
            }

            print(ReceiptCalculator.isReceiptCorrect(totalPrice: totalPrice, items: items) ? "Yes" : "No")
        } catch {
            print(error.localizedDescription)
        }
    }
}

let receiptVerifier = ReceiptVerifier()
receiptVerifier.verifyReceiptTotal()
