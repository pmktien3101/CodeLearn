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

<img width="935" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/60116c8d-de61-4137-a572-8a14a5bbd49d">

##### Register

<img width="931" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/09e67c59-480e-4bd6-b696-00e3bf699646">

##### Dashboard Teacher

<img width="527" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/d9baea19-1058-4c60-aef5-1f3a9a01cdbc">

##### Create Course

<img width="518" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/747ef7d6-21a5-47c0-8b5c-57ddf8f39262">

##### My Course

<img width="510" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/fdeaa282-b739-4bef-90f4-02f1211364c1">

##### View Grade

<img width="514" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/8cf64093-a3fb-45bf-a13e-d01e1ac95e34">

##### My Topic

<img width="485" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/6975c740-b646-4878-8c41-c176cab13c0c">

##### Create Topic

<img width="488" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/b9badd08-94ba-4f67-8dbc-78996009eb9f">

##### Create Question

<img width="484" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/3481191c-8a44-4aa0-b033-b358b55af200">

##### Dashboard Student

<img width="509" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/93da9f02-0cec-4ce3-8908-498847fc016c">

##### Enrol Course

<img width="511" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/08028586-d9b4-4cf2-ba9e-226d537c3fed">

##### Course Information

<img width="498" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/426b62b8-3738-46bb-a1ad-25323a6c1eec">

##### Search Course 

<img width="497" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/85682441-90c8-4bdb-a300-288ba85b9dae">

##### Submission

<img width="491" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/0808dcd3-e555-4349-92b1-7eade3c30d88">

<img width="501" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/42edf67b-c3e1-4b95-9ad8-356fd6075e55">

##### Check Result 

<img width="492" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/e58e998d-6f50-4876-a642-d6d3be27e491">

##### Comment 

<img width="492" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/d28916c8-2bd7-4851-84ac-64d28c99c02b">

##### Dashboard Admin 

<img width="574" alt="image" src="https://github.com/pmktien3101/CodeLearn/assets/127570843/8ffeaa9f-cd3f-403f-a1cd-854ec5802c06">











