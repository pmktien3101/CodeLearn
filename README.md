
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

#### 4. Copy topic:
Giảng viên có thể dễ dàng sao chép các chủ đề đã tạo để sử dụng lại trong các lớp học khác mà không cần tạo lại từ đầu.

#### 5. Share topic:
Chức năng chia sẻ chủ đề cho phép giảng viên chia sẻ các chủ đề và tài liệu liên quan với sinh viên một cách nhanh chóng và dễ dàng.

#### 6. Report:
Cho phép giảng viên có thể xem điểm, in điểm trong khóa học đó thành file Excel.

### Sinh viên
#### 1. Tham gia vào khóa học:
Sinh viên có thể tham gia vào khóa học cái được giảng viên tạo ra trước đó để vào làm bài.

#### 2.Nộp bài tập của mình lên web:
Cho phép sinh viên nộp câu trả lời của câu hỏi lên trên hệ thống khi làm xong. Bài sẽ được biên dịch ra file jar và đối chiếu với test case và lưu xuống dưới cơ sở dữ liệu.

#### 3.Xem điểm được xuất ra thành file excel:
Khi muốn xem điểm thì chỉ cần chọn vào xem điểm, điểm sẽ được xuất ra dưới dạng file excel cái mà được lưu dưới cơ sở dữ liệu.

#### 4. Bình luận câu hỏi:
Khi có thắc mắc cần giải đáp có thể bình luận vào câu hỏi đó để giảng viên phản hồi về cho mình.

#### 5.Lập trình trực tuyến và có video hướng dẫn:
Cho phép sinh viên có thể lập trình trực tuyến và có video hướng dẫn cụ thể về kiến thức.

#### 6.Cung cấp hướng dẫn code và hỗ trợ tích hợp ChatGPT:
Chương trình sẽ tích hợp ChatGPT để cung cấp hướng dẫn code và hỗ trợ cho sinh viên trong quá trình học lập trình.

### Admin
#### 1. Quản lý tài khoản:
Quản trị viên quản lý tài khoản của của người dùng, cho phép người dùng nào đăng ký rồi truy cập vào hệ thống

#### 2. Quản lý nhóm:
Quản trị viên có thể quản lý nhóm người sử dụng hệ thống

#### 3. Audit log:
Quản trị viên có thể theo dõi tài khoản và hoạt động của người dùng và giảng viên, với các báo cáo theo thời gian.

## Design

##### Home 

<img width="482" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/202aba1f-0b1d-45f0-8c19-705539734784">

##### Dashboard Teacher

<img width="482" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/861ef111-6eb0-48c7-b102-e4d6d9406275">

##### My Course

<img width="490" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/61195eb5-b8c5-4c99-b02a-46f1319c368b">

##### Create Course

<img width="482" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/c63f8717-de4a-4332-b234-abdc4f3746c6">

##### My Topic

<img width="479" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/32bf2a94-5f35-49fd-a49c-61064019ef59">

##### View Grade

<img width="488" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/344be0e0-22bf-4d1a-bcb4-94b393ddc847">

##### View Topic 

<img width="485" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/8aecebb9-4e76-447e-abab-cc5e9b5b72e0">

##### Create Topic

<img width="482" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/e7bf7481-a424-4de6-b62a-52f620d85a40">

##### Edit Topic 

<img width="485" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/d2cdeede-b3e4-4efa-923e-7807ef9edf85">

##### Create Question

<img width="482" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/ee4f2a2e-a79d-4ed2-8019-31c5496f1840">

##### Edit Question 

<img width="482" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/c8451a7b-7767-42e5-b3c4-ba67a9cbfd66">





