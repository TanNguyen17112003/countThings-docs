= Phân tích yêu cầu

Như đã đề cập ở phần Phạm vi dự án, nhóm sẽ ưu tiên mức hiện thực thủ công bao gồm sáu tính năng chính trên. Phần này sẽ mô tả chi tiết về toàn bộ yêu cầu chức năng và yêu cầu phi chức năng của hệ thống ở mức thủ công:

== Yêu cầu chức năng
=== User Story
==== Đối với khách hàng
#block(inset: (left:1cm))[
    - Khách hàng có thể lựa chọn các mô hình 3D có sẵn trong hệ thống.
    - Khách hàng có thể xem tất cả các mô hình 3D ở mục *All Things*.
    - Khách hàng có thể tìm kiếm các mô hình 3D theo tên.
    - Khách hàng có thể tìm kiếm các mô hình bằng cách lọc theo danh mục, giá tiền, mốc thời gian đăng.
    - Khách hàng có thể xem thông tin chi tiết của mô hình 3D.
    - Khách hàng có thể Upload file `.gcode` của riêng họ để đặt in.
    - Khách hàng phải đăng nhập vào tài khoản user để thực hiện chức năng đặt hàng.
    - Khách hàng có thể thêm mô hình 3D có sẵn vào giỏ hàng để lưu lại thông tin mô hình tiến hành đặt hàng. Khi thêm vào giỏ, khách hàng có thể chọn số lượng.
    - Khách hàng có thể xem và chỉnh sửa thông tin giỏ hàng.
    - Khách hàng có thể xóa một hoặc nhiều mô hình ra khỏi giỏ hàng cùng lúc.
    - Đối với trường hợp đặt in theo file `.gcode` của riêng họ, khách hàng có thể tương tác hệ thống như đối với các mô hình 3D có sẵn.
    - Khách hàng có thể xem đề xuất giá tiền để in mô hình 3D dựa vào các file `.gcode`.
    - Khách hàng có thể kết hợp upload file và lựa chọn các mô hình 3D có sẵn.  
    - Khách hàng có thể xác nhận và gửi đơn hàng.
    - Khách hàng điền thông tin đặt hàng bao gồm tên khách hàng, số điện thoại, địa chỉ nhận hàng (phường, quận, địa chỉ thêm do khách hàng cung cấp) và ghi chú (nếu có).
    - Khách hàng có thể xem được phí ship dựa trên khoảng cách giao hàng và thời gian giao hàng dự kiến.
    - Sau bước xác nhận đơn hàng và trước bước thanh toán, khách hàng có thể quay lại giỏ hàng
để mua thêm/xóa các mô hình 3D, chỉnh sửa thông tin đặt hàng.
    - Khách hàng có thể chọn phương thức thanh toán là tiền mặt hoặc thanh toán online qua
Momo.
    - Khách hàng có thể hủy đơn hàng nếu vẫn chưa được in (trạng thái *Đang chờ xử lý*).
    - Khách hàng có thể theo dõi tình trạng đơn hàng: Đang chờ xử lý; Đang in; Đang giao; Đã thanh toán.
    - Khách hàng có thể lựa chọn 2 phương thức thanh toán: Thanh toán bằng tiền mặt hoặc Thanh toán qua Momo.
    - Trường hợp khách hàng lựa chọn thanh toán qua Momo, màn hình sẽ xuất hiện một mã vạch
(đã kèm số tiền) để người dùng quét mã. Mã sẽ có hiệu lực trong vòng 10 phút.
    - Hệ thống thông báo thanh toán khách hàng thành công/thất bại.
]

==== Đối với người quản lý
#block(inset: (left:1cm))[
    - Người quản lý có thể thêm mô hình 3D vào hệ thống: giá tiền, hình ảnh minh họa cũng phải được thêm vào.
    - Người quản lý có thể xóa mô hình 3D, việc xoá mô hình 3D không ảnh hưởng tới các đơn hàng đã tiếp nhận trước đó.
    - Người quản lý có thể sửa mô hình 3D, cập nhật không ảnh hưởng đến các đơn hàng đã thanh toán.
    - Người quản lý có thể xem danh sách các đơn đặt hàng và cập nhật trạng thái của chúng.
    - Người quản lý có thể nhấn chọn từng đơn hàng để xem thông tin chi tiết.
    - Người quản lý có thể nhấn chọn xử lý để từ chối hoặc chuyển đơn hàng sang trạng thái tiếp theo.
    - Người quản lý có thể lựa chọn từ chối hoặc chấp nhận nhiều đơn hàng cùng một lúc.

]

=== Chức năng hệ thống
==== Lựa chọn mô hình 3D

Trường hợp khách hàng lựa chọn các mô hình 3D có sẵn, hệ thống phải cung cấp các chức năng: 
#block(inset: (left:1cm))[
    - Phân chia các mô hình 3D theo các danh mục: Fashion, Hobby, Learning, Tools, Toys & Games, Art, Household.
    - Hệ thống có mục *All Things* bao gồm tất cả các loại mô hình 3D.
    - Các nhóm mô hình 3D được phân thành nhiều trang, mỗi trang chứa tối đa 10 mô hình.
    - Mỗi mô hình 3D có một nút Like, hệ thống sẽ mặc định sắp xếp các mô hình 3D theo tiêu chí số lượt Like từ cao đến thấp.
    - Sắp xếp các mô hình 3D theo giá tiền, mốc thời gian đăng. Lọc các mô hình 3D theo danh mục, khoảng thời gian. Giữ nguyên trạng thái lọc và tiêu chí sắp xếp khi chuyển trang. Trạng thái ban đầu của bộ lọc là *No filter*.
    - Tìm kiếm các mô hình 3D theo tên. Hệ thống sẽ cố gắng tìm những mô hình 3D có tên giống như từ khóa đã nhập hoặc có tên gần giống. Nếu không tìm thấy, hiển thị danh sách rỗng kèm thông báo *Không tìm thấy*. Được phép áp dụng bộ lọc và tiêu chí sắp xếp khi màn hình xuất ra danh sách kết quả. Để quay về trạng thái trước khi tìm kiếm, nhấn nút *X* trên thanh tìm kiếm.
]
Trường hợp khách hàng upload file `.gcode` của riêng họ, hệ thống phải cung cấp các chức năng:
#block(inset: (left:1cm))[
    - Chỉ cho phép các file định dạng `.gcode` được upload lên hệ thống.
    - Các file `.gcode` phải được generate từ chính loại máy in FLSUN-V400.
]

==== Quản lý mô hình 3D

Người quản lý phải đăng nhập vào tài khoản admin để thực hiện chức năng này, bao gồm các thao tác:
#block(inset: (left:1cm))[
    - Thêm/xóa/sửa mô hình 3D.
    - Khi thêm mô hình 3D: giá tiền, hình ảnh minh họa cũng phải được thêm vào.
    - Việc xoá mô hình 3D không ảnh hưởng tới các đơn hàng đã tiếp nhận trước đó.
    - Các mô hình 3D được chỉnh sửa, cập nhật không ảnh hưởng đến các đơn hàng đã thanh toán.
]

==== Đặt mô hình 3D

Khách hàng phải đăng nhập vào tài khoản user để thực hiện chức năng này.  

Trường hợp khách hàng chọn các mẫu mô hình 3D có sẵn, hệ thống phải cung cấp các chức năng:
#block(inset: (left:1cm))[
    - Thêm mô hình 3D vào giỏ hàng để lưu lại thông tin mô hình hoặc tiến hành đặt hàng. Khi thêm vào giỏ, khách hàng có thể chọn số lượng.
    - Thông tin mô hình 3D trong giỏ hàng bao gồm: tên mô hình, đơn giá, số lượng.
    - Khi người dùng thêm mô hình 3D nhiều lần, những mô hình trùng tên sẽ được cộng dồn với số lượng và giá tương ứng.
    - Giỏ hàng phải thống kê được các mô hình 3D, số lượng, đơn giá của từng mô hình và tổng tiền của giỏ hàng.
    - Xem và chỉnh sửa thông tin giỏ hàng.
    - Khách hàng có thể xóa một hoặc nhiều mô hình ra khỏi giỏ hàng cùng lúc.
]
Trường hợp khách hàng đặt in các mô hình 3D dựa trên các file `.gcode` của họ, ngoài các thao tác trên giỏ hàng tương tự như trên, hệ thống còn phải cung cấp các chức năng:
#block(inset: (left:1cm))[
    - Khi nhấn nút `Upload file`, hệ thống sẽ hiện ra một modal window yêu cầu lựa chọn đơn hàng hoặc tạo một đơn hàng mới để chứa file đó.
    - Cho phép upload nhiều file cho một đơn hàng.
    - Đề xuất giá tiền để in mô hình 3D dựa vào các file `.gcode`.
    - Cho phép kết hợp upload file và lựa chọn các mô hình 3D có sẵn.
]

==== Xác nhận và gửi đơn hàng

Hệ thống phải cung cấp các chức năng:
#block(inset: (left:1cm))[
    - Cho phép chọn một hoặc nhiều mô hình 3D từ giỏ hàng để tiến hành đặt hàng.
    - Có form cung cấp thông tin đặt hàng bao gồm tên khách hàng, số điện thoại, địa chỉ nhận hàng (phường, quận, địa chỉ thêm do khách hàng cung cấp) và ghi chú (nếu có).
    - Hệ thống cung cấp tính năng tính phí ship dựa trên khoảng cách giao hàng và hiển thị thời gian giao hàng dự kiến.
    - Phí ship được tính bằng 5000 VND cho 3 kilomet đầu tiên; 3000 VND cho mỗi kilomet tiếp theo và không vượt quá 30000 VNĐ. Khu vực giao hàng được giới hạn trong phạm vi TP HCM.
    - Thời gian giao dự kiến được tính dựa trên quãng đường và lưu lượng giao thông tại thời điểm đặt hàng.
    - Sau bước xác nhận đơn hàng và trước bước thanh toán, khách hàng có thể quay lại giỏ hàng để  mua thêm/xóa các mô hình 3D, chỉnh sửa thông tin đặt hàng.
    - Khách hàng có thể chọn phương thức thanh toán là tiền mặt hoặc thanh toán online qua Momo.
    - Sau khi tiến hành đặt hàng thành công, các mô hình 3D đã được đặt sẽ bị xóa khỏi giỏ hàng và lịch sử đặt hàng sẽ được ghi lại vào hệ thống.
    - Cho phép hủy đơn hàng nếu vẫn chưa được in (trạng thái *Đang chờ xử lý*).
    - Khách hàng có thể theo dõi tình trạng đơn hàng: Đang chờ xử lý; Đang in; Đang giao; Đã thanh toán.
]

==== Xử lý đơn hàng

Người quản lý sẽ xem danh sách các đơn đặt hàng và cập nhật trạng thái của chúng. Việc này sẽ yêu cầu hệ thống cung cấp các tính năng sau:
#block(inset: (left:1cm))[
    - Hiển thị danh sách đơn hàng thành các mục tương ứng với trạng thái của chúng. Trạng thái đơn hàng bao gồm: Đang chờ xử lý -> Đang in -> Đang giao -> Đã thanh toán.
    - Ở mỗi mục, đơn hàng được sắp xếp mặc định dựa trên thời gian đơn hàng đó được ghi nhận.
    - Người quản lý có thể nhấn chọn từng đơn hàng để xem thông tin chi tiết.
    - Người quản lý có thể nhấn chọn xử lý để từ chối hoặc chuyển đơn hàng sang trạng thái tiếp theo.
    - Người quản lý có thể lựa chọn từ chối hoặc chấp nhận nhiều đơn hàng cùng một lúc.
]

==== Thanh toán đơn hàng
Hệ thống hỗ trợ khách hàng thanh toán đơn hàng bằng tiền mặt và qua ví điện tử Momo:
#block(inset: (left:1cm))[
    - Khách hàng có thể lựa chọn 2 phương thức thanh toán: *Thanh toán bằng tiền mặt* hoặc *Thanh toán qua Momo*.
    - Trường hợp khách hàng lựa chọn thanh toán qua Momo, màn hình sẽ xuất hiện một mã vạch (đã kèm số tiền) để người dùng quét mã. Mã sẽ có hiệu lực trong vòng 10 phút.
    - Hệ thống thông báo thanh toán thành công/thất bại.
]

== Yêu cầu phi chức năng
#block(inset: (left:1cm))[
    - Hệ thống được truy cập thông qua web-based.
    - hệ thống xử lý nhiều đơn đặt hàng in và xác lập độ ưu tiên trong cơ chế FCFS.
    - Độ tin cậy (Reliability):
    #block(inset: (left:1.2cm))[
        \u{2218} Hệ thống duy trì dữ liệu/phục hồi về trạng thái trước khi có lỗi.
    ]
    - Tính sẵn sàng (Availability):
    #block(inset: (left:1.2cm))[
        \u{2218} Hệ thống phải hoạt động 24/7.
    ]
    - Khả năng tiếp cận (Accessibility):
    #block(inset: (left:1.2cm))[
        \u{2218} UI phải được hiển thị chính xác trên nhiều kích cỡ màn hình khác nhau:
        #block(inset: (left:1.4cm))[
            \u{25AA} Màn hình desktop: 1280x720 - 1920x1080.
            #linebreak()
            \u{25AA} Màn hình tablet: 601x962 - 1280x800.
            #linebreak()
            \u{25AA} Màn hình mobile: 360x640 - 414x896.
        ]
        \u{2218} Hỗ trợ trên các trình duyệt khác nhau: Chrome, Edge, Firefox, Safari.
    ]
    - Độ bảo mật (Security):
    #block(inset: (left:1.2cm))[
        \u{2218} Tuân thủ theo tiêu chuẩn OWASP
    ]
]
#pagebreak();
