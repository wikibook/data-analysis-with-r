
#=============================================================
#5.1 _ A학원은 성적 향상에 도움이 됐을까?
#=============================================================

# 학원에 다니기 전의 점수
before_study <- c(34,76,76,63,73,75,67,78,81,53,58,81,77,80,43,65,76,63,54,64,85,54,70,71,71,55,40,78,76,100,51,93,64,42,63,61,82,67,98,59,63,84,50,67,80,83,66,86,57,48)

# 학원을 다닌 후의 점수
after_study <- c(74,87,89,98,65,82,70,70,70,84,56,76,72,69,73,61,83,82,89,75,48,72,80,66,82,71,49,54,70,65,74,63,65,101,82,75,62,83,90,76,87,90,78,63,59,79,74,65,77,74)

# boxplot 비교
boxplot(before_study, after_study, names=c("수강전", "수강후"))

#-------------------------------------------------------------

# 항목 수가 30개 미만인 벡터 데이터 생성
shapiro_test_vector <- c(74, 87, 89, 98, 65, 82, 70, 70, 70)

# Shapiro-Wilk 검정
shapiro.test(shapiro_test_vector)

#-------------------------------------------------------------

# sample vector1
var_test_vector1 <- c(75,67,78,81,53,71,71,55,40,78,76,42,67,98,59,63,84,50,67,80,83)

# sample vector2
var_test_vector2 <- c(58,81,77,80,76,63,54,64,85,54,70,71,71,55,40,78,76,100,51,42,63,61,82,57,48)

# 분산이 같은지 확인
var.test(var_test_vector1, var_test_vector2)

#-------------------------------------------------------------

# 학원에 다니기 전의 학생 점수
before_study <- c(34,76,76,63,73,75,67,78,81,53,58,81,77,80,43,65,76,63,54,64,85,54,70,71,71,55,40,78,76,100,51,93,64,42,63,61,82,67,98,59,63,84,50,67,80,83,66,86,57,48)

# 학원에 다닌 후의 학생 점수
after_study <- c(74,87,89,98,65,82,70,70,70,84,56,76,72,69,73,61,83,82,89,75,48,72,80,66,82,71,49,54,70,65,74,63,65,101,82,75,62,83,90,76,87,90,78,63,59,79,74,65,77,74)

# t-검정 수행
t.test(before_study, after_study, paired=TRUE)

#-------------------------------------------------------------

# t-검정 수행
t.test(before_study, after_study, paired=TRUE, alternative="less")

#-------------------------------------------------------------

# t-검정 수행
t.test(before_study, after_study, paired=TRUE, alternative="greater")

#=============================================================
#5.2 _ 정수기 AS기사는 몇 명 정도가 적당할까?
#=============================================================

# 데이터파일 엑셀(시작하세요_데이터분석withR_데이터셋.xlsx)에서 "5.2_purifier_df" Sheet 복사 후 
# 아래 명령어를 실행 해 데이터 프레임 생성  
purifier_df <- read.table(file="clipboard", header=TRUE, sep="\t", stringsAsFactors=TRUE)

#-------------------------------------------------------------

# 클립보드에 복사한 데이터를 데이터프레임에 로드
purifier_df <- read.table(file="clipboard", header=TRUE, sep="\t", stringsAsFactors=TRUE)

# 로드된 데이터 확인
str(purifier_df)

#-------------------------------------------------------------

# x축 총 정수기 대여 수, y축 AS 소요시간
plot(purifier_df$purifier, purifier_df$as_time, xlab="총정수기대여수", ylab="AS시간")

#-------------------------------------------------------------

# x축 노후 정수기 대여 수, y축 AS 소요시간
plot(purifier_df$old_purifier, purifier_df$as_time, xlab="노후 정수기대여수", ylab="AS시간")

#-------------------------------------------------------------

# 총 정수기 대여 수, AS 소요시간 상관계수
cor(purifier_df$purifier, purifier_df$as_time)

# 노후 정수기 대여 수, AS 소요시간 상관계수
cor(purifier_df$old_purifier, purifier_df$as_time)

#-------------------------------------------------------------

# cars 데이터 확인
# speed: 차속도(단위 mi/h), dist: 제동거리(단위: feet)
str(cars)

# "차속도"에 따른 "제동거리" 회귀분석
lm_result <- lm(formula=dist~speed, data=cars)

#-------------------------------------------------------------

# 회귀분석 결과 확인 - summary 함수를 통해 확인
summary(lm_result)

#-------------------------------------------------------------

# "차속도"에 따른 "제동거리" 회귀분석
lm_result <- lm(formula=dist~speed, data=cars)

# 회귀모델 방정식의 기울기와 절편 조회
coef(lm_result)

# 신뢰구간별 기울기와 절편 조회
confint(lm_result)

# 잔차제곱합 - 모델 간 평가 시 사용(작을수록 좋은 모델)
deviance(lm_result)

# 회귀분석 도출에 사용된 독립변수를 가지고 산출한 예측값
fitted(lm_result)

# fitted와 실제 종속변수 값과의 차이(잔차)
residuals(lm_result)

#-------------------------------------------------------------

# plot(x축vector, y축vector)
plot(cars$speed, cars$dist)

#-------------------------------------------------------------

# "차속도"에 따른 "제동거리" 회귀분석
lm_result <- lm(formula=dist~speed, data=cars)

# 회귀모델 방정식 선 그리기
abline(lm_result)

#-------------------------------------------------------------

# 가로 2, 세로 2개의 그래프를 한 번에 그리도록 설정
par(mfrow=c(2, 2))

# 회귀분석 결과 그래프 출력
plot(lm_result)

#-------------------------------------------------------------

# "차속도"에 따른 "제동거리" 회귀분석
lm_result <- lm(formula=dist~speed, data=cars)

# 예측할 독립변수 데이터프레임 생성
# 데이터프레임을 생성할 때는 회귀분석 시 사용한 독립변수명과 동일하게 칼럼명을 생성
speed <- c(50, 60, 70, 80, 90, 100)
df_input <- data.frame(speed)

# 입력값 확인
df_input

# 예측 – 점 추정 방식(interval 옵션을 생략하면 점 추정 방식을 적용)
predict(lm_result, df_input)

#-------------------------------------------------------------

# predict 결괏값 SET
predict_dist <- predict(lm_result, df_input)

# predict 결괏값 구조 확인 -> 숫자로 된 1차 배열
str(predict_dist)

# cbind를 이용해 연결(두 개의 데이터프레임을 단순 가로로 연결)
cbind(df_input, predict_dist)

#-------------------------------------------------------------

# 모델계수에 대한 불확실성을 감안한 구간 추정(confidence) / 신뢰구간 95%
predict_dist <- predict(lm_result, df_input, interval="confidence", level=0.95)

# 예측 결과
predict_dist

# 입력값과 함께 보기
cbind(df_input, predict_dist)

#-------------------------------------------------------------

# 모델계수에 대한 불확실성 + 결괏값에 대한 오차를 감안한 구간 추정 / 신뢰구간 95%
predict_dist <- predict(lm_result, df_input, interval="prediction", level=0.95)

# 입력값과 함께 보기
cbind(df_input, predict_dist)

#-------------------------------------------------------------

# 정수기 데이터프레임
# purifier: 전월 정수기 총 대여 수
# old_purifier: 전월 10년 이상 노후 정수기 총 대여 수
# as_time: 당월 AS에 소요된 시간
summary(purifier_df)

#-------------------------------------------------------------

# 전월 정수기 총 대여 수 vs. 10년 이상 정수기 상관성 분석
cor(purifier_df$purifier, purifier_df$old_purifier)

#-------------------------------------------------------------

# 10년 미만 정수기 = 총 대여 수 - 10년 이상 정수기
# 10년 미만 정수기 vs. 10년 이상 정수기 상관성 분석
cor((purifier_df$purifier - purifier_df$old_purifier), purifier_df$old_purifier)

#-------------------------------------------------------------

# 정수기 데이터프레임 확인
str(purifier_df)

# 10년 미만 정수기 대여 수(new_purifier) 추가 (총 대여 수 - 10년 이상 정수기)
purifier_df$new_purifier <- purifier_df$purifier - purifier_df$old_purifier

# 정수기 데이터프레임 확인
str(purifier_df)

#-------------------------------------------------------------

# 회귀분석 수행(lm)
# 종속변수: AS시간(as_time)
# 독립변수: 10년 미만 정수기(new_purifier), 10년 이상 정수기(old_purifier)
lm_result <- lm(as_time ~ new_purifier + old_purifier, data=purifier_df)

#-------------------------------------------------------------

# 결괏값 확인
summary(lm_result)

#-------------------------------------------------------------

# 예측할 독립변수 값 설정(데이터프레임)
input_predict <- data.frame(new_purifier=300000, old_purifier=70000)

# 예측값 저장
predict_as_time <- predict(lm_result, input_predict)

# 예측값 출력
predict_as_time

# AS기사 1명이 한 달간 처리하는 AS시간 = 8시간 * 20일
predict_as_time /(8*20)

#-------------------------------------------------------------

# 구간 추정
predict_as_time <- predict(lm_result, input_predict, interval="confidence", level=0.95)

# 익월 AS시간이 '43,414시간' ~ '43,824시간'이 될 가능성을 95%로 예측
predict_as_time

#=============================================================
#5.3 _ 이 사과는 품종이 뭐지?
#=============================================================

# 데이터파일 엑셀(시작하세요_데이터분석withR_데이터셋.xlsx)에서 "5.3_apple_df" Sheet 복사 후 
# 아래 명령어를 실행 해 데이터 프레임 생성  
apple_df <- read.table(file="clipboard", header=TRUE, sep="\t", stringsAsFactors=TRUE )

#-------------------------------------------------------------

# 클립보드에 담긴 내역을 데이터프레임으로 변환
apple_df <- read.table(file="clipboard", header=TRUE, sep="\t", stringsAsFactors=TRUE )

# 생성된 데이터프레임 확인
summary(apple_df)

# apple_df 구조 보기
str(apple_df)

#-------------------------------------------------------------

# 품종별 무게 분포
boxplot(weight ~ model, data=apple_df, ylab="무게")

# 품종별 당도 분포
boxplot(sugar ~ model, data=apple_df, ylab="당도")

# 품종별 산도 분포
boxplot(acid ~ model, data=apple_df, ylab="산도")

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치
install.packages("ggplot2")

# 패키지 로드
library("ggplot2")

# ggplot 데이터 영역 설정
# 색상별 사과 개수를 bar로 표현하고 bar 안의 색상은 사과 품종으로 구분(fill)
k <- ggplot(apple_df, aes(factor(color), fill=factor(model)))

# bar plot으로 표현
k + geom_bar()

#-------------------------------------------------------------

# iris 데이터 구조
# 꽃 종류(Species)
# 꽃받침의 길이와 폭(Sepal.Length, Sepal.Width)
# 꽃잎의 길이와 폭(Petal.Length, Petal.Width)
str(iris)

# 팩터 레벨 확인(꽃 종류)
levels(iris$Species)

#-------------------------------------------------------------

# 데이터 총 건수
nrow(iris)

# 꽃 종류별 개수
table(iris$Species)

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치
install.packages("caret")

# 패키지 로드
library(caret)

# createDataPartition을 활용해 추출할 위치 정보를 벡터로 반환받음(list=FALSE)
# iris$Species 기준으로 각 종류별로 80%씩 도출
iris_row_idx <- createDataPartition(iris$Species, p=0.8, list=FALSE)

# 결괏값 확인(데이터프레임에서 추출할 행 번호를 얻음)
str(iris_row_idx)

# 추출한 위치 정보를 활용해 iris 데이터셋에서 훈련 데이터 추출
iris_train_data <- iris[iris_row_idx, ]

# 추출한 iris_train_data 확인
str(iris_train_data)

# iris_train_data의 꽃 종류별 데이터 수 확인
table(iris_train_data$Species)

#-------------------------------------------------------------

# 테스트 데이터 추출(iris_row_idx를 제외한 행 데이터 추출)
# 벡터 내 존재하는 인덱스를 제외하라는 의미는 "-" 기호를 이용함
iris_test_data <- iris[-iris_row_idx, ]

# iris_train_data 확인
str(iris_test_data)

# 테스트 데이터 확인(꽃 종류별로 균일하게 10개씩 총 30건을 추출함)
table(iris_test_data$Species)

#-------------------------------------------------------------

# 훈련 데이터 확인
summary(iris_train_data)

# 테스트 데이터 확인
summary(iris_test_data)

# 최초 실행 시 패키지 설치
install.packages("rpart")

# 패키지 로드
library(rpart)

#분류분석 - rpart 함수 실행
#iris_train_data의 모든 항목을 넣기 위해 "." 사용
#Species~. (의미: Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width)
iris_rpart_result <- rpart(Species~., data=iris_train_data, control=rpart.control(minsplit=2))

#-------------------------------------------------------------

# 분류분석 결괏값 출력
iris_rpart_result

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치
install.packages("rpart.plot")

# rpart.plot 패키지 로드
library(rpart.plot)

# 의사결정 트리 그래프 출력
rpart.plot(iris_rpart_result)

#-------------------------------------------------------------

# CP 값 조회
iris_rpart_result$cptable

#-------------------------------------------------------------

# 가지치기
iris_prune_tree <- prune(iris_rpart_result, cp=0.0125)

# Decision Tree 그리기
rpart.plot(iris_prune_tree)

#-------------------------------------------------------------

# 테스트 데이터 확인 - 훈련 데이터와 칼럼명이 같아야 함(단 종속변수 칼럼은 없어도 됨)
str(iris_test_data)

# predict 함수 실행
predict(iris_rpart_result, iris_test_data, type="class")

#-------------------------------------------------------------

# 실제 값과 예상 값을 한눈에 볼 수 있게 데이터프레임 만들기
# actual: 실제 값, expect: 예상 값
actual <- iris_test_data$Species
expect <- predict(iris_rpart_result, iris_test_data, type="class")

# 데이터프레임 만들기
iris_predict_df <- data.frame(actual, expect)

# 결괏값 확인
iris_predict_df

#-------------------------------------------------------------

# 혼동행렬 만들기
table(iris_predict_df)

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치
install.packages("caret")

# 패키지 로드
library(caret)

# confusionMatrix 수행
confusionMatrix(expect, actual, mode="everything")

#-------------------------------------------------------------

# 사과 데이터
# weight: 무게, sugar: 당도, acid: 산도, color: 색상
summary(apple_df)

#-------------------------------------------------------------

# 패키지 로드(최초 실행 시 패키지 설치 필요)
library(caret)

# 훈련 데이터(전체 중 80% 사용)
apple_train_idx <- createDataPartition(apple_df$model, p=0.8, list =FALSE)

# 총 데이터 개수
nrow(apple_df)

# 훈련 데이터 추출할 인덱스 개수 확인
nrow(apple_train_idx)

# 훈련 데이터 추출
apple_train_df <- apple_df[apple_train_idx, ]

# 테스트 데이터 추출
apple_test_df <- apple_df[-apple_train_idx, ]

#-------------------------------------------------------------

# rpart 패키지 로드(최초 실행 시 패키지 설치 필요)
library(rpart)

# 분류분석 - rpart 함수 실행
apple_rpart_result <- rpart(model~., data=apple_train_df, control=rpart.control(minsplit=2))

# rpart.plot 패키지 로드(최초 실행 시 패키지 설치 필요)
library(rpart.plot)

# 의사결정 트리 그리기
rpart.plot(apple_rpart_result)

#-------------------------------------------------------------

# 실제 값과 예상 값을 한눈에 볼 수 있게 데이터프레임 만들기
# actual: 실제 값, expect: 예상 값
actual <- apple_test_df$model
expect <- predict(apple_rpart_result, apple_test_df, type="class")

# 라이브러리 로드(최초 실행 시 패키지 설치 필요)
library(caret)

# confusionMatrix 실행
confusionMatrix(expect, actual, mode="everything")

#-------------------------------------------------------------

# cp table 조회
apple_rpart_result$cptable

# 가지치기 - 오류율이 6%로 높아지지만, nsplit이 4인 cp값 적용
library(rpart.plot)
apple_prune_tree <- prune(apple_rpart_result, cp=0.0625)

# 가지치기 후 모델 확인
rpart.plot(apple_prune_tree)

#-------------------------------------------------------------

# actual: 실제값, expect: 예상값
actual <- apple_test_df$model
expect <- predict(apple_prune_tree, apple_test_df, type="class")

# 라이브러리 로드
library(caret)

# confusionMatrix
confusionMatrix(expect, actual, mode="everything")

#=============================================================
#5.4 _ 사과 품종을 직접 정해 본다면?
#=============================================================

# 사과 정보
str(apple_df)

# 홍색 사과 추출: 모델(model, 1열)과 색상(color, 5열)은 제외
hong_apple <- apple_df[apple_df$color == '홍색', 2:4]

# 홍색 사과 개수
nrow(hong_apple)

# 적색 사과 추출: 모델(model, 1열)과 색상(color, 5열)은 제외
juk_apple <- apple_df[apple_df$color == '적색', 2:4]

# 적색 사과 개수
nrow(juk_apple)

#-------------------------------------------------------------

# 홍색 사과의 항목별 산점도 출력
plot(hong_apple)

#-------------------------------------------------------------

# 홍색 사과 중 산도가 0.36 미만 무게 350g 미만인 사과를 별도 추출
hong_apple2 <- hong_apple[hong_apple$acid < 0.36 & hong_apple$weight < 350, ]

# 산점도 출력
plot(hong_apple2)

#-------------------------------------------------------------

# 당도와 산도 간의 관계 보기
plot(hong_apple2$acid, hong_apple2$sugar, ylab="sugar", xlab="acid")

#-------------------------------------------------------------

# 간단한 예제 데이터 만들기
x <- c(10, 11, 12, 10, 11, 12, 20, 21, 22, 20, 21, 22)
y <- c(4000, 3900, 4000, 1000, 800, 1000, 4000, 3900, 4000, 1000, 800, 1000)

#-------------------------------------------------------------
# 데이터프레임 생성
simpleSquare <- data.frame(x,y)

# 생성된 데이터 확인
simpleSquare

#-------------------------------------------------------------

# 데이터 표준화(평균 0, 표준편차 1인 데이터로 변환)
ss_scaled <- scale(simpleSquare)
ss_scaled

# 표준화된 데이터 확인
summary(ss_scaled)

# 표준화된 항목의 표준편차 확인
sd(ss_scaled[ , 'x'])
sd(ss_scaled[ , 'y'])

#-------------------------------------------------------------

# 산점도를 그릴 공간 확보(type 값이 "n"인 경우 그래프 바탕만 만듬)
plot(ss_scaled, type="n")

# 각 개체의 행 이름으로 위치를 표시
text(ss_scaled)

#-------------------------------------------------------------

# ss_scaled의 거리행렬 생성(거리를 구하는 방법(method)을 지정하지 않을 경우 유클리디안 거리로 계산)
ss_scaled_dist <- dist(ss_scaled)

# 생성된 거리행렬 확인
ss_scaled_dist

# 가장 가까운 거리
min(ss_scaled_dist)

# 가장 먼 거리
max(ss_scaled_dist)

#-------------------------------------------------------------

# 계층적 군집분석 실행(기본값: 최장연결법)
result_hclust <- hclust(ss_scaled_dist)

# 군집분석 결과
result_hclust

#-------------------------------------------------------------

# 덴드로그램 그리기
plot(result_hclust)

#-------------------------------------------------------------

# 군집분석 결과
result_hclust

# 2개 군집으로 나눌 때
cutree(result_hclust, k=2)

# 3개 군집으로 나눌 때
cutree(result_hclust, k=3)

# 4개 군집으로 나눌 때
cutree(result_hclust, k=4)

# 5개 군집으로 나눌 때
cutree(result_hclust, k=5)

#-------------------------------------------------------------

# 군집결과 저장
groups2 <- cutree(result_hclust, k=2)
groups3 <- cutree(result_hclust, k=3)
groups4 <- cutree(result_hclust, k=4)
groups5 <- cutree(result_hclust, k=5)

# 그래프를 2행 2열로 한 화면에 함께 그리기 위해 설정
par(mfrow=c(2, 2))

# 각 군집 수별 산점도 그리기(pch: 점 모양, cex: 크기, col: 색상)
# col=groups: 군집을 색상으로 구분함
plot(ss_scaled, pch=16, cex=2, col=groups2, main="2개그룹")
plot(ss_scaled, pch=16, cex=2, col=groups3, main="3개그룹")
plot(ss_scaled, pch=16, cex=2, col=groups4, main="4개그룹")
plot(ss_scaled, pch=16, cex=2, col=groups5, main="5개그룹")

#-------------------------------------------------------------

# 최초 사용 시 패키지 설치 필요
install.packages("cluster")
# cluster 패키지 로드
library("cluster")

# pam 알고리즘으로 군집분석 수행(군집 수: 4개)
pam_result <- pam(simpleSquare, k=4, stand=T)

# 군집의 중심이 되는 개체
pam_result$medoids

# 군집 결과
pam_result$clustering

#-------------------------------------------------------------

# 군집 결과 산점도
plot(simpleSquare, pch=16, cex=2, col=pam_result$clustering, main="4개그룹")

# 군집 중심을 + 기호로 표시(pch=3)
points(pam_result$medoids, pch=3, cex=3)

#-------------------------------------------------------------

# 패키지가 설치돼 있지 않다면 설치
install.packages("rlang")
install.packages("factoextra")

# fviz_nbclust를 실행하기 위해 로드
library(factoextra)

# pam을 실행하기 위해 로드
library(cluster)

# pam 알고리즘을 이용해 1 ~ 8개까지 군집을 구한 결과를 가지고 Elbow Method 그리기
fviz_nbclust(scale(simpleSquare), pam, method="wss", k.max=8)

#-------------------------------------------------------------

# pam 알고리즘을 이용해 1 ~ 8개까지 군집을 구한 결과를 기반으로 실루엣 그래프 그리기
fviz_nbclust(scale(simpleSquare), pam, method="silhouette", k.max=8)

#-------------------------------------------------------------

# 사과 데이터 정보
summary(apple_df)

#-------------------------------------------------------------

# 군집분석을 위해 기존 정의된 model 항목은 제외
apple_df_without_model <- apple_df[ , c(2:5)]

# model 항목이 제거된 데이터 확인
summary(apple_df_without_model)

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치
install.packages("clustMixType")

# 패키지 로드
library(clustMixType)

# kproto 함수 실행(2개 군집)
kproto_result <- kproto(apple_df_without_model, 2)

#-------------------------------------------------------------

# kproto 함수 결과 확인
str(kproto_result)

# 2개의 군집으로 나눈 결과
kproto_result$cluster

# 2개의 군집으로 나눴을 때 군집 내의 편차 제곱의 합
kproto_result$tot.withinss

#-------------------------------------------------------------

# 군집 개수에 따른 wss(within group sum of squares)를 저장할 벡터 선언
wss <- 0

# 군집 개수 1 ~ 10개까지 수행해 wss 저장
for(i in 1:10)
{
	kproto_result <- kproto( apple_df_without_model, i)
	wss[i] <- kproto_result$tot.withinss
}

# 그래프 그리기(type=b: 선과 점을 동시에 표현)
plot(wss, type="b")

#-------------------------------------------------------------

# 4개의 군집으로 나누기
cluster_result <- kproto(apple_df_without_model, 4)

# 군집 결과
cluster_result$cluster

# 군집별 사과 개수
table(cluster_result$cluster)

#-------------------------------------------------------------

# 새로 나눠진 사과 품종
cluster_result$cluster

# 실제 사과 품종
apple_df[ , "model"]

# 실제 사과 품종 vs. 새로 나눠진 사과 품종
table(cluster_result$cluster, apple_df[ , "model"])

#-------------------------------------------------------------

# 항목별 군집 간 차이 확인하기
# clprofiles(kproto 분석 결과, 군집분석 시 사용한 데이터)
clprofiles(cluster_result, apple_df_without_model)

#=============================================================
#5.5 _ 배낭여행과 연관된 검색어는 뭘까?
#=============================================================

# 검색어를 리스트로 변환(고객별 검색어는 벡터, 벡터들을 리스트로 묶음)
searchL <- list(
    c("동남아", "푸켓", "수영복", "유심", "패키지", "가족여행", "자유여행", "리조트", "베트남")
  , c("가족여행", "패키지", "유럽", "푸켓", "자유여행", "환율", "신혼여행", "신발사이즈표")
  , c("보라카이", "신혼여행", "날씨", "환율", "비행기표", "풀빌라", "시차")
  , c("패키지", "동남아", "가족여행", "휴양지", "여행지추천", "특가")
  , c("일본", "번역기", "후쿠오카", "온천", "가족여행", "리조트", "포켓와이파이")
  , c("몰디브", "신혼여행", "항공권", "동남아", "비행시간", "숙소", "비자", "발리", "풀빌라")
  , c("호텔", "동남아", "세부", "호핑투어", "리조트", "신혼여행", "풀빌라", "필리핀")
  , c("푸켓", "풀빌라", "여행", "신혼여행", "자유여행", "와이파이", "코타키나발루")
  , c("동남아", "보홀", "보라카이", "팔라완", "가족여행", "스쿠버다이빙", "여행책")
  , c("푸켓", "가족여행", "보라카이", "동남아", "스쿠버다이빙", "리조트", "피피섬")
  , c("배낭여행", "유럽", "호스텔", "북유럽", "서유럽", "파리", "루브르", "에투알", "에펠")
  , c("이탈리아", "베네치아", "토스카니", "피렌체", "바티칸", "여행지도")
  , c("하와이", "괌", "푸켓", "세부", "리조트", "가족여행", "골드카드")
  , c("괌", "푸켓", "세부", "호텔", "풀빌라", "가족여행", "힐튼", "쉐라톤")
  , c("베네치아", "피렌체", "신혼여행", "로마", "패키지")
  , c("배낭여행", "유럽", "호텔팩", "공항", "환율", "픽업서비스", "런던", "파리", "체코", "호스텔")
  , c("특가", "파리", "환율", "스위스", "이탈리아", "오스트리아", "와이파이", "호스텔")
  , c("지중해", "유럽", "특가", "배낭여행", "패키지", "파리", "스위스", "이탈리아", "오스트리아")
  , c("유럽", "동유럽", "날씨", "체코", "환율", "비엔나", "배낭여행", "부다페스트", "호스텔")
  , c("유심", "체코", "신혼여행", "크로아티아", "패키지", "비엔나", "류블랴냐", "독일", "동유럽", "부다페스트")
  , c("패키지", "지중해", "호텔", "유럽", "동유럽", "폴란드", "부다페스트", "신혼여행", "프라하", "크로아티아")
  , c("동유럽", "폴란드", "체코", "프라하", "독일", "크로아티아", "날씨")
  , c("이스탄불", "호스텔", "유럽", "자유여행", "배낭여행", "지중해", "날씨", "파묵칼레")
  , c("신혼여행", "이탈리아", "지중해", "날씨", "유럽", "자유여행", "와이파이", "유심")
  , c("이탈리아", "지중해", "산토리니", "아테네", "유럽", "터키")
  , c("유심", "터키", "유럽", "그리스", "지중해", "이탈리아")
  , c("배낭여행", "유심", "지중해", "아테네", "산토리니", "메테오라", "로마", "베네치아")
  , c("유럽", "날씨", "동유럽", "사진", "우산", "3박10일", "패키지")
)

#-------------------------------------------------------------

# 생성된 리스트 보기 - 28개 벡터로 구성됨
str(searchL)

# 리스트 안의 모든 항목을 풀어 하나의 벡터로 변환
searchV <- unlist(searchL)

# 생성된 벡터 보기(217개 항목의 벡터 1개로 변환)
str(searchV)

# 검색어별 빈도수 확인을 위해 테이블로 변환
searchT <- table(searchV)

# 생성된 테이블 객체 확인(각 검색어별 빈도수가 계산됨)
searchT

# 빈도수 기준으로 정렬(decreasing=T: 내림차순 정렬. 오름차순은 F)
searchT <- sort(searchT, decreasing=T)

# 상위 5개 검색어 확인(정렬된 항목 중 앞 5개 항목 출력)
searchT[1:5]

#-------------------------------------------------------------

# 리스트 중 유럽을 조회한 사람들의 검색어가 있는 벡터들의 위치를 논리벡터로 산출
# sapply: 리스트 각 항목에 함수 적용한 결과를 벡터로 반환
# "유럽" %in% x: 벡터 x 요소 중 "유럽"이 있으면 TRUE, 없으면 FALSE
searchEuropeIdx <- sapply(searchL, function(x){"유럽" %in% x})

# 산출된 논리벡터 확인("유럽"이라는 단어를 포함한 벡터의 위치는 TRUE)
searchEuropeIdx

# 유럽을 조회한 사람들의 검색어만 따로 분리
searchEuropeL <- searchL[searchEuropeIdx]

# 분리한 검색어 내역 확인(유럽을 조회한 11명의 검색어 모음)
str(searchEuropeL)

# 테이블 변환
searchEuropeT <- table(unlist(searchEuropeL))

# 빈도수 기준으로 정렬
searchEuropeT <- sort(searchEuropeT, decreasing=T)

# 상위 5개 검색어 확인
searchEuropeT[1:5]

#-------------------------------------------------------------

# 최초 수행 시 패키지 설치
install.packages("arules")

# arules 패키지 로드
library(arules)

# 고객별 구매 품목을 리스트로 생성
buyItems <- list(
				 c("삼겹살", "생수", "소주", "과자")
				,c("삼겹살", "생수", "소주", "사과")
				,c("장어", "생수", "소주", "양파")
				,c("땅콩", "생수", "맥주", "오이")
				,c("땅콩", "생수", "맥주", "감")
			)

# 트랜잭션 데이터로 형변환
buyItemStr <- as(buyItems, "transactions")

# 변환된 트랜잭션 확인(11개 항목에 대해 5개 거래 존재)
buyItemStr

# 트랜잭션 데이터는 inspect 함수를 통해 내용을 확인
inspect(buyItemStr)

# apriori 함수 수행(지지도 0.1, 신뢰도 0.8 이상인 연관성 규칙 구하기)
buyItemResult <- apriori(buyItemStr, parameter=list(support=0.1, confidence=0.8))

#-------------------------------------------------------------

# 도출된 연관성 규칙 5개만 확인
buyItemResult[1:5]

# 연관성 규칙 상세 보기
inspect(buyItemResult[1:5])

#-------------------------------------------------------------

# 향상도가 1.2 이상인 연관성 규칙만 선택
subBuyResult <- subset(buyItemResult, subset=lift > 1.2 )

# subset 결과
subBuyResult

# 연관성 규칙 5개만 확인
inspect(subBuyResult[1:5])

#-------------------------------------------------------------

# lhs에 삼겹살이 포함된 연관성 규칙
inspect(subset(buyItemResult, subset=lhs %in% c("삼겹살")))

# lhs에 삼겹살과 과자가 포함된 연관성 규칙
inspect(subset(buyItemResult, subset=lhs %ain% c("삼겹살", "과자")))

# lhs가 삼겹살 or 과자 or 삼겹살과 과자인 연관성 규칙
inspect(subset(buyItemResult, subset=lhs %oin% c("삼겹살", "과자")))

# lhs 항목 중 "겹"이라는 글자를 포함하는 연관성 규칙
inspect(subset(buyItemResult, subset=lhs %pin% "겹"))

#-------------------------------------------------------------

# 지지도, 신뢰도, 향상도 기준으로 정렬
subBuyResult_order <- sort(subBuyResult, by=c("support", "lift", "confidence"))

# 상위 10개만 확인
inspect(subBuyResult_order[1:10])

#-------------------------------------------------------------

# 처음 실행 시 패키지를 설치
install.packages("arules")

# arules 패키지 로드
library(arules)

# 항목별 빈도수 시각화(최소 지지도 0.2 이상인 항목에 대해서만 빈도수 확인)
# itemFrequencyPlot 함수는 "트랜잭션 데이터"를 입력 항목으로 받습니다.
itemFrequencyPlot(buyItemStr, support=0.2)

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치 필요
install.packages("arulesViz")

# 패키지 로드
library(arulesViz)

# 연관성 분석 결과 객체
subBuyResult_order

# 3번째 연관성 규칙 확인
inspect(subBuyResult_order[3])

# 3번째 연관성 규칙을 평행좌표 그래프로 표현
plot(subBuyResult_order[3], method="paracoord")

#-------------------------------------------------------------

# 3,5,33,50번째 연관성 규칙 확인
inspect(subBuyResult_order[c(3, 5, 33, 50)])

# 3,5,33,50번째 연관성 규칙을 하나의 평행좌표 그래프에 표현
plot(subBuyResult_order[c(3, 5, 33, 50)], method="paracoord")

#-------------------------------------------------------------

# 처음 10개의 연관성 분석 확인
inspect(subBuyResult_order[1:10])

# 10개의 연관성 규칙에 대한 네트워크 그래프 그리기
plot(subBuyResult_order[1:10], method="graph")

#-------------------------------------------------------------

# 고객 검색 내역 확인
str(searchL)

# 트랜잭션 데이터 변환
searchT <- as(searchL, "transactions")

# 생성된 트랜잭션 확인
searchT

# 트랜잭션 내용 확인
inspect(searchT)

#-------------------------------------------------------------

# 처음 실행 시 설치
install.packages("arules")

# arules 패키지 로드
library(arules)

# 연관성 분석(지지도 0.1 이상, 신뢰도 0.8 이상 연관성 규칙 도출)
aResult <- apriori(searchT, parameter=list(support=0.1, confidence=0.8))

# 도출된 연관성 규칙 지지도, 향상도, 신뢰도 기준으로 정렬
aResult <- sort(aResult, by=c("support", "lift", "confidence"))

# 연관성 규칙 확인
inspect(aResult)

#-------------------------------------------------------------

# 배낭여행을 포함하는 연관성 규칙 추출
packResult <- subset(aResult, subset=lhs %in% c("배낭여행") | rhs %in% c("배낭여행"))

# 연관성 규칙 확인
inspect(packResult)

#-------------------------------------------------------------

# 조건 항목만 별도 추출해 리스트로 변환
packLhs <- as(lhs(packResult), "list")

# 조건 항목 확인
str(packLhs)

# 결과 항목만 별도 추출해 리스트로 변환
packRhs <- as(rhs(packResult), "list")

# 결과 항목 확인
str(packRhs)

# 조건과 결과 항목을 벡터로 변환
vPackWord <- unlist(packLhs, packRhs)

# 배낭여행과 연관된 검색어 확인
vPackWord

# 중복 항목 제거
unique(vPackWord)

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치 필요
install.packages("arulesViz")

# 패키지 로드
library(arulesViz)

# 검색어 네트워크 그래프
plot(aResult, method="graph")

#=============================================================
#5.6 _ 좀 더 나은 분석을 위해
#=============================================================

# 최초 실행 시 패키지 설치
install.packages("caret")

# 패키지 로드
library(caret)

# 데이터 로드
data(GermanCredit)

# GermanCredit 구조 확인
str(GermanCredit)

#-------------------------------------------------------------

# 분산이 거의 변하지 않는 항목 추출(caret 패키지 로드 필요)
nzvD <- nearZeroVar(GermanCredit)

# nearZeroVar 함수 결과 -> 거의 변하지 않는 항목(칼럼)의 위치 정보 반환
nzvD

# 거의 변하지 않는 항목명 조회
colnames(GermanCredit)[nzvD]

#-------------------------------------------------------------

# svaeMetrics=T 설정 후 실행
nzvD_detail <- nearZeroVar(GermanCredit, saveMetrics=T)

# nearZeroVar 함수의 상세 결과(데이터프레임)
str(nzvD_detail)

# zeroVar, nzv(near-zero var) 항목의 상세 내역 확인
nzvD_detail

#-------------------------------------------------------------

# zeroVar, nzv가 TRUE인 항목만 조회
nzvD_detail[nzvD_detail$zeroVar == T | nzvD_detail$nzv == T, ]

#-------------------------------------------------------------

# freqRatio가 50 이상인 것만 nzv로 판별하도록 설정
nzvD_detail2 <- nearZeroVar(GermanCredit, freqCut=50, saveMetrics=T)

# zeroVar, nzv가 TRUE인 항목만 조회
nzvD_detail2[nzvD_detail2$zeroVar==T | nzvD_detail2$nzv==T, ]

#-------------------------------------------------------------

# 분산이 거의 변하지 않는 항목 제거(caret 패키지 로드 필요)
nzvD <- nearZeroVar(GermanCredit)
GermanCredit2 <- GermanCredit[ , -nzvD]

# Class 항목 확인
summary(GermanCredit2$Class)

#-------------------------------------------------------------

# 최초 실행 시 패키지 설치
install.packages("FSelector")

# 패키지 로드
library(FSelector)

# chi.square 함수 실행
# (GermanCredit2의 전체 항목 중 Class와 연관된 항목 추출)
csR <- chi.squared(Class~., GermanCredit2)

# 추출 결과 확인
csR

#-------------------------------------------------------------

# Class와 연관성이 큰 상위 5개 항목 확인(csR은 chi.squared 함수를 실행한 결과)
cutoff.k(csR, 5)


# csf 함수 -> 연관 항목이 바로 산출됨
cfs(Class~., GermanCredit2)

# chi.squared 함수
csR <- chi.squared(Class~., GermanCredit2)
cutoff.k(csR, 5)

# information.gain함수
igR <- information.gain(Class~., GermanCredit2)
cutoff.k(igR, 5)

# random.forest.importance 함수
rfR <- random.forest.importance(Class~., GermanCredit2)
cutoff.k(rfR, 5)


# 각 함수 상위 5개를 벡터로 만듬
fsResult <- c(cutoff.k(csR, 5), cutoff.k(igR, 5), cutoff.k(rfR, 5))

# Class 항목 추가
fsResult <- c("Class", fsResult)

# 주요 항목 확인
fsResult

# 중복 제거
fsResult<-unique(fsResult)
fsResult

# GermanCredit2로부터 주요 항목만 추출해 GermanCredit3 생성
GermanCredit3 <- GermanCredit2[ , fsResult]

# GermanCredit3 확인
str(GermanCredit3)

#-------------------------------------------------------------

# 1~10 숫자 중 2씩 증가하며 숫자 생성
seq(from=1, to=10, by=2)

# 1~10 숫자 중 3씩 증가하며 숫자 생성
seq(from=1, to=10, by=3)

# 1~10 숫자 중 4씩 증가하며 숫자 생성
seq(from=1, to=10, by=4)

#-------------------------------------------------------------

# GermanCredit3 행 수
nrow(GermanCredit3)

# 1부터 GermanCredit3 행수만큼 3씩 증가하는 숫자 생성
extactIdx <- seq(from=1, to=nrow(GermanCredit3), by=3)

# 생성된 숫자 확인하기
extactIdx

# 샘플 데이터 추출(전체 데이터 중 1/3 추출)
sampleG <- GermanCredit3[extractIdx, ]

# 샘플 데이터 확인
str(sampleG)

# 샘플 데이터 추출(전체 데이터 중 2/3 추출)
sampleG2 <- GermanCredit3[-extractIdx, ]

# 샘플 데이터 행 수
nrow(sampleG2)

#-------------------------------------------------------------

# 1~10까지 데이터 중 5개 추출
sample(1:10, 5)

#-------------------------------------------------------------

# 여러 번 실행해 보기
sample(1:10, 5)
sample(1:10, 5)
sample(1:10, 5)

#-------------------------------------------------------------

# seed 값을 고정한 후 sample 함수 실행 / seed 값으로 설정하고 싶은 정수(integer)를 입력
set.seed(1234)
sample(1:10, 5)

# sample 함수만 재수행
sample(1:10, 5)

# 고정했던 seed 값을 설정한 후 sample 함수 실행
set.seed(1234)
sample(1:10, 5)

#-------------------------------------------------------------

# 1~10 숫자 중 15개 샘플링
sample(1:10, 15, replace=T)

#-------------------------------------------------------------

# GermanCredit3 행 수
rowCnt <- nrow(GermanCredit3)

# 334개 항목을 임의 추출
extactRDIdx <- sample(1:rowCnt, 334)

# 생성된 숫자 확인
extactRDIdx

# 샘플 데이터 추출
sampleG_RD <- GermanCredit3[extactRDIdx, ]

# 샘플 데이터 확인
str(sampleG_RD)

#-------------------------------------------------------------

# 신용도 분포 확인 -> 신용도 나쁨 300건, 좋음 700건(3:7 비율)
table(GermanCredit3$Class)

# 최초 실행 시 패키지 설치
install.packages("splitstackshape")

# 패키지 로드
library(splitstackshape)

#-------------------------------------------------------------
# 신용도별 100개씩 추출
sampleG_ST <- stratified(GermanCredit3, "Class", 100)

# 샘플링 결과 -> 200개 샘플링
str(sampleG_ST)

# 샘플링 결과 신용도 분포 확인 -> 신용도별 100개씩 추출됨
table(sampleG_ST$Class)

#-------------------------------------------------------------

# 신용도별 400개씩 추출(비복원 추출) -> Bad 값이 300개므로 400개를 추출하지 못함
sampleG_STR <- stratified(GermanCredit3, "Class", 400)

# 복원추출로 신용도별 400개씩 추출
sampleG_STR <- stratified(GermanCredit3, "Class", 400, replace=T)

# 샘플 데이터 확인
str(sampleG_STR)

# 샘플링 결과 신용도 분포 확인
table(sampleG_STR$Class)

#-------------------------------------------------------------

# 신용도 분포 확인 -> 신용도 좋음 나쁨 300건, 700건
table(GermanCredit3$Class)

# 각 범주별 50%를 추출
sampleG_STP <- stratified(GermanCredit3, "Class", 0.5)

# 샘플링 결과 신용도 분포 확인
table(sampleG_STP$Class)

#-------------------------------------------------------------

# iris 구조 확인
str(iris)

# 임시 iris 생성
iris_missing <- iris

# iris의 Sepal.Length에 결측값 넣기(20%)
set.seed(777)
row1 <- sample(1:150, 150*0.2)
iris_missing[row1, "Sepal.Length"] <- NA

# iris의 Species에 결측값 넣기(10%)
set.seed(777)
row2 <- sample(1:150, 150*0.1)
iris_missing[row2, "Species"] <- NA

# iris의 Sepal.Length에 결측값 넣기(15%)
set.seed(777)
row3 <- sample(1:150, 150*0.15)
iris_missing[row3, "Petal.Length"] <- NA

# 설정된 결측값 확인
summary(iris_missing)

#-------------------------------------------------------------

# 첫 6행 확인
head(iris_missing)

# 첫 6행 확인 - is.na
head(is.na(iris_missing))

#-------------------------------------------------------------

# 첫 6행 확인
complete.cases(head(iris_missing))

#-------------------------------------------------------------

# 결측값 위치 벡터
complete_idx <- complete.cases(iris_missing)

# 결측값 없는 행 추출
iris_only_comp <- iris_missing[complete_idx, ]

# 첫 6행 확인
head(iris_only_comp)

# 확인: NA값이 없음
# (TRUE는 1, FALSE는 0으로 계산됨. 즉 is.na 결과의 합계가 0인 경우 NA 없음을 의미함)
sum(is.na(iris_only_comp))

# 결측값 있는 행 추출
iris_only_miss <- iris_missing[!complete_idx, ]

# 첫 6행 확인
head(iris_only_miss)

# 확인: NA값이 67개 있음(TRUE는 1, FALSE는 0)
sum(is.na(iris_only_miss))

#-------------------------------------------------------------

# 첫 실행 시 패키지 설치
install.packages("VIM")

# 패키지 로드
library(VIM)

# 결측값 시각화
aggr(iris_missing, numbers=T, sortVars=T, cex.axis=0.8)

#-------------------------------------------------------------

# 처음 실행 시 패키지 설치
install.packages("mice")

# 패키지 로드
library(mice)

# mice 함수를 통해 대체값 생성. 콘솔에 실행 내역 미출력(printFlag=F)
iris_mice <- mice(iris_missing, m=5, printFlag=F, seed=1234)

#-------------------------------------------------------------

# iris_imp$imp 속성
class(iris_imp$imp)

# mice 함수를 통해 도출된 대체값 구조 확인
summary(iris_imp$imp)

#-------------------------------------------------------------

# Petal.Length 대체값 확인
iris_imp$imp$Petal.Length

#-------------------------------------------------------------

# 2번 대체그룹으로 결측치 대체
iris_imped_2 <- complete(iris_imp, 2)

# 결측값 존재 여부 확인 – 결측값 없음
sum(is.na(iris_imped_2))

# 원본 데이터 확인 - 71행 결측값 존재함
iris_missing[71, ]

# 2번 대체그룹 적용 결과 – 71행 확인
iris_imped_2[71, ]

# 3번 대체그룹으로 결측치 대체
iris_imped_3 <- complete(iris_imp, 3)

# 3번 대체그룹 적용 결과 – 71행 확인 / 2번 대체그룹 적용 결과와 값이 다름
iris_imped_3[71, ]

#-------------------------------------------------------------

# 대체값을 추출한 알고리즘
iris_imp$method

# 대체값 도출 시 사용한 항목
iris_imp$predictorMatrix

#-------------------------------------------------------------
