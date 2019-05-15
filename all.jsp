<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>눈누 상업용 무료한글폰트 사이트 copy by Jihyun Kang</title>
<link rel="stylesheet" type="text/css" href="noonnu.css" />
<link rel="stylesheet" type="text/css" href="font.css" />

<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(document).ready(function(){

		// 입력란에 입력을 하면 입력내용에 내용이 출력

		// 1. #data 공간에서 keyup이라는 이벤트가 발생했을 때

		$("#all_fonts").keyup(function(){

			// 2. #out 공간에 #data의 내용이 출력된다.

			<%for (int i = 1; i < 25; i++) {%>
			$("#text<%=i%>").text($("#all_fonts").val());

			// #out의 위치에 text로 데이터를 받는다.(setter)

			// 들어가는 데이터는 #data의 값(.val())이다. (getter)

			// 메서드 괄호 안에 아무것도 없으면 getter, 파라미터가 있으면 setter이다.
			<%}%>
			
			if($('input:checkbox[id="cate_u_1"]').is(":checked") == true){
				$('#font_1').css('display', 'none');
			}
		});
		
		$("#cate_u_1").change(function(){
	        if($("#cate_u_1").is(":checked")){
	            alert("체크박스 체크했음!");
	            $('#font_1').css('display', 'none');
	        }else{
	            alert("체크박스 체크 해제!");
	        }
	    });
	});
</script>
	
</head>
<body>
	<div class="search_editor_section">

		<div class="search-filtering">
			<div class="row col xl12 l12 s12 m12">

				<div class="filtering">
					<div class="cate-filter usage col xl5 l6 m12 s12"
						id="category_uses">
						<span class="checkBox"> <!-- 1,2,3,4 check된게 있을 시 --> <!-- check된게 없을 시 - 전체해제 -->
							<input type="checkbox" name="categoryUse" id="cate_u_1" value="1"
							class="filled-in"> <label for="cate_u_1"
							class="label-font">BI/CI</label>
						</span> <span class="checkBox"> <!-- 1,2,3,4 check된게 있을 시 --> <!-- check된게 없을 시 - 전체해제 -->
							<input type="checkbox" name="categoryUse" id="cate_u_2" value="2"
							class="filled-in"> <label for="cate_u_2"
							class="label-font">임베딩</label>
						</span> <span class="checkBox"> <!-- 1,2,3,4 check된게 있을 시 --> <!-- check된게 없을 시 - 전체해제 -->
							<input type="checkbox" name="categoryUse" id="cate_u_3" value="3"
							class="filled-in"> <label for="cate_u_3"
							class="label-font">포장지</label>
						</span> <span class="checkBox"> <!-- 1,2,3,4 check된게 있을 시 --> <!-- check된게 없을 시 - 전체해제 -->
							<input type="checkbox" name="categoryUse" id="cate_u_4" value="4"
							class="filled-in"> <label for="cate_u_4"
							class="label-font">OFL</label>
						</span>

					</div>
					<div class="cate-filter shape col xl4 l5 m12 s12"
						id="category_styles">
						<span class="checkBox"> <input type="checkbox"
							name="categoryStyle" id="cate_s_1" value="1" class="filled-in"
							checked="checked"> <label for="cate_s_1"
							class="label-font">고딕</label>
						</span> <span class="checkBox"> <input type="checkbox"
							name="categoryStyle" id="cate_s_2" value="2" class="filled-in"
							checked="checked"> <label for="cate_s_2"
							class="label-font">명조</label>
						</span> <span class="checkBox"> <input type="checkbox"
							name="categoryStyle" id="cate_s_3" value="3" class="filled-in"
							checked="checked"> <label for="cate_s_3"
							class="label-font">손글씨</label>
						</span>

					</div>

					<div class="row col xl12 l12 s12 m12">
						<!-- contents -->
						<div class="contents">
							<div class="col xl3 l4 s12 m6">
								<div class="box all_box"
									style="font-family: 'NanumSquare', sans-serif; font-weight: 800;">
									<div class="font-box">
										<a href="/" class="font-name">모든 폰트에 적용</a><br> <span
											class="font-br normal"></span>
									</div>
									<div class="text-box">
										<textarea spellcheck="false" class="all_fonts" id="all_fonts"
											type="text" placeholder="문구를 입력해보세요."></textarea>
										<!--<textarea lang="ko" name="editor" id="editor" class="custom-txt" placeholder="아무말아무말아무말"></textarea>-->
									</div>
								</div>
							</div>

							<!--텍스트입력카드-->
							<div class="box-section" id="my-fonts">
								<div class="san col xl3 l4 s12 m6 section" id="box1">
									<div class="box" id="font_115"
										style="font-family: 'yg-jalnan';">
										<div class="font-box">
											<a href="/font_page/115" target="_blank" class="font-name">잘난체</a><br>
											<span class="font-br normal">위드이노베이션</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text1" class="custom-txt" placeholder="쓰면 쓸수록 매력만점 잘난체"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box2">
									<div class="box" id="font_72"
										style="font-family: 'TmonMonsori';">
										<div class="font-box">
											<a href="/font_page/72" target="_blank" class="font-name">몬소리체</a><br>
											<span class="font-br normal">티몬</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text2" class="custom-txt" placeholder="뭔소리 하는건지 나도 몰라"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box3">
									<div class="box" id="font_13"
										style="font-family: 'GyeonggiBatang';">
										<div class="font-box">
											<a href="/font_page/13" target="_blank" class="font-name">경기천년바탕</a><br>
											<span class="font-br normal">경기도청</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text3" class="custom-txt" placeholder="동정할거면 돈으로 줘요"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box4">
									<div class="box" id="font_223"
										style="font-family: 'S-CoreDream-3Light';">
										<div class="font-box">
											<a href="/font_page/223" target="_blank" class="font-name">에스코어드림Lt</a><br>
											<span class="font-br normal">S-Core</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text4" class="custom-txt" placeholder="샐러드를 먹으면 빨리 배고파져"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box5">
									<div class="box" id="font_106"
										style="font-family: 'Black Han Sans', sans-serif;">
										<div class="font-box">
											<a href="/font_page/106" target="_blank" class="font-name">검은고딕</a><br>
											<span class="font-br normal">ZESSTYPE</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text5" class="custom-txt" placeholder="내 미래는 어떻게 되는 걸까요"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box6">
									<div class="box" id="font_79" style="font-family: 'Goyang';">
										<div class="font-box">
											<a href="/font_page/79" target="_blank" class="font-name">고양체</a><br>
											<span class="font-br normal">고양시청</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text24" class="custom-txt" placeholder="고양시의 상징은 고양이다냥"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box7">
									<div class="box" id="font_85"
										style="font-family: 'KCC-eunyoung'; font-size: 120%; line-height: 0.85;">
										<div class="font-box">
											<a href="/font_page/85" target="_blank" class="font-name">KCC은영체</a><br>
											<span class="font-br normal">한국저작권위원회</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text7" class="custom-txt" placeholder="들판을 가르는 푸른 바람처럼"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box8">
									<div class="box" id="font_229"
										style="font-family: 'S-CoreDream-9Black';">
										<div class="font-box">
											<a href="/font_page/229" target="_blank" class="font-name">에스코어드림Bl</a><br>
											<span class="font-br normal">S-Core</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text8" class="custom-txt"
												placeholder="날씨가 추워서 하이볼 먹고 싶다"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box9">
									<div class="box" id="font_1"
										style="font-family: 'Binggrae-Bold', serif;">
										<div class="font-box">
											<a href="/font_page/6" target="_blank" class="font-name">빙그레체II</a><br>
											<span class="font-br normal">빙그레</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text9" class="custom-txt"
												placeholder="뚱바 주세요 뚱뚱한 바나나맛 우유"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box10">
									<div class="box" id="font_228"
										style="font-family: 'S-CoreDream-8Heavy';">
										<div class="font-box">
											<a href="/font_page/228" target="_blank" class="font-name">에스코어드림Hvy</a><br>
											<span class="font-br normal">S-Core</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text10" class="custom-txt" placeholder="아프지 말자 눈누 친구들"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box11">
									<div class="box" id="font_23" style="font-family: 'LeeHyunJi';">
										<div class="font-box">
											<a href="/font_page/23" target="_blank" class="font-name">이숲체</a><br>
											<span class="font-br normal">윤디자인</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text11" class="custom-txt"
												placeholder="지구가 둥글다는건 아무도 믿지 않았어"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box12">
									<div class="box" id="font_277" style="font-family: 'BBTreeGR';">
										<div class="font-box">
											<a href="/font_page/277" target="_blank" class="font-name">유토이미지고딕R</a><br>
											<span class="font-br normal">유토이미지</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text12" class="custom-txt" placeholder="달달한 케이크가 먹고 싶다"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box13">
									<div class="box" id="font_233"
										style="font-family: 'silgothic';">
										<div class="font-box">
											<a href="/font_page/233" target="_blank" class="font-name">실고딕</a><br>
											<span class="font-br normal">폰트메이커</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text13" class="custom-txt"
												placeholder="한 글자씩 글자를 써 내려간다"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box14">
									<div class="box" id="font_219"
										style="font-family: 'NIXGONM-Vb';">
										<div class="font-box">
											<a href="/font_page/219" target="_blank" class="font-name">닉스곤폰트M</a><br>
											<span class="font-br normal">닉스곤</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text14" class="custom-txt" placeholder="마지막 가는 길이 편했으면"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box15">
									<div class="box" id="font_91"
										style="font-family: 'SangSangFlowerRoad'; font-size: 120%; line-height: 0.85;">
										<div class="font-box">
											<a href="/font_page/91" target="_blank" class="font-name">꽃길</a><br>
											<span class="font-br normal">상상토끼</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text15" class="custom-txt" placeholder="사방간데 넘실대는 꽃길처럼"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box16">
									<div class="box" id="font_45"
										style="font-family: 'HSBombaram';">
										<div class="font-box">
											<a href="/font_page/45" target="_blank" class="font-name">HS봄바람체</a><br>
											<span class="font-br normal">Hyun S. Choi</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text16" class="custom-txt"
												placeholder="꽃송이가 꽃송이가 그래 그래 피었네"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box17">
									<div class="box" id="font_172"
										style="font-family: 'UhBeeMiMi';">
										<div class="font-box">
											<a href="/font_page/172" target="_blank" class="font-name">어비
												미미체</a><br> <span class="font-br normal">어비</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text17" class="custom-txt"
												placeholder="일을 좋아하는 나는 너를 외롭게 만드는걸까"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box18">
									<div class="box" id="font_53" style="font-family: 'BMJUA';">
										<div class="font-box">
											<a href="/font_page/53" target="_blank" class="font-name">주아체</a><br>
											<span class="font-br normal">우아한형제들</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text18" class="custom-txt"
												placeholder="우아한형제들은 배민을 만들었죠"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box19">
									<div class="box" id="font_68"
										style="font-family: 'InkLipquid';">
										<div class="font-box">
											<a href="/font_page/68" target="_blank" class="font-name">잉크립퀴드체</a><br>
											<span class="font-br normal">더페이스샵</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text19" class="custom-txt"
												placeholder="잉크로 된 화장품은 다양한 편이다"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box20">
									<div class="box" id="font_251"
										style="font-family: 'locus_sangsang';">
										<div class="font-box">
											<a href="/font_page/251" target="_blank" class="font-name">로커스상상고딕</a><br>
											<span class="font-br normal">로커스</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text20" class="custom-txt"
												placeholder="눈누로 눈누난나하면서 디자인하자"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box21">
									<div class="box" id="font_82"
										style="font-family: 'OTEnjoystoriesBA'; font-size: 120%; line-height: 0.85;">
										<div class="font-box">
											<a href="/font_page/82" target="_blank" class="font-name">즐거운이야기체</a><br>
											<span class="font-br normal">CJ E&amp;M</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text21" class="custom-txt"
												placeholder="거친 돌이 다듬어져 조각이 되듯"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box22">
									<div class="box" id="font_246" style="font-family: 'BRBA_B';">
										<div class="font-box">
											<a href="/font_page/246" target="_blank" class="font-name">배스킨라빈스B</a><br>
											<span class="font-br normal">비알코리아</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text22" class="custom-txt"
												placeholder="빵케익만 먹지말고 아이스크림 케익"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

								<div class="san col xl3 l4 s12 m6 section" id="box23">
									<div class="box" id="font_244"
										style="font-family: 'Handon3gyeopsal600g';">
										<div class="font-box">
											<a href="/font_page/244" target="_blank" class="font-name">삼겹살체
												600g</a><br> <span class="font-br normal">한돈 X 산돌</span>
										</div>
										<div class="text-box">
											<textarea spellcheck="false" lang="ko" name="editor"
												id="text23" class="custom-txt"
												placeholder="삼겹살 중에서도 한돈이 진짜 맛있지"></textarea>
										</div>
									</div>
								</div>
								<!--고도체-->

							</div>

						</div>

					</div>
				</div>

			</div>

		</div>
	</div>
</body>
</html>
</body>
</html>