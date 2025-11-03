CREATE TABLE grammar_test (
    id UUID PRIMARY KEY,
    problem TEXT NOT NULL,
    type VARCHAR(50) NOT NULL,
    level VARCHAR(50) NOT NULL
);

COMMENT ON TABLE grammar_test IS '영어 문법 테스트 문제 테이블';
COMMENT ON COLUMN grammar_test.id IS '고유 식별자';
COMMENT ON COLUMN grammar_test.problem IS '문제 내용';
COMMENT ON COLUMN grammar_test.type IS '문제 타입';
COMMENT ON COLUMN grammar_test.level IS '난이도 (A1~C2)';



CREATE TABLE answer (
    id UUID PRIMARY KEY,
    content TEXT NOT NULL,
    correct BOOLEAN NOT NULL,
    grammar_test_id UUID NOT NULL
);

COMMENT ON TABLE answer IS '문법 테스트 문제의 선택지(답변) 테이블';
COMMENT ON COLUMN answer.id IS '고유 식별자';
COMMENT ON COLUMN answer.content IS '답변 내용';
COMMENT ON COLUMN answer.correct IS '정답 여부';
COMMENT ON COLUMN answer.grammar_test_id IS '문법 테스트 문제 참조 키 (GrammarTest)';
