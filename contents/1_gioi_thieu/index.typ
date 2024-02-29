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


= Giới thiệu

== Bối cảnh dự án
Ứng dụng hỗ trợ đếm giàn giáo được phát triển và sử dụng để đáp ứng nhu cầu của các công trình xây dựng. Ứng dụng này giúp người dùng có thể dễ dàng đếm số lượng giàn giáo cần thiết cho một công trình xây dựng, từ đó giúp họ có thể tính toán chi phí và lên kế hoạch sử dụng giàn giáo một cách hiệu quả.

#figure(caption:"Ứng dụng điện thoại dếm giàn giáo", image("../assets/image-background.png", fit: "contain"))

Ứng dụng được phát triển để giải quyết những khó khăn trong việc đếm trực tiếp các loại giàn giáo nói riêng và các công trình xây dựng nói chung như:

#block(inset: (left: 1cm))[
    1. Mất nhiều thời gian trong việc phân loại giàn giáo trước khi tiến hành đếm số lượng.
    2. Sau khi tiến hành phân loại, tốn nhiều thời gain trong việc đếm số lượng cụ thể của từng loại giàn giáo.
]

Vì thế, giải pháp phần mềm chúng tôi đưa ra xây dựng dịch vụ đếm giàn giáo một cách tự dộng với những tính năng cơ bản sau:

#block(inset: (left: 1cm))[
    1. Xác thực đăng nhập người dùng qua Google (đăng ký nếu chưa có tài khoản).
    2. Lưu trữ và cho phép người dùng lựa chọn template về các loại giàn giáo để đếm.
    3. Kết nối tới thư mục ảnh của người dùng và cho phép người dùng tải ảnh có sẵn hoặc chụp ảnh trực tiếp.
    4. Hỗ trợ tính năng xuất báo cáo về số lượng giàn giáo và ngày giờ xuất báo cáo.
]

Để có thể nhận diện được chi tiết từng loại giàn giáo trong một bức ảnh, hệ thống sử dụng Ultralytics YOLO version 8 trong việc nhận dạng và đếm sản phẩm dựa vào tập dữ liệu đã thu thập trước đó trên nền tảng Machine learning. Bên cạnh đó, đẻ đáp ứng đầy đủ nhu cầu của người dùng. Hàng tháng, các dữ liệu về các loại giàn giáo mới sẽ được train cùng với các dữ liệu cũ đã được cung cấp trước đó. 

Hệ thống chỉ chấp nhận các file ảnh dưới định dạng `.jpeg`, `.png`, nếu không hệ thống sẽ tự động hủy quá trình tải file ảnh của người dùng.

Hệ thống được cung cấp thông qua ứng dụng mobile app trên cả 2 nền tảng IOS và Android, *không hỗ trợ web-based app*.

== Stakeholders của dự án

Hệ thống bao gồm 2 stakeholders chính:
#block(inset: (left: 1cm))[
    - Người quản lý hệ thống (chủ yếu quản lý về template mô hình các loại giàn giáo).
    - Người dùng sử dụng hệ thống để chụp ảnh.
]

#pagebreak()