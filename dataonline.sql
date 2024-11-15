-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2023 lúc 06:33 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dataonline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsp`, `soluong`, `gia`) VALUES
(17, 1, 1, '1500000'),
(18, 12, 1, '699000'),
(18, 13, 1, '699000'),
(19, 9, 1, '1405000'),
(19, 6, 1, '1750000'),
(20, 15, 4, '7996000'),
(20, 12, 1, '699000'),
(21, 4, 1, '1203000'),
(21, 5, 1, '1440000'),
(22, 14, 1, '899000'),
(23, 12, 1, '699000'),
(24, 12, 1, '699000'),
(24, 15, 1, '1999000'),
(24, 13, 1, '699000'),
(24, 11, 1, '1600000'),
(24, 6, 1, '1750000'),
(25, 12, 1, '699000'),
(26, 10, 1, '1350000'),
(27, 10, 2, '2700000'),
(28, 14, 1, '899000'),
(28, 13, 1, '699000'),
(28, 9, 1, '1405000'),
(29, 66, 1, '2700000'),
(29, 65, 1, '2300000'),
(30, 54, 1, '1390000'),
(31, 63, 1, '2990000'),
(31, 64, 1, '3300000'),
(32, 65, 1, '2300000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` text NOT NULL,
  `sodienthoai` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(250) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`, `trangthai`) VALUES
(23, 1, 'Hà Nội', '0979656935', 'vanhai7868@gmail.com', 1, '699000', 4),
(24, 1, 'Bắc Ninh', '0979656935', 'vanhai7868@gmail.com', 5, '6747000', 3),
(25, 1, 'Nam Từ Liêm', '0979656935', 'vanhai7868@gmail.com', 1, '699000', 2),
(26, 1, 'Bắc Từ Liêm', '0979656935', 'vanhai7868@gmail.com', 1, '1350000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `hinhanh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanh`) VALUES
(4, 'Thông Tin', 'http://www.radio-calade.fr/radiocalade/wp-content/uploads/2019/01/information-logo-png.png'),
(5, 'Liên Hệ', 'https://webstockreview.net/images/phone-icon-png-3.png'),
(6, 'Đơn Hàng', 'https://e7.pngegg.com/pngimages/358/384/png-clipart-computer-icons-purchase-order-purchasing-icon-design-business-business-text-service.png'),
(7, 'Đăng Xuất', 'https://cdn-icons-png.flaticon.com/512/660/660350.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(11) NOT NULL,
  `tensp` varchar(250) NOT NULL,
  `giasp` varchar(100) NOT NULL,
  `hinhanh` text NOT NULL,
  `mota` text NOT NULL,
  `loai` int(2) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`, `size`) VALUES
(1, 'ADIDAS SWIFT RUN', '1500000', 'https://balovnxk.vn/wp-content/uploads/2018/02/giay-adidas-swfit-run-chinh-hang-tphcm-9.jpg', 'Giày Adidas Swift Run Chính Hãng Xách Tay Giá Rẻ Tp.Hcm – Uy Tín\r\n\r\nAdidas Swift Run là mẫu giày có thể mang hàng ngày hoặc tập luyện dành cho tất cả mọi người\r\nVới chất liệu Upper đan dệt đàn hồi giúp dễ dàng mang tháo như một chiếc vớ\r\nĐế OrthoLite® siêu nhẹ và êm luôn mang lại cảm giác thoải mái tuyệt vời cho người mang\r\nLogo 3 Sọc được thêu vào phần upper nổi trội mang nét thẩm mỹ riêng cho đôi giày', 1, 0),
(2, 'Giày Sneaker Adidas EQT Support', '1300000', 'https://www.sneakersnstuff.com/images/161744/original.jpg', 'Một trong những điểm thiết kế rất hay của giày adidas là việc khai thác các giá trị kinh điển trong kho giày khổng lồ của hãng. Nổi bật nhất trong lối thiết kế này chính là phân nhánh giày sneaker adidas EQT – với những phiên bản giày hiện đại được tạo nên bằng việc tái thiết kế những dòng giày cũ.\r\n\r\nGóp mặt mới nhất vào hãng ngũ của EQT sẽ là đôi giày sneaker adidas EQT Support 91/18 – được make-over từ adidas EQT Support 91.', 1, 0),
(3, 'ADIDAS PROPHERE', '1830000', 'https://balovnxk.vn/wp-content/uploads/2018/03/giay-adidas-prophere-chinh-hang-white-1.jpg', 'Giày Adidas Prophere All White Chính Hãng Xách Tay Giá Rẻ Tp.Hcm\r\n\r\nAdidas Prophere báo hiệu một trào lưu mới đến với văn hoá đường phố\r\nVới dáng vẻ đồ sộ, nhưng vẫn giữ được sự êm ái và thoải mái khi mang\r\nChất liệu Upper được đệt có cái đốm màu, và logo 3 sọc được làm bằng da cao cấp\r\nPhần đế to bao quanh với phần midsole được chạm khắc tạo hình gai\r\nPhần đế cao su vẫn được giữ nguyên đặt ở gót và mũi giày', 1, 0),
(4, 'GIÀY PUMA CELL PHASE NAM - TRẮNG ĐỎ', '1203000', 'https://myshoes.vn/image/data/product/puma/giay-puma-CELL-Phase-04.jpg', 'Giày Puma CELL Phase Nam là mẫu giày được thiết kế rất độc đáo với kiểu dáng đẹp và thời trang. Đôi giày nổi bật với upper vải mesh vô cùng nhẹ và thoáng, thiết kế thời trang đậm chất thể thao.Đặc biệt phần đế với công nghệ tiên tiến nhất của Puma sẽ cho cảm giác cực kỳ êm và thoải mái cho người sử dụng. Đây chắc chắn là một mẫu giày thể thao không thể bỏ qua của Puma.', 2, 0),
(5, 'GIÀY PUMA MIRACLE CAM XANH TRẮNG', '1440000', 'https://bizweb.dktcdn.net/100/369/523/products/37291201.jpg?v=1610347042537', 'Hàng chính hãng fullbox - US SHIP - NEW 100%\r\nFAKE ĐỀN GẤP 03.\r\nNhận order các sản phẩm chính hãng từ UK, US, KR, JP, CN, RS, ...\r\nCam kết 100% mỗi sản phẩm đều có ảnh thật do shop chụp.\r\nBẠN NHỚ LIKE SẢN PHẨM VÀ THEO DÕI SHOP ĐỂ LUÔN CẬP NHẬT MÃ GIẢM GIÁ, CHƯƠNG TRÌNH DEAL SỐC , KHUYẾN MÃI KHỦNG TRONG THÔNG BÁO CỦA BẠN NHA, CÁM ƠN BẠN!!!', 2, 0),
(6, 'GIÀY NỮ PUMA HYBRID ROCKET RUNNER', '1750000', 'https://tse2.mm.bing.net/th?id=OIP.RBGahqKjN53kVs3DYxhEbwHaHP&pid=Api&P=0&h=220', 'Giày nữ Puma Hybrid Rocket Runner\r\nMẫu giày hầm hố cực kì á. Công nghệ Hybrid kết hợp giữa đế foam Puma và hung gót ignite giúp trợ lực và bám chắc đường chạy hơn ?\r\n?Đủ size 5,5 – 10 us\r\n\r\n', 2, 0),
(7, 'Giày Adidas Chính Hãng - ULTRABOOST 20 - Black', '2550000', 'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/092/products/adidas-ultraboost-20-fv8349-01.jpg?v=1615523541727', 'GIÀY CHẠY BỘ LINH HOẠT SỬ DỤNG SỢI PARLEY OCEAN PLASTIC.\r\n\r\nBạn chạy bộ vì sức khỏe bản thân. Vì bạn thích không gian ngoài trời. Đôi giày chạy bộ adidas này thể hiện niềm đam mê của bạn. Thân giày mềm mại, linh hoạt có sử dụng chất liệu nhựa thu gom từ các bờ biển và vùng ven biển. Đây là nỗ lực của adidas hướng tới chấm dứt rác thải nhựa. Và cũng là cách tuyệt vời cho thấy bạn quan tâm.', 1, 0),
(8, 'Giày Adidas Superstar EG4958 Màu Trắng', '1700000', 'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/07/giay-adidas-superstar-eg4958-mau-trang-5f0c2453e76ee-13072020160731.jpg', 'Bạn chạy bộ vì sức khỏe bản thân. Vì bạn thích không gian ngoài trời. Đôi giày chạy bộ adidas này thể hiện niềm đam mê của bạn. Thân giày mềm mại, linh hoạt có sử dụng chất liệu nhựa thu gom từ các bờ biển và vùng ven biển. Đây là nỗ lực của adidas hướng tới chấm dứt rác thải nhựa. Và cũng là cách tuyệt vời cho thấy bạn quan tâm.', 1, 0),
(9, 'Giày Adidas Superstar Black Core', '1405000', 'https://giaygiare.vn/upload/sanpham/large/adidas-superstar-den-soc-trang-nam-nu.jpg', 'Mẫu giày thể thao adidas 3 sọc là mẫu giày đi cùng năm tháng.chưa bao giwof hết hót và luôn được các bạn trẻ chào đón.\r\n\r\nMẫu giày thể thao adidas 3 sọc này là hàng VIỆT NAM chất lượng cao ', 1, 0),
(10, 'Giày Adidas Originals NMD_R1', '1350000', 'https://i.pinimg.com/736x/91/62/e8/9162e890789726e8321ff307f5f71af6.jpg', 'Giày Adidas nữ chính hãng luôn được các nàng yêu thích và săn đón. Tổng hợp các mẫu giày thể thao, giày chạy bộ Adidas được ưa chuộng nhất hiện nay.', 1, 0),
(11, 'Giày Adidas ADIDAS SWIFT RUN', '1600000', 'https://balovnxk.vn/wp-content/uploads/2018/02/giay-adidas-swift-run-chinh-hang-tphcm-20-768x768.jpg', 'Giày Adidas Swift Run Chính Hãng Shipped Us Chính Hãng 100% – Uy Tín\r\n\r\nAdidas Swift Run là mẫu giày có thể mang hàng ngày hoặc tập luyện dành cho tất cả mọi người\r\nVới chất liệu Upper đan dệt đàn hồi giúp dễ dàng mang tháo như một chiếc vớ\r\nĐế OrthoLite® siêu nhẹ và êm luôn mang lại cảm giác thoải mái tuyệt vời cho người mang\r\nLogo 3 Sọc được thêu vào phần upper nổi trội mang nét thẩm mỹ riêng cho đôi giày', 1, 0),
(12, 'Giày Adidas NMD 360 X Lego', '699000', 'https://balovnxk.vn/wp-content/uploads/2023/08/ADIDAS-NMD-360-X-LEGO%C2%AE-SHOES-BLACK-1-768x768.jpg', 'Adidas Swift Run là mẫu giày có thể mang hàng ngày hoặc tập luyện dành cho tất cả mọi người\r\nVới chất liệu Upper đan dệt đàn hồi giúp dễ dàng mang tháo như một chiếc vớ\r\nĐế OrthoLite® siêu nhẹ và êm luôn mang lại cảm giác thoải mái tuyệt vời cho người mang', 1, 0),
(13, 'Giày Adidas NMD 360 Hologram', '699000', 'https://balovnxk.vn/wp-content/uploads/2022/04/NMD-360-SHOES-9-768x768.jpg', 'Giày Adidas chính hãng luôn được các nàng yêu thích và săn đón. Tổng hợp các mẫu giày thể thao, giày chạy bộ Adidas được ưa chuộng nhất hiện nay.', 1, 0),
(16, 'GIÀY NỮ PUMA STAR VITAL TRAINING', '3600000', 'https://linhstoreusa.com/wp-content/uploads/2020/10/Giay-nu-Puma-Star-Vital-Training-3-768x749.jpg', 'Puma đã quá quen thuộc với mọi người, chỉ đứng đằng sau Adidas và Nike. Được thành lập vào năm 1924, Puma đã có hơn 70 năm trên thị trường, trở thành thương hiệu đa quốc gia và có trụ sở ở Đức. Hiện tại, thương hiệu Puma phân phối các sản phẩm trên khoảng 80 nước và tài trợ cho khoảng 30 đội bóng đá, ngôi sao bóng đá nổi tiếng trên thế giới.', 2, 0),
(17, 'Giày Puma 369232 Dành Cho Nữ Màu Hồng', '1200000', 'https://bizweb.dktcdn.net/thumb/1024x1024/100/345/460/products/giay-puma-369232-danh-cho-nu-mau-hong-size-22-5cm.jpg?v=1589440060980', 'Hàng có sẵn tại shop\r\nHàng nhà em  lúc sale ko còn nhiều ạ \r\nHàng chuẩn auth ', 2, 0),
(18, 'GIÀY PUMA CAVEN NAM - TRẮNG', '2000000', 'https://myshoes.vn/image/cache/catalog/2022/puma/2.3/giay-puma-caven-nam-trang-03-1000x1000.jpg', 'Giày Puma Caven mẫu giày cổ điển được phát triển từ những năm 1980 của Puma. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 2, 0),
(19, 'GIÀY PUMA RBD GAME LOW BETTER II', '1690000', 'https://manhhungexpress.com/quanlydonhang/Content/Upload/files/0101000/13324622844427149.jpeg', 'Giày Puma RBD Game Low Better II là mẫu giày có thiết kế đẹp cổ điển mà rất tinh tế. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 2, 0),
(20, 'GIÀY PUMA SLIPSTREAM EVERYWHERE', '1990000', 'https://bizweb.dktcdn.net/thumb/1024x1024/100/392/359/products/bc20e774-7bd4-445f-8e22-c4a9fc924c36.png?v=1653987581383', 'Giày Puma Slipstream Everywhere mẫu giày sneaker rất nổi tiếng của Puma, thiết kế cổ điển nhưng đẹp và không bao giờ lo lỗi mốt. Puma Slipstream Everywhere là lựa chọn không thể bỏ qua của các fan giày sneaker.', 2, 0),
(21, 'GIÀY PUMA SMASH CAT L NAM NỮ - TRẮNG XANH', '1490000', 'https://weso.vn/media/catalog/product/cache/e54917a6329880ee108830ba35c3a0d0/b/a/base---puma-men_s-roma-basic-sneaker.jpg', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại.\r\n\r\nChất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 2, 0),
(22, 'GIÀY PUMA CAVEN NAM - TRẮNG ĐỎ', '1290000', 'https://tship.vn/UserUpload/Project/giay-nu-puma-women-s-cali-sport-mix-sneakers-6.jpg', 'Giày Puma Caven mẫu giày cổ điển được phát triển từ những năm 1980 của Puma. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 2, 0),
(27, 'Giày Nike Air Force 1 Low Cream Black Swoosh', '698000', 'https://shopgiayreplica.com/wp-content/uploads/2022/11/af1-cream-black-swoosh.jpg', 'Cam kết chỉ bán giày chuẩn chất lượng từ Rep 1:1 - Like Auth - Best Quality từ các xưởng Best Trung Quốc\r\nHàng có sẵn tại Shop. Không qua bên thứ 3 ---> Chất lượng giày qua kiểm định kỹ càng.', 5, 0),
(28, 'Giày Nike Air Force 1 Low Brooklyn Cream', '1150000', 'https://product.hstatic.net/200000532469/product/nike-air-force-1-low-brooklyn-cream_3152ed5887d040bb80e185afe7313458_master.jpg', 'Giày Nike Air Force 1 Low Brooklyn Cream có kiểu dáng đẹp và thanh lịch. Đặc biệt, phần đầu được phối màu độc quyền tạo nên điểm nhấn tuyệt đẹp và độc đáo.Fandy tin chắc rằng, mẫu sản phẩm này sẽ thu hút sự quan tâm của rất nhiều tín đồ sneaker hiện nay.', 5, 0),
(29, 'Giày NIKE AIR MAX 90', '3900000', 'https://kingshoes.vn/data/upload/media/dv1734-100-giay-nike-air-max-90-se-chinh-hang-gia-tot-den-king-shoes-12.jpeg', 'Giày Nike Air Force 1 Low Brooklyn Cream có kiểu dáng đẹp và thanh lịch. Đặc biệt, phần đầu được phối màu độc quyền tạo nên điểm nhấn tuyệt đẹp và độc đáo.Fandy tin chắc rằng, mẫu sản phẩm này sẽ thu hút sự quan tâm của rất nhiều tín đồ sneaker hiện nay.', 5, 0),
(30, 'GIÀY NIKE AIR FORCE 1 LOW PANDA 2023', '3790000', 'https://bizweb.dktcdn.net/100/460/898/products/z4091006932543-acbd5f9649d88f0a8febc77abb77c860.jpg?v=1675761147587', 'Giày Nike Air Force 1 Low Brooklyn Cream có kiểu dáng đẹp và thanh lịch. Đặc biệt, phần đầu được phối màu độc quyền tạo nên điểm nhấn tuyệt đẹp và độc đáo.Fandy tin chắc rằng, mẫu sản phẩm này sẽ thu hút sự quan tâm của rất nhiều tín đồ sneaker hiện nay.', 5, 0),
(31, 'GIÀY NIKE AIR DUNK JUMBO MEN SHOES', '4700000', 'https://kallos.co/cdn/shop/files/nIh5I0kk_1_b7d59bb8-32d2-49bd-917b-3206dcbcf5a4.jpg?v=1692833569&width=1080', 'Giày Nike Air Force 1 Low Brooklyn Cream có kiểu dáng đẹp và thanh lịch. Đặc biệt, phần đầu được phối màu độc quyền tạo nên điểm nhấn tuyệt đẹp và độc đáo.Fandy tin chắc rằng, mẫu sản phẩm này sẽ thu hút sự quan tâm của rất nhiều tín đồ sneaker hiện nay.', 5, 0),
(32, 'Giày Nike Court Legacy', '2050000', 'https://quatasy.com/wp-content/uploads/2021/03/Gi%C3%A0y-Nike-Court-Legacy-CU4149-102.jpg', 'Giày Nike Court Legacy là mẫu giày được yêu thích của thương hiệu Nike. Mẫu giày được thiết kế với kiểu dáng cổ điển đặc trưng. Phần thân trên được làm bằng da cùng lớp viền vải bạt. Chi tiết hình họa “NIKE” tạo điểm nhấn. Đế ngoài cao su họa tiết xương cá tạo cảm giác linh hoạt khi di chuyển. Với gam màu thanh lịch, giày Nike Court Legacy phù hợp với nhiều phong cách thời trang khác nhau.', 5, 0),
(33, 'Giày Nike Air Jordan 1 Elevate Low', '4200000', 'https://quatasy.com/wp-content/uploads/2022/04/Gi%C3%A0y-Nike-Air-Jordan-1-Elevate-Low-DQ3698-141.jpg', 'Thiết kế mang tính biểu tượng cùng kiểu dáng phóng đại đầy thu hút. Nike Air Jordan 1 Elevate Low mang vẻ đẹp cổ điển và sang trọng.', 5, 0),
(34, 'Giày Nike Air Force 1 Low 82 Blue 1:1', '900000', 'https://bdsneaker.vn/watermark/nike-air-force-1-low-82-blue.png', 'Thiết kế mang tính biểu tượng cùng kiểu dáng phóng đại đầy thu hút. Nike Air Jordan 1 Elevate Low mang vẻ đẹp cổ điển và sang trọng.', 5, 0),
(35, 'Giày Nike Air Jordan 1 High', '5900000', 'https://quatasy.com/wp-content/uploads/2022/08/Gi%C3%A0y-Nike-Air-Jordan-1-High-575441-711.jpg', 'Lấy cảm hứng từ bản gốc ra mắt năm 1985 với thiết kế mang tính biểu tượng. Nike Air Jordan 1 High mang vẻ đẹp cổ điển và sang trọng.', 5, 0),
(36, 'GIÀY NIKE AIR MAX EXCEE NỮ - TRẮNG XANH', '2390000', 'https://myshoes.vn/image/catalog/2022/nike2/8.11/giay-nike-air-max-excee-nu-trang-xanhl-01.jpg', 'Giày Nike Air Max Excee mẫu giày thời trang năng động, trẻ trung Air Max Excee đã cập bến tại Myshoes.vn. Đây hứa hẹn sẽ là một mẫu giày chất chơi mà bạn không thể bỏ qua.', 5, 0),
(47, 'Dép thời trang nam ALST001', '677000', 'https://product.hstatic.net/1000312752/product/alst001-19_8ae4ea042d644c8aaf0f1b3f70869fcc_master.jpg', 'Được thiết kế với mục đích mang lại sự thoải mái và nhẹ nhàng cho người sử dụng, đôi dép Lining không chỉ phù hợp cho các hoạt động thể thao mà còn rất tiện lợi cho việc đi lại hàng ngày. Sản phẩm sử dụng chất liệu cao su và EVA chất lượng cao, giúp tăng khả năng chống trượt và độ bền. Đặc biệt, thiết kế thông minh ôm sát bàn chân cùng insole êm ái mang lại trải nghiệm thoải mái tối ưu. Đa dạng về màu sắc và kiểu dáng, đôi dép Lining luôn là lựa chọn hàng đầu của giới trẻ yêu thích phong cách năng động và cá tính.', 3, 0),
(48, 'Dép thời trang nam ALST003-2', '579000', 'https://bizweb.dktcdn.net/100/340/361/products/alst00329adb8c0f1b88c149bba74f.jpg?v=1695962216307', 'Được thiết kế với mục đích mang lại sự thoải mái và nhẹ nhàng cho người sử dụng, đôi dép Lining không chỉ phù hợp cho các hoạt động thể thao mà còn rất tiện lợi cho việc đi lại hàng ngày. Sản phẩm sử dụng chất liệu cao su và EVA chất lượng cao, giúp tăng khả năng chống trượt và độ bền. Đặc biệt, thiết kế thông minh ôm sát bàn chân cùng insole êm ái mang lại trải nghiệm thoải mái tối ưu. Đa dạng về màu sắc và kiểu dáng, đôi dép Lining luôn là lựa chọn hàng đầu của giới trẻ yêu thích phong cách năng động và cá tính.', 3, 0),
(49, 'Dép Thời Trang Unisex Adidas Adilette Comfort', '700000', 'https://supersports.com.vn/cdn/shop/products/GW9647-1.jpg?v=1674033723', 'ĐÔI DÉP CHO CẢM GIÁC THOẢI MÁI, ĐA NĂNG VÀ PHONG CÁCH ĐẦY TÍNH BIỂU TƯỢNG.\r\n\r\nĐúng chuẩn classic. Đôi dép adidas này là sự kết hợp hoàn hảo giữa sự linh hoạt và thoải mái. Kiểu dáng ôm vừa khí và dễ dàng cởi ra, thuận tiện để bạn đi từ hồ bơi ra phòng thay đồ và ghế sofa. Với vẻ ngoài kinh điển và phong cách casual, bạn có thể dễ dàng đi đôi dép này với vớ và quần track pants, hoặc không đi vớ và phối với quần bơi, để chuẩn bị sẵn sàng cho mọi dịp sắp tới.', 3, 0),
(50, 'Dép Thời Trang Nữ Nike Offcourt Adjust Slide', '979000', 'https://supersports.com.vn/cdn/shop/files/DV1033-100-1_460x@2x.jpg?v=1682420514', 'ĐÔI DÉP CHO CẢM GIÁC THOẢI MÁI, ĐA NĂNG VÀ PHONG CÁCH ĐẦY TÍNH BIỂU TƯỢNG.\r\n\r\nĐúng chuẩn classic. Đôi dép adidas này là sự kết hợp hoàn hảo giữa sự linh hoạt và thoải mái. Kiểu dáng ôm vừa khí và dễ dàng cởi ra, thuận tiện để bạn đi từ hồ bơi ra phòng thay đồ và ghế sofa. Với vẻ ngoài kinh điển và phong cách casual, bạn có thể dễ dàng đi đôi dép này với vớ và quần track pants, hoặc không đi vớ và phối với quần bơi, để chuẩn bị sẵn sàng cho mọi dịp sắp tới.', 3, 0),
(51, 'Dép Thời Trang Nữ Nike Victori One Osaka', '742000', 'https://supersports.com.vn/cdn/shop/files/FJ6767-001-1.jpg?v=1691481540', 'ĐÔI DÉP CHO CẢM GIÁC THOẢI MÁI, ĐA NĂNG VÀ PHONG CÁCH ĐẦY TÍNH BIỂU TƯỢNG.\r\n\r\nĐúng chuẩn classic. Đôi dép adidas này là sự kết hợp hoàn hảo giữa sự linh hoạt và thoải mái. Kiểu dáng ôm vừa khí và dễ dàng cởi ra, thuận tiện để bạn đi từ hồ bơi ra phòng thay đồ và ghế sofa. Với vẻ ngoài kinh điển và phong cách casual, bạn có thể dễ dàng đi đôi dép này với vớ và quần track pants, hoặc không đi vớ và phối với quần bơi, để chuẩn bị sẵn sàng cho mọi dịp sắp tới.', 3, 0),
(52, 'Dép Thời Trang Nam Nữ Đế Cao', '800000', 'https://product.hstatic.net/1000367250/product/abtt003-39-1_684bce4067e74d789aa2d325a1c2af84_d2ac9c51e1cc41939415879f2091f486_master.jpg', 'ĐÔI DÉP CHO CẢM GIÁC THOẢI MÁI, ĐA NĂNG VÀ PHONG CÁCH ĐẦY TÍNH BIỂU TƯỢNG.\r\n\r\nĐúng chuẩn classic. Đôi dép adidas này là sự kết hợp hoàn hảo giữa sự linh hoạt và thoải mái. Kiểu dáng ôm vừa khí và dễ dàng cởi ra, thuận tiện để bạn đi từ hồ bơi ra phòng thay đồ và ghế sofa. Với vẻ ngoài kinh điển và phong cách casual, bạn có thể dễ dàng đi đôi dép này với vớ và quần track pants, hoặc không đi vớ và phối với quần bơi, để chuẩn bị sẵn sàng cho mọi dịp sắp tới.', 3, 0),
(53, 'Dép Nike Calm Slide ‘Sail’ FD4116-100', '1600000', 'https://product.hstatic.net/200000720651/product/age_2023_01_nike-calm-slide-launch-colorways-fd4116-100-release-date-1_2abcab314c1946db979ee11056636d48_master.jpg', 'ĐÔI DÉP CHO CẢM GIÁC THOẢI MÁI, ĐA NĂNG VÀ PHONG CÁCH ĐẦY TÍNH BIỂU TƯỢNG.\r\n\r\nĐúng chuẩn classic. Đôi dép adidas này là sự kết hợp hoàn hảo giữa sự linh hoạt và thoải mái. Kiểu dáng ôm vừa khí và dễ dàng cởi ra, thuận tiện để bạn đi từ hồ bơi ra phòng thay đồ và ghế sofa. Với vẻ ngoài kinh điển và phong cách casual, bạn có thể dễ dàng đi đôi dép này với vớ và quần track pants, hoặc không đi vớ và phối với quần bơi, để chuẩn bị sẵn sàng cho mọi dịp sắp tới.', 3, 0),
(54, 'Dép Nike Calm Slide Wmns Jade Ice Màu Xanh', '1390000', 'https://bizweb.dktcdn.net/100/410/787/products/dep-nike-calm-slide-wmns-jade-ice-dx4816-300-mau-xanh-mint-6492a85fb3a43-21062023143559-1690801499888.jpg?v=1691141793187', 'ĐÔI DÉP CHO CẢM GIÁC THOẢI MÁI, ĐA NĂNG VÀ PHONG CÁCH ĐẦY TÍNH BIỂU TƯỢNG.\r\n\r\nĐúng chuẩn classic. Đôi dép adidas này là sự kết hợp hoàn hảo giữa sự linh hoạt và thoải mái. Kiểu dáng ôm vừa khí và dễ dàng cởi ra, thuận tiện để bạn đi từ hồ bơi ra phòng thay đồ và ghế sofa. Với vẻ ngoài kinh điển và phong cách casual, bạn có thể dễ dàng đi đôi dép này với vớ và quần track pants, hoặc không đi vớ và phối với quần bơi, để chuẩn bị sẵn sàng cho mọi dịp sắp tới.', 3, 0),
(55, 'Dép Nike Offcourt-B', '650000', 'https://bizweb.dktcdn.net/thumb/grande/100/421/857/products/dep-nike-offcourt-pink-black-bq4632-604-jpeg.jpg?v=1667988362907', 'ĐÔI DÉP CHO CẢM GIÁC THOẢI MÁI, ĐA NĂNG VÀ PHONG CÁCH ĐẦY TÍNH BIỂU TƯỢNG.\r\n\r\nĐúng chuẩn classic. Đôi dép adidas này là sự kết hợp hoàn hảo giữa sự linh hoạt và thoải mái. Kiểu dáng ôm vừa khí và dễ dàng cởi ra, thuận tiện để bạn đi từ hồ bơi ra phòng thay đồ và ghế sofa. Với vẻ ngoài kinh điển và phong cách casual, bạn có thể dễ dàng đi đôi dép này với vớ và quần track pants, hoặc không đi vớ và phối với quần bơi, để chuẩn bị sẵn sàng cho mọi dịp sắp tới.', 3, 0),
(56, 'Dép NIKE Offcourt Slide Nam BQ4639-001', '1059000', 'https://product.hstatic.net/1000367250/product/aurora_bq4639-001_phslh000-2000_34a34d2950294c5eb16f7faee9c3d618_master.jpeg', 'ĐÔI DÉP CHO CẢM GIÁC THOẢI MÁI, ĐA NĂNG VÀ PHONG CÁCH ĐẦY TÍNH BIỂU TƯỢNG.\r\n\r\nĐúng chuẩn classic. Đôi dép adidas này là sự kết hợp hoàn hảo giữa sự linh hoạt và thoải mái. Kiểu dáng ôm vừa khí và dễ dàng cởi ra, thuận tiện để bạn đi từ hồ bơi ra phòng thay đồ và ghế sofa. Với vẻ ngoài kinh điển và phong cách casual, bạn có thể dễ dàng đi đôi dép này với vớ và quần track pants, hoặc không đi vớ và phối với quần bơi, để chuẩn bị sẵn sàng cho mọi dịp sắp tới.', 3, 0),
(57, 'Giày đá bóng AKKA Speed II TF - Xanh Biển', '520000', 'https://file.hstatic.net/200000414327/file/akka_speed_ii_xanhbien__1__9083ed06c19c445486617e3fadfab373_1024x1024.jpg', '✔️ Thương hiệu: Giày đá bóng nam AKKA\r\n✔️ Sở hữu thương hiệu: CTCP Thế Giới Bóng Đá\r\n✔️ Giày đá bóng nam với da Microfiber cao cấp\r\n✔️ Đế giày đá bóng sân cỏ nhân tạo bằng cao su bền, và rất bám sân\r\n✔️ Lót giày đá banh định hình EVA êm, chống sốc\r\n✔️ Giày đá bóng nam AKKA có nhiều form chân: Speed chân thon, Control chân vừa, Power chân bè\r\n✔️ Trọng lượng giày đá bóng sân cỏ nhân tạo nhẹ, chỉ 250gr/chiếc\r\n✔️ Không thấm nước và dễ dàng vệ sinh', 4, 0),
(58, 'GIÀY ĐÁ BÓNG TURF PREDATOR ACCURACY.3', '2400000', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/a3cad6b6a4fd497388fb48f2ca47ae73_9366/Giay_DJa_Bong_Turf_Predator_Accuracy.3_trang_GZ0004_22_model.jpg', '✔️ Thương hiệu: Giày đá bóng nam AKKA\r\n✔️ Sở hữu thương hiệu: CTCP Thế Giới Bóng Đá\r\n✔️ Giày đá bóng nam với da Microfiber cao cấp\r\n✔️ Đế giày đá bóng sân cỏ nhân tạo bằng cao su bền, và rất bám sân\r\n✔️ Lót giày đá banh định hình EVA êm, chống sốc\r\n✔️ Giày đá bóng nam AKKA có nhiều form chân: Speed chân thon, Control chân vừa, Power chân bè\r\n✔️ Trọng lượng giày đá bóng sân cỏ nhân tạo nhẹ, chỉ 250gr/chiếc\r\n✔️ Không thấm nước và dễ dàng vệ sinh', 4, 0),
(59, 'GIÀY BÓNG ĐÁ SÂN CỎ NHÂN TẠO TA11 PRO TF', '350000', 'https://product.hstatic.net/1000341630/product/mid06867_0ea1edee11d249acbce26d21b500900f_master.jpg', 'Là một trong những sản phẩm đầu tiên của Kamito, Velocidad với kiểu dáng đơn giản cùng form giày thuần Việt đã trở thành dòng giày bóng đá được yêu thích và săn tìm trên thị trường. Sau ba phiên bản đã được ra mắt, Velocidad đã dần trở thành một mẫu giày “quốc dân” xuất hiện ở mọi sân bóng. ', 4, 0),
(60, 'GIÀY BÓNG ĐÁ SÂN CỎ NHÂN TẠO TA11 PRO TF', '670000', 'https://product.hstatic.net/1000341630/product/fma07539_c5af37ed08424d18a7d833c97facd3f8_master.jpg', 'Là một trong những sản phẩm đầu tiên của Kamito, Velocidad với kiểu dáng đơn giản cùng form giày thuần Việt đã trở thành dòng giày bóng đá được yêu thích và săn tìm trên thị trường. Sau ba phiên bản đã được ra mắt, Velocidad đã dần trở thành một mẫu giày “quốc dân” xuất hiện ở mọi sân bóng. ', 4, 0),
(61, 'GIÀY BÓNG ĐÁ FUTSAL VELOCIDAD LEGEND IN', '645000', 'https://product.hstatic.net/1000341630/product/kma220681_19b1ad11665045e29b77434282b155c5_master.jpg', 'Là một trong những sản phẩm đầu tiên của Kamito, Velocidad với kiểu dáng đơn giản cùng form giày thuần Việt đã trở thành dòng giày bóng đá được yêu thích và săn tìm trên thị trường. Sau ba phiên bản đã được ra mắt, Velocidad đã dần trở thành một mẫu giày “quốc dân” xuất hiện ở mọi sân bóng. ', 4, 0),
(62, 'GIÀY BÓNG ĐÁ SÂN CỎ NHÂN TẠO QH19', '550000', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/2173b0e461ed43838bdaae9e01162e47_9366/Giay_DJa_Bong_Turf_X_Speedportal.3_mau_xanh_la_GW8484_22_model.jpg', 'Năm 2019, siêu phẩm Kamito QH19 lần đầu tiên được ra mắt và ngay lập tức đã tạo dấu ấn sâu đậm với người chơi bóng đá trên cả nước bởi thiết kế ấn tượng, nổi bật cùng với đó là sự bền bỉ và mức giá vô cùng hợp lý. Khắp các sân bóng, có thể dễ dàng bắt gặp QH19 tung hoành ngang dọc.', 4, 0),
(63, 'Giày Nike Air Max Fusion ‘White Black’', '2990000', 'https://sneakerdaily.vn/wp-content/uploads/2021/07/giay-nu-nike-wmns-air-max-fusion-white-black-cj1671-100.png', 'Màu sắc: Phiên bản này có màu chủ đạo là trắng (White) và đen (Black). Màu trắng được sử dụng chủ yếu trên phần trên của giày, trong khi màu đen xuất hiện trên các chi tiết như Swoosh và phần đế.\r\nThiết kế: Nike Wmns Air Max Fusion có thiết kế hiện đại và phối màu tinh tế. Đôi giày này có lớp trên đan chéo bằng lưới và da tổng hợp, tạo cảm giác thoáng khí và đảm bảo sự thoải mái. Nó có dây buộc trên thân giày để điều chỉnh độ ôm chân.', 5, 0),
(64, 'Giày Nike Air Jordan 1 LOW SE Tím', '3300000', 'https://hncmua.com/images/thumbs/0003220_giay-nike-air-jordan-1-low-se-tim.jpeg', 'Nike Air Jordan 1 LOW SE được coi là siêu phẩm thể thao mang tính biểu tượng của Nike từ trước đến nay. Nó luôn mang đến cảm giác trẻ trung, năng động, thoải mái và không bao giờ lỗi mốt.', 5, 0),
(65, 'Giày Sneakers Puma RS-X Hard Drive Unisex', '2300000', 'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/02/giay-sneakers-puma-rs-x-hard-drive-mens-white-galaxy-blue-5e4e3770c8a7d-20022020143824.jpg', 'Giày thể thao Puma RSX là một trong những đôi giày huyền thoại của hãng Puma sở hữu thiết kế vô cùng ấn tượng. Mẫu giày này được đánh giá là mẫu giày Chunky xuất sắc nhất của hãng thu hút nhiều bạn trẻ. Phiên bản giày này có thể mix với mọi trang phục thời trang, tôn lên nét cá tính. Nếu bạn yêu thích giày Puma RSX và muốn tìm hiểu chi tiết hơn thì đừng bỏ qua những thông tin mà FADO chia sẻ dưới đây. ', 2, 0),
(66, 'GIÀY NỮ PUMA ZONE XT JERRY TRAINING', '2700000', 'https://linhstoreusa.com/wp-content/uploads/2020/10/Giay-nu-Puma-Zone-XT-Jerry-Training-1.jpg', 'Giày thể thao Puma RSX là một trong những đôi giày huyền thoại của hãng Puma sở hữu thiết kế vô cùng ấn tượng. Mẫu giày này được đánh giá là mẫu giày Chunky xuất sắc nhất của hãng thu hút nhiều bạn trẻ. Phiên bản giày này có thể mix với mọi trang phục thời trang, tôn lên nét cá tính. Nếu bạn yêu thích giày Puma RSX và muốn tìm hiểu chi tiết hơn thì đừng bỏ qua những thông tin mà FADO chia sẻ dưới đây. ', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `mobile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`) VALUES
(2, 'admin@gmail.com', 'admin123', 'admin', '091234567'),
(3, 'hiep@gmail.com', '123456', 'cao xuan hiep', '0912345789'),
(4, 'hai@gmail.com', '123456', 'nguyen van hai', '0979656935'),
(5, 'huynh@gmail.com', '123456', 'hoang ngoc huynh', '0912345678');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
