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


#figure(caption:"Ứng dụng điện thoại dếm giàn giáo", image("../assets/image-background.png", fit: "contain"))

Ứng dụng ASSY AI được triển khai trên nền tảng điện toán đám mây Amazon Web Service (AWS), ứng dụng công nghệ học sâu (Deep learning) trong việc nhận diện các vật thể trong ảnh. Ứng dụng ASSY AI được phát triển để hỗ trợ đếm giàn giáo được phát triển và sử dụng để đáp ứng nhu cầu của các công trình xây dựng. Ứng dụng này giúp người dùng có thể dễ dàng đếm số lượng giàn giáo cần thiết cho một công trình xây dựng, từ đó giúp họ có thể tính toán chi phí và lên kế hoạch sử dụng giàn giáo một cách hiệu quả.
Để có thể nhận diện được chi tiết từng loại giàn giáo trong một bức ảnh, hệ thống sử dụng Ultralytics YOLO version 8 trong việc nhận dạng và đếm sản phẩm dựa vào tập dữ liệu đã thu thập trước đó trên nền tảng Machine learning. Bên cạnh đó, đẻ đáp ứng đầy đủ nhu cầu của người dùng. Hàng tháng, các dữ liệu về các loại giàn giáo mới sẽ được train cùng với các dữ liệu cũ đã được cung cấp trước đó. 

Hệ thống chỉ chấp nhận các file ảnh dưới định dạng `.jpeg`, `.png`, nếu không hệ thống sẽ tự động hủy quá trình tải file ảnh của người dùng.

Hệ thống được cung cấp thông qua ứng dụng mobile app trên nền tảng Android và nền tảng website.

== Đặc tả dự án
=== Hệ thống backend:

==== Môi trường vận hành hệ thống:
#block(inset: (left: 1cm))[
    - Hệ điều hành: Ubuntu 16.04.4 LTS (Xenial Xerus) hoặc tương tự.
    - Hệ cơ sở dữ liệu: PostgreSQL phiên bản 10.4 trở lên.
    - Nền tảng công nghệ: NodeJS phiên bản 12. trở lên.
    - Phần mềm hệ thống: Nginx phiên bản 1.10.3 trở .
]
==== Công cụ phát triển:
#block(inset: (left: 1cm))[
    - PGAdmin hoặc các trình xây dựng cơ sở dữ liệu tương tự.
    - Visual Studio Code hoặc các công cụ IDE tương tự.
    - Selenium.
    - Git hoặc các công cụ quản lý mã nguồn tương tự.
    - Node package manager (npm).
]

== Giao diện ứng dụng
=== Môi trường vận hành hệ thống:
#block(inset: (left: 1cm))[
    - Hệ điều hành: trình duyệt Chrome với phiên bản mới nhất.
    - Nền tảng công nghệ: Angular2, HTML5.
    - Phần mềm hệ thống: Nginx phiên bản 1.10.3 trở .
]
=== Công cụ phát triển:
#block(inset: (left: 1cm))[
    - AdobeXD
    - PostgreSQl
    - Visual Studio Code, Android Studio.
    - Github
    - Node package manager (npm).
    - Ngôn ngữ lập trình: React Native, JavaScipt, TypeScript.
]
== Stakeholders của dự án

Hệ thống bao gồm 2 stakeholders chính:
#block(inset: (left: 1cm))[
    - Người quản lý hệ thống (chủ yếu quản lý về template mô hình các loại giàn giáo).
    - Người dùng sử dụng hệ thống để chụp ảnh.
]

#pagebreak()