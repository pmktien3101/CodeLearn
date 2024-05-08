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
##### Login

<img width="935" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/60116c8d-de61-4137-a572-8a14a5bbd49d">

##### Register

<img width="931" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/09e67c59-480e-4bd6-b696-00e3bf699646">

##### Home 

<img width="391" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/f016262d-eea7-4086-9708-f4c018609dd9">

##### Dashboard Teacher

<img width="393" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/e771ee2f-4006-4e33-8c59-f7471327766a">

##### My Course

<img width="386" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/974e79f0-97e3-4197-b636-98cb9b45783e">

##### Create Course

<img width="392" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/0fed0edf-6a5b-413c-96f0-c28c7293df7e">

##### My Topic

<img width="393" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/27c85923-d436-4c9d-bb39-06400680f532">

##### View Grade

<img width="391" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/6fcb2e13-c1e1-44ad-a015-39d7fed8fbf1">

##### View Topic 

<img width="323" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/9d1c6e73-76c9-4ea4-b6c7-8acd472cb649">

##### Create Topic

<img width="390" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/0c40ff1d-af05-440b-967c-2cab74dde320">

##### Edit Topic 

<img width="387" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/12de0009-9f87-485e-9137-55fe65f01a53">

##### Create Question

<img width="281" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/689d77cc-1ba3-4198-82a6-9370343ae3e0">

###### Edit Question 

<img width="446" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/93305729-a710-4930-974d-20d93f0e134b">




