
-- REPLACE 함수: 문자열에서 특정 문자를 다른 문자로 대체
SELECT REPLACE('Hello, World!', 'Hello', 'Hi') AS replaced_text FROM DUAL;

-- CONCAT 함수: 문자열을 연결
SELECT 'Hello ' || 'World!' AS concatenated_text FROM DUAL;

-- LOWER 함수: 문자열을 소문자로 변환
SELECT LOWER('Hello World') AS lower_text FROM DUAL;

-- UPPER 함수: 문자열을 대문자로 변환
SELECT UPPER('Hello World') AS upper_text FROM DUAL;

-- INITCAP 함수: 각 단어의 첫 글자를 대문자로 변환
SELECT INITCAP('hello world') AS initcap_text FROM DUAL;

-- SUBSTR 함수: 문자열의 일부분 추출
SELECT SUBSTR('Hello, World!', 1, 5) AS substring_text FROM DUAL;

-- TRIM 함수: 문자열의 양쪽 공백 제거
SELECT TRIM(' ' FROM '   Hello, World!   ') AS trimmed_text FROM DUAL;

-- LTRIM 함수: 문자열의 왼쪽 공백 제거
SELECT LTRIM('   Hello, World!   ') AS left_trimmed_text FROM DUAL;

-- RTRIM 함수: 문자열의 오른쪽 공백 제거
SELECT RTRIM('   Hello, World!   ') AS right_trimmed_text FROM DUAL;

-- INSTR 함수: 문자열에서 특정 문자열의 위치 찾기
SELECT INSTR('Hello, World!', 'World') AS position FROM DUAL;

-- LENGTHB 함수: 문자열의 바이트 수 구하기
SELECT LENGTHB('헬로우 월드!') AS byte_length FROM DUAL;

-- LENGTH 함수: 문자열의 문자 수 구하기
SELECT LENGTH('Hello, World!') AS char_length FROM DUAL;

-- LPAD 함수: 문자열을 왼쪽으로 패딩
SELECT LPAD('5', 4, '0') AS left_padded_text FROM DUAL;

-- RPAD 함수: 문자열을 오른쪽으로 패딩
SELECT RPAD('5', 4, '0') AS right_padded_text FROM DUAL;


