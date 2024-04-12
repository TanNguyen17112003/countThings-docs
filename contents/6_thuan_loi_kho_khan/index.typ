= Thuận lợi và khó khăn khi thực hiện

== Thuận lợi
Trong quá trình hiện thực và điều chỉnh các chức năng của mobile app và train model, các thành viên về lĩnh vực này của nhóm đã gặp được một số thuận lợi như sau:
=== Phần mobile app
#block(inset: (left:1cm))[
  - Được sự hỗ trợ và đồng hành nhiệt tình từ thầy Nguyễn Quang Hùng và anh Nguyễn Hồng Minh Nhật trong việc giới thiệu và hướng dẫn hiện thực chi tiết các chức năng như thay đổi thông tin tài khoản, thay đổi kết quả dựa theo threshold,...
  - Soủce code React Native được xây dựng một cách bài bản và phân mục rõ ràng, giúp cho các thành viên đảm nhận phần app gặp dễ dàng và thuận tiện trong việc hiện thực chức năng.
  - Được tiếp cận và sử dụng công nghệ mới: React Native, Docker, AWS, giúp nâng cao kiến thức và kỹ năng của các thành viên trong việc hiện thực chức năng.
]

=== Phần model
#block(inset:(left:1cm))[
  - Được sự hỗ trợ tận tình từ thầy Nguyễn Quang Hùng trong việc hướng dẫn cách thức gán nhãn, tạo dataset và train model.
  - Các bạn dễ nắm bắt và mau chóng thành thục, cùng với công cụ tốt nên tiết kiệm thời gian so với gắn nhãn truyền thống.
  - Các thành viên hiện thực bên model có trách nhiệm trong công việc và luôn cố gắng hoàn thành nhiệm vụ được giao một cách tốt nhất.
]
== Khó khăn
Tuy nhiên vì nhiều lý do chủ quan và khách quan khác nhau, trong quá trình hiện thực dự án các thành viên trong nhóm đã gặp một số vấn đề như sau:
=== Phần mobile app
#block(inset:(left:1cm))[
  - Gặp khó khăn trong việc setup môi trường công cụ (Android Studio), JDK để chạy dự án vì đây là lần đầu các thành viên tiếp xúc với React Native Mobile App.
  - Do thiếu hụt về mặt thời gian và giới hạn phần cứng nên các chức năng mà nhóm điều chỉnh chưa được nhiều. chủ yếu là giao diện và hiệu ứng trên frontend, chưa can thiệp được nhiều vào cách backend của máy hoạt động.
]
=== Phần model
#block(inset:(left:1cm))[
  - Số lượng ảnh lớn, kèm theo việc lịch học của các bạn khá dày nên không thực có nhiều thời gian để gán nhãn, một số nhãn dán bị thiếu, sót, bị sai, nên phải cần thời gian sửa lại.
  - Do giới hạn phần cứng nên việc train model bị giới hạn ở những temp có dataset kích thước từ trung bình trở lại, bởi nếu train template với dataset lớn sẽ quá giới hạn phần cứng, thành quả train được cũng mất theo, nên việc train model bị giới hạn, gây cản trở công việc của phân ban model.
]

#pagebreak()