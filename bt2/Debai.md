# Bài tập 2: Viết Smart contract Solidity quản lý ghi danh lớp học tiếng Anh

Anh Sơn đang tổ chức một lớp học tiếng Anh và cho mọi người ghi danh đăng ký, tổng số học viên tối đa là x.

1. Chức năng ghi danh
Do đặc thù của lớp học khá khó nên học viên cần phải được anh Sơn cho phép bằng address của học viên.
*Chỉ có anh Sơn được quyền tương tác với chức năng này.

2. Chức năng đóng học phí
Sau khi được anh Sơn cho phép (address có trong danh sách whitelist) sẽ chuyển học phí vào smart contract. Chỉ những học viên đã đăng ký ở bước 1 được chuyển tiền vào smart contract. Nếu học viên chuyển tiền quá muộn (full slot) thì smart contract không nhận tiền nữa. Học viên chỉ được chuyển 1 lần, số tiền chuyển = học phí. Học viên không được chuyển thấp hơn hoặc cao hơn số tiền học phí đã công bố.

3. Chức năng thống kê
Hiển thị một số thông tin cần phải được minh bạch
- Số học viên tối đa
- Số lượng học viên đã ghi danh
- Số lượng học viên đã đóng tiền
- Số tiền học phí
- Tổng số tiền đã nhận

4. Chức năng kiểm tra
- Kiểm tra address có nằm trong whitelist không.
- Kiểm tra address có quyền access vào khoá học không - đã đóng tiền.

5. Chức năng rút tiền
Anh Sơn có quyền rút tiền từ smart contract ra bất cứ lúc nào.

Lưu ý:
Có thể làm nhóm tối đa 3 người. Khi báo cáo có thể cử đại diện báo cáo, nhưng phải đảm bảo tất cả thành viên đều hiểu bài.
Nhóm có thể tự do sáng tạo dựa trên đề bài.

Tham khảo smart contract a viết, smart contract là trung gian giữa người bán và người mua: https://testnet.bscscan.com/address/0x1a0a338def614fc0dee58c98df1e121b4b0ffadf#code

Bài khó, chúc các em tập trung và giải quyết được bài này.
Deadline: 16:00 chủ nhật 10/07/2022. Tối chủ nhật 22:00 anh sẽ livestream sửa bài.