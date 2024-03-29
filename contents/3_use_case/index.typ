= Use-case diagram and use-case scenario


== Module Đăng nhập, đăng ký (Authenication)
#figure(caption: [Module xác thực người dùng],
    image("./images/Auth.jpg")
)

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Đăng nhập*],
    [Actors], [Người sử dụng],
    [Brief Description], [Khách hàng sử dụng chức năng này để đăng nhập vào app.],
    [Preconditions], [],
    [Postconditions], [Giao diện chính của app hiện lên],
    [Normal Flow], [
        1. Khách hàng truy cập vào app, màn hình đăng nhập hiện lên.
        2. Người dùng nhập tên đăng nhập và mật khẩu, kèm các lựa chọn kèm theo sau đó nhấn nút đăng nhập.
        3. Hệ thống kiểm tra tên đăng nhập vào mật khẩu.
        4. Hệ thống hiện giao diện màn hình chính. 
    ],
    [Alternative Flow], [
        2a. Người dùng có thể đăng nhập bằng xác thực google thay vì phải nhập thông tin đăng nhập.\ 
        2b. Nếu lần đăng nhập trước người dùng chọn Nhớ mật khẩu, hệ thống tự động điền email và mật khẩu của người dùng.
        
    ],
    [Exception Flow], [
        3a. Nếu thông tin đăng nhập không trùng khớp, hệ thống báo lỗi và yêu cầu khách hàng nhập lại
        2b. Nếu xác thực google không thành công, hệ thống báo lỗi cho người dùng
    ],
)
#figure(caption: [Use-case Đăng nhập], table())\



#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Đăng nhập*],
    [Actors], [Người sử dụng],
    [Brief Description], [Khách hàng sử dụng chức năng này để đăng nhập vào app.],
    [Preconditions], [],
    [Postconditions], [Giao diện chính của app hiện lên],
    [Normal Flow], [
        1. Khách hàng truy cập vào app, màn hình đăng nhập hiện lên.
        2. Người dùng nhập tên đăng nhập và mật khẩu, kèm các lựa chọn kèm theo sau đó nhấn nút đăng nhập.
        3. Hệ thống kiểm tra tên đăng nhập vào mật khẩu.
        4. Hệ thống hiện giao diện màn hình chính. 
    ],
    [Alternative Flow], [
        2a. Người dùng có thể đăng nhập bằng xác thực google thay vì phải nhập thông tin đăng nhập.\ 
        2b. Nếu lần đăng nhập trước người dùng chọn Nhớ mật khẩu, hệ thống tự động điền email và mật khẩu của người dùng.
        
    ],
    [Exception Flow], [
        3a. Nếu thông tin đăng nhập không trùng khớp, hệ thống báo lỗi và yêu cầu khách hàng nhập lại
        2b. Nếu xác thực google không thành công, hệ thống báo lỗi cho người dùng
    ],
)
#figure(caption: [Use-case Đăng ký], table())\

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Đăng ký*],
    [Actors], [Người dùng.],
    [Brief Description], [Khách hàng sử dụng chức năng này để đăng ký],
    [Preconditions], [Khách hàng đang ở màn hình đăng nhập],
    [Postconditions], [Một tài khoản mới đã được tạo, Giao diện chính của app hiện lên],
    [Normal Flow], [
        1. Khách hàng truy cập phần Đăng ký bằng cách nhấn đăng ký trên màn hình đăng nhập.
        2. Hệ thống hiển thị màn hình đăng ký.
        3. Khách hàng nhập các thông tin cơ bản như tên đăng nhập, mật khẩu, email và ấn nút đăng ký
        4. Hệ thống kiểm tra thông tin đăng ký, rồi gửi một email mã xác nhận đến email đăng ký, sau đó hiển thị màn hình nhập mã.
        5. Người dùng nhập mã rồi ấn xác nhận
        6. Hệ thống thông báo đăng ký thành công, giao diện chính hiện lên.
    ],
    [Alternative Flow], [
        1a. Nếu người dùng ấn xác thực google mà chưa có dữ liệu về tài khoản. Hệ thống tự tạo một tài khoản tương ứng với xác thực google.
        
        5a1. Sau một khoảng thời gian nhất định, nếu người dùng không nhập mã, hệ thống sẽ hiển thị lựa chọn gửi lại email xác nhận cho người dùng. 
        5a2. Người dùng có thể quay trở lại màn hình nhập thông tin đăng ký.

    ],
    [Exception Flow], [
        4a. Nếu tên người dùng đã tồn tại, hệ thống thông báo tài khoản đã tồn tại và yêu cầu người dùng nhập lại.
    ],
)
#figure(caption: [Use-case Đăng ký], table())\


#pagebreak()
== Module Đếm giàn giáo bằng ảnh
#figure(caption: [Module đếm giàn giáo],
    image("./images/counting.jpg")
)


#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [*Use Case Name*], [*Đếm giàn giáo*],
    [Actors], [Người dùng.],
    [Brief Description], [Người dùng sử dụng chức năng này để đếm số giàn giáo theo template người dùng đã chọn],
    [Preconditions], [Người dùng đã đăng nhập và điều hướng tới giao diện Đếm giàn giáo],
    [Postconditions], [Khách hàng nhận được kết quả phân tích.],
    [Normal Flow], 
       [ 1. Bên cạnh biểu tượng người dùng trên thanh điều hướng, hệ thống sẽ cung cấp thêm một nút *Đếm*.\
         2. Khách hàng nhấn nút *Đếm* để bắt đầu.\
         3. Hệ thống hiển thị lên màn hình một khung giao diện chọn template.\
         4. Người dùng chọn template trên màn hình và nhấn nút *Proceed* để tiếp tục.\
         5. Hệ thống camera xuất hiện, Khách hàng có thể ấn nút *Chụp* để lấy ảnh từ camera hoặc chọn nút *Chọn ảnh* để lấy ảnh có sẵn trong máy.\
         6. Sau khi người dùng chọn ảnh, hệ thống sẽ hiển thị một trình chỉnh sửa ảnh. Người dùng có thể thực hiện các thao tác. Người dùng nhất *CHECK* để gửi file lên hệ thống.\
         7. Hệ thống trả về ảnh đã đếm kèm số lượng và box các ống giàn giáo nhận diện được và hiển thị lên màn hình.\
         8. Người dùng có thể include, exclude crop lại hình và gửi lại cho hệ thống xử lý tương tự mục 7. Ngoài ra người dùng có thể xuất file, script. Nếu nguời dùng nhận thấy kết quả không đúng, có thể báo sai cho hệ thống.\
    ],
    [Alternative Flow], [
        4a. Nếu người dùng không chọn Template mà nhấn tiếp tục, tự động chọn Template người dùng đã chọn trước đó.
        6a. Nếu người dùng nhấn *CHECK* mà không thực hiện bất kỳ thao tác chỉnh sửa ảnh nào, hệ thống sử dụng kích thước ảnh gốc với vùng đánh dấu toàn bộ ảnh và hiệu ứng gốc. 
        5a. Khách hàng có thể nhấn nút *Đổi Template* để chọn lại template.\ \
        6b. Người dùng có thể nhấn nút *X* để hủy ảnh vừa chọn và quay trở lại màn hình chọn ảnh
        6c. Nếu ảnh được hệ thống đánh giá là không rõ ràng (mờ, nhòe, điểm chết đen,...) sẽ hỏi người dùng có muốn tiếp tục không, nếu không thì hủy ảnh vừa chọn và quay trở lại màn hình chọn ảnh
    ],
    [Exception Flow],[
        4a1. Nếu người dùng không chọn Template mà nhấn tiếp tục trong lần sử dụng đầu tiên, hệ thống sẽ hiển thị thông báo *Vui lòng chọn template*.
        5b1. Nếu file người dùng chọn không phải là định dạng ảnh, hệ thống sẽ báo lỗi *File không hợp lệ*
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