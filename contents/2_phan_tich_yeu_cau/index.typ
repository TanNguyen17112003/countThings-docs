= Phân tích yêu cầu

Như đã đề cập ở phần Phạm vi dự án, nhóm sẽ ưu tiên mức hiện thực thủ công bao gồm sáu tính năng chính trên. Phần này sẽ mô tả chi tiết về toàn bộ yêu cầu chức năng và yêu cầu phi chức năng của hệ thống ở mức thủ công:

== Yêu cầu chức năng
=== User Story
==== Đối với khách hàng
#block(inset: (left:1cm))[
    - Khách hàng phải đăng nhập vào hệ thống để sử dụng các dịch vụ.
    - Khách hàng thay đổi thông tin của người dùng như tên đăng nhập, ngày sinh,...
    - Khách hàng lựa chọn các loại giàn giáo dựa vào template có sẵn của hệ thống.
    - Khách hàng lựa chọn file ảnh có sẵn và đưa lên hệ thống.
    - Khách hàng chụp ảnh trực tiếp và đưa lên hệ thống.
    - Khách hàng tiến hành xuất file báo cáo về số lượng giàn giáo, ngày giờ thông qua kết quả trả về.
]

=== Đối với quản lý
#block(inset: (left:1cm))[
    - Quản lý thêm, sửa, xóa template về các loại giàn giáo.
    - Quản lý xem thông tin của người dùng.
    - Quản lý xem thông tin về số lượng người dùng sử dụng hệ thống.
    - Quản lý xem thông tin về số lượng file ảnh đã được tải lên hệ thống.
]

=== Chức năng hệ thống

==== Đăng nhập
#block(inset: (left:1cm))[
    - Hệ thống phải hỗ trợ đăng nhập người dùng qua Google.
    - Hệ thống phải hỗ trợ đăng ký tài khoản mới.
]

==== Quản lý người dùng
#block(inset: (left:1cm))[
    - Hệ thống phải hỗ trợ người dùng thay đổi thông tin cá nhân như tên đăng nhập, ngày sinh,...
]

==== Quản lý template
#block(inset: (left:1cm))[
    - Hệ thống phải hỗ trợ quản lý thêm, sửa, xóa template về các loại giàn giáo.
]

==== Quản lý file ảnh
#block(inset: (left:1cm))[
    - Hệ thống phải hỗ trợ kết nối tới thư mục ảnh của người dùng và cho phép người dùng tải ảnh có sẵn hoặc chụp ảnh trực tiếp.
]

==== Xuất báo cáo
#block(inset: (left:1cm))[
    - Hệ thống phải hỗ trợ tính năng xuất báo cáo về số lượng giàn giáo và ngày giờ xuất báo cáo.
]

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
