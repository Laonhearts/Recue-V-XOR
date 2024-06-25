module main

import os

fn xor_encrypt(message []byte, key byte) []byte {
    encrypted_message := make([]byte, len(message))

    for i, char in range message {
        encrypted_message[i] = char ^ key
    }

    return encrypted_message
}

fn main() {
    // 사용자로부터 입력 받기
    println('암호화할 메시지를 입력하세요:')
    message := os.read_line() or { panic('입력을 읽을 수 없습니다.') }

    // XOR 암호화 키 정의 (임의로 예시로 7을 사용)
    key := byte(7)

    // 문자열을 바이트 배열로 변환
    message_bytes := message.bytes()

    // XOR 암호화 수행
    encrypted_message := xor_encrypt(message_bytes, key)

    // 암호화된 메시지 출력
    println('암호화된 메시지:')
    println(encrypted_message.to_string())
}
