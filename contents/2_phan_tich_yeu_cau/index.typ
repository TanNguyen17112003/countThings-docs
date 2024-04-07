= Phân tích yêu cầu

Như đã đề cập ở phần Phạm vi dự án, nhóm sẽ ưu tiên mức hiện thực thủ công bao gồm sáu tính năng chính trên. Phần này sẽ mô tả chi tiết về toàn bộ yêu cầu chức năng và yêu cầu phi chức năng của hệ thống ở mức thủ công:

== Yêu cầu chức năng
=== User Story
==== Đối với khách hàng
- *Đăng nhập vào hệ thống để sử dụng các dịch vụ*
#grid(
    columns: (1fr, 1fr),
    gutter: 20pt,
    figure(caption:"Màn hình ứng dụng chào mừng người dùng", image("../assets/login-image1.png", fit: "contain")),
    figure(caption:"Màn hình ứng dụng trang đăng nhập", image("../assets/login-image2.png", fit: "contain"))
)

- *Khách hàng thay đổi thông tin của người dùng như tên đăng nhập, ngày sinh,...*
#figure(caption: "Màn hình ứng dụng khi thay đổi thông tin cá nhân", image("../assets/change-info-image.png", fit: "contain"))

- *Khách hàng lựa chọn các loại giàn giáo dựa vào template có sẵn của hệ thống*
#grid(
    columns: (1fr, 1fr),
    gutter: 20pt,
    figure(caption:"Màn hình ứng dụng khi đã lựa chọn loại giàn giáo", image("../assets/select-template-image1.png", fit: "contain")),
    figure(caption:"Màn hình ứng dụng các loại giàn giáo", image("../assets/select-template-image2.png", fit: "contain"))
)

- *Khách hàng lựa chọn file ảnh có sẵn hoặc chụp ảnh trực tiếp*
#figure(caption: "Màn hình ứng dụng khi ảnh đã được chọn", image("../assets/select-photo-image.png", fit: "contain"))

- *Khách hàng tiến hành xuất file báo cáo về số lượng giàn giáo, ngày giờ thông qua kết quả trả về*


=== Đối với quản lý
- *Quản lý thêm, sửa, xóa template về các loại giàn giáo.*
#figure(caption: "Màn hình ứng dụng khi điều chỉnh các template", image("../assets/modify-template-image.png", fit: "contain"))

- *Quản lý xem thông tin của người dùng.*
#figure(caption: "Màn hình ứng dụng khi xem thông tin người dùng", image("../assets/modify-user-image.png", fit: "contain"))

- *Quản lý xem thông tin về số lượng file ảnh đã được tải lên hệ thống.*
#figure(caption: "Màn hình ứng dụng khi xem thông tin ảnh", image("../assets/modify-photo-image.png", fit: "contain"))

== Yêu cầu phi chức năng
#block(inset: (left:1cm))[
    - Hệ thống được truy cập thông qua mobile app.
    - Độ tin cậy (Reliability):
    #block(inset: (left:1.2cm))[
        \u{2218} Hệ thống duy trì dữ liệu/phục hồi về trạng thái trước khi có lỗi.
        \u{2218} Độ phân giải của màn hình khi chụp ảnh phải đạt tối thiểu 720x1280.
    ]
    - Tính sẵn sàng (Availability):
    #block(inset: (left:1.2cm))[
        \u{2218} Hệ thống phải hoạt động và đáp ứng 24/7.
    ]
    - Độ bảo mật (Security):
    #block(inset: (left:1.2cm))[
        \u{2218} Tuân thủ theo tiêu chuẩn OWASP
    ]
    - Tốc độ (Speed):
    #block(inset: (left:1.2cm))[
        \u{2218} Thời gian từ lúc người dùng chụp ảnh đến khi hệ thống trả về kết quả không quá 10 giây.
        \u{2218} Thời gian từ lúc người dùng nhấn nút xuất báo cáo đến khi hệ thống gửi về file CSV không quá 5 giây.
    ]
]
#pagebreak();
