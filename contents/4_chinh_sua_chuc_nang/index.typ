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
    image("../assets/change-template-type5-image.png")
  ),
  figure(caption: [Chức năng thay đổi và lựa chọn các loại giàn giáo theo type 6],
    image("../assets/change-template-type6-image.png")
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
  image("../assets/change-threshold-service-image3.png")
)

#figure(
  caption: [Kết quả sau khi thay đổi threshold],
  image("../assets/change-threshold-service-image2.png")
)


== Xây dựng database MongoDB để lưu trữ thông tin của ứng dụng

Xây dựng database MongoDB để lưu trữ thông tin của ứng dụng giúp cho việc lưu trữ thông tin của ứng dụng một cách dễ dàng và tiện lợi hơn.

=== Xây dựng Relational mapping cho database MongoDB
#figure(caption: [Relational mapping cho database MongoDB],
    image("../assets/Relational-mapping.png")
)

Mô tả sơ đồ các bảng trong database MongoDB:
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Tên bảng*], [*Mô tả*],
    [User], [Bảng lưu trữ thông tin của người dùng bao gồm email, tên, họ, vai trò, trạng thái người dùng],
    [Type], [Bảng lưu trữ thông tin của các loại giàn giáo bao gồm ảnh của kiểu, tên kiểu],
    [Model], [Bảng lưu trữ thông tin của model bao gồm tên, bản cập nhật, trạng thái và các kiểu giàn giáo có trong model đó],
    [Image], [Bảng lưu trữ thông tin của ảnh bao gồm link ảnh, người chụp ảnh, kiểu giàn giáo có trong ảnh, đơn hàng mà ảnh đó thuộc về, trạng thái ảnh],
    [Order], [Bảng lưu trữ thông tin của đơn hàng bao gồm tên đơn hàng, người tạo, các đơn hàng con trong đơn hàng (nếu có), đơn hàng cha của đơn hàng (nếu có), trạng thái đơn hàng, số lượng ảnh trong đơn hàng],
    [Feedback], [Bảng lưu trữ thông tin của phản hồi bao gồm nội dung phản hồi, người phản hồi]
)


=== Xây dựng UML Class Diagram cho database MongoDB
#figure(
    caption: [UML Class Diagram cho
    database MongoDB],
    image("../assets/UML-Class-Diagram.png")
)
#pagebreak()