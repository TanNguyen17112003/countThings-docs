= User Interface
== Trang chủ Tick3D

#figure(caption: "Giao diện trang chủ",
    image("../images/UI/HomePage_edit.png", fit: "cover"))

Các thành phần trong trang chủ của tick3D:
#set enum(numbering:(it => strong[#it.]))
#enum(
    enum.item(1)[
        *Header*: biểu diễn những thông tin chính của trang chủ.
        #block(inset:(left:1cm))[
            - Login and Signup: Điều hướng đến trang (chi tiết trong mục *5.2*).
            - Categories: phân loại mô hình, điều hướng người dùng đến trang danh mục mô hình 3D được phân loại theo các tiêu chí (chi tiết trong mục *5.3*).
            - Button tìm kiếm mô hình giúp người dùng tìm kiếm mô hình trong hệ thống.
            - Upload & print: Giúp điều hướng người dùng đến trang tải file `.gcode` (chi tiết trong mục *5.*).
        ]
    ],
    enum.item(2)[
        *Slider*: các slide với nội dung hệ thống và mô hình liên tục được trình bày với mọi người.
    ],
    enum.item(3)[
        *List Product*: Danh sách các mô hình được bán chạy nhất trên hệ thống. Khi nhấn chọn, người dùng sẽ được điều hướng đến trang chi tiết mô hình (chi tiết trong mục *5.4*).
    ],
    enum.item(4)[
        *Footer*: Giúp người dùng nắm bắt thêm được những thông tin phụ của hệ thống như kênh liên lạc cũng như gửi lại phản hồi về hệ thống. 
    ]
)
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

