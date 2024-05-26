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

#figure(caption: [Sử dụng database MongoDB để lưu trữ],
    image("../assets/dbmongodb.jpg")
)


*Lợi ích của việc lưu trữ trên MongoDB so với lưu trên Server counting:*
#block(inset: 10pt)[
  - Dễ dàng mở rộng hệ thống
  - Dễ dàng quản lý dữ liệu
  - Dễ dàng thực hiện các thao tác truy vấn dữ liệu
  - Dễ dàng thực hiện các thao tác cập nhật dữ liệu
]

Database lưu trữ thông tin của ứng dụng: #link("mongodb+srv://duytan17112003:yUCi13JI0GZgpPvT@countthings.sa16sw8.mongodb.net/?retryWrites=true&w=majority&appName=CountThings")[tại đây].

Cấu trúc collection được lưu trữ:
#figure(caption: [Cấu trúc collection được lưu trữ],
    image("../assets/mongo-db.png")
)

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

Dựa vào sơ đồ class diagram trên ta có thể suy ra mối quan hệ về sự tồn tại của các thực thể như sau:
#block(inset: 10pt)[
  - Một User hoặc một Type có thể khởi tạo độc lập.
  - Một Modal chỉ có thể được tạo khi có ít nhất một Type đã được tạo.
  - Một Order chỉ có thể được tạo khi có một User đã được tạo.
  - Một Feedback chỉ có thể được tạo khi có một User đã được tạo.
  - Một Image chỉ có thể được tạo khi có một User, một Type và một Order đã được tạo.
]
#pagebreak()

=== Xây dựng API cho database MongoDB
Nhóm tiến hành xây dựng API cho database MongoDB để có thể thực hiện các thao tác CRUD trên database một cách dễ dàng và nhanh chóng hơn. Nhóm tiến hành host server backend bằng nền tảng Railway và Swagger #link("https://countthingsamplebackend-production.up.railway.app/api-docs/?fbclid=IwZXh0bgNhZW0CMTAAAR2POTkl1-Rm-us9GqAhIEFkvKu-IAjkIBcC60y4Lxo9ctpuqKlMOoVTqco_aem_AdaQEdEy6vPovR0Re2Lo3wGDUKASkTWbQawfWZKAlna9p0KnZWllcgc4hNAtjQ8362A-x2Wib4I7xO5phEZBCfX_#/")[tại đây]

#figure(caption: [Railway],
    image("../assets/logo-dark.svg", width: 40%)
)

Kết quả server được host tại Swagger:

#figure(caption: [Server API được host tại Swagger UI],
    image("../assets/swagger.png")
)

Lý do lựa chọn Railway:
#block(inset: 10pt)[
  - Duy trì server một cách ổn định.
  - Lưu lại lịch sử của các thao tác trên server một cách chi tiết.
  - Giá cả phải chăng khi miễn phí 5 đô la đầu tiên cho người dùng.
]

Lý do lựa chọn Swagger UI:
#block(inset: 10pt)[
  - Minh họa API thực qua tính năng giao diện swagger UI, cung cấp dữ liệu thực giúp người dùng thao tác API dễ hơn.
  - Dễ dàng quản lý, thực hiện và điều chỉnh các API.
]

=== Hiện thực API cho các dịch vụ của app
==== Người dùng
===== Đăng ký để tạo người dùng mới 
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - email: string,
  - firstName: string,
  - lastName: string,
  - password: string,
  - role: string,
  - status: number
]
#figure(caption: [API Đăng ký người dùng mới],
    image("../assets/signup-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/signup-result.png")
)
*Kết quả của dữ liệu mới trong database*:
#figure(caption: [Kết quả của dữ liệu mới trong database],
    image("../assets/signup-db.png")
)

===== Đăng nhập để xác thực người dùng
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - email: string,
  - password: string
]
#figure(caption: [API Đăng nhập người dùng],
    image("../assets/login-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/login-result.png")
)
Chúng ta sử dụng token trả về để có thể tiếp tục sử dụng các dịch vụ của hệ thống:
#figure(caption: [Token trả về từ server],
    image("../assets/authorize.png")
)

==== Kiểu
===== Lấy danh sách các kiểu giàn giáo
#figure(caption: [API Lấy danh sách các kiểu giàn giáo],
    image("../assets/getTypes-process.png")
)

*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getTypes-result.png")
)

===== Tạo một kiểu giàn giáo mới:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - image: string,
  - name: string
]

#figure(caption: [API Tạo một kiểu giàn giáo mới],
    image("../assets/createType-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/createType-result.png")
)

*Kết quả mới trong database*:
#figure(caption: [Kết quả mới trong database],
    image("../assets/createType-db.png")
)

===== Lấy ra một kiểu giàn giáo cụ thể
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Lấy ra một kiểu giàn giáo cụ thể],
    image("../assets/getType-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getType-result.png")
)

===== Thay đổi thông tin của một kiểu giàn giáo cụ thể:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string,
]

Các trường dữ liệu có thể thay đổi của kiểu giàn giáo:
#block(inset: 10pt)[
  - image: string,
  - name: string
]
#figure(caption: [API Thay đổi thông tin của một kiểu giàn giáo cụ thể],
    image("../assets/updateType-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/updateType-result.png")
)
*Thông tin của dữ liệu sau khi được cập nhật trong database:*
#figure(caption: [Thông tin của dữ liệu sau khi được cập nhật trong database],
    image("../assets/updateType-db.png")
)

===== Xóa một kiểu giàn giáo trong hệ thống
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Xóa một kiểu giàn giáo trong hệ thống],
    image("../assets/deleteType-process.png")
)
*Kết quả trả về từ server:*
#figure(caption: [Kết quả trả về từ server],
    image("../assets/deleteType-result.png")
)

==== Model
===== Lấy danh sách các model
#figure(caption: [API Lấy danh sách các model],
    image("../assets/getModels-process.png")
)

*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getModels-result.png")
)

===== Tạo một model mới:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - name: string,
  - verson: number,
  - status: number,
  - type: string,
]
#figure(caption: [API Tạo một model mới],
    image("../assets/createModel-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/createModel-result.png")
)
*Kết quả của một model mới trong database:*
#figure(caption: [Kết quả của một model mới trong database],
    image("../assets/createModel-db.png")
)

===== Láy ra một model cụ thể
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Lấy ra một model cụ thể],
    image("../assets/getModel-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getModel-result.png")
)

===== Thay đổi thông tin của một model cụ thể:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string,
]

Các trường dữ liệu có thể thay đổi của model:
#block(inset: 10pt)[
  - name: string,
  - verson: number,
  - status: number,
  - type: string,
]
#figure(caption: [API Thay đổi thông tin của một model cụ thể],
    image("../assets/updateModel-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/updateModel-result.png")
)
*Thông tin của dữ liệu sau khi được cập nhật trong database:*
#figure(caption: [Thông tin của dữ liệu sau khi được cập nhật trong database],
    image("../assets/updateModel-db.png")
)

===== Xóa một model trong hệ thống
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Xóa một model trong hệ thống],
    image("../assets/deleteModel-process.png")
)
*Kết quả trả về từ server:*
#figure(caption: [Kết quả trả về từ server],
    image("../assets/deleteModel-result.png")
)

==== Ảnh 
===== Lấy danh sách các ảnh
#figure(caption: [API Lấy danh sách các ảnh],
    image("../assets/getImages-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getImages-result.png")
)

===== Tạo một ảnh mới:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - imageLink: string,
  - type: string,
  - order: string,
  - status: number
]
#figure(caption: [API Tạo một ảnh mới],
    image("../assets/createImage-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/createImage-result.png")
)
*Kết quả của một ảnh mới trong database:*
#figure(caption: [Kết quả của một ảnh mới trong database],
    image("../assets/createImage-db.png")
)

===== Láy ra một ảnh cụ thể
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Lấy ra một ảnh cụ thể],
    image("../assets/getImage-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getImage-result.png")
)

===== Thay đổi thông tin của một ảnh cụ thể:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string,
]

Các trường dữ liệu có thể thay đổi của ảnh:
#block(inset: 10pt)[
  - imageLink: string,
  - type: string,
  - order: string,
  - status: number
]
#figure(caption: [API Thay đổi thông tin của một ảnh cụ thể],
    image("../assets/updateImage-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/updateImage-result.png")
)
*Thông tin của dữ liệu sau khi được cập nhật trong database:*
#figure(caption: [Thông tin của dữ liệu sau khi được cập nhật trong database],
    image("../assets/updateImage-db.png")
)

===== Xóa một ảnh trong hệ thống
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Xóa một ảnh trong hệ thống],
    image("../assets/deleteImage-process.png")
)
*Kết quả trả về từ server:*
#figure(caption: [Kết quả trả về từ server],
    image("../assets/deleteImage-result.png")
)

==== Đơn hàng
===== Lấy danh sách các đơn hàng
#figure(caption: [API Lấy danh sách các đơn hàng],
    image("../assets/getOrders-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getOrders-result.png")
)

===== Tạo một đơn hàng mới:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  name: string,
  parent: string,
  status: string,
  numberOfImage: number
]
#figure(caption: [API Tạo một đơn hàng mới],
    image("../assets/createOrder-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/createOrder-result.png")
)
*Kết quả của một đơn hàng mới trong database:*
#figure(caption: [Kết quả của một đơn hàng mới trong database],
    image("../assets/createOrder-db.png")
)

===== Láy ra một đơn hàng cụ thể
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Lấy ra một đơn hàng cụ thể],
    image("../assets/getOrder-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getOrder-result.png")
)

===== Thay đổi thông tin của một đơn hàng cụ thể:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string,
]

Các trường dữ liệu có thể thay đổi của đơn hàng:
#block(inset: 10pt)[
  - name: string,
  - parent: string,
  - status: string,
  - numberOfImage: number
]
#figure(caption: [API Thay đổi thông tin của một đơn hàng cụ thể],
    image("../assets/updateOrder-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/updateOrder-result.png")
)
*Thông tin của dữ liệu sau khi được cập nhật trong database:*
#figure(caption: [Thông tin của dữ liệu sau khi được cập nhật trong database],
    image("../assets/updateOrder-db.png")
)

===== Xóa một đơn hàng trong hệ thống
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Xóa một đơn hàng trong hệ thống],
    image("../assets/deleteOrder-process.png")
)
*Kết quả trả về từ server:*
#figure(caption: [Kết quả trả về từ server],
    image("../assets/deleteOrder-result.png")
)

==== Phản hồi
===== Lấy danh sách các phản hồi
#figure(caption: [API Lấy danh sách các phản hồi],
    image("../assets/getFeedbacks-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getFeedbacks-result.png")
)

===== Tạo một phản hồi mới:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - content: string,
]
#figure(caption: [API Tạo một phản hồi mới],
    image("../assets/createFeedback-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/createFeedback-result.png")
)
*Kết quả của một phản hồi mới trong database:*
#figure(caption: [Kết quả của một phản hồi mới trong database],
    image("../assets/createFeedback-db.png")
)

===== Láy ra một phản hồi cụ thể
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Lấy ra một phản hồi cụ thể],
    image("../assets/getFeedback-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/getFeedback-result.png")
)

===== Thay đổi thông tin của một phản hồi cụ thể:
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string,
]

Các trường dữ liệu có thể thay đổi của phản hồi:
#block(inset: 10pt)[
  - content: string,
]
#figure(caption: [API Thay đổi thông tin của một phản hồi cụ thể],
    image("../assets/updateFeedback-process.png")
)
*Kết quả trả về từ server*:
#figure(caption: [Kết quả trả về từ server],
    image("../assets/updateFeedback-result.png")
)
*Thông tin của dữ liệu sau khi được cập nhật trong database:*
#figure(caption: [Thông tin của dữ liệu sau khi được cập nhật trong database],
    image("../assets/updateFeedback-db.png")
)

===== Xóa một phản hồi trong hệ thống
Các trường dữ liệu và kiểu tương ứng sau đây:
#block(inset: 10pt)[
  - id: string
]
#figure(caption: [API Xóa một phản hồi trong hệ thống],
    image("../assets/deleteFeedback-process.png")
)
*Kết quả trả về từ server:*
#figure(caption: [Kết quả trả về từ server],
    image("../assets/deleteFeedback-result.png")
)



