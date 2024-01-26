= Framework & Technology

Phần này sẽ giới thiệu sơ lược về các công nghệ được sử dụng trong dự án. Nhóm quản lý phiên bản mã nguồn với Git và GitHub, sử dụng framework ReactJs cho front-end, Fastify cho back-end, ánh xạ tới cơ sở dữ liệu với Prisma và sử dụng PostgreSQL để quản lý cơ sở dữ liệu. Dưới đây nhóm sẽ giới thiệu tóm lược về mỗi công nghệ đã nêu:

== Git

#figure(caption: [Git],
    image("../images/framework/Git.png" ), 
)

Git là một hệ thống quản lý phiên bản phân tán nguồn mở, được Linus Torvalds tạo ra vào năm 2005 để giải quyết nhu cầu quản lý mã nguồn hiệu quả trong quá trình phát triển nhân Linux. Hệ thống này đã trở thành một trong những hệ thống quản lý phiên bản phổ biến nhất được sử dụng hiện nay. Git được sử dụng để theo dõi những thay đổi trong mã nguồn trong quá trình phát triển phần mềm và cho phép nhiều lập trình viên làm việc đồng thời trên cùng một cơ sở mã nguồn.

Một số ưu điểm của Git bao gồm tốc độ, sự đơn giản, tính chất phân tán hoàn toàn, hỗ trợ phát triển song song và tính toàn vẹn. Git được thiết kế để hoạt động nhanh và hiệu quả, ngay cả khi làm việc với các cơ sở mã nguồn lớn. Nó có giao diện dòng lệnh đơn giản và trực quan giúp lập trình viên dễ dàng tìm hiểu và sử dụng. Git là một hệ thống kiểm soát phiên bản phân phối hoàn toàn, có nghĩa là mọi lập trình viên đều có bản sao hoàn chỉnh của cơ sở mã trên máy cục bộ của họ. Điều này giúp dễ dàng làm việc ngoại tuyến và cộng tác với các lập trình viên khác. Git cũng hỗ trợ việc phát triển song song, cho phép nhiều lập trình viên làm việc đồng thời trên cùng một cơ sở mã mà không có xung đột. Git sử dụng các hàm băm mật mã để đảm bảo tính toàn vẹn của cơ sở mã, khiến cho việc sửa đổi mã một cách vô tình hoặc cố ý mà không bị phát hiện là gần như không thể.

== GitHub

#figure(caption: [GitHub],
    image("../images/framework/github.png" ), 
)

GitHub là một nền tảng web bổ sung cho các chức năng của Git. GitHub cung cấp dịch vụ lưu trữ cho các kho Git (Git repositories) cùng với nhiều tính năng quản lý dự án và cộng tác. Với GitHub, người dùng có thể lưu trữ kho Git của họ trên Internet, giúp chúng có thể truy cập được từ mọi nơi có kết nối Internet. Cách tiếp cận này giúp đơn giản hóa việc cộng tác vì các thành viên trong nhóm có thể dễ dàng sao chép các kho Git, tạo nhánh và gửi "yêu cầu kéo" (Pull Requests) để xem xét và tích hợp mã.

GitHub cũng hỗ trợ việc quản lý dự án bằng cách cung cấp các công cụ để theo dõi sự cố, báo cáo lỗi và quản lý các yêu cầu tính năng. Ngoài ra, nó tích hợp tốt với các dịch vụ tích hợp liên tục (Continuous Integration) như GitHub Actions, cho phép các quy trình được kiểm thử và triển khai tự động.
#pagebreak()
== ReactJS

#figure(caption: [ReactJS],
    image("../images/framework/reactjs.png" ), 
)
ReactJS là một thư viện JavaScript được sử dụng để xây dựng giao diện người dùng. Nó được tạo ra bởi Jordan Walke, một kỹ sư phần mềm tại Facebook và được Facebook phát triển và duy trì. ReactJS là một thư viện khai báo, hiệu quả và linh hoạt, chịu trách nhiệm về lớp View của ứng dụng. Nó cho phép các nhà phát triển tạo các thành phần UI có thể tái sử dụng, có thể được lồng ghép với các thành phần khác để xây dựng các ứng dụng phức tạp từ các khối xây dựng đơn giản. ReactJS sử dụng cơ chế dựa trên DOM ảo để điền dữ liệu vào HTML DOM, cơ chế này hoạt động nhanh vì nó chỉ thay đổi các thành phần DOM riêng lẻ thay vì tải lại toàn bộ DOM mỗi lần.

ReactJS có một số lợi thế so với các JavaScript framework khác như dễ sử dụng, tốc độ nhanh và có khả năng mở rộng. Nó giúp các lập trình viên xây dựng các ứng dụng web có kích thước lớn và sửa đổi dữ liệu mà tránh việc tải lại trang không cần thiết. ReactJS chỉ xử lý lớp View trong mẫu MVC của giao diện người dùng ứng dụng. ReactJS cập nhật và hiển thị các thành phần một cách hiệu quả, đồng thời xử lý khéo léo các bản cập nhật DOM. Nó có thể được tích hợp vào bất kỳ ứng dụng nào, cho dù đó là một phần của trang hay một trang hoàn chỉnh hay thậm chí là toàn bộ ứng dụng. ReactJS cũng có khả năng tương thích ngược, nghĩa là nó cũng có thể được sử dụng với các phiên bản trình duyệt cũ hơn.

== Fastify
#figure(caption: [Fastify],
    image("../images/framework/fastify.png" ), 
)

Fastify là một web framework dành cho Node.js tập trung chủ yếu vào việc cung cấp trải nghiệm tốt lập trình viên với chi phí thấp và một kiến trúc plugin mạnh mẽ. Fastify lấy cảm hứng từ Hapi và Express và là một trong những web framework nhanh nhất hiện tại. Fastify có khả năng mở rộng thông qua các hook, plugin và decorators. Fastify có một trình logging được tích hợp sẵn, từ đó gần như loại bỏ chi phí cho tác vụ logging. Fastify thân thiện với người dùng và được xây dựng để mang tính diễn đạt cao mà không làm giảm hiệu suất và tính bảo mật.

Một trong những ưu điểm chính của Fastify nằm ở tốc độ, đạt được nhờ tối thiểu hóa chi phí và tập trung vào hiệu suất. Nó cung cấp tính năng tự động serialize và deserialize dữ liệu đến và đi, hỗ trợ việc xác thực các request, tham số định tuyến và chuẩn hóa đầu vào, khiến nó trở thành một lựa chọn an toàn để phát triển web. 
#pagebreak()
== Prisma
#figure(caption: [Prisma],
    image("../images/framework/prisma.png" ), 
)
Prisma là một ORM thế hệ mới giúp đơn giản hóa quy trình làm việc với cơ sở dữ liệu và thay thế các ORM truyền thống. Nó cung cấp khả năng truy cập cơ sở dữ liệu an toàn kiểu (type-safe) với Prisma Client, di chuyển (migrate) dữ liệu với Prisma Migrate cũng như quản lý dữ liệu trực quan với Prisma Studio. Prisma Client có thể được sử dụng để xây dựng các API GraphQL, REST, gRPC và hơn thế nữa. Prisma hiện hỗ trợ nhiều hệ thống quản lý cơ sở dữ liệu như MySQL, PostgreSQL và MongoDB.

Một số lợi ích của Prisma có thể kể đến như an toàn kiểu, API hiện đại và đọc/ghi dữ liệu quan hệ một cách linh hoạt. Prisma thống nhất quyền truy cập vào nhiều cơ sở dữ liệu cùng một lúc và từ đó giảm đáng kể độ phức tạp trong các quy trình làm việc trên nhiều cơ sở dữ liệu. Nó cũng có hệ thống sự kiện và streaming theo thời gian thực cho cơ sở dữ liệu, đảm bảo người dùng nhận được cập nhật cho tất cả các sự kiện quan trọng xảy ra trong cơ sở dữ liệu của mình.
#pagebreak()
== PostgreSQL
#figure(caption: [PostgreSQL],
    image("../images/framework/postgresSQL.png" ), 
)
PostgreSQL, được phát triển và duy trì bởi một nhóm các nhà phát triển phần mềm PostgreSQL Global Development Group, là một hệ thống cơ sở dữ liệu quan hệ đối tượng nguồn mở sử dụng và mở rộng ngôn ngữ SQL kết hợp với nhiều tính năng lưu trữ và mở rộng quy mô một cách an toàn cho các khối lượng dữ liệu phức tạp nhất. PostgreSQL nổi tiếng bởi kiến trúc đã được chứng minh, độ tin cậy, tính toàn vẹn dữ liệu, bộ tính năng mạnh mẽ, khả năng mở rộng và cộng đồng nguồn mở đằng sau cung cấp nhất quán các giải pháp sáng tạo và hiệu quả.  

PostgreSQL đi kèm với nhiều tính năng nhằm giúp các lập trình viên xây dựng ứng dụng, các quản trị viên bảo vệ tính toàn vẹn của dữ liệu và xây dựng môi trường có khả năng đối phó với lỗi, đồng thời giúp người dùng quản lý dữ liệu của mình  dù lớn hay nhỏ. Ngoài việc là nguồn mở và miễn phí, PostgreSQL còn có khả năng mở rộng cao. Chẳng hạn như người dùng có thể tạo loại dữ liệu của riêng mình, xây dựng các hàm tùy chỉnh, thậm chí viết mã từ các ngôn ngữ lập trình khác nhau mà không cần biên dịch lại cơ sở dữ liệu.

#pagebreak()