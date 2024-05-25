= Model nhận diện 


Là nền tảng cho chức năng chính của phần mềm là đếm giàn giáo qua ảnh, Model đóng vai trò không thể thiếu cho việc xử lý nhận diện vật thể giàn giáo. Ở đây nhóm sử dụng Ultralytics YOLOv8 để training với tập dữ liệu giàn giáo mà nhóm đã gán nhãn theo một flow nhất định 
#figure(caption: "Flow hoạt động của Ultralytics",
    image("./img/banner-integrations.png", fit: "cover"))

== Gán nhãn (Labeling)

Đây là phần quan trọng nhất, ảnh hướng đến việc model nhận diện vật thể và đếm giàn giáo như thế nào, nhóm sử dụng công cụ có tên là Roboflow để việc gán nhãn được thuận tiện và dễ dàng hơn


#figure(caption: "Giao diện phần gán nhãn trong Roboflow",
    image("./img/roboflow.png", fit: "cover"))


Người dán nhãn sẽ vẽ hình chữ nhật bao quanh một giàn giáo trong hình và gán loại giàn giáo cho hình chữ nhật được vẽ lên. Đây là công việc đòi hỏi tính tỉ mỉ vô cùng cao và tốn rất nhiều thời gian vì số lượng giàn giáo trong một ảnh khá lớn, cũng như phải gán nhiều ảnh để model được train nhận diện chính xác và đúng với mong đợi của người dùng.

== Tạo Dataset

Sau khi đã có các hình ảnh và nhãn dán của chúng, ta sẽ tiến hành phân loại và tạo dataset cho việc training, validating và testing. Ta sẽ phân loại một phần hình ảnh đã gán nhãn cho việc train, validating và testing. Sau khi phân loại, ta sẽ xuất ra một dataset, cũng bằng công cụ Roboflow.

#figure(caption: "Tạo dataset trong Roboflow",
    image("./img/roboflowdataset.png", fit: "cover"))


== Train Model

Sau khi đã có Dataset, ta sẽ lấy dataset đó về và tiến hành train cho model YOLO, nhóm sử dụng YOLOv8 cho việc train, loại giàn giáo được sử dụng để minh họa cho việc train là IQC1524 (thuộc Type 4). Nhóm thực hiện train qua 100 chu kì (epoch) và ghi lại các thông số cho mỗi chu kỳ train. Sau khi train thì được kết quả như hình.


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
        #block(inset: (left:1cm))[
            - P (Precision): Độ chính xác của mô hình, thể hiện số ảnh mà mô hình phát hiện chính xác

            - R (Recall): Khả năng của mô hình để xác định tất cả các bản thể của các đối tượng trong hình ảnh.

            - mAP50: Độ chính xác trung bình được tính tại giao điểm trên hợp nhất (IoU: Là thước đo định lượng sự chồng chéo giữa bounding box dự đoán và bounding box thực nghiệm. Nó đóng một vai trò cơ bản trong việc đánh giá độ chính xác của quá trình localize đối tượng) ở ngưỡng 0,50. Đó là thước đo độ chính xác của mô hình nếu chỉ xem xét các phát hiện "dễ dàng".

            - mAP50-95: Giá trị trung bình của độ chính xác trung bình được tính ở các ngưỡng IoU khác nhau, dao động từ 0,50 đến 0,95. Nó cung cấp cái nhìn toàn diện về hiệu suất của mô hình ở các mức độ khó nhận diện khác nhau.
        ]
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
Precision, Recall và mAP50 trong 20 epoch đầu có sự biến động, sau đó có sự ổn định đến cuối. Đây là kết quả mà chúng ta mong đợi, khi những epoch đầu có sự nhiễu lọan và đạt được sự ổn định về sau. 
#figure(caption: "mAP50-95(Box) của Model nhận diện IQC1524",
    image("./img/map5095v8.png", fit: "contain"))
mAP50-95 thì biến động hơn nhưng vẫn với quy luật đã nêu trên, 20 epoch đầu có sự nhiễu loạn, sau đó tuy còn hỗn loạn nhưng đều có xu hướng tăng dần. 

Đây chỉ là thông số trên lý thuyết, còn thực tế kết quả có thể sai lệch, và nếu sai lệch xảy ra, model sẽ phải train lại để sửa lỗi sai đó. Quá trình train có thể diễn ra định kỳ hoặc được kích hoạt khi có sự sai sót quá nhiều (chủ yếu do người dùng báo sai)

=== Chạy thử Model
Sau khi đã có model, ta chạy thử để kiểm tra hiệu quả họat động của nó
#figure(caption: "Ảnh được sử dụng để kiểm tra",
    image("./img/prediction_raw.JPG", fit: "contain"))
Sau khi chạy Prediction qua Model, ta được ảnh kết quả như sau:
#figure(caption: "Ảnh được sử dụng để kiểm tra",
    image("./img/predictionresult.png", fit: "contain"))
#pagebreak()


=== So sánh YOLOv8 và YOLOv9 trên cùng một tập dữ liệu nhận diện giàn giáo Type4-IQC1524
Để so sánh và đối chiếu cũng như đánh giá model trên các phiên bản YOLO khác nhau, nhóm đã sử dụng cùng một tập dữ liệu cho giàn giáo Type4-IQC1524 để train cho model YOLOv8 (đã nói ở trên) cũng như YOLOv9, qua đó kết quả sau khi train của model YOLOv9 như sau:
#figure(caption: "Kết quả train của Model YOLOv9 nhận diện IQC1524",
    image("./img/v9result.png", fit: "contain"))
Có thể thấy, YOLOv9 chỉ mất 0.608 giờ để train và cho hiệu suất về Precision, Recall và mAP50 nhỉnh hơn so với YOLOv8, trong khi đó mAP50-95 thấp hơn nhưng không đáng kể. 


So sánh về độ chính xác của mỗi lần lặp (epoch) thì ta có biểu đồ như hình bên dưới
#figure(caption: "Precision(Box) của YOLOv8 và YOLOv9",
    image("./img/preciv8v9.png", fit: "contain"))

Ta thấy model v9 mau chóng đạt được sự ổn định ngay từ những epoch đầu tiên, trong khi đó v8 phải đi qua 20 epoch mới đạt được sự ổn định. Dẫu vậy cả 2 model đều đạt sự ổn định tương đồng nhau, kể cả việc bị nhiễu động nhẹ ở epoch 30. Tuy nhiên v9 ít bị ảnh hưởng hơn so với v8 và cũng tốn ít epoch hơn để trở về trạng thái ổn định. 

So sánh về tính Recall của 2 model, ta có biểu đồ sau:
#figure(caption: "Recall(Box) của YOLOv8 và YOLOv9",
    image("./img/recallv8v9.png", fit: "contain"))

Ta thấy model v9 cũng mau chóng đạt được sự ổn định ngay từ những epoch đầu tiên, trong khi đó v8 phải đi qua 20 epoch mới đạt được sự ổn định. Dẫu vậy cả 2 model đều đạt sự ổn định tương đồng nhau. Song v9 có sự nhiễu động về Recall ở khoảng epoch 30, nhưng sự nhiễu động này là không đáng kể và ngay từ epoch sau đã trở về trạng thái ổn định. 

So sánh về tính mAP50 của 2 model, ta có biểu đồ sau:
#figure(caption: "mAP50(Box) của YOLOv8 và YOLOv9",
    image("./img/map50v8v9.png", fit: "contain"))

Tương tự Precision và Recall, model v9 cũng mau chóng đạt được sự ổn định ngay từ những epoch đầu tiên, trong khi đó v8 phải đi qua 20 epoch mới đạt được sự ổn định. Dẫu vậy cả 2 model đều đạt sự ổn định tương đồng nhau.


So sánh về tính mAP50-95 của 2 model, ta có biểu đồ sau:
#figure(caption: "mAP50-95(Box) của YOLOv8 và YOLOv9",
    image("./img/map5095v8v9.png", fit: "contain"))

Ta thấy model v9 các epoch đầu giá trị cao hơn v8. Dẫu vậy cả 2 model đều có giá trị tương đồng nhau và có sự nhiễu động cũng như chiều hướng biến thiên của giá trị đều như nhau.

Tóm lại, YOLOv9 cho thời gian train nhanh hơn so với v8, đồng thời nhanh chóng đạt đến trạng thái ổn định hơn so với v8. Tuy nhiên càng về sau các thông số hầu như là như nhau. Vậy nên với 100 lần train thì kết quả đánh giá không cho thấy sự khác biệt quá lớn. Chỉ khi số lượng epoch nhỏ thì v9 sẽ tỏ ra tốt hơn so với v8. Tuy nhiên, nhóm vẫn sẽ giữ model v8 vì tiêu chí train model của nhóm cần 100 epoch nên không có sự khác biệt quá lớn về model train được. 