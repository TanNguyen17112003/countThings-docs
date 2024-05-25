= Quá trình chỉnh sửa UI

== Login
=== Cập nhật chức năng show password khi login
Chỉnh sửa phần password trong file *LoginForm.tsx*
#figure(
    caption: [Chỉnh sửa file *LoginForm.tsx*],
    image("../assets/login-code.png")
)

Trước khi được chỉnh sửa, khi chúng ta nhấn vào biểu tượng "show password" ở bên phải trong phần nhập password, password sẽ vẫn bị ẩn và không thể thấy được.
#figure(
    caption: [Chức năng show password khi login trước khi được chỉnh sửa],
    image("../assets/login-old.png")
)

Sau khi được chỉnh sửa, password sẽ hiện cho người dùng khi chúng ta nhấn vào biểu tượng "show password".
#figure(
    caption: [Chức năng show password khi login sau khi được chỉnh sửa],
    image("../assets/login-new.png")
)

== Users
=== Cập nhật giao diện danh sách người dùng 
Chỉnh sửa file *ListUser.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *ListUser.tsx*],
    image("../assets/list-user-code.png")
)

Trước khi được chỉnh sửa, danh sách người dùng không có bố cục rõ ràng, căn lề không đều nhau và không có đường viền giữa các hàng và các cột trong bảng.
#figure(
    caption: [Danh sách người dùng trước khi được chỉnh sửa],
    image("../assets/list-user-old.png")
)
Sau khi được chỉnh sửa, danh sách người dùng đã có bố cục rõ ràng hơn, căn lề giữa cho tất cả các hàng và thêm đường viền giữa các hàng và các cột.
#figure(
    caption: [Danh sách người dùng sau khi được chỉnh sửa],
    image("../assets/list-user-new.png")
)

=== Cập nhật giao diện chỉnh sửa thông tin người dùng
Chỉnh sửa file *EditUser.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *EditUser.tsx*],
    image("../assets/edit-user-code.png")
)
Trước khi được chỉnh sửa, các field chỉnh sửa thông tin có độ dài không bằng nhau, dẫn đến giao diện không được đẹp. Đồng thời, bảng danh sách các order có bố cục không rõ ràng.
#figure(
    caption: [Giao diện chỉnh sửa thông tin người dùng trước khi được chỉnh sửa],
    image("../assets/edit-user-old.png")
)
Sau khi được chỉnh sửa, các field chỉnh sửa thông tin đã có độ dài bằng nhau làm cho giao diện dễ nhìn hơn và bảng danh sách các order đã có bố cục rõ ràng hơn.
#figure(
    caption: [Giao diện chỉnh sửa thông tin người dùng sau khi được chỉnh sửa],
    image("../assets/edit-user-new.png")
)

=== Cập nhật giao diện tạo mới người dùng
Chỉnh sửa file *CreateUser.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *CreateUser.tsx*],
    image("../assets/create-user-code.png")
)
Trước khi được chỉnh sửa, các field chỉnh sửa thông tin có độ dài không bằng nhau, dẫn đến giao diện không được đẹp.
#figure(
    caption: [Giao diện tạo mới người dùng trước khi được chỉnh sửa],
    image("../assets/create-user-old.png")
)
Sau khi được chỉnh sửa, các field chỉnh sửa thông tin đã có độ dài bằng nhau làm cho giao diện dễ nhìn hơn.
#figure(
    caption: [Giao diện tạo mới người dùng sau khi được chỉnh sửa],
    image("../assets/create-user-new.png")
)

== Types
=== Cập nhật giao diện danh sách các type
Chỉnh sửa cách bố trí của các type trong file *ListType.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *ListType.tsx*],
    image("../assets/list-type-code.png")
)
Trước khi được chỉnh sửa, danh sách các type sẽ có 1 khoảng trống nhỏ ở phía sau dẫn đến mất cân bằng về bố cục.
#figure(
    caption: [Giao diện danh sách các type trước khi được chỉnh sửa],
    image("../assets/list-types-old.png")
)
Sau khi được chỉnh sửa, danh sách các type sẽ được mở rộng ra full chiều dài của màn hình, làm cho bố cục trở nên đẹp mắt hơn.
#figure(
    caption: [Giao diện danh sách các type sau khi được chỉnh sửa],
    image("../assets/list-types-new.png")
)

=== Cập nhật giao diện chỉnh sửa từng type
Chỉnh sửa file *EditType.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *EditType.tsx*],
    image("../assets/edit-type-code.png")
)
Trước khi được chỉnh sửa, bảng thông tin model có bố cục không rõ ràng.
#figure(
    caption: [Giao diện chỉnh sửa từng type trước khi được chỉnh sửa],
    image("../assets/edit-types-old.png")
)
Sau khi được chỉnh sửa, bảng thông tin model có bố cục đẹp mắt và rõ ràng hơn.
#figure(
    caption: [Giao diện chỉnh sửa từng type sau khi được chỉnh sửa],
    image("../assets/edit-types-new.png")
)


== Models
=== Cập nhật giao diện danh sách các model
Chỉnh sửa file *ListModel.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *ListModel.tsx*],
    image("../assets/list-model-code.png")
)
Trước khi được chỉnh sửa, danh sách các model có bố cục không rõ ràng.
#figure(
    caption: [Danh sách các model trước khi được chỉnh sửa],
    image("../assets/list-model-old.png")
)
Sau khi được chỉnh sửa, danh sách các model có bố cục đẹp mắt và rõ ràng hơn.
#figure(
    caption: [Danh sách các model sau khi được chỉnh sửa],
    image("../assets/list-model-new.png")
)

== Images
=== Cập nhật giao diện danh sách các image
Chỉnh sửa cách bố trí của các image trong file *ListImage.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *ListImage.tsx*],
    image("../assets/list-image-code.png")
)
Trước khi được chỉnh sửa, danh sách các image sẽ có 1 khoảng trống nhỏ ở phía sau dẫn đến mất cân bằng về bố cục.
#figure(
    caption: [Danh sách các image trước khi được chỉnh sửa],
    image("../assets/list-image-old.png")
)
Sau khi được chỉnh sửa, danh sách các image sẽ được mở rộng ra full chiều dài của màn hình, làm cho bố cục trở nên đẹp mắt hơn.
#figure(
    caption: [Danh sách các image sau khi được chỉnh sửa],
    image("../assets/list-image-new.png")
)

Trước khi được chỉnh sửa, khi thu hẹp thanh navbar lại, danh sách các image sẽ không cân bằng về chiều cao.
#figure(
    caption: [Danh sách các image khi thu hẹp thanh navbar trước khi được chỉnh sửa],
    image("../assets/list-image-old-1.png")
)
Sau khi được chỉnh sửa, khi thu hẹp thanh navbar lại, danh sách các image sẽ cân bằng về chiều cao, làm bố cục dễ nhìn hơn.
#figure(
    caption: [Danh sách các image khi thu hẹp thanh navbar sau khi được chỉnh sửa],
    image("../assets/list-image-new-1.png")
)

=== Cập nhật giao diện tạo các image
Chỉnh sửa file *CreateImage.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *CreateImage.tsx*],
    image("../assets/create-image-code.png")
)
Trước khi được chỉnh sửa, field type được trình bày dưới dạng các radio button, dẫn đến nếu type quá nhiều sẽ khiến người dùng phải lướt tìm rất lâu.
#figure(
    caption: [Field type trước khi được chỉnh sửa],
    image("../assets/create-image-old.png")
)
Sau khi được chỉnh sửa, field type được trình bày dưới dạng selection, giúp giảm bớt thời gian tìm kiếm cho người dùng.
#figure(
    caption: [Field type sau khi được chỉnh sửa],
    image("../assets/create-image-new.png")
)

=== Cập nhật giao diện chỉnh sửa các image
Chỉnh sửa file *EditImage.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *EditImage.tsx*],
    image("../assets/edit-image-code.png")
)
Trước khi được chỉnh sửa, field type được trình bày dưới dạng các radio button, dẫn đến nếu type quá nhiều sẽ khiến người dùng phải lướt tìm rất lâu.
#figure(
    caption: [Field type trước khi được chỉnh sửa],
    image("../assets/edit-image-old.png")
)
Sau khi được chỉnh sửa, field type được trình bày dưới dạng selection, giúp giảm bớt thời gian tìm kiếm cho người dùng.
#figure(
    caption: [Field type sau khi được chỉnh sửa],
    image("../assets/edit-image-new.png")
)

== Orders
=== Cập nhật giao diện danh sách các order
Chỉnh sửa file *ListOrder.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *ListOrder.tsx*],
    image("../assets/list-order-code.png")
)
Trước khi được chỉnh sửa, danh sách các order có bố cục không rõ ràng.
#figure(
    caption: [Danh sách các order trước khi được chỉnh sửa],
    image("../assets/list-order-old.png")
)
Sau khi được chỉnh sửa, danh sách các order có bố cục đẹp mắt và rõ ràng hơn.
#figure(
    caption: [Danh sách các order sau khi được chỉnh sửa],
    image("../assets/list-order-new.png")
)

=== Cập nhật giao diện tạo mới các order
Chỉnh sửa file *CreateOrder.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *CreateOrder.tsx*],
    image("../assets/create-order-code.png")
)
Trước khi được chỉnh sửa, các field chỉnh sửa thông tin có độ dài không bằng nhau, dẫn đến giao diện không được đẹp.
#figure(
    caption: [Giao diện tạo mới các order trước khi được chỉnh sửa],
    image("../assets/create-order-old.png")
)
Sau khi được chỉnh sửa, các field chỉnh sửa thông tin đã có độ dài bằng nhau làm cho giao diện dễ nhìn hơn.
#figure(
    caption: [Giao diện tạo mới các order sau khi được chỉnh sửa],
    image("../assets/create-order-new.png")
)

=== Cập nhật giao diện chỉnh sửa các order
Chỉnh sửa file *EditOrder.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *EditOrder.tsx*],
    image("../assets/edit-order-code.png")
)
Trước khi được chỉnh sửa, các field chỉnh sửa thông tin có độ dài không bằng nhau, dẫn đến giao diện không được đẹp. Đồng thời, bảng danh sách các image có bố cục không rõ ràng.
#figure(
    caption: [Giao diện chỉnh sửa các order trước khi được chỉnh sửa],
    image("../assets/edit-order-old.png")
)
Sau khi được chỉnh sửa, các field chỉnh sửa thông tin đã có độ dài bằng nhau làm cho giao diện dễ nhìn hơn và bảng danh sách các image đã có bố cục rõ ràng hơn.
#figure(
    caption: [Giao diện chỉnh sửa các order sau khi được chỉnh sửa],
    image("../assets/edit-order-new.png")
)


== Feedbacks
=== Cập nhật giao diện danh sách các feedback
Chỉnh sửa file *ListFeedback.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *ListFeedback.tsx*],
    image("../assets/list-feedback-code.png")
)
Trước khi được chỉnh sửa, danh sách các feedback có bố cục không rõ ràng.
#figure(
    caption: [Danh sách các feedback trước khi được chỉnh sửa],
    image("../assets/list-feedback-old.png")
)
Sau khi được chỉnh sửa, danh sách các feedback có bố cục đẹp mắt và rõ ràng hơn.
#figure(
    caption: [Danh sách các feedback sau khi được chỉnh sửa],
    image("../assets/list-feedback-new.png")
)

=== Cập nhật giao diện tạo mới các feedback
Chỉnh sửa file *CreateFeedback.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *CreateFeedback.tsx*],
    image("../assets/create-feedback-code.png")
)
Trước khi được chỉnh sửa, các field chỉnh sửa thông tin có độ dài ngắn, dẫn đến các thông tin sẽ khó đọc.
#figure(
    caption: [Giao diện tạo mới feedback trước khi được chỉnh sửa],
    image("../assets/create-feedback-old.png")
)
Sau khi được chỉnh sửa, các field chỉnh sửa thông tin đã có độ dài dài hơn và dễ đọc thông tin hơn.
#figure(
    caption: [Giao diện tạo mới feedback sau khi được chỉnh sửa],
    image("../assets/create-feedback-new.png")
)

=== Cập nhật giao diện chỉnh sửa feedback
Chỉnh sửa file *EditFeedback.tsx* và thêm các thuộc tính CSS để giao diện đẹp hơn.
#figure(
    caption: [Chỉnh sửa file *EditFeedback.tsx*],
    image("../assets/edit-feedback-code.png")
)
Trước khi được chỉnh sửa, các field chỉnh sửa thông tin có độ dài không bằng nhau, dẫn đến giao diện không được đẹp.
#figure(
    caption: [Giao diện chỉnh sửa feedback trước khi được chỉnh sửa],
    image("../assets/edit-feedback-old.png")
)
Sau khi được chỉnh sửa, các field chỉnh sửa thông tin đã có độ dài bằng nhau làm cho giao diện dễ nhìn hơn.
#figure(
    caption: [Giao diện chỉnh sửa feedback sau khi được chỉnh sửa],
    image("../assets/edit-feedback-new.png")
)