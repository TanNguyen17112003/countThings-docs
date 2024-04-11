= Model nhận diện 

#block(inset: (left:0.5cm)){
    Là nền tảng cho chức năng chính của phần mềm là đếm giàn giáo qua ảnh, Model đóng vai trò không thể thiếu cho việc xử lý nhận diện vật thể giàn giáo. Ở đây nhóm sử dụng Ultralytics YOLOv8 để training với tập dữ liệu giàn giáo mà nhóm đã gán nhãn theo một flow nhất định 
    #figure(caption: "Flow hoạt động của Ultralytics",
    image("./img/banner-integrations.png", fit: "cover"))
}
== Gán nhãn (Labeling)
#block(inset: (left:0.5cm)){
    Đây là phần quan trọng nhất, ảnh hướng đến việc model nhận diện vật thể và đếm giàn giáo như thế nào, nhóm sử dụng công cụ có tên là Roboflow để việc gán nhãn được thuận tiện và dễ dàng hơn
}

#figure(caption: "Giao diện phần gán nhãn trong Roboflow",
    image("./img/roboflow.png", fit: "cover"))


#block(inset: (left:0.5cm)){
    Người dán nhãn sẽ vẽ hình chữ nhật bao quanh một giàn giáo trong hình và gán loại giàn giáo cho hình chữ nhật được vẽ lên. Đây là công việc đòi hỏi tính tỉ mỉ vô cùng cao và tốn rất nhiều thời gian vì số lượng giàn giáo trong một ảnh khá lớn, cũng như phải gán nhiều ảnh để model được train nhận diện chính xác và đúng với mong đợi của người dùng.
}

== Tạo Dataset
#block(inset: (left:0.5cm)){
    Sau khi đã có các hình ảnh và nhãn dán của chúng, ta sẽ tiến hành phân loại và tạo dataset cho việc training, validating và testing. Ta sẽ phân loại một phần hình ảnh đã gán nhãn cho việc train, validating và testing. Sau khi phân loại, ta sẽ xuất ra một dataset, cũng bằng công cụ Roboflow.
}
#figure(caption: "Tạo dataset trong Roboflow",
    image("./img/roboflowdataset.png", fit: "cover"))


== Train Model
#block(inset: (left:0.5cm)){
    Sau khi đã có Dataset, ta sẽ lấy dataset đó về và tiến hành train cho model YOLO, nhóm sử dụng YOLOv8 cho việc train, loại giàn giáo được sử dụng để minh họa cho việc train là IQC1524 (thuộc Type 4). Nhóm thực hiện train qua 100 chu kì (epoch) và ghi lại các thông số cho mỗi chu kỳ train. Sau khi train thì được kết quả như hình.

}
#figure(caption: "Kết quả train model YOLOv8 cho giàn giáo Type 4 - IQC1524",
    image("./img/trainv8.png", fit: "cover"))

Các thông số cần chú ý:
#set enum(numbering:(it => strong[#it.]))
#enum(
    enum.item(1)[
        *Images*: Chỉ số này cho bạn biết số lượng hình ảnh trong nhóm Validate có chứa lớp đối tượng.
    ],
    enum.item(2)[
        *Instances*: Điều này cung cấp số lần class xuất hiện trên tất cả các hình ảnh trong tập hợp xác thực.
    ],
    enum.item(3)[
        *Box (P, R, mAP50, mAP50-95)*: Số liệu này cung cấp thông tin chi tiết về hiệu suất của mô hình trong Object Detection. Các thông số: 
        #block(inset: (left:1cm)){
            - P (Precision): Độ chính xác của mô hình, thể hiện số ảnh mà mô hình phát hiện chính xác

            - R (Recall): Khả năng của mô hình để xác định tất cả các bản thể của các đối tượng trong hình ảnh.

            - mAP50: Độ chính xác trung bình được tính tại giao điểm trên hợp nhất (IoU: Là thước đo định lượng sự chồng chéo giữa bounding box dự đoán và bounding box thực nghiệm. Nó đóng một vai trò cơ bản trong việc đánh giá độ chính xác của quá trình localize đối tượng) ở ngưỡng 0,50. Đó là thước đo độ chính xác của mô hình nếu chỉ xem xét các phát hiện "dễ dàng".

            - mAP50-95: Giá trị trung bình của độ chính xác trung bình được tính ở các ngưỡng IoU khác nhau, dao động từ 0,50 đến 0,95. Nó cung cấp cái nhìn toàn diện về hiệu suất của mô hình ở các mức độ khó nhận diện khác nhau.
        }
    ],
    enum.item(4)[
        *F1 Score*: là trung bình điều hòa của độ chính xác (Precision) và khả năng Recall, cung cấp đánh giá cân bằng về hiệu suất của mô hình trong khi xem xét cả dương tính giả và âm tính giả.
    ],
)
Những thông số này là thước đo để đánh giá độ hiệu quả của model trên lý thuyết.
=== Đánh giá Model nhận diện giàn giáo Type4-IQC1524
Sau khi mất 0,851 giờ cho quá trình train với 100 chu kỳ, ta thu được các thông số sau mỗi chu kỳ theo dạng biểu đồ như sau:
#figure(caption: "Precision(Box) của Model nhận diện IQC1524",
    image("./img/Precisionv8.png", fit: "contain"))
#figure(caption: "Recall(Box) của Model nhận diện IQC1524",
    image("./img/Recallv8.png", fit: "contain"))
#figure(caption: "mAP50(Box) của Model nhận diện IQC1524",
    image("./img/map50v8.png", fit: "contain"))
- Precision, Recall và mAP50 trong 20 epoch đầu có sự biến động, sau đó có sự ổn định đến cuối
#figure(caption: "mAP50-95(Box) của Model nhận diện IQC1524",
    image("./img/map5095v8.png", fit: "contain"))
- mAP50-95 thì biến động hơn nhưng vẫn với quy luật đã nêu trên, 20 epoch đầu có sự nhiễu loạn, sau đó tuy còn hỗn loạn nhưng đều có xu hướng tăng dần.

Đây chỉ là thông số trên lý thuyết, còn thực tế kết quả có thể sai lệch, và nếu sai lệch xảy ra, model sẽ phải train lại để sửa lỗi sai đó. Quá trình train có thể diễn ra định kỳ hoặc đạt được có sự sai sót quá nhiều (chủ yếu do người dùng báo sai)

=== Chạy thử Model
Sau khi đã có model, ta chạy thử để kiểm tra hiệu quả họat động của nó
#figure(caption: "Ảnh được sử dụng để kiểm tra",
    image("./img/prediction_raw.JPG", fit: "contain"))
Sau khi chạy Prediction qua Model, ta được ảnh kết quả như sau:
#figure(caption: "Ảnh được sử dụng để kiểm tra",
    image("./img/predictionresult.png", fit: "contain"))
#pagebreak()
== Trang đăng nhập và đăng ký
Người dùng sau khi nhấn vào các nút Đăng nhập, Đăng ký ở trang chủ sẽ được điều hướng đến trang đăng nhập và đăng ký.

#figure(caption: "Giao diện trang đăng ký",
    image("../images/UI/SignupPage_edit.png", fit: "contain"))

Các thành phần trong trang đăng ký
#enum(
    enum.item(1)[
        *Form điền thông tin đăng ký*: người dùng nhập những thông tin đăng ký trên hệ thống bao gồm họ tên, email, mật khẩu.
    ],
    enum.item(2)[
        *Nút gửi*: Gửi thông tin của khách hàng vừa mới đăng ký lên để hệ thống xác thực và phản hồi.
    ]
)

#figure(caption: "Giao diện trang đăng nhập",
    image("../images/UI/LoginPage_edit.png", fit: "contain"))

Các thành phần trong trang đăng nhập
#enum(
    enum.item(1)[
        *Form điền thông tin đăng nhập*: người dùng tiến hành đăng nhập hệ thống bao gồm email, mật khẩu.
    ],
    enum.item(2)[
        *Nút gửi*: Gửi thông tin của khách hàng vừa mới đăng nhập để hệ thống xác thực và phản hồi.
    ]
)
#pagebreak()

== Trang phân loại mô hình
Để có thể truy cập được vào trang phân loại mô hình, người dùng đã thực hiện việc nhấn vào *Categories* trên thanh Header.

#figure(caption: "Giao diện trang phân loại sản phẩm",
    image("../images/UI/CategoryPage_edit.png", fit: "contain"))    

Các thành phần trong trang phân loại mô hình
#enum(
    enum.item(1)[
        *Bộ lọc và sắp xếp mô hình *: Giúp lọc mô hình và sắp xếp sản phẩm theo các tiêu chí và ràng buộc.
    ],
    enum.item(2)[
        *Phân loại*: Thanh sidebar phân loại mô hình giúp người dùng tìm được những mô hình theo các tiêu chí như thời trang, sở thích, học tập,...
    ],
    enum.item(3)[
        *Số lượng mô hình*: Hiển thị ra tổng số lượng mô hình sau khi người dùng lọc và chọn theo phân loại.
    ],
    enum.item(4)[
        *Danh sách mô hình*: Hiển thị ra danh sách các mô hình thuộc kiểu phân loại mà người dùng đã lựa chọn. Khi nhấp vào bất kì mô hình nào, người dùng được điều hướng sang trang chi tiết mô hình với nhiều mục đích như theo dõi thông tin mô hình, đặt hàng hoặc mua (chi tiết trong mục *5.4*).
    ]
)
#pagebreak()

== Trang chi tiết mô hình
Để có thể truy cập vào trang chi tiết mô hình, người dùng đã thực hiện một trong hai thao tác sau:
#block(inset:(left:1cm))[
    - Nhấn vào chọn một trong các mô hình ở trang chủ của hệ thống.
    - Nhấn vào chọn một trong các mô hình trong danh sách sau khi chuyển hướng sang trang phân loại mô hình.
]
#figure(caption: "Giao diện trang chi tiết mô hình",
    image("../images/UI/DetailModelPage_edit.png", fit: "contain"))

Các thành phần trong trang chi tiết mô hình:
#enum(
     enum.item(1)[
        *Hình ảnh mô hình*: Cung cấp danh sách hình ảnh của mô hình để người dùng có cái nhìn rõ hơn trước khi đặt hàng.
    ],
    enum.item(2)[
        *Thông tin sản phẩm*: tên, giá, mô tả sản phẩm.
    ],
    enum.item(3)[
        *Nút điều chỉnh số lượng*: Người dùng điều chỉnh số lượng mô hình muốn đặt trước khi thực hiện việc đặt hàng hoặc in ấn.
    ],
    enum.item(4)[
        *Nút thêm vào giỏ hàng*: Người dùng tiến hành thêm mô hình vào giỏ hàng sau khi đã chọn số lượng. Sau thao tác này, người dùng sẽ được chuyển hướng đến trang giỏ hàng (chi tiết trong mục *5.5*).
    ],
    enum.item(5)[
        *Nút mua ngay*: Người dùng tiến hành mua luôn mô hình mà không cần thêm vào giỏ hàng. Sau thao tác này, người dùng sẽ được chuyển hướng tới trang thanh toán (chi tiết ở mục *5.6*). 
    ]
)
#pagebreak()

== Trang giỏ hàng
Để có thể truy cập được vào trang giỏ hàng, người dùng nhấn vào icon giỏ hàng trên thanh điều hướng. Trang sẽ hiển thị danh sách các mô hình có trong giỏ hàng của người dùng.
#figure(caption: "Giao diện trang giỏ hàng",
    image("../images/UI/ShoppingCartPage_edit.png", fit: "contain"))
Các thành phần của trang giỏ hàng:
#enum(
     enum.item(1)[
        *Nút điều hướng*: Giúp người dùng điều hướng về lại trang categories để tiếp tục chọn thêm mô hình trước khi thêm vào giỏ hàng.
    ],
    enum.item(2)[
        *Giỏ hàng*: Hiển thị danh sách các mô hình đã được thêm vào giỏ hàng sau khi người dùng đã điều chỉnh số lượng và tiến hành thêm vào giỏ hàng ở trang chi tiết mô hình.
    ],
    enum.item(3)[
        *Danh sách mô hình liên quan*: Hiển thị ra danh sách các mô hình có liên quan đến những mô hình có trong giỏ hàng mà người dùng có thể thích vì nhiều tiêu chí.
    ],
    enum.item(4)[
        *Nút thanh toán*: Người dùng thực hiện việc thanh toán sau khi đã quyết định đơn hàng. Thao tác này sẽ điều hướng người dùng sang trang thanh toán (chi tiết trong mục *5.6*).
    ]
)
#pagebreak()

== Trang thanh toán
Để có thể được điều hướng sang trang thanh toán, người dùng đã thực hiện một trong hai bước sau:
#block(inset:(left:1cm))[
    - Nhấn nút *"Mua ngay"* ở trang chi tiết mô hình.
    - Nhấn nút *"Thanh toán"* ở trang giỏ hàng.
]
#figure(caption: "Giao diện trang thanh toán",
    image("../images/UI/CheckoutPage_edit.png", fit: "contain"))    

Các thành phần của trang thanh toán
#block(inset:(left:1cm))[
    - *Phương thức thanh toán*: người dùng lựa chọn phương thức thanh toán danh sách các mô hình.
    - *Form điền địa chỉ*: người dùng tiến hành nhập địa chỉ nhận hàng: số nhà, đường, quận, thành phố và ghi chú.
    - *Danh sách mô hình trong giỏ hàng*: Danh sách các mô hình có trong giỏ hàng, giúp người dùng kiểm tra lại về số lượng cũng như giá trước khi tiến hành thanh toán.
    - *Nút xác nhận*: Người dùng tiến hành xác nhận đơn hàng và tiến hành thanh toán.
]
#pagebreak()

