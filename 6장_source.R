
#=============================================================
#6.1 _ Shiny를 활용한 동적 시각화
#=============================================================

# Shiny 패키지 설치
install.packages("shiny")

# 패키지 로드
library(shiny)

# 실행 가능한 예제 함수 확인
runExample()

# 01_hello 예제 실행
runExample("01_hello")

#-------------------------------------------------------------

library(shiny)
# Define UI for application that draws a histogram
ui <- fluidPage(
		# Application title
		titlePanel("Old Faithful Geyser Data"),
		# Sidebar with a slider input for number of bins
		sidebarLayout(
			sidebarPanel(
				sliderInput("bins",
							"Number of bins:",
							min = 1,
							max = 50,
							value = 30)
		),
			# Show a plot of the generated distribution
		mainPanel(
				plotOutput("distPlot")
			)
		)
)
# Define server logic required to draw a histogram
server <- function(input, output) {
			output$distPlot <- renderPlot({
				# generate bins based on input$bins from ui.R
				x <- faithful[, 2]
				bins <- seq(min(x), max(x), length.out = input$bins + 1)
				# draw the histogram with the specified number of bins
				hist(x, breaks = bins, col = 'darkgray', border = 'white')
			})
}
# Run the application
shinyApp(ui = ui, server = server)

#-------------------------------------------------------------

# ui
ui <- fluidPage(
		sidebarLayout(
			# 화면 좌측 패널
			sidebarPanel(
				# 콤보박스 2개 추가
				selectInput(inputId="xAxis", "Choose X axis:",
							choices = c("mpg", "disp", "hp", "drat", "wt")
				),
				selectInput(inputId="yAxis", "Choose Y axis:",
							choices = c("wt", "drat", "hp", "disp", "mpg")
				)
			),
			# 화면 우측 패널
			mainPanel(
				# 그래프 출력 항목 추가
				plotOutput(outputId="mtcarsPlot")
			)
		)
	)
# sever
server <- function(input, output) {
			# 콤보박스의 입력값(input$xAxis, input$yAxis)을 받아
			# mtcars의 산점도를 그려 output$mtcarsPlot에 결과를 지정
			output$mtcarsPlot <- renderPlot({
									plot(mtcars[ , c(input$xAxis, input$yAxis)])
								})
		}
# Shiny 앱 실행
shinyApp(ui = ui, server = server)

#-------------------------------------------------------------

# ui
ui 	<- 	fluidPage(
			# 제목 패널
			titlePanel("My First Shiny App"),
			sidebarLayout(
				# 화면 좌측 패널
				sidebarPanel(
					# x, y축을 지정할 콤보박스 2개 추가
					selectInput(inputId="xAxis", "Choose X axis:",
								choices = c("mpg", "disp", "hp", "drat", "wt")
					),
					selectInput(inputId="yAxis", "Choose Y axis:",
								choices = c("wt", "drat", "hp", "disp", "mpg")
					),
					# 점 모양을 지정할 콤보박스 추가
					selectInput(inputId="pch", "Choose shape:",
								choices=c("cicle1"=1, "cicle2"=16, "square"=22)
					),
					# 점 크기를 지정할 슬라이더 추가
					sliderInput(inputId="cex", "point size", min=0.1, max=3, value=1)
				),
				# 화면 우측 패널
				mainPanel(
					# 그래프 출력 항목 추가
					plotOutput(outputId="mtcarsPlot")
				)
			)
		)
# sever
server 	<- 	function(input, output) {
				# 콤보박스의입력값(input$xAxis, input$yAxis)을 받아
				# mtcars의 산점도를 그려 output$mtcarsPlot에 결과를 지정
				output$mtcarsPlot <- renderPlot({
					# 제목 문자열 생성
					title <- paste(input$xAxis, "VS", input$yAxis)
					# plot 함수의 옵션 설정
					plot(
						mtcars[ , c(input$xAxis, input$yAxis)] ,
						main=title, # 제목
						pch=as.numeric(input$pch), # 점모양
						cex=input$cex # 점크기
					)
				})
			}
# Shiny 앱 실행
shinyApp(ui = ui, server = server)

#-------------------------------------------------------------

# rsconnect 패키지 설치
install.packages("rsconnect")

#-------------------------------------------------------------

# 패키지 로드
library(rsconnect)

# shinyapps.io의 Tokens 페이지에서 복사한 구문 실행
rsconnect::setAccountInfo(name='oneshot', token='3C2866B49CF95342512CDA9BC06B7C32C', secret='cCXlj

#=============================================================
#6.2 _ R 마크다운을 이용한 분석 결과 문서 만들기
#=============================================================

---
title: 상관관계 확인하기
author: Hoon Park
output: word_document
---
# 1. 상관관계
이번에는 R의 기본 데이터 셋인 *cars*를 이용해 데이터 **항목 간의 상관관계**에 대해 살펴보겠습니다.
## 1.1 cars 데이터셋
cars는 1920년도에'차의 속도'(speed)와 그에 따른 '제동거리'(dist)를 측정한 데이터로서 총 `r
nrow(cars)`개 행의 데이터가 존재합니다.
```{r}
# cars 데이터구조
str(cars)
```
## 1.2 산점도 확인하기
속도와 제동거리 간의 관계를 살펴보기 위해 speed를 x축, dist를 y축으로 하고 그 교차점에 점을 찍는 산
점도(csatter chart)를 plot 함수를 활용해 그려보겠습니다.
```{r echo=TRUE}
# plot (x축데이터, y축데이터, 옵션)
plot(cars$speed, cars$dist, xlab="속도", ylab="제동거리")
```
위의 산점도를 통해 대체적으로 속도가 높을수록 제동거리가 길어지는 두 항목 간의 특징을 시각적으로 확
인할 수 있게 됐습니다.
상관분석에 대해 더 알고 싶다면 [여기](https://ko.wikipedia.org/wiki/상관분석)를 클릭하시기 바랍니다.

#-------------------------------------------------------------

# rmarkdown 패키지 설치
install.packages("rmarkdown")

# knitr 패키지 설치
install.packages("knitr")

#-------------------------------------------------------------
