= Quá trình chỉnh sửa chức năng

== Cập nhật chức năng thay đổi mật khẩu cho ứng dụng
Cập nhật chức năng thay đổi mật khẩu trong file *UserInfomation.tsx* trong folder *Screen*
#figure(caption: [Chức năng thay đổi mật khẩu],
    image("../assets/change-password-service-image.png")
)

== Thay đổi lại một số template của type5 và type6
Việc phân chia các loại giàn giáo theo type dựa vào tên tiếng Nhật thay vì các ký tự alphabet trong file *SelectType.tsx* trong folder *Screen* sẽ giúp phân loại các loại giào giáo chính xác hơn, đặc biệt khi có những loại mới được thêm vào hệ thống.
#grid(
  columns: (1fr, 1fr),
  gutter: 3pt,
  figure(caption: [Chức năng thay đổi và lựa chọn các loại giàn giáo theo type 5],
    image("../assets/change-password-service-image.png")
  ),
  figure(caption: [Chức năng thay đổi và lựa chọn các loại giàn giáo theo type 6],
    image("../assets/change-password-service-image.png")
)
)


== Cập nhật tính năng thêm phân cấp trong chức năng thêm ảnh ở mục List Order.
Thêm chức năng thêm phân cấp trong chức năng thêm ảnh ở mục List Order trong file *ProjectInfo.tsx* trong folder *Screen* giúp cho người dùng tiện lợi hơn trong việc lựa chọn các loại giàn giáo một cách phù hợp
#figure(
    caption: [Chức năng thêm phân cấp trong chức năng thêm ảnh ở mục List Order],
    image("../assets/change-list-service-image.png")

)

== Cập nhật tính năng thay đổi kết quả giàn giáo được đếm khi người dùng thay đổi threshold của hệ thống cho toàn bộ kết quả.
Cập nhật chức năng thay đổi kết quả giàn giáo được đếm khi người dùng thay đổi threshold của hệ thống cho toàn bộ kết quả trong file *ProjectInfo.tsx* trong folder *Screen* giúp cho người dùng có thể thay đổi kết quả một cách nhanh chóng và dễ dàng hơn.
#figure(
  caption: [Kết quả trước khi thay đổi threshold],
  image("../assets/change-threshold-service-image1.png")
)

#figure(
  caption: [Chức năng thay đổi threshold trong một kết quả],
  image("../assets/change-threshold-service-image2.png")
)

#figure(
  caption: [Kết quả sau khi thay đổi threshold],
  image("../assets/change-threshold-service-image3.png")
)

#pagebreak()