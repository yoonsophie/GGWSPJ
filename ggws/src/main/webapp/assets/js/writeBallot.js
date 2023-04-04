
// 항목 태그
let add_bbox_content = "<div class='row mb-3'><label class='col-sm-2 col-form-label'></label><div class='col-sm-10'><input type='text' class='form-control' name='ballotContent'></div></div>"

// 선택항목 수
let bbox_content_idx = 1;

// 항목 추가 이벤트
$('#addContentBtn').click((e) => {
	if (bbox_content_idx < 10) {
		// 버튼 추가
		$('.mb-3:nth-last-of-type(2)').before(add_bbox_content)
		bbox_content_idx += 1
	}
	e.preventDefault(); // 페이지 새로고침 방지
})

// 항목 삭제 이벤트
$(document).on('click', '#delContentBtn', (e) => {
	if (bbox_content_idx > 1) {
		// 버튼 삭제
		$('.mb-3:nth-last-of-type(3)').remove()
		console.log("삭제버튼")
		bbox_content_idx -= 1
	}
	e.preventDefault(); // 페이지 새로고침 방지
})

