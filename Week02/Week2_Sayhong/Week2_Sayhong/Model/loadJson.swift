//
//  loadJson.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI

//Json 파일을 로드하는 표준 방식.
func loadJson<T: Decodable>(_ filename: String) -> T { //T -> 타입. 타입과 무관하게 쓸 수 있게 -> 제네릭.
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else { //파일로 불러오기
        fatalError("\(filename) not found.")
    }
    
    do {
        data = try Data(contentsOf: file) //파일 데이터화하기.
    } catch {
        fatalError("Could not load \(filename): \(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data) //객체로 변환하기
    } catch {
        fatalError("Unable to parse \(filename): \(error)")
    }
}

