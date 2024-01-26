= Use-case diagram and use-case scenario

#figure(caption: [Use-case tổng quát toàn bộ hệ thống],
    image("../images/usecase/DACNPM-WholeSystem.png")
)

#pagebreak()
== Module mua sắm mô hình 3D (Shopping)
#figure(caption: [Module mua sắm mô hình 3D],
    image("../images/usecase/DACNPM-MakeOrder.png")
)

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Tìm Kiếm Mô hình 3D*],
    [Actors], [Khách hàng.],
    [Brief Description], [Khách hàng sử dụng chức năng này để tìm kiếm mô hình 3D, hỗ trợ lọc và sắp xếp dựa trên các tiêu chí khác nhau.],
    [Preconditions], [Khách hàng truy cập trang web và điều hướng tới trang sản phẩm.],
    [Postconditions], [Kết quả tìm kiếm được hiển thị dựa trên các tiêu chí lọc và sắp xếp.],
    [Normal Flow], [
        1. Khách hàng truy cập trang web và điều hướng đến trang sản phẩm.
        2. Hệ thống hiển thị danh sách các mô hình 3D và cung cấp một thanh tìm kiếm và các tùy chọn lọc và sắp xếp.
        3. Khách hàng nhập từ khóa cần tìm kiếm vào thanh tìm kiếm.
        4. Khách hàng chọn các tiêu chí lọc (ví dụ: phân loại, giá tiền) để giới hạn danh sách mô hình.
        5. Khách hàng chọn tiêu chí sắp xếp (ví dụ: theo tên mô hình hoặc giá tiền) để sắp xếp danh sách.
        6. Hệ thống thực hiện tìm kiếm dựa trên từ khóa và tiêu chí lọc và sắp xếp.
        7. Hệ thống hiển thị danh sách mô hình dựa trên kết quả tìm kiếm, lọc và sắp xếp.
    ],
    [Alternative Flow], [
        3a. Khách hàng có thể chọn nhiều tiêu chí lọc để kết hợp nhiều điều kiện lọc.\ 
        5a. Nếu không có kết quả nào phù hợp với tiêu chí lọc, hệ thống thông báo cho khách hàng rằng không tìm thấy kết quả.
    ],
    [Exception Flow], [
        2a. Nếu không có mô hình nào trong hệ thống hoặc có lỗi trong việc lấy danh sách mô hình, hệ thống thông báo cho khách hàng và không hiển thị danh sách.
    ],
)
#figure(caption: [Use-case tìm kiếm mô hình 3D], table())\

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Xem Thông Tin Mô hình*],
    [Actors], [Khách hàng.],
    [Brief Description], [Khách hàng sử dụng chức năng này để xem thông tin chi tiết của một mô hình 3D trong hệ thống.],
    [Preconditions], [Khách hàng đã truy cập trang web và có quyền truy cập đối với mô hình 3D cần xem.],
    [Postconditions], [Thông tin chi tiết của mô hình 3D được hiển thị cho khách hàng.],
    [Normal Flow], [
        1. Khách hàng truy cập trang web và điều hướng đến trang sản phẩm.
        2. Hệ thống hiển thị danh sách các mô hình 3D.
        3. Khách hàng chọn một mô hình từ danh sách để xem thông tin chi tiết.
        4. Hệ thống hiển thị thông tin chi tiết của mô hình, bao gồm tên, mô tả, giá tiền, hình ảnh, và thông tin khác.
    ],
    [Alternative Flow], [
        4a1. Trong quá trình xem thông tin mô hình, khách hàng có thể chọn "Like" mô hình.\ 
        4a2. Hệ thống ghi nhận lượt "Like" cho sản phẩm và thêm mô hình vào danh sách mô hình đã "Like" của khách hàng.\ \
        4b1. Trong quá trình xem thông tin mô hình, khách hàng có thể chọn "Thêm vào Giỏ Hàng".\
        4b2. Hệ thống ghi nhận lựa chọn của khách hàng và thêm mô hình vào giỏ hàng của khách hàng.
    ],
    [Exception Flow], [
        3a. Nếu mô hình không tồn tại hoặc có lỗi trong việc lấy thông tin mô hình, hệ thống thông báo cho khách hàng rằng không thể xem thông tin mô hình.
    ],
)
#figure(caption: [Use-case xem thông tin mô hình 3D], table())\

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Tải mô hình 3D*],
    [Actors], [Khách hàng.],
    [Brief Description], [Khách hàng sử dụng chức năng này để upload lên file .gcode của riêng mình.],
    [Preconditions], [Khách hàng đã truy cập thành công vào trang web và điều hướng tới giao diện Upload.],
    [Postconditions], [Khách hàng upload thành công file .gcode lên hệ thống và thêm các file này vào giỏ hàng.],
    [Normal Flow], 
       [ 1. Bên cạnh biểu tượng người dùng trên thanh điều hướng, hệ thống sẽ cung cấp thêm một nút *Upload*.\
         2. Khách hàng nhấn nút *Upload* để upload file .gcode lên hệ thống.\
         3. Hệ thống hiển thị lên màn hình một khung giao diện dùng để upload file .gcode.\
         4. Khách hàng chọn file .gcode từ thiết bị của mình và nhấn nút *Upload* để upload file .gcode lên hệ thống.\
         5. Khách hàng ấn nút *Xác nhận* để upload file .gcode lên hệ thống.\
         6. Hệ thống sẽ lưu thông tin file .gcode của khách hàng và hiển thị ra màn hình như những mô hình có sẵn.\
         7. Mỗi mô hình 3D sẽ có nút *Thêm vào giỏ hàng* để khách hàng thêm mô hình 3D vào giỏ hàng.\
         8. Khi được thêm vào giỏ hàng, mô hình 3D sẽ được hiển thị trong giỏ hàng.\
    ],
    [Alternative Flow], [
        2a. Khách hàng có thể nhấn nút *Hủy* để quay về trang chủ.\ 
        4a. Khách hàng có thể kéo thả file .gcode vào khung giao diện để upload file .gcode lên hệ thống. \ 
        5a. Khách hàng có thể tiếp tục ấn nút *Upload* để upload file .gcode khác lên hệ thống thay vì nút *Xác nhận*.
    ],
    [Exception Flow],[
        5a. Nếu file không có định dạng là .gcode, hệ thống sẽ hiển thị thông báo *File không hợp lệ*.
    ],
)
#figure(caption: [Use-case tải mô hình 3D], table())\

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Xem Chi Tiết Giỏ Hàng*],
    [Actors], [Khách hàng.],
    [Brief Description], [Khách hàng sử dụng chức năng này để xem chi tiết giỏ hàng của họ, bao gồm danh sách các mô hình đã chọn và thông tin chi tiết của từng mô hình.],
    [Preconditions], [Khách hàng đã truy cập trang web.],
    [Postconditions], [Thông tin chi tiết của giỏ hàng, bao gồm danh sách các mô hình và thông tin tổng giá trị, được hiển thị cho khách hàng.],
    [Normal Flow], [
        1. Khách hàng truy cập trang web và điều hướng đến trang Chi Tiết Giỏ Hàng.
        2. Hệ thống hiển thị danh sách các mô hình trong giỏ hàng của khách hàng, bao gồm tên mô hình, giá tiền, số lượng và tổng giá trị của mô hình.
        3. Hệ thống hiển thị tổng giá trị của các mô hình được lựa chọn.
    ],
    [Alternative Flow], [
        2a1. Trong quá trình xem chi tiết giỏ hàng, khách hàng có thể thay đổi số lượng của mô hình trong giỏ hàng.\
        2a2. Hệ thống cập nhật số lượng và tổng giá trị cho mô hình đã thay đổi.\
        2a3. Hệ thống tính lại tổng giá trị của giỏ hàng sau khi thay đổi số lượng.\ \
        2b1. Trong quá trình xem chi tiết giỏ hàng, khách hàng có thể xóa mô hình khỏi giỏ hàng.\
        2b2. Hệ thống loại bỏ mô hình khỏi danh sách giỏ hàng và cập nhật tổng giá trị của giỏ hàng.\
        2b3. Hệ thống tính lại tổng giá trị của giỏ hàng sau khi xóa mô hình.\ \
        2c1. Trong quá trình xem chi tiết giỏ hàng, khách hàng có thể chọn mô hình từ giỏ hàng để đặt hàng.\
        2c2. Hệ thống đánh dấu mô hình được chọn.\
        2c3. Khách hàng nhấn nút *Đặt hàng*, chỉ các mô hình được đánh dấu mới được thêm vào đơn hàng.\
    ],
    [Exception Flow], [
        2a. Nếu giỏ hàng của khách hàng không có mô hình nào, hệ thống thông báo cho khách hàng rằng giỏ hàng trống.
    ],
)
#figure(caption: [Use-case xem chi tiết giỏ hàng], table())\

#pagebreak()

== Module quản lý mô hình 3D (Managing 3D model)
#figure(caption: [Module quản lý mô hình 3D],
    image("../images/usecase/DACNPM-ManageModel.png")
)
#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Quản lý mô hình 3D*],
    [Actors], [Người quản lý.],
    [Brief Description], [Người quản lý sử dụng chức năng này để quản lý các mô hình 3D trong hệ thống.],
    [Preconditions], [Người quản lý đã truy cập được trang web và đăng nhập vào tài khoản admin hệ thống.],
    [Postconditions], [Người quản lý truy cập thành công danh sách các mô hình 3D trong hệ thống.],
    [Normal Flow], [ 
        1. Người quản lý điều hướng đến trang Quản lý mô hình 3D.
        2. Hệ thống hiển thị toàn bộ các mô hình 3D dưới dạng một bảng bao gồm các cột: ID, Tên mô hình, Hình ảnh, Thông tin, Giá tiền, Phân loại. Thông tin ở các hàng sẽ được chỉnh sửa dưới dạng text, trừ cột Hình ảnh (hiển thị bằng hình) và Phân loại (chọn từ danh sách). Dưới góc mỗi hàng của bảng, hệ thống sẽ hiển thị thêm các nút *Chỉnh sửa*, *Lưu*, *Hủy*.
    ],
)
#figure(caption: [Use-case quản lý mô hình 3D], table())

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Thêm Mô hình*],
    [Actors], [Người quản lý.],
    [Brief Description], [Người quản lý sử dụng chức năng này để thêm một mô hình 3D mới vào hệ thống.],
    [Preconditions], [Người quản lý đã truy cập được trang web và đăng nhập vào tài khoản admin hệ thống, và đã điều hướng đến trang Quản lý mô hình 3D.],
    [Postconditions], [Một mô hình 3D mới được thêm thành công và hiển thị trong danh sách các mô hình 3D trong hệ thống.],
    [Normal Flow], [
        1. Người quản lý bấm vào nút *Thêm mô hình*.
        2. Hệ thống hiển thị một biểu mẫu trống để người quản lý nhập thông tin mô hình mới. Biểu mẫu bao gồm các trường sau: Tên mô hình, Hình ảnh, Thông tin, Giá tiền, và Phân loại (lựa chọn từ danh sách).
        3. Người quản lý điền thông tin mô hình mới vào biểu mẫu.
        4. Người quản lý bấm nút *Lưu* để lưu thông tin mô hình mới.
        5. Hệ thống kiểm tra và lưu mô hình mới vào cơ sở dữ liệu.
        6. Hệ thống cập nhật danh sách các mô hình 3D và hiển thị mô hình mới trong danh sách.
    ],
    [Alternative Flow], [
        3a. Người quản lý tải lên hình ảnh cho mô hình bằng cách bấm nút *Tải lên hình ảnh* và chọn một hình ảnh từ máy tính hoặc thiết bị.\
    ],
    [Exception Flow], [
        5a. Nếu hệ thống không thể lưu thông tin mô hình mới, hệ thống thông báo cho người quản lý và không thực hiện việc thêm mô hình mới.\
    ],
)
#figure(caption: [Use-case thêm mô hình 3D], table())\

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Chỉnh sửa mô hình 3D*],
    [Actors], [Người quản lý.],
    [Brief Description], [Người quản lý sử dụng chức năng này để cập nhật thông tin của một mô hình 3D trong hệ thống.],
    [Preconditions], [Người quản lý đã truy cập được trang web và đăng nhập vào tài khoản admin hệ thống, và đã điều hướng đến trang Quản lý mô hình 3D.],
    [Postconditions], [Thông tin của mô hình 3D đã được cập nhật thành công và hiển thị trong danh sách các mô hình 3D trong hệ thống.],
    [Normal Flow], [
        1. Người quản lý nhấn nút *Chỉnh sửa* của mô hình cần cập nhật từ danh sách các mô hình 3D.
        2. Hệ thống hiển thị mô hình và cho phép người quản lý chỉnh sửa thông tin mô hình.
        3. Người quản lý cập nhật thông tin mô hình theo nhu cầu, bao gồm các trường: Tên mô hình, Hình ảnh (có nút tải lên hình ảnh), Thông tin, Giá tiền, và Phân loại (lựa chọn từ danh sách).
        4. Người quản lý bấm nút *Lưu* để lưu thông tin cập nhật của mô hình.
        5. Hệ thống kiểm tra và cập nhật thông tin mô hình trong cơ sở dữ liệu.
        6. Hệ thống cập nhật danh sách các mô hình 3D và hiển thị mô hình đã cập nhật trong danh sách.
    ],
    [Alternative Flow], [
        3a. Người quản lý tải lên hình ảnh mới cho mô hình bằng cách bấm nút "Tải lên hình ảnh" và chọn một hình ảnh từ máy tính hoặc thiết bị.\
        3b. Người quản lý chọn phân loại mới cho mô hình từ danh sách các phân loại có sẵn.\
        5a. Nếu hệ thống không thể cập nhật thông tin mô hình, hệ thống thông báo cho người quản lý và không thực hiện việc cập nhật mô hình.
    ],
    [Exception Flow], [
        4a. Người quản lý nhấn nút *Hủy*, hệ thống hủy bỏ mọi thay đổi.\
        4b. Nếu hệ thống báo lỗi trong khi cập nhật thông tin mô hình, hệ thống thông báo cho người quản lý và giữ nguyên thông tin cũ của mô hình.
    ],
)
#figure(caption: [Use-case chỉnh sửa mô hình 3D], table())\

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Xóa Mô hình*],
    [Actors], [Người quản lý.],
    [Brief Description], [Người quản lý sử dụng chức năng này để xóa một mô hình 3D khỏi hệ thống.],
    [Preconditions], [Người quản lý đã truy cập được trang web và đăng nhập vào tài khoản admin hệ thống, và đã điều hướng đến trang Quản lý mô hình 3D.],
    [Postconditions], [Mô hình 3D đã được xóa thành công và không còn hiển thị trong danh sách các mô hình 3D trong hệ thống.],
    [Normal Flow], [
        1. Người quản lý nhấn nút *Xóa* của mô hình cần xóa từ danh sách các mô hình 3D.
        2. Hệ thống hiển thị mô hình và xác nhận việc xóa mô hình.
        3. Người quản lý xác nhận việc xóa mô hình.
        4. Hệ thống kiểm tra và xóa mô hình khỏi cơ sở dữ liệu.
        5. Hệ thống cập nhật danh sách các mô hình 3D và loại bỏ mô hình đã xóa khỏi danh sách.
    ],
    [Exception Flow], [
        3a. Người quản lý từ chối xác nhận việc xóa mô hình, quay trở lại trạng thái xem mô hình mà không xóa.
        4a. Nếu hệ thống không thể xóa mô hình, hệ thống thông báo cho người quản lý và không thực hiện việc xóa mô hình.
    ],
)
#figure(caption: [Use-case xóa mô hình 3D], table())\

#pagebreak()

== Module tạo đơn hàng (Model Ordering)
#figure(caption: [Module tạo đơn hàng],
    image("../images/usecase/DACNPM-ConfirmOrder.png")
)
#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Xác nhận và gửi đơn hàng*],
    [Actors], [Khách hàng.],
    [Brief Description], [Khách hàng sử dụng chức năng này để xác nhận đơn hàng và gửi đơn hàng đi để được xử lý.],
    [Preconditions], [Khách hàng đã lựa chọn các sản phẩm từ giỏ hàng và ấn nút *Đặt hàng*.],
    [Postconditions], [Đơn hàng đã được xác nhận và gửi đi để được xử lý.],
    [Trigger], [Khách hàng chọn các mô hình cần đặt và nhấn nút *Đặt hàng* trong giỏ hàng.],
    [Normal Flow], 
    [ 1. Hệ thống hiển thị lại thông tin người đặt bao gồm: tên khách hàng, số điện thoại và địa chỉ giao hàng, thời gian giao hàng dự kiến.
      2. Hệ thống tính toán chi phí giao hàng (bao gồm tổng giá trị đơn hàng và tổng chi phí vận chuyển) và hiển thị lên màn hình.
      3. Khách hàng lựa chọn phương thức thanh toán.
      4. Khách hàng nhấn nút *Xác nhận đơn hàng*.
      5. Hệ thống gửi thông báo đến khách hàng và người quản lý về việc đơn hàng đã được xác nhận và gửi đi để được xử lý.
      6. Khách hàng theo dõi trạng thái đơn hàng trên hệ thống.
    ],
    [Alternative Flow], [
        1a. Khách hàng chỉnh sửa thông tin người đặt hàng bằng cách nhấn nút *Chỉnh sửa* và nhập lại thông tin người đặt hàng.\
        2a. Trước khi chọn phương thức thanh toán, khách hàng quay về giỏ hàng để chỉnh sửa đơn hàng.\
    ],
    [Exception Flow], [      
      3a. Nếu khách hàng chưa liên kết tài khoản ngân hàng với tài khoản của mình, hệ thống sẽ yêu cầu khách hàng liên kết tài khoản ngân hàng với tài khoản của mình.\
    ],
)
#figure(caption: [Use-case xác nhận và gửi đơn hàng], table())
#pagebreak()

== Module quản lý đơn hàng (Order Management)
#figure(caption: [Module quản lý đơn hàng],
    image("../images/usecase/DACNPM-OrderProcess.png")
)
#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Xủ lý đơn hàng*],
    [Actors], [Người quản lý],
    [Brief Description], [Người quản lý sẽ xem danh sách đơn hàng thành các mục tương ứng với trạng thái của đơn hàng.],
    [Preconditions], [Người quản lý đăng nhập quyền admin hệ thống và truy cập vào trang quản lý đơn hàng.],
    [Postconditions], [Người quản lý xem được thông tin trạng thái các đơn hàng.],
    [Normal Flow], 
    [   1. Người quản lý điều hướng đến trang quản lý đơn hàng.
        2. Hệ thống hiển thị danh sách đơn hàng theo trạng thái xử lý của chúng. Trạng thái đơn hàng bao gồm: Đang chờ xử lý, Đang in, Đang giao, Đã Thanh toán.\
    ],
    [Alternative flow],
    [ 
        2a1. Người quản lý lọc danh sách đơn hàng theo trạng thái.\ 
        2a2. Hệ thống hiển thị các đơn hàng có trạng thái được lựa chọn.\ \
        2b1. Người quản lý nhấn chọn một đơn hàng.\ 
        2b2. Hệ thống hiển thị chi tiết thông tin đơn hàng được chọn.\ \
        2c1. Người quản lý chuyển một hoặc cùng lúc nhiều đơn hàng sang trạng thái tiếp theo.\
        2c2. Hệ thống cập nhật và hiển thị trạng thái mới của đơn hàng.\ \
        2d1. Người quản lý từ chối một hay nhiều đơn hàng cùng lúc.\
        2d2. Hệ thống cập nhật trạng thái đơn hàng và gửi thông báo từ chối đến khách hàng.\
    ],

)
#figure(caption: [Use-case xử lý đơn hàng], table())\


== Module thanh toán đơn hàng (Payment)
#figure(caption: [Module thanh toán đơn hàng],
    image("../images/usecase/DACNPM-Payment.png")
)
#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Thanh toán đơn hàng*],
    [Actors], [Khách hàng],
    [Brief Description], [Khách hàng sử dụng chức năng này để thanh toán đơn hàng.],
    [Preconditions], [Khách hàng đã đăng nhập vào tài khoản của mình và đặt hàng thành công.],
    [Postconditions], [Khách hàng đã thanh toán đơn hàng thành công.],
    [Normal Flow], 
    [  1. Khách hàng chọn phương thức thanh toán.\
       2. Khách hàng chọn thanh toán bằng MoMo, hệ thống sẽ gửi một mã vạch (đã kèm số tiền thanh toán) đến khách hàng.\
       3. Khách hàng quét mã vạch và thanh toán.\
       4. Hệ thống sẽ gửi thông báo đến khách hàng và người quản lý về việc khách hàng đã thanh toán thành công.\
    ],
    [Alternative flow],
    [
        2a. Mã vạch có thời hạn trong 10 phút thanh toán, nếu quá thời hạn, hệ thống sẽ gửi lại mã vạch mới.\
        2b. Nếu khách hàng chọn thanh toán bằng tiền mặt, hệ thống sẽ gửi thông báo đến khách hàng và người quản lý về việc khách hàng đã chọn thanh toán bằng tiền mặt.\
    ],
    [Exception Flow], [      
        4a. Nếu giao dịch thất bại, hệ thống sẽ báo lỗi và điều hướng người dùng về trang thông tin đơn hàng.\
    ],
)
#figure(caption: [Use-case thanh toán đơn hàng], table())

#pagebreak()