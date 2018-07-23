

#=============================================================
#2.1 _ 학습하기 전에 알아두면 좋은 내용
#=============================================================
#love 변수에 1을 지정
love <- 1

#love 변수 출력
print(love)

#-------------------------------------------------------------

#=============================================================
#2.2 _ 너는 내가 정의한다 - "<-"
#=============================================================


# 아직 아무것도 설정돼 있지 않은 love 변수를 출력
print(love)

#-------------------------------------------------------------

# love 변수에 1을 지정
love <- 1

# love 값 출력
print(love)

#-------------------------------------------------------------

# 값이 1로 설정된 love 변수에 문자열 지정
love <- "안녕하세요"

# love 값 출력
print(love)

#-------------------------------------------------------------

# love 출력 – 현재는 문자열
print(love)

# 현재 문자열인 love를 함수처럼 사용해 보면 오류가 발생
love("이제 나는 함수가 될 수 있을까?")

# love 변수에 print 함수를 지정
love <- print

# print 함수 대신 love로도 출력 가능
love("이제 나는 함수가 되었다!")

#-------------------------------------------------------------

# 객체 설정
love_num <- 1
love_str <- "안녕하세요"
love_vec <- c(1,1,1,1)
love_fun <- print

# str 함수를 통해 객체의 정보를 확인할 수 있음
# love_num은 숫자 1
str(love_num)

# love_str은 문자 "안녕하세요"
str(love_str)

# love_vec은 길이가 4인 숫자형 벡터/ 값은 1,1,1,1
str(love_vec)

# love_fun은 함수
str(love_fun)

#-------------------------------------------------------------

# B는 A로부터 지정된 객체
A<-1
B<-A
print(A)
print(B)

# A의 값을 변경하더라도 B의 값은 여전히 1이다.
A<-9
print(A)
print(B)

#-------------------------------------------------------------

a <- 1

# print 함수를 사용해 출력
print(a)

# 객체의 이름만 입력해도 출력됨
a

#=============================================================
#2.3 _ 데이터 구조의 기본 - 벡터
#=============================================================

# 1, 2, 3, 4를 요소로 가지는 벡터 생성
vec_t <- c(1,2,3,4)

# 생성된 벡터의 값 확인
vec_t

# 벡터 정보 확인 – 길이가 4인 숫자 벡터 / 값은 1, 2, 3, 4
str(vec_t)

# 벡터의 길이 확인
length(vec_t)

#-------------------------------------------------------------

# 벡터를 생성할 때 문자와 숫자를 함께 사용한다면?
vec_t <- c(1, "hi", 2)

# 생성된 벡터 값 확인
vec_t

# 벡터 정보 확인 – 길이가 3인 문자 벡터 / 값은 "1", "hi", "2"
str(vec_t)

#-------------------------------------------------------------

# 1로 선언
scalar_item <- 1

# 객체 값 출력
scalar_item

# 1을 요소로 가지는 길이가 1인 벡터 선언
vector_item <- c(1)

# scalar_item과 출력 값이 같음
vector_item

# identical은 두 객체가 같은지 확인하는 R의 함수
identical(scalar_item, vector_item)

#-------------------------------------------------------------

# 숫자형 벡터 - 양수, 음수, 소수점 모두 하나의 벡터에 담을 수 있음
numeric_vector <- c( 0.2, -1, 2 , -0.5 )

# 출력
numeric_vector

# numeric_vector의 타입 확인
mode(numeric_vector)

#-------------------------------------------------------------

# 숫자 벡터 선언
n_vector <- c( 1,2,3,4,5,6,7,8,9)
# 최솟값
min(n_vector)
# 최댓값
max(n_vector)
# 평균
mean(n_vector)
# 중간값
median(n_vector)
# 합계
sum(n_vector)

#-------------------------------------------------------------

# Inf 와 NaN이 포함된 벡터 만들기
numeric_vector <- c(1/0, 2/2, -2/2, -1/0 , 0/0)

# 벡터 확인
numeric_vector

#-------------------------------------------------------------

# TRUE, FALSE로 설정
ex_logical_1 <- c(TRUE, FALSE, TRUE, FALSE)
ex_logical_1

# mode 함수를 통해 벡터의 데이터 타입 확인
mode(ex_logical_1)

# T, F로도 설정 가능
ex_logical_2 <- c(T, F, T, F)
ex_logical_2

# mode 함수를 통해 벡터의 데이터 타입 확인
mode(ex_logical_2)

#-------------------------------------------------------------

# 소문자는 오류
ex_logical_3 <- c(true, false, true, false)

# 따옴표를 붙이면 문자열로 인식
ex_logical_4 <- c("TRUE", "FALSE", "TRUE", "FALSE")
ex_logical_4

# mode 함수를 통해 벡터의 타입 확인
mode(ex_logical_4)

#-------------------------------------------------------------

# 논리 벡터 – TRUE, FALSE, T, F 모두 가능
ex_logical <- c(TRUE, T, FALSE, F)
ex_logical

# ! 기호를 이용해 TRUE는 FALSE로, FALSE는 TURE로 변환
!ex_logical

#-------------------------------------------------------------

# as.logical: logical 변수로 형변환
ex_logical <- as.logical(c( 0,-1 , 1 , 100 , -7 ))

# 확인- 0 값만 FALSE로 인식
print(ex_logical)

# as.numeric: 숫자형으로 형변환
# FALSE는 0, TRUE는 1로 변환
as.numeric(ex_logical)

#-------------------------------------------------------------

# 문자열 벡터 생성
v_charater <- c("문자열1", "문자열2", "A", "1")
v_charater

# mode 함수를 통해 데이터 타입 확인
mode(v_charater)

#-------------------------------------------------------------

# 문자 개수 출력
nchar(c("F123", "F124", "F125", "F126"))

# 문자열 자르기 – 두 번째부터 네 번째 문자 사이의 문자열 추출
substr("1234567", 2, 4)
substr(c("F123", "F124", "F125", "F126"), 2, 4)

# 특정 문자로 데이터 나누기 – split에 정의한 구분자를 기준으로 문자열을 나누어 벡터로 반환
strsplit('2014/11/22', split="/")

# 문자열 합치기 – 합칠 때 문자열 사이의 문자는 sep에 정의
# sep을 정의하지 않으면 문자열 사이에 공백을 붙여 합침
paste("50 = ", "30 + ", "20", sep="")

paste("50", "30", "20", sep="*")

# 대문자 변환
toupper("AbCdEfGhIjKlMn")

# 소문자 변환
tolower("AbCdEfGhIjKlMn")

#-------------------------------------------------------------

# 팩터로 변환할 문자 벡터
v_character <- c("사과", "복숭아", "사과", "오렌지", "사과", "오렌지", "복숭아")
v_character

# factor 함수로 팩터를 생성
v_factor <- factor(v_character)
v_factor

#-------------------------------------------------------------

# 팩터 출력
v_factor

# 데이터 타입 확인 – 문자로 출력되나 데이터 타입은 숫자(numeric)
mode(v_factor)

# 객체 정보 확인
str(v_factor)

#-------------------------------------------------------------

# 팩터를 문자 벡터로 변환
v_factor_to_char <- as.character(v_factor)
v_factor_to_char

# 팩터를 숫자 벡터로 변환
v_factor_to_num <- as.numeric(v_factor)
v_factor_to_num

#-------------------------------------------------------------

# 팩터로 변환할 문자 벡터
v_character <- c("사과", "복숭아", "사과", "오렌지", "사과", "오렌지", "복숭아")

# factor 함수로 팩터 객체 생성
v_factor <- factor(v_character, levels=c("사과", "복숭아"))

# 생성된 팩터 출력
v_factor

#-------------------------------------------------------------

# levels 범주 순서 변경 1
v_factor <- factor(v_character, levels=c("사과", "복숭아","오렌지"))
# 생성된 팩터 출력
v_factor

# levels 범주 순서 변경 2
v_factor <- factor(v_character, levels=c("복숭아","오렌지","사과"))
# 생성된 팩터 출력
v_factor

#-------------------------------------------------------------

# 등급을 나타내는 문자 벡터
ex_label <- c("하하", "중하", "중", "중상", "상상")

# 서열형 데이터 팩터 생성
ordered_factor <- factor(ex_label, ordered=T)
ordered_factor

#-------------------------------------------------------------

# levels 입력 항목을 이용해 서열 순으로 범주 순서를 정의
factor(ex_label, levels=c("하하","중하","중","중상","상상"), ordered=T)

#-------------------------------------------------------------

# 숫자 벡터
v_num <- c(1000,2000,1000,2000,3000,2000,3000)

# 숫자 벡터를 팩터로 변환 – 범주가 1000, 2000, 3000인 팩터
v_num_factor <- factor(v_num)
v_num_factor

# 팩터->숫자 벡터로 변환(1000, 2000 등이 아닌 내부 코드 값이 나옴)
as.numeric(v_num_factor)

# 팩터->문자 벡터로 변환
v_char <- as.character(v_num_factor)
v_char
# 문자 벡터-> 숫자 벡터로 변환
v_num <- as.numeric(v_char)
v_num

#-------------------------------------------------------------

ex_trans <- c(1, 0, 1, 0, 0, 0)

# 문자 타입 변환
as.character(ex_trans)

# 논리 타입으로 변환/논리 타입에서는 0은 FALSE, 0이 아닌 것은 TRUE
as.logical(ex_trans)

#-------------------------------------------------------------

# 벡터 생성
t_vector <- c(11, 12, 13, 14, 15, 16, 17, 18, 19, 20)

# t_vector 전체 출력
t_vector

# t_vector의 3번째 요소 선택
t_vector[3]

# 1, 3, 5, 6번째 요소 선택
idx <- c(1, 3, 5, 6)
t_vector[idx]

# 곧바로 t_vector의 1, 3, 5, 6번째 요소 선택
t_vector[c(1, 3, 5, 6)]

#-------------------------------------------------------------

# t_vector
t_vector

# 일부 요소 선택
t_vector[c(1, 3, 5, 6)]

# 출력하는 순서까지 지정 가능
t_vector[c(6, 5, 3, 1)]

#-------------------------------------------------------------

# :를 이용해 연속된 숫자 벡터 생성
seq_vector <- 3:7

# seq_vector 값 확인
seq_vector

#-------------------------------------------------------------

# 50 ~ 100까지 벡터 생성
seq_vector <- 51:100

# 변수 출력
seq_vector

# 30번째 ~ 40번째 요소까지만 출력
seq_vector[30:40]

#-------------------------------------------------------------

# seq 함수
# from: 시작숫자, to : 종료숫자, by : 건너뛸 숫자

# 10 ~ 20까지 2씩 커지는 숫자 생성
seq(from=10, to=20, by=2)

# 20 ~ 10까지 2씩 작아지는 숫자 생성
seq(from=20, to=10, by=-2)

#-------------------------------------------------------------

# 벡터 생성
t_vector <- c(11, 12, 13, 14, 15)

# 3번째 요소 선택
# 선택할 요소의 위치에는 TRUE, 선택하지 않을 요소의 위치에는 FALSE를 지정
logical_idx <- c(F, F, T, F, F)

# TRUE로 설정된 3번째 요소만 출력됨
t_vector[logical_idx]

# 바로 3번째 요소 출력
t_vector[c(F,F,T,F,F)]

# 3, 4번째 요소 출력
t_vector[c(F,F,T,T,F)]

#-------------------------------------------------------------

t_vector

# 논리 연산: 3보다 같거나 작은가?
t_vector <= 3

# 논리 연산: 3보다 큰가?
t_vector > 3

#-------------------------------------------------------------

t_vector

# 3보다 같거나 작은 요소 선택
t_vector[t_vector <= 3]

# 3보다 큰 요소 선택
t_vector[t_vector > 3]

#-------------------------------------------------------------

# 벡터 생성
vector_m <- c(1, 2, 3, 4, 5)
vector_m

# vector_m의 3번째 요소의 값을 10으로 변경
vector_m[3] <- 10
vector_m

# vector_m의 2, 4번째 요소의 값을 9로 변경
vector_m[c(2, 4)] <- 9
vector_m

# 5보다 큰 vector_m의 요소의 값을 모두 3으로 변경
vector_m[vector_m > 5] <- 3
vector_m

# vector_m의 2 ~ 5 번째 요소의 값을 모두 0으로 변경
vector_m[2:5] <- 0
vector_m

#-------------------------------------------------------------

vector_m

# 전체 요소의 값을 1로 설정?
vector_m <- 1

# 결과 확인
vector_m

#-------------------------------------------------------------

# 벡터 생성
vector_m <- c(1, 2, 3, 4, 5)

# 벡터 길이
length(vector_m)

# 요소 각각을 1로 설정
# vector[1:5] <- 1과 같은 것임
vector_m[1:length(vector_m)] <- 1

# 설정한 값 확인
vector_m

#-------------------------------------------------------------

# 벡터 변수 생성
v_add <- c(1, 2, 3, 4, 5)

# 앞에 0 추가하기(0과 v_add를 합쳐서 다시 v_add에 지정)
v_add <- c(0, v_add)

# 추가된 값 확인
v_add

# 앞에 -2, -1 추가
v_add <- c(c(-2, -1), v_add)

# 추가된 값 확인
v_add

# 뒤에 6 추가
v_add <- c(v_add, 6)

# 추가된 값 확인
v_add

# 뒤에 7~10 추가
v_add <- c(v_add, 7:10)

# 추가된 값 확인
v_add

#-------------------------------------------------------------

# 벡터 생성
t_add1 <- c(1, 2, 3)
t_add2 <- c(4, 5, 6)
t_add3 <- c(7, 8, 9)

# 3개의 벡터를 엮어(combine) 하나의 벡터 생성
new_add <- c(t_add1, t_add2, t_add3)

# 결과 확인
new_add

#-------------------------------------------------------------

# 벡터 생성
vector_a <- c("A", "B", "C", "F", "G")
vector_b <- c("D", "E")

# append(원본 벡터, 추가할 벡터, 추가할 위치)
# vector_a의 3번째 요소 뒤에 vector_b를 추가
append(vector_a, vector_b, 3)

# vector_a 출력
vector_a

#-------------------------------------------------------------

# append의 결과를 vector_a에 지정
vector_a <- append(vector_a, vector_b, 3)

# vector_a 출력
vector_a

#-------------------------------------------------------------

t_vector

# 1, 3, 5, 6번째 요소 선택
t_vector[c(1, 3, 5, 6)]

# 1, 3, 5, 6번째 요소를 제외하고 선택
t_vector[-c(1, 3, 5, 6)]

# t_vector의 길이
length(t_vector)

# t_vector 중 맨 마지막 요소를 제외하고 선택
t_vector[-length(t_vector)]

#-------------------------------------------------------------

# 2, 3번째 항목이 TRUE로 설정된 논리 벡터 생성
logical_var <- c(FALSE, TRUE, TRUE, FALSE, FALSE)
logical_var

# 논리 벡터에 ! 기호 적용
!logical_var

# 벡터 생성
v_str <- c("첫째", "둘째", "셋째", "넷째", "다섯째")
v_str

# 두 번째, 세 번째 항목 선택
v_str[logical_var]

# 두 번째, 세 번째 항목 제외
v_str[!logical_var]

#-------------------------------------------------------------

# 벡터 생성
a <- c(1, 2, 3, 4)
b <- c(5, 6, 7, 8)

# 더하기
c <- a+b
c

# 빼기
c <- a-b
c

# 곱하기
c <- a*b
c

#-------------------------------------------------------------

# 서로 길이가 다른 벡터 생성
a <- c(1, 2, 3, 4)
b <- c(5, 6)

# 더하기
c <- a+b
c

# 거꾸로 더해보기 -> a+b와 결과가 같음
c <- b+a
c

# 빼기
c <- a-b
c

# 곱하기
c <- a*b
c

#-------------------------------------------------------------

# 벡터 생성
a <- c(1, 2, 3, 4)

# 벡터에 숫자 2 곱하기(숫자 직접 대입)
c <- a*2
# 계산 결과
c

# 벡터에 숫자 2 곱하기(별도 변수로 대입)
b <- 2
c <- a*b
# 계산 결과
c

# 벡터 길이가 1인 벡터 곱하기
b <- c(2)
c <- a*b
# 계산 결과
c

# 같은 길이의 벡터 곱하기
b <- c(2, 2, 2, 2)
c <- a*b
# 계산결과
c
#-------------------------------------------------------------

# 두 벡터의 길이가 서로 배수인 경우(4는 2의 배수)
a <- c(1, 2, 3, 4)
b <- c(1, 2)

# 경고 없이 계산됨
print(a+b)

# 두 벡터의 길이가 서로 배수가 아닌 경우
a <- c(1, 2, 3, 4)
b <- c(1, 2, 3)

# 계산은 되나 경고 메시지 출력
print(a+b)


#=============================================================
#2.4 _ 여러 데이터 유형을 한 번에 담는다! 데이터프레임
#=============================================================

# 데이터프레임의 열이 될 벡터를 생성
id <- c('F1', 'F2', 'F3')
name <- c('김가수', '박인호', '고소미')
age <- c(32 , 28 , 22 )
isMarried <- c(TRUE , TRUE , FALSE)

# 데이터프레임 생성
df <- data.frame(id, name, age, isMarried)

# 데이터프레임 출력
df

#-------------------------------------------------------------

# 데이터프레임의 구조
str(df)

#-------------------------------------------------------------

# 데이터프레임 생성
df <- data.frame(id, name, age, isMarried, stringsAsFactors=FALSE)

# 타입 확인
str(df)

#-------------------------------------------------------------

# 바로 지정해 데이터프레임 만들기
# data.frame(열 이름=벡터, 열 이름=벡터…)
df <- data.frame(name=c("김가수", "박인호"), age=c(32, 28))

# 출력
df

#-------------------------------------------------------------

# 데이터프레임 출력
df

# 2행 3열의 데이터 출력
df[2, 3]

#-------------------------------------------------------------

# 2, 3행 중 2, 4열 출력
df[c(2,3), c(2,4)]

#-------------------------------------------------------------

# 2, 3열에 대해 전체 행 출력
df[ , c(2,3)]

# 2, 3행에 대해 전체 열 출력
df[c(2,3), ]

#-------------------------------------------------------------

# name과 age 열 출력
df[ , c("name","age")]

#-------------------------------------------------------------

# 출력
df

# name이라는 열 이름으로 접근
df$name

# age라는 열 이름으로 접근
df$age

#-------------------------------------------------------------

# df$age 구조 확인 – 숫자 벡터
str(df$age)

# 합계
sum (df$age)

# 2, 3번째 요소 선택
df$age[2:3]

#-------------------------------------------------------------

iris

#-------------------------------------------------------------

# iris 구조 확인
str(iris)

#-------------------------------------------------------------

# 총 행 수
nrow(iris)

# 총 열 수
ncol(iris)

#-------------------------------------------------------------

# head(데이터프레임명, 보고 싶은 행의 수). 행의 수를 입력하지 않으면 기본적으로 6행을 출력
# 앞의 3줄만 봄
head(iris, 3)

# tail(데이터프레임명, 보고 싶은 행의 수). 행의 수를 입력하지 않으면 기본적으로 6행을 출력
# 뒤의 3줄만 봄
tail(iris, 3)

#-------------------------------------------------------------

summary(iris)

#-------------------------------------------------------------

# Speal.Length의 최솟값 산출
min(Sepal.Length)

#-------------------------------------------------------------

# 최솟값
min(iris$Sepal.Length)

# 최댓값
max(iris$Sepal.Length)

# 중간값
median(iris$Sepal.Length)

# 평균
mean(iris$Sepal.Length)

# 4분위수
quantile(iris$Sepal.Length)

#-------------------------------------------------------------

# 데이터프레임 조회(View의 첫 글자 V는 대문자입니다.)
View(iris)

#-------------------------------------------------------------

# iris에서 Sepal.Length가 7보다 큰 데이터 조회
# (열벡터(select)를 입력하지 않으면 전체 열이 조회됨)
subset(iris, Sepal.Length > 7)

#-------------------------------------------------------------

# Length가 7보다 크고 Length가 6.6보다 같거나 작은 것
subset(iris, Sepal.Length > 7 & Petal.Length <= 6.5)

#-------------------------------------------------------------

# Length가 7보다 크거나 Length가 6.6보다 크거나 같은 것
subset(iris, Sepal.Length > 7 | Petal.Length >= 6.5)

#-------------------------------------------------------------

# Sepal.Length와 species 열만 보기(열 위치로 지정)
subset(iris, Sepal.Length > 7.2 & Petal.Length <= 6.5, c( 1, 5))

# Sepal.Length와 species 열만 보기(열 이름으로 지정)
subset(iris, Sepal.Length > 7.2 & Petal.Length <= 6.5, c( "Sepal.Length", "Species"))

#-------------------------------------------------------------

# Sepal.Length, species 순서로 출력
subset(iris, Sepal.Length > 7.2 & Petal.Length <= 6.5, c( "Sepal.Length", "Species"))

# species, Sepal.Length 순서로 출력
subset(iris, Sepal.Length > 7.2 & Petal.Length <= 6.5, c( "Species", "Sepal.Length"))

#-------------------------------------------------------------

# subset 결괏값 구조
str(subset(iris, Species == "setosa"))

# iris에서 Species 항목의 값이 setosa인 데이터 행의 수
nrow(subset (iris, Species == "setosa"))

# Species 항목의 값이 setosa인 데이터의 요약 정보
summary(subset(iris, Species == "setosa"))

#-------------------------------------------------------------

# 입력 항목명을 명시하지 않고 호출하기 – 입력 항목의 순서가 중요
subset(iris, Sepal.Length == 7.2, c("Species", "Sepal.Length"))

# 입력 변수명을 명시하지 않고 호출하기 - 순서가 맞지 않을 경우 오류 발생
subset(Sepal.Length == 7.2, iris, c("Species", "Sepal.Length"))

# 입력 변수명을 명시하고 호출하기
subset(x=iris, subset=(Sepal.Length == 7.2), select=c("Species", "Sepal.Length"))

# 입력 변수명을 명시하고 호출하기 - 순서 바꿔보기
subset(select=c("Species", "Sepal.Length"), subset=(Sepal.Length == 7.2), x=iris)

#-------------------------------------------------------------

# ex_df를 만들 벡터 생성
name <- c('김가수', '박인호', '어만데', '이기성')
age <- c(23, 28, 15, 22)
weight <- c(67, 75, 73, 80)

# ex_df 생성
ex_df <- data.frame(name, age, weight)

#-------------------------------------------------------------
# ex_df 조회
ex_df

# 별도로 지정하지 않음(전체 출력)
ex_df[ , ]

# 행과 열 이름을 직접 지정
ex_df[c("1","2"), c("name", "weight")]

# 행과 열 위치를 직접 지정(1, 2번째 행, 1, 3번째 열 선택)
ex_df[c(1,2), c(1,3)]

# 보여주고자 하는 위치를 논리 벡터로 직접 지정(선택할 위치에 TRUE)
ex_df[c(T,T,F), c(T,F,T,T)]

#-------------------------------------------------------------

# age 열 조회(열 선택)
ex_df$age

# 나이가 25보다 큰가?(논리연산)
ex_df$age > 25

#-------------------------------------------------------------

# 나이가 25보다 큰 항목 추출(열은 모두 출력)
ex_df[ex_df$age > 25, ]

#-------------------------------------------------------------

# Longley 데이터프레임의 구조
str(longley)

# 여러 조건 식으로 데이터를 추출
longley[longley$GNP > 200 & longley$Population >= 109 & longley$Year > 1960 & longley$Employed > 50, ]

#-------------------------------------------------------------

# 조건 검색 - 명시적으로 데이터프레임명 지정
longley[longley$GNP > 200 & longley$Population >= 109 & longley$Year > 1960 & longley$Employed > 50, ]

# 합계 - 명시적으로 데이터프레임명 지정
sum(longley$GNP + longley$GNP.deflator + longley$Unemployed + longley$Population)

# attach - R객체 탐색 경로에 longley 추가
attach(longley)
# "longley $" 사용하지 않고 조건 검색 가능
longley[GNP > 200 & Population >= 109 & Year > 1960 & Employed > 50, ]
# "longley $" 사용하지 않고 합계 가능
sum(GNP + GNP.deflator + Unemployed + Population)
# detach - R 객체 탐색 경로에 longley 제거
detach(longley)

# detach 이후에는 "longley $"를 명시하지 않으면 오류 발생
longley[GNP > 200 & Population >= 109 & Year > 1960 & Employed > 50, ]

#-------------------------------------------------------------

# 칼럼 두 개 추출 시 데이터 타입 확인
str(longley[ , c("GNP", "Year")])

# 칼럼 한 개 추출 시 데이터 타입 확인
str(longley[ , c("GNP")])

# drop 옵션 사용 시 데이터 타입 확인
str(longley[ , c("GNP"), drop=FALSE])

#-------------------------------------------------------------

# iris 데이터 구조 보기
str(iris)


# subset 이용
subset(iris, Sepal.Length >= 7.6 & Species == "virginica", c ("Species", "Sepal.Length"))


# 데이터프레임 직접 검색
iris[iris$Sepal.Length >= 7.6 & iris$Species == "virginica", c("Species", "Sepal.Length")]

#-------------------------------------------------------------

# 만약 sqldf 패키지가 설치돼 있지 않다면 설치
# install.packages("sqldf")

# sqldf 패키지 로드
library(sqldf)

# SQL 사용
sqldf("select GNP, Year, Employed from longley where GNP > 400")

# SQL 사용
sqldf("select Year, sum(GNP) from longley where Year > 1960 group by Year")

#-------------------------------------------------------------

# 데이터프레임 확인
ex_df

# 1, 2, 4행 선택
ex_df[c(1,2,4), ]

# 행의 위치를 별도 지정
ex_df[c(4,2,1), ]

#-------------------------------------------------------------

# 데이터프레임 확인
ex_df

# 나이
ex_df$age

# order 함수를 이용해 정렬된 요소의 위치 확인
# 3, 4, 1, 2번째 요소의 순서로 값이 큼
order(ex_df$age)

# [] 연산자로 정렬 수행 - 나이를 기준으로 오름차순 정렬
ex_df[order(ex_df$age), ]

# [] 연산자로 정렬 수행 - 나이를 기준으로 내림차순 정렬
ex_df[order(ex_df$age, decreasing=T), ]

#-------------------------------------------------------------

tscore

# order 함수를 통해 점수(score)로 먼저 정렬하고,
# 점수가 동일하면 팀(team)으로 오름차순 정렬된 위치 벡터를 생성
orderIdx <- order(tscore$score, tscore$team, decreasing=F)

# tscore 데이터프레임 정렬
tscore[orderIdx, ]

#-------------------------------------------------------------

# 임의 벡터 생성
alpha <- c('A','C','F','B','E','D')
alpha

# order 함수는 정렬된 위치벡터 산출
order(alpha)
# order 함수를 이용해 alpha 벡터 요소 정렬
alpha[order(alpha)]

# 오름차순 정렬 – 값 자체를 정렬
sort(alpha)
# 내림차순 정렬
sort(alpha, decreasing=T)

#-------------------------------------------------------------

# com_data를 만들 벡터 생성
dept <- c('개발부', '개발부', '개발부', '개발부','영업부', '영업부', '영업부', '영업부')
position <- c('과장', '과장', '차장', '차장','과장', '과장', '차장', '차장')
name <- c('김가윤', '고동산', '박기성', '이소균','황가인', '최유리', '김재석', '유상균')
salary <- c(5400, 5100, 7500, 7300, 4900, 5500, 6000, 6700)
worktime <- c(15, 18, 10, 12, 17, 20, 8, 9)

# com_data 생성
com_data <- data.frame(dept, position, name, salary, worktime)

#-------------------------------------------------------------

com_data

# 부서(dept)별 급여(salary) 평균
aggregate(salary ~ dept, com_data, mean)

# 부서(dept)별 급여(salary) 및 근무시간(worktime) 평균
aggregate(cbind(salary, worktime) ~ dept, com_data, mean)

# 부서(dept) & 직급(position)별 급여(salary) 평균
aggregate(salary ~ dept + position, com_data, mean)

#-------------------------------------------------------------

ex_df

# ex_df의 값을 수정해 ex_df_m 생성
ex_df_m <- edit(ex_df)

#-------------------------------------------------------------

# ex_df 출력
ex_df

# ex_df_m 출력
ex_df_m

#-------------------------------------------------------------

df

# 김가수의 나이는? -> 첫 번째 행의 세 번째 열 데이터
df[1, 3]

# 김가수 나이를 100으로 변경
df[1, 3] <- 100

# 김가수의 나이는?
df[1, 3]

# 변경된 데이터 확인
df

#-------------------------------------------------------------

# 데이터 조회
subset(iris, Species == "virginica" & Petal.Width >= 2.4)

# 데이터프레임에 조건 검색을 통해 직접 값을 변경
iris[iris$Species == "virginica" & iris$Petal.Width >= 2.4, c("Petal.Length")] <- 1

# 데이터 조회해 반영된 값을 확인
subset(iris, Species == "virginica" & Petal.Width >= 2.4)

#-------------------------------------------------------------

# 첫 6행만 봅니다.
head(iris)

# Sepal.Width의 전체 값을 2배로 만듭니다.
iris$Sepal.Width <- iris$Sepal.Width*2

# 변경된 값 확인
head(iris)

#-------------------------------------------------------------

# iris의 첫 6행 확인
head (iris)

# 열 추가
iris$new_column <- "신규열"

# 추가된 열 확인
head(iris)

#-------------------------------------------------------------

# iris의 첫 6행 확인
head(iris)

# new_column 열 삭제
iris$new_column <- NULL

# 열이 삭제된 것을 확인
head(iris)

# iris에서 1, 2, 3열을 삭제한 결과를 new_iris에 저장
new_iris <- iris[ , -c(1, 2, 3)]

# 삭제한 결과가 저장된 데이터프레임 조회
head(new_iris)

# 원본 iris는 변경되지 않았음
head(iris)

# iris에서 직접 열 삭제 – Sepal.Length, Sepal.Width, Petal.Length 열 삭제
iris[ , c(1, 2, 3)] <- list(NULL)

# iris의 첫 6행 확인
head(iris)

#-------------------------------------------------------------

# NA를 포함하는 벡터 생성
ex_na <- c(1, 2, NA, NA, 3)

# NA가 벡터의 요소로 조회됨
print(ex_na)

# sum처리 -> NA도 계산에 포함되기 때문에 결괏값은 NA가 됨(NA + 숫자 = NA)
sum(ex_na)

# NA를 제외하고 계산하려면 별도 옵션을 지정해야 함
sum(ex_na, na.rm=TRUE)

# NULL을 포함하는 벡터 생성
ex_null <- c(1, 2, NULL, NULL, 3)

# NULL은 벡터의 요소에 포함되지 않음
print(ex_null)

# sum 계산 -> 문제없음
sum(ex_null)

#-------------------------------------------------------------

# 3번째 5번째 요소로 NA를 넣음
ex_cc <- c(1, 2, NA, 4, NA)

# NA가 있는 값은 FALSE 반환
complete.cases(ex_cc)

# 데이터프레임 조회 - 2행 name, 4행 id 열에 NA 존재
print(ex_nadf)

# complete.case – 행 단위 검증. 데이터프레임인 경우 한 행의 모든 값에 NA가 없어야 TRUE
# 아래의 결과는 1행과 3행은 NA가 없고, 2행과 4행은 NA가 존재한다는 의미
complete.cases(ex_nadf)

# NA가 없는 행만 검색하기 위해 complete.case를 통해 나온 논리 벡터를 이용
ex_nadf[complete.cases(ex_nadf), ]

# 최초 상태 확인 - 데이터가 많아 최초 6개만 확인
head(iris)

# 데이터프레임 변경
iris$Sepal.Length <- 0
iris$Sepal.Width <- 0
iris$Petal.Length <- NULL
iris$Petal.Width <- NULL

# 값이 0으로 설정되고 칼럼들이 없어짐
head(iris)

# 데이터셋을 다시 로드
data(iris)

# 다시 조회 -> iris는 기본 데이터셋이라 별도 선언 없이 데이터셋명만으로도 로드됨
head(iris)

#-------------------------------------------------------------

# iris 열 이름 조회
colnames(iris)

# 벡터 연산 가능 - 3번째 열 이름 바꾸기
colnames(iris)[3] <- "3th_Column"

# iris 열 이름 조회
colnames(iris)

# iris의 첫 6행 조회
head(iris)

# 벡터를 이용해 다수의 열 이름을 동시에 변경. 단, 벡터의 길이는 열의 개수와 같아야 함
colnames(iris) <- c("꽃받침길이", "꽃받침너비", "꽃잎길이", "꽃잎너비", "종류")

# iris 열 이름 조회
colnames(iris)

# iris의 첫 6행 조회
head(iris)

#-------------------------------------------------------------

# 데이터파일 엑셀(시작하세요_데이터분석withR_데이터셋.xlsx)에서 복사 후 
# 아래 명령어를 실행 해 데이터 프레임 생성 (2.4.6.2_hotel_rooms 시트) 
hotel_rooms <- read.table (file = "clipboard", header=TRUE , sep="\t", stringsAsFactors=FALSE )

# 호텔 객실 정보
hotel_rooms

# hotel_rooms 구조
str(hotel_rooms)

#-------------------------------------------------------------

# 객실 종류 팩터로 변경
hotel_rooms$room_type <- as.factor(hotel_rooms$room_type)

# 객실 번호 문자로 변경
hotel_rooms$room_number <- as.character(hotel_rooms$room_number)

# hotel_rooms 구조
str(hotel_rooms)

#-------------------------------------------------------------

# hotel_rooms 구조
str(hotel_rooms)

# 방 종류별 평균 가격 – 문자형인 경우 수식 계산을 할 수 없음
aggregate(price ~ room_type, hotel_rooms , mean)

# 가격 숫자로 변경
hotel_rooms$price <- as.numeric(hotel_rooms$price)

# hotel_rooms 구조
str(hotel_rooms)

# 방 종류별 평균 가격
aggregate(price ~ room_type, hotel_rooms, mean)

#-------------------------------------------------------------

# ex_df_age를 만들 벡터 생성
id <- c('F1', 'F2', 'F3', 'F4')
name <- c('김가인', '박지성', '고아라', '이승철')
age <- c(24, 32, 18, 40)

# ex_df_age 생성
ex_df_age <- data.frame(id, name, age)

# 사용자의 나이가 있는 데이터프레임
ex_df_age

# ex_df_score를 만들 벡터 생성
id <- c('F2', 'F1', 'F4', 'F3')
name <- c('박지성', '김가인', '이승철', '고아라')
age <- c(95, 100, 56, 73)

# ex_df_score 생성
ex_df_score <- data.frame(id, name, age)

# 사용자의 점수가 있는 데이터프레임
ex_df_score

# cbind – 옆으로 단순 병합
cbind(ex_df_age, ex_df_score)

#-------------------------------------------------------------

# id(id)와 이름(name) 기준으로 두 데이터프레임 결합
merge(ex_df_age, ex_df_score, by=c("id", "name"))


# id(id)만으로 두 데이터프레임 결합
merge(ex_df_age, ex_df_score, by=c("id"))

#-------------------------------------------------------------

# ex_df_age 조회
ex_df_age

# 행을 추가할 데이터프레임 set 생성 – 열 이름을 동일하게 생성
ex_row_add <- data.frame(id="F5", name = "나지용", age=27, score=45)

# 생성된 데이터프레임 확인
ex_row_add

# 두 데이터프레임 행 결합
ex_rbind <- rbind(ex_df_age, ex_row_add)

# 결합 결과 확인
ex_rbind

#=============================================================
#2.5 _ 무엇이든 묶는다! 리스트
#=============================================================

# list에 엮을 객체 만들기
vt_1 <- c(1,2,3,4,5)
vt_2 <- c(T,F,T,T,F,T)
df_1 <- data.frame(name=c("Alice","James","Merry"), age=c(23,41,19))

# 벡터(vt_1, vt_2), 데이터프레임(df_1), 함수(sum)를 엮어 var_list 객체 만들기
var_list <- list(vt_1, vt_2, df_1, sum)

# 생성된 list 확인
var_list

#-------------------------------------------------------------

# list 요소에 이름 지정하기
var_list <- list(v1=vt_1, v2=vt_2, df1=df_1, function1=sum)

# 생성된 list 확인
var_list

#-------------------------------------------------------------

# list 요소 이름 출력
names(var_list)

# list 3번째 요소의 이름 변경
names(var_list)[3] <- "dataframe_1"

# list 요소의 이름 출력
names(var_list)

# 전체 변경
names(var_list) <- c("item1", "item2", "item3", "item4")

# list 요소의 이름 출력
names(var_list)

# 변경된 리스트 확인
var_list

#-------------------------------------------------------------

# 리스트 요소의 이름
names(var_list)

# 리스트 내 요소 개수
length(var_list)

# 리스트 구조 조회
str(var_list)

# 리스트 개요 보기
summary(var_list)

#-------------------------------------------------------------

# 리스트의 첫 번째 요소에 접근?
var_list[1]
# 구조 확인 – 리스트
str(var_list[1])

# 리스트의 첫 번째 요소
var_list[[1]]

# 구조 확인 - 벡터
str(var_list[[1]])

#-------------------------------------------------------------

# 리스트 요소명 확인
names(var_list)

# 순서로 접근
var_list[[2]]

# 이름으로 접근 #방법 1
var_list[["item2"]]

# 이름으로 접근 #방법 2
var_list$item2

#-------------------------------------------------------------

# list 출력
var_list

# 4번째 요소인 sum 함수로 합계를 구함
var_list$item4(c(10, 20, 30, 40))

# sum 함수와 결과가 동일함
sum(c(10,20,30,40))

#-------------------------------------------------------------

# 세 번째 요소 변경
var_list[[3]] <- c(1, 2, 3, 4)
str(var_list)

# 요소명으로 접근한 후 변경 #방법 1
var_list[["item3"]] <- c("A", "B", "C")
str(var_list)

# 요소명으로 접근한 후 변경 #방법 2
var_list$item3 <- c(T, T, F, F, T)
str(var_list)

#-------------------------------------------------------------

# 리스트 객체의 구조 확인
str(var_list)

# item1 삭제
var_list$item1 <- NULL

# 리스트 객체의 구조 확인
str(var_list)

#-------------------------------------------------------------

# 데이터프레임을 new_item라는 이름의 요소로 추가
var_list$new_item <- data.frame(name=c("Alice", "James"), age=c(23, 41))

# 문자열을 new_item_2라는 이름의 요소로 추가
var_list[["new_item_2"]] <- "[[]]를 이용해 새로추가된 요소"

# 추가된 요소 확인
str(var_list)

#-------------------------------------------------------------

# 리스트 생성 - 지역 4일 평균 온도
korea_temp <- list(경기=c(-10, 2, 1, -2), 강원=c(0, -4, -5, -10))
korea_temp

# lapply 함수를 통해 각 지역의 평균 온도 산출 – '경기', '강원' 요소 각각에 mean 함수 적용
result_lapply <- lapply(korea_temp, mean)

# 결과 조회
result_lapply

# lapply 반환 결과 유형 확인 –> 리스트
class(result_lapply)

# sapply 함수를 통해 각 지역의 평균온도 산출
# (mean은 평균값을 구하는 함수로 결괏값이 1개임)
result_sapply <- sapply(korea_temp, mean)

# 결과 조회
result_sapply

# sapply 반환 결과 유형 확인 –> 벡터
class(result_sapply)

#=============================================================
#2.6 _ 나만의 함수 만들기
#=============================================================

# 두 입력 항목을 더해 2를 곱하는 함수 생성
my_fun <- function(i, j){
	k <- (i+j)*2
	return(k)
}

# 생성된 객체의 형식 확인
class(my_fun)

# 함수 실행: (2+3)*2 = 10
my_fun(2, 3)

#-------------------------------------------------------------

# 두 입력 항목을 더해 2를 곱하는 함수 – 객체에 값을 지정해 return을 수행하지 않고 바로 작성
# return 구문이 없을 경우 마지막 구문의 결과를 반환
my_fun <- function(i, j){ (i+j)*2 }

# 함수 실행
my_fun(2, 3)

#-------------------------------------------------------------

# 입력 항목
input <- c(1, 2, 3)

# 함수 생성
my_fun2 <- function(obj){
	obj <- obj*2
	input <- obj # 함수 안에서 계산된 값을 함수 바깥에 있는 input 객체에 지정
	return(obj)
}

# 함수 실행
my_fun2(input)

# 함수 안에서 input 변수를 변경해도 input 객체는 변경되지 않음
input

# 함수 실행 시 결과를 <-로 지정
input <- my_fun2(input)

# 함수 반환 결과 확인
input

#-------------------------------------------------------------

# 입력 항목
input <- c(1,2,3)

# 함수 생성 - 입력받은 객체에 2를 곱한 후 반환
my_fun2 <- function(obj){
	obj <- obj*2 # 입력받은 객체에 2를 곱한 후 자신에게 재지정
	input <<- obj # "<<-" 연산자로 함수 바깥의 객체에 값 지정
	return(obj)
}

# 함수 실행
my_fun2(input)

# 입력 항목 – 함수의 결과를 반환받지 않았으나 input 객체가 변경됨
input

#-------------------------------------------------------------

# 함수 생성 - 80 이상이면 합격 출력
my_fun3 <- function(score){
	if(score >= 80){
		"합격"
	}else{
		"불합격"
	}
}

# 70점일 때
my_fun3(70)

# 90점일 때
my_fun3(90)

#-------------------------------------------------------------

# ifelse
my_fun4 <- function(score){
ifelse(score >= 80, "합격", "불합격")
}

# 70점일 때
my_fun4(70)

# 90점일 때
my_fun4(90)

#-------------------------------------------------------------

# 함수 생성
my_fun5 <- function(score){
	if(score >= 80){
		"합격"
	} else if(score >= 75){ # 80점 이상은 if 절에서 처리됨(75 ~ 80점인 경우 실행)
		"대기"
	} else{
		"불합격"
	}
}

# 70점일 때
my_fun5(70)

# 78점일 때
my_fun5(78)

# 90점일 때
my_fun5(90)

#-------------------------------------------------------------

# 함수 생성 – 입력받은 값에 1씩 더하면서 출력
my_fun6 <- function(num){
	for(x in 1:10){
		print(num + x) # x값이 1, 2, 3, 4, 5 ... 8, 9, 10으로 변경되면서 수행됨
	}
}

# 함수 실행
my_fun6(10)

#=============================================================
#2.7 _ 객체 조회/삭제/저장/불러오기
#=============================================================

# 메모리 상의 객체 조회 -> 현재 객체 없음
ls()

# 벡터 생성
v_vector <- c(1, 2, 3, 4, 5)

# 데이터프레임 생성
v_df <- data.frame(v_vector)

# 메모리 상의 객체 조회 -> 생성된 객체명이 조회됨
ls()

# 변수 파일로 저장
save(v_vector, v_df, file="save_test.rdata")

#-------------------------------------------------------------

# 벡터 조회 – 객체 없음
v_vector

# 저장된 변수 로드
load("save_test.rdata")

# 벡터 조회
v_vector

#-------------------------------------------------------------

# 벡터 생성
v_vector <- c(1, 2, 3, 4, 5)

# 데이터프레임 생성
v_df <- data.frame(v_vector)

# 메모리 상의 객체 조회
ls()

# 객체 전체 저장
save.image("save_test.rdata")

# 메모리 상의 모든 객체를 삭제
rm(list=ls())

# rm 함수로 모든 객체가 삭제되어 v_vector가 없다는 오류가 발생
v_vector

# 저장된 변수 로드
load("save_test.rdata")

# 벡터 조회 – 정상 조회
v_vector

#=============================================================
#2.8 _ 데이터를 R 품에
#=============================================================

# 현재 작업 폴더 확인
getwd()

# 작업 폴더 변경
setwd("c:\\rtest")

# 변경된 작업 폴더 확인
getwd()

#-------------------------------------------------------------

# 작업 폴더 확인
getwd()

# 작업 폴더 내 파일 조회
# 하위 폴더까지 조회하려면 recursive = TRUE 옵션 추가
list.files()

# 파일 존재 여부 확인 - 작업 폴더 내의 파일은 경로 설정을 할 필요가 없음
file.exists("test_data.csv")

# 파일이 없다면 FALSE 출력
file.exists("IT정보호-41.pdf")

# 특정 폴더 내 파일 확인 - 파일명에 경로까지 모두 출력하고 싶다면 full.names = T
dir("c:/rtest")

# 하위 폴더까지 모두 확인하고 싶다면 recursive = TRUE 추가
dir("c:/rtest", recursive=TRUE)

# 별도 경로를 지정하지 않으면 작업 폴더 조회
dir()

#-------------------------------------------------------------

# 파일 상세 정보 출력 - 크기, 폴더 존재 여부, 권한 등
file.info("test_data.csv")

# 여러 개의 파일 리스트도 입력으로 받음 – 작업 폴더 내 파일의 정보 출력
file.info(list.files())

#file.info 반환 결과 구조 확인 -> 데이터프레임
str(file.info(list.files()))

# 작업 폴더 내 파일 정보 중 size와 isdir 조회
f_info <- file.info(list.files())
f_info[ , c("size", "isdir")]

#-------------------------------------------------------------

# 시작하세요_데이터분석withR_데이터셋.xlsx 파일의 "2.8.2_엑셀에서 CSV 파일" sheet 참조

# 첫 줄은 열의 제목(header=TRUE)이고, 구분자를 ","로 사용하는(sep="," ) 파일 불러오기
# 단, 문자열은 자동으로 팩터 변환 하지 않게 함(stringsAsFactors=FALSE)
ex_csv_df <- read.table(file="csv_test.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)

# CSV 파일로부터 생성된 데이터프레임 ex_csv_df 확인
str(ex_csv_df)

# 적재된 데이터 확인
ex_csv_df

#-------------------------------------------------------------

# 문자열 칼럼 중 성별은 범주형 항목이나 현재 문자형임
str(ex_csv_df)

# as.factor를 활용해 팩터 변환
ex_csv_df$성별 <- as.factor(ex_csv_df$성별)

# 팩터로 변환된 결과 확인
str(ex_csv_df)

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치
install.packages("xlsx")

# 패키지 로드
library(xlsx)

# 책에서는 test.xlsx로 표기했지만, 시작하세요_데이터분석withR_데이터셋.xlsx 파일의 "2.4.6.2_hotel_rooms" sheet 참조

# 작업 폴더 내 test.xlsx 파일의 첫 번째 sheet 불러오기
excelTest <- read.xlsx("test.xlsx", 1)

# 불러온 결과 확인
excelTest

#-------------------------------------------------------------

# 시작하세요_데이터분석withR_데이터셋.xlsx 파일의 "2.8.3_클립보드" sheet 참조

# 클립보드로부터 데이터 로드. 엑셀의 경우 구분자는 tab이므로 \t을 지정
ex_csv_df_add <- read.table(file="clipboard", header=TRUE , sep="\t", stringsAsFactors=FALSE)

# 불러온 데이터 확인
ex_csv_df_add

#-------------------------------------------------------------

# 클립보드로부터 데이터 로드
ex_csv_df_add_2 <- read.table(file="clipboard", header=TRUE, sep="$", stringsAsFactors=FALSE)

# 로드된 데이터 확인
ex_csv_df_add_2

#-------------------------------------------------------------

# CSV 파일의 URL
csv_url <- "http://viewportsizes.com/devices.csv"

# CSV 파일 불러오기
csv_df <- read.table(file=csv_url, sep=",", header=T, stringsAsFactors=F)

# 적재된 데이터프레임 확인
str(csv_df)

#-------------------------------------------------------------

# 서울열린데이터광장 홈페이지 주소
url<-"http://openapi.seoul.go.kr:8088"

# 인증키
key<-"6c5172514670617236375773637742"

# paste 함수를 통해 각 항목을 "/"로 연결
api_url <- paste(url, key, "xml", "octastatapi419", "1", "26", sep="/")

# 생성된 Open API 주소
api_url

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치
install.packages("XML")

# 패키지 로드
library(XML)

# Open API 호출 주소를 통해 XML을 불러와 parseXml에 담는다.
parsedXml <- xmlParse(api_url)

# XML 중 실제 데이터가 담긴 row 태그만 데이터프레임으로 변환하기 위해
# getNodeSet 함수를 이용해 row 태그만 골라낸다.
rowXml <- getNodeSet(parsedXml, "//row")

# xmlToDataFrame 함수를 활용해 XML 데이터를 데이터프레임으로 변환
api_data <- xmlToDataFrame(rowXml, stringsAsFactors=F)

# 불러온 데이터 구조 확인
str(api_data)

#-------------------------------------------------------------

# api_data의 3열부터 14열까지 데이터 타입을 숫자 타입으로 변환
for(x in 3:14){
	api_data[ , x] <- as.numeric(api_data[ , x])
}

# 변경된 데이터 구조 확인
str(api_data)

#-------------------------------------------------------------

# 데이터프레임 데이터 확인
ex_csv_df

# 데이터프레임을 파일로 저장하기
write.table(ex_csv_df, file="test_file_save.csv", sep = ",", col.names=TRUE, row.names=TRUE, fileEncoding="utf-8")

#-------------------------------------------------------------

# 데이터프레임을 파일로 저장하기
write.table(ex_csv_df, file="test_file_save.csv", sep = ",", col.names=TRUE, row.names=FALSE, append=FALSE, fileEncoding="utf-8")

#-------------------------------------------------------------

# 기존 파일에 추가할 데이터프레임 확인
ex_csv_df_add

# 기존에 생성된 test_file_save.csv 파일에 ex_csv_df_add 데이터를 추가해 저장하기
write.table(ex_csv_df_add, file="test_file_save.csv", sep=",", col.names=FALSE, row.names=FALSE, append=TRUE, fileEncoding="utf-8")

#=============================================================
#2.9 _ 든든한 패키지 친구들
#=============================================================

# 패키지 설치
install.packages("stringr")


# stringr 패키지의 함수 사용
str_detect(c("hello bebe", "oh happy day"), "b")


# 패키지 로드
library("stringr")

# str_detect(문자열 벡터, 찾는 문자열)
# 문자열 안에 찾는 문자열이 있다면 TRUE, 없다면 FALSE
str_detect(c("hello bebe", "oh happy day"), "b")


# 세션에 로드한 패키지 내리기
detach("package:stringr")

# 다시 실행 -> 세션에서 제거됐으므로 함수 실행 불가
str_detect(c("hello bebe", "oh happy day"), "b")

# 패키지 삭제(uninstall)
remove.packages("stringr")

# 패키지 로드 -> 패키지 자체가 삭제돼 세션에 로드할 수 없음
library("stringr")

#-------------------------------------------------------------

# 설치되지 않은 패키지 함수의 도움말 요청
? str_detect

#-------------------------------------------------------------

# 패키지 설치
install.packages("stringr")

# 패키지 로드
library(stringr)

# 패키지 설치 및 로드 후 함수 도움말 요청
? str_detect

#-------------------------------------------------------------

# 함수명의 일부만 가지고 도움말 찾기
? detect

# ?? 도움말 연산자로 함수명의 일부만 가지고 찾아보기
?? detect

#-------------------------------------------------------------
