# nhaccuatruong_app
“Nhạc của Trường” là một ứng dụng nghe nhạc cá nhân được phát triển bằng Flutter với mục tiêu mang lại trải nghiệm nghe nhạc đơn giản, nhẹ, thân thiện và dễ tùy chỉnh. Ứng dụng này được thiết kế để người dùng có thể nghe nhạc trực tuyến hoặc phát từ thư viện cá nhân, đồng thời tạo playlist yêu thích riêng.

Về mặt kỹ thuật, dự án sử dụng Flutter SDK (ngôn ngữ Dart) kết hợp với thư viện http để xử lý dữ liệu nhạc từ server hoặc API, đồng thời tận dụng rootBundle để quản lý các tệp dữ liệu cục bộ. Phần UI được xây dựng theo phong cách Material Design, tối ưu cho cả giao diện điện thoại và máy tính bảng. Ngoài ra, ứng dụng còn sử dụng AudioPlayer Manager để điều khiển phát nhạc (play/pause, next/previous), giúp người dùng thao tác dễ dàng.

Cấu trúc thư mục của dự án tuân theo mô hình MVVM (Model – View – ViewModel) giúp mã nguồn rõ ràng, dễ bảo trì và mở rộng. Dự án được quản lý bằng Git và triển khai trên GitHub để lưu trữ, theo dõi tiến độ và cộng tác phát triển. Trong tương lai, ứng dụng dự kiến sẽ tích hợp thêm các tính năng như: gợi ý bài hát, lưu trữ playlist trên cloud, đăng nhập tài khoản cá nhân, và đồng bộ dữ liệu giữa các thiết bị.

Dự án “Nhạc của Trường” không chỉ là một bài tập học tập, mà còn là một bước đệm giúp tác giả rèn luyện kỹ năng phát triển ứng dụng di động đa nền tảng và quản lý dự án phần mềm hiện đại.
A new Flutter project.
Ứng dụng “Nhạc của Trường” được thiết kế theo mô hình phân lớp rõ ràng, tách biệt giao diện, dữ liệu và xử lý logic, giúp dễ mở rộng và bảo trì. Dưới đây là mô tả chi tiết từng phần chức năng theo cấu trúc project hiện tại:

Giao diện người dùng (UI Layer) — thư mục /lib/ui
Trang khám phá nhạc (Discovery Screen)

File: lib/ui/discovery/discovery.dart
Chức năng:

Hiển thị danh sách gợi ý bài hát / playlist

Giao diện khám phá nội dung nhạc

Điều hướng sang trang phát nhạc / trang chi tiết bài hát

Trang chính (Home Screen)

File: lib/ui/home/home.dart
Chức năng:

Giao diện trung tâm chứa các tab / danh mục nhạc

Liệt kê danh sách bài hát / playlist

Chuyển tới trang phát nhạc khi chọn bài hát

File: lib/ui/home/viewmodel.dart
Chức năng:

Xử lý logic lấy dữ liệu nhạc

Quản lý trạng thái UI (MVVM)

Điều phối dữ liệu từ backend/local

Trang phát nhạc (Now Playing)

File: lib/ui/now_playing/playing.dart
Chức năng:

Giao diện nghe nhạc

Hiển thị tên bài hát, ảnh bìa, thời lượng

Nút Play/Pause, Next, Previous

Thanh tua nhạc (progress bar)

File: lib/ui/now_playing/audio_player_manager.dart
Chức năng:

Điều khiển nhạc (play, pause, stop)

Quản lý audio stream

Tương tác với thư viện audio Flutter

Trang cài đặt (Settings Page)

File: lib/ui/settings/settings.dart
Chức năng:

Tuỳ chỉnh giao diện, theme, ngôn ngữ (nếu có)

Tùy chọn ứng dụng cá nhân

Điều hướng đến trang giới thiệu

File: lib/ui/settings/about_page.dart
Chức năng:

Hiển thị thông tin ứng dụng và tác giả

Thông tin phiên bản / mục tiêu dự án

Trang người dùng (User Section)

File: lib/ui/user/login_page.dart
Chức năng:

Giao diện đăng nhập cơ bản (tài khoản demo / chuẩn bị cho Firebase Login)

File: lib/ui/user/user.dart
Chức năng:

Model người dùng

Lưu thông tin user

Hỗ trợ xử lý đăng nhập sau này

🧠 Core Logic

File: lib/main.dart
Chức năng:

Entry point ứng dụng

Khởi chạy MaterialApp / Route

Quản lý theme / navigation

📦 Dữ liệu (Data Layer — đang mở rộng)

Thư mục lib/data/ được chuẩn bị để:

Lấy dữ liệu nhạc từ API hoặc file JSON

Quản lý Repository, DataSource (MVVM structure)

Hỗ trợ mở rộng sang Firebase / REST API
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
