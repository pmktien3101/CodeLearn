# CodeLearn

## Mục đích: 
Chương trình tập trung vào việc dạy học lập trình và đánh giá bài tập của sinh viên thông qua một quy trình tự động. Chương trình này đang tiến triển từ một hệ thống cơ bản đến một nền tảng phức tạp hơn, mang lại trải nghiệm học tập tốt hơn và hỗ trợ sinh viên hiệu quả hơn trong việc học lập trình.

## Người sử dụng: 
- Sinh viên trường FU
- Giảng viên trường FU
- Quản trị viên
  
## Chức năng chính:
### Giảng viên
#### 1. Tạo topic:
Cho phép giảng viên khi đăng nhập vào hệ thống có thể tạo chủ đề nào đó để giao cho sinh viên làm bài. Và trong chủ đề đó giảng viên tạo một danh sách các câu hỏi liên quan tới chủ đề chính.

#### 2. Tạo câu hỏi trong topic:
Bên cạnh việc tạo câu hỏi thì giảng viên có thể chỉnh sửa lại thông tin của câu hỏi nếu thấy sai, hoặc có thể upload hoặc chỉnh sửa lại kết quả của câu hỏi đó. Hoặc giảng viên có thể tự test xem câu hỏi giảng viên đưa lên có đúng hay không.

#### 3. Tạo khóa học:
Cho phép giảng viên có thể tạo khóa học bằng cách thêm học sinh vào khóa học đó, giảng viên có thể thêm bằng tay hoặc import bằng file Excel.

#### 4. Report:
Cho phép giảng viên có thể xem điểm, in điểm trong khóa học đó thành file Excel.

### Sinh viên
#### 1. Tham gia vào khóa học:
Sinh viên có thể tham gia vào khóa học cái được giảng viên tạo ra trước đó để vào làm bài.

#### 2.Nộp bài tập của mình lên web:
Cho phép sinh viên nộp câu trả lời của câu hỏi lên trên hệ thống khi làm xong. Bài sẽ được biên dịch ra file jar và đối chiếu với test case và lưu xuống dưới cơ sở dữ liệu.

#### 6.Xem điểm được xuất ra thành file excel:
Khi muốn xem điểm thì chỉ cần chọn vào xem điểm, điểm sẽ được xuất ra dưới dạng file excel cái mà được lưu dưới cơ sở dữ liệu.

#### 7.Lập trình trực tuyến và có video hướng dẫn:
Cho phép sinh viên có thể lập trình trực tuyến và có video hướng dẫn cụ thể về kiến thức.

#### 8.Cung cấp hướng dẫn code và hỗ trợ tích hợp ChatGPT:
Chương trình sẽ tích hợp ChatGPT để cung cấp hướng dẫn code và hỗ trợ cho sinh viên trong quá trình học lập trình.

### Admin
#### 1. Quản lý tài khoản:
Quản trị viên quản lý tài khoản của của người dùng, cho phép người dùng nào đăng ký rồi truy cập vào hệ thống

#### 2. Quản lý nhóm:
Quản trị viên có thể quản lý nhóm người sử dụng hệ thống

#### 3. Audit log:
Quản trị viên có thể theo dõi tài khoản và hoạt động của người dùng và giảng viên, với các báo cáo theo thời gian.

## Design
##### Login

<img width="390" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/0902e0c4-2958-40a6-9350-43e78af951cd">

##### Register

<img width="390" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/8084cf2c-5732-42c7-9d4c-02e4c5a32779">

##### Dashboard

<img width="946" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/c0f068f6-b57f-47f2-9322-4adb672da3f6">


