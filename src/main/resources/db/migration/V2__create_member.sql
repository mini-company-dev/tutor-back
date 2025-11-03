CREATE TABLE member (
    id UUID PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    provider VARCHAR(100),
    email VARCHAR(255),
    name VARCHAR(100),
    status VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    picture TEXT
);

COMMENT ON TABLE member IS '회원 정보 테이블';
COMMENT ON COLUMN member.id IS '고유 식별자';
COMMENT ON COLUMN member.username IS '로그인 ID (유니크)';
COMMENT ON COLUMN member.password IS '암호화된 비밀번호';
COMMENT ON COLUMN member.provider IS 'OAuth 제공자 (예: google, github 등)';
COMMENT ON COLUMN member.email IS '이메일 주소';
COMMENT ON COLUMN member.name IS '회원 이름';
COMMENT ON COLUMN member.status IS '회원 상태 (ACTIVE, INACTIVE, BANNED 등)';
COMMENT ON COLUMN member.role IS '회원 권한 (ROLE_STUDENT, ROLE_TUTOR 등)';
COMMENT ON COLUMN member.picture IS '프로필 사진 URL';



CREATE TABLE specialty (
    id UUID PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

COMMENT ON TABLE specialty IS '튜터의 전문분야 정보를 저장하는 테이블';
COMMENT ON COLUMN specialty.id IS '고유 식별자';
COMMENT ON COLUMN specialty.name IS '전문분야 이름 (예: 수학, 영어, 코딩 등)';



CREATE TABLE tutor (
    id UUID PRIMARY KEY,
    member_id UUID NOT NULL,
    bio_video_url TEXT,
    short_bio VARCHAR(255),
    rating INT,
    class_style_file_url TEXT,
    is_active BOOLEAN NOT NULL
);

COMMENT ON TABLE tutor IS '튜터 정보를 저장하는 테이블';
COMMENT ON COLUMN tutor.id IS '고유 식별자';
COMMENT ON COLUMN tutor.member_id IS '튜터 계정에 연결된 회원 정보 (Member)';
COMMENT ON COLUMN tutor.bio_video_url IS '튜터 자기소개 영상 URL';
COMMENT ON COLUMN tutor.short_bio IS '튜터 한 줄 소개 문구';
COMMENT ON COLUMN tutor.rating IS '튜터 평균 평점 (0~5)';
COMMENT ON COLUMN tutor.class_style_file_url IS '튜터의 수업 스타일 설명 파일 경로 (PDF, 이미지 등)';
COMMENT ON COLUMN tutor.is_active IS '튜터 계정 활성화 여부';



CREATE TABLE tutor_specialty (
    id UUID PRIMARY KEY,
    tutor_id UUID NOT NULL,
    specialty_id UUID NOT NULL
);

COMMENT ON TABLE tutor_specialty IS '튜터와 전문분야 간의 연결 정보 (N:N 관계 매핑용)';
COMMENT ON COLUMN tutor_specialty.id IS '고유 식별자';
COMMENT ON COLUMN tutor_specialty.tutor_id IS '튜터 식별자 (Tutor 참조)';
COMMENT ON COLUMN tutor_specialty.specialty_id IS '전문분야 식별자 (Specialty 참조)';



CREATE TABLE tutor_tags (
    tutor_id UUID NOT NULL,
    tag VARCHAR(255) NOT NULL
);

COMMENT ON TABLE tutor_tags IS '튜터의 주요 태그 목록';
COMMENT ON COLUMN tutor_tags.tutor_id IS '튜터 식별자 (Tutor 참조)';
COMMENT ON COLUMN tutor_tags.tag IS '튜터의 태그 이름';



CREATE TABLE student (
    id UUID PRIMARY KEY,
    tutor_id UUID
);

COMMENT ON TABLE student IS '튜터가 담당하는 학생 정보';
COMMENT ON COLUMN student.id IS '고유 식별자';
COMMENT ON COLUMN student.tutor_id IS '담당 튜터 참조 키';
