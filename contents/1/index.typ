#show raw.where(block: false): box.with(
  fill: luma(240),
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)

#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
)


= Tổng quan dự án

== Bối cảnh dự án

Hệ thống in ấn 3D được sử dụng để đáp ứng nhu cầu cho những ai muốn sở hữu mô hình 3D tùy
theo mục đích. Để làm được điều đó, chúng tôi sử dụng máy in ấn 3D có tên gọi là *FLSUN-V400*.

Vì giới hạn về tài nguyên phần cứng, hệ thống chỉ bao gồm một máy in 3D đặt ở vị trí cố định. 
Máy in có những thông số như sau: tên thương hiệu/nhà sản xuất, kiểu máy in, mô tả máy in, firmware, một địa chỉ IP cục bộ trong mạng LAN, dashboard web mặc định của máy in.

Để kích hoạt máy in hoạt động, bạn cần phải truy cập vào địa chỉ IP cục bộ của máy in và tải file định dạng `.gcode` tới dashboard web của máy in. Tuy nhiên, phương pháp này chỉ người quản lý máy in mới có thể làm được bởi vì những lí do sau:

#block(inset: (left: 1cm))[
    - Máy in chỉ có thể được sử dụng trong mạng cục bộ (LAN network).
    - Dashboard web của máy in tương đối phức tạp và không có sự phân quyền người dùng.
    - Chưa có cơ chế ngăn chặn những hành động vô ý của người dùng ảnh hưởng đến máy in như: tải lên định dạng file không đúng, tải lên file `.gcode` không phù hợp với loại máy in,... 
]

Vì thế, giải pháp phần mềm chúng tôi đưa ra là xây dựng một dịch vụ in 3D trực tuyến cho nhiều người sử dụng với các tính năng hỗ trợ như sau:

#block(inset: (left:1cm))[
    - *Nền tảng bán hàng trên web*: được truy cập thông qua Internet - nơi người dùng có thể đặt mua mô hình 3D theo một trong hai cách sau:
    #block(inset: (left:1.2cm))[
        \u{2218} Tải lên file `.gcode` phù hợp với loại máy in (FLSUN-V400). Phần mềm không hỗ trợ việc tạo file `.gcode`, vì vậy người dùng phải chuẩn bị trước. Người dùng có thể cài đặt phần mềm #link("https://ultimaker.com/software/ultimaker-cura/")[Ulitimaker Cura] để cắt file `.stl` thành file `.gcode` và tải lên hệ thống.
        #linebreak()
        \u{2218} Phần mềm sẽ đề xuất các mẫu mô hình 3D đã có sẵn các file `.gcode` cho người dùng lựa chọn.
    ]
    - *Màn hình hiển thị sản phẩm phía người dùng*: bao gồm các thông tin sau: tiến độ in ấn, thời gian hoàn thành in ấn, giá cả,...
    - *Màn hình hiển thị điều khiển phía người quản lý*: tương đối giống với dashboard web của máy in và có thêm một số tính năng như: xem được số lượng đơn đặt hàng và tình trạng mỗi đơn hàng, kích hoạt/bất hoạt máy in,...
]

Bởi vì hệ thống chỉ có một máy in, nếu có quá nhiều đơn đặt hàng cùng một thời điểm, chúng sẽ được xếp vào một hàng đợi. Người quản lý sẽ lấy sản phẩm ra khỏi máy in sau khi in xong, nhấn nút `Continue printing` trên hệ thống để đưa sản phẩm đầu tiên trong hàng đợi vào để tiếp tục việc in ấn.

Hệ thống chỉ chấp nhận file với định dạng `.gcode` và phù hợp với máy in *FLSUN-V400*, nếu không hệ thống sẽ tự động hủy quá trình tải file lên của khách hàng.

Hệ thống phải ghi lại lịch sử của mỗi đơn hàng, bao gồm: thời gian đặt hàng, thời gian vận chuyển, thông tin người dùng đặt hàng, chi phí,...

Hệ thống được cung cấp thông qua ứng dụng web-based app, *không hỗ trợ mobile app*.

== Stakeholders của dự án

Dự án này bao gồm 2 stakeholders:
#block(inset: (left: 1cm))[
    1. Người quản lý: Là người trực tiếp quản lý máy in, kiểm tra và cập nhật các đơn hàng sang các trạng thái.
    2. Khách hàng: Là người đặt các mô hình 3D.
]

== Phạm vi của dự án

Dự án được chia thành 2 mức thực hiện: *Thủ công* và *Tự động*. Nhóm sẽ ưu tiên hiện thực hệ thống ở mức thủ công.

=== Thủ công

Tất cả đơn hàng được gửi tới người quản lý qua hệ thống. Người quản lý sẽ tự mình upload các file `.gcode` trong các đơn đặt hàng lên dashboard web của máy in. Quy trình này yêu cầu hệ thống có các tính năng chính sau:

#block(inset: (left: 1cm))[
    1. *Lựa chọn mô hình 3D*: cho phép khách hàng tải lên file `.gcode` phù hợp với loại máy   in FLSUN-V400 hoặc bao gồm danh sách các mô hình 3D có sẵn đã tích hợp file `.gcode` (>= 100 mô hình) cho khách hàng lựa chọn. Ngoài ra, hệ thống còn hỗ trợ phân loại mô hình theo danh mục, tìm kiếm theo tên và lọc theo giá tiền.
    2. *Quản lý mô hình 3D*: Cho phép người quản lý thao tác với các mô hình 3D mà hệ thống đề xuất cho khách hàng, gồm thêm/xóa/sửa. Yêu cầu này đòi hỏi hệ thống phải phân quyền người dùng, bao gồm 2 vai trò: người quản lý và khách hàng. 
    3. *Đặt mô hình 3D*: Khách hàng cần phải đăng kí một tài khoản để có thể đặt được mô hình 3D sau khi upload file hoặc lựa chọn sản phẩm mẫu.
    4. *Xác nhận và gửi đơn hàng*: Khách hàng sau khi đặt mô hình và xác nhận xong thì có thể gửi đơn hàng đi để được xử lý.
    5. *Xử lý đơn hàng*: Người quản lý có thể xem thông tin đơn hàng và chuyển đơn hàng sang các trạng thái tiếp theo như: đã đặt, đang giao, đã giao, đã thanh toán,...
    6. *Thanh toán online*: Thực hiện thanh toán qua Momo.
]

=== Tự động

Tất cả đơn hàng được lưu trên hệ thống. Người quản lý chỉ cần nhấn nút `Start printing` thì file `.gcode` tự động được gửi tới máy in mà không cần thông qua dashboard web của máy in. Tuy nhiên, cần có một người trực tại máy in để gỡ sản phẩm ra khỏi bàn in sau khi in xong và nhấn nút `Continue printing` để tiếp tục in sản phẩm tiếp theo trong hàng đợi của hệ thống.

Mức hiện thực này bao gồm tất cả các tính năng của mức hiện thực thủ công, giảm thiểu tác vụ cho người quản lý và hỗ trợ thêm một số tính năng cho cả hai đối tượng, bao gồm:

#block(inset: (left: 1cm))[
    - *Màn hình điều khiển máy in phía người quản lý*: Người quản lý có thể xem được tiến độ sản phẩm đang được in, nhiệt độ sản phẩm, khối lượng nhựa in cần sử dụng, thời gian in xong. Ngoài ra, có thể thay đổi tốc độ in, tạm dừng in, kích hoạt/bất hoạt máy in.
    - *Màn hình hiển thị sản phẩm phía khách hàng*: Khách hàng cũng có thể xem được tiến độ in và thời gian in xong của sản phẩm mà mình đặt mua.
]
#pagebreak()