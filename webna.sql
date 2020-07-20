-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2019 lúc 07:07 PM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webna`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `Idbill` int(11) NOT NULL,
  `Datebill` datetime NOT NULL,
  `Id` int(11) NOT NULL,
  `Sum` int(11) NOT NULL,
  `Phonenumber` int(11) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Idproduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`Idbill`, `Datebill`, `Id`, `Sum`, `Phonenumber`, `Address`, `Idproduct`) VALUES
(1, '2019-06-13 00:00:00', 2, 2000000, 2245654, 'ta ta', 0),
(2, '2019-06-30 00:00:00', 2, 5000000, 46524644, 'tèn tèn', 0),
(3, '2019-06-11 00:00:00', 1, 20, 1521, '1546', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `Idcategory` int(11) NOT NULL,
  `Namecategory` varchar(100) NOT NULL,
  `quantitycategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`Idcategory`, `Namecategory`, `quantitycategory`) VALUES
(1, 'CONVERSE', 1500),
(2, 'VANS', 1500),
(3, 'K-SWISS', 1500),
(4, 'PALLADIUM', 1500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_bill`
--

CREATE TABLE `detail_bill` (
  `Idbill` int(11) NOT NULL,
  `Idproduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `detail_bill`
--

INSERT INTO `detail_bill` (`Idbill`, `Idproduct`, `quantity`) VALUES
(1, 4, 1),
(1, 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `Idproduct` int(11) NOT NULL,
  `Nameproduct` varchar(255) NOT NULL,
  `Oldprice` int(11) NOT NULL,
  `Newprice` int(11) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Idcategory` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`Idproduct`, `Nameproduct`, `Oldprice`, `Newprice`, `Image`, `Description`, `Idcategory`, `quantity`) VALUES
(1, 'CHUCK TAYLOR ALL STAR CLASSIC 3', 1800000, 1500000, 'classic3.jpg', 'Với thiết kế cổ điển được ưa chuộng của dòng Classic đi kèm với chất liệu vải Canvas mềm nhẹ, phần để cao su bền chắc cùng đường viền đen đặc trưng. Phiên bản màu đen của Converse Classic cổ thấp chắc chắn là item đơn giản phù hợp với mọi phong cách đáng để bạn sở hữu.', 1, 20),
(2, 'CHUCK TAYLOR ALL STAR CLASSIC 4', 1400000, 1250000, 'classic4.jpg', 'Với thiết kế cổ điển được ưa chuộng của dòng Classic đi kèm với chất liệu vải Canvas mềm nhẹ, phần để cao su bền chắc cùng đường viền đen đặc trưng. Phiên bản màu đen của Converse Classic cổ thấp chắc chắn là item đơn giản phù hợp với mọi phong cách đáng để bạn sở hữu.', 1, 20),
(3, 'CHUCK TAYLOR ALL STAR II 5', 2000000, 1680000, 'chuck5.jpg', 'Chuck Taylor All Star II với thiết kế gần giống như bậc tiền bối nhưng được cải tiến hơn với tiêu chí mang đến sự thỏa mái cho người dùng. Chất liệu vải da cao cấp, đế giày được cải tiến, lót giày Lunarlon đến từ Nike mang đến sự mới mẻ nhưng vẫn giữ được cái “chất” của một đôi Chuck cổ điển.', 1, 50),
(4, 'CHUCK TAYLOR ALL STAR CLASSIC 5', 1800000, 1570000, 'chuck10.jpg', 'Chuck Taylor All Star II với thiết kế gần giống như bậc tiền bối nhưng được cải tiến hơn với tiêu chí mang đến sự thỏa mái cho người dùng. Chất liệu vải da cao cấp, đế giày được cải tiến, lót giày Lunarlon đến từ Nike mang đến sự mới mẻ nhưng vẫn giữ được cái “chất” của một đôi Chuck cổ điển.', 1, 20),
(5, 'CHUCK TAYLOR ONE STAR SUNBAKED 2', 1860000, 1600000, 'ost2.jpg', 'Chất liệu Canvas tone màu vàng nhẹ double 2 layer mang đến cho bạn một thiết kế chuẩn form, vừa vặn. Điểm nhấn ở sản phẩm với ngôi sao bên hông thây giày nổi bật với tone màu vàng đậm hơn nhưng thể hiện được cá tính bụi bặm và tinh thần của Cons ONE-STAR. Đế giày màu ngà giúp bạn dễ dàng vệ sinh đặc biệt là hoàn toàn \"ăn gơ\" với phần Upper cho bạn một item hài hòa đúng với chất của mùa hè đầy nắng.', 1, 50),
(6, 'CONVERSE EL DISTRITO', 1530000, 1200000, 'ost3.jpg', 'Chất liệu Canvas tone màu vàng nhẹ double 2 layer mang đến cho bạn một thiết kế chuẩn form, vừa vặn. Điểm nhấn ở sản phẩm với ngôi sao bên hông thây giày nổi bật với tone màu vàng đậm hơn nhưng thể hiện được cá tính bụi bặm và tinh thần của Cons ONE-STAR. Đế giày màu ngà giúp bạn dễ dàng vệ sinh đặc biệt là hoàn toàn \"ăn gơ\" với phần Upper cho bạn một item hài hòa đúng với chất của mùa hè đầy nắng.', 1, 20),
(7, 'CONVERSE EL DISTRITO 4', 1508000, 1350000, 'ost4.jpg', 'Chất liệu Canvas tone màu vàng nhẹ double 2 layer mang đến cho bạn một thiết kế chuẩn form, vừa vặn. Điểm nhấn ở sản phẩm với ngôi sao bên hông thây giày nổi bật với tone màu vàng đậm hơn nhưng thể hiện được cá tính bụi bặm và tinh thần của Cons ONE-STAR. Đế giày màu ngà giúp bạn dễ dàng vệ sinh đặc biệt là hoàn toàn \"ăn gơ\" với phần Upper cho bạn một item hài hòa đúng với chất của mùa hè đầy nắng.', 1, 50),
(8, 'VANS OLD SKOOL MASH UP STICKERS', 1530000, 1350000, 'VAN1.jpg', 'Kiểu dáng Old Skool kinh điển với hai đường lượn sóng trắng ở hai bên thân giày cùng họa tiết Sticks Vans bắt mắt và ngộ nghĩnh mang đến sản phẩm nổi bật. Sự đa dạng về màu sắc cũng như thiết kế dễ mang, item chắc chắn sẽ không làm bạn phải khó khăn trong việc mix&match.', 2, 20),
(9, 'VANS SK8 - HI DECK CLUB', 1860000, 1730000, 'VAN4.jpg', 'Cá tính với kiểu dáng SK8-Hi cổ điển cùng họa tiết 66 được biến tấu trên thân giày với nhiều màu sắc tạo thêm sự độc đáo cho sản phẩm. Item này sẽ hoàn toàn giúp bạn nổi bật ở mọi nơi, đặc biệt là có thể thoải mái kết hợp với nhiều Outfit bởi nền trắng basic của sản phẩm.', 2, 50),
(10, 'K-SWISS COURT LITE SPELLOUT S', 2000000, 1600000, 'KW1.jpg', 'Sneaker trắng là một item không thể thiếu! Chất liệu da cao cấp với công nghệ đệm lót Ortholite giúp bạn có được sản phẩm chất lượng. Điểm nhấn trên đôi giày chính là chiếc khiêng sọc xanh đỏ được thêu ở gót giày và lưỡi gà. Đặc biệt là tên thương hiệu kết hợp với sọc xanh đỏ ở bên hông thân giày.', 3, 50),
(11, 'K-SWISS SI-DEFIER 7.0', 1460000, 1330000, 'KW2.jpg', 'Kiểu dáng Si-Defier 7.0 lạ mắt với 2 tone màu trắng - đen basic cùng phần thân giày bằng chất liệu da cao cấp mang đến phong cách sành điệu cho người mang. Đồng thời, điểm nhấn ở huy hiệu 7.0 màu xanh lá bên hông thân giày và tem logo giữa phần lưỡi gà tao thêm sự nổi bật cho sản phẩm. Mặc dù ứng dụng công nghệ tiên tiến và kiểu dáng thiết kế hiện đại, item vẫn giữ nguyên biểu tượng 5 sọc độc đáo của dòng K-SWISS ở hai bên thân giày.', 3, 14),
(12, 'PALLADIUM HI ORGANIC', 2300000, 2000000, 'PALA1.jpg', 'Thiết kế Pampa cổ cao cá tính, bụi bặm với tone màu xám thời thượng giúp bạn có được những kiểu kết hợp outfit cực chất. Sự cải tiến về chất liệu organic thân thiện với môi trường để bạn không những sở hữu một item thời trang mà còn góp phần bảo vệ môi trường sống xung quanh.', 4, 50),
(13, 'PALLADIUM PAMPA LITE CUFF WATERPROOF', 3250000, 3000000, 'PALA2.jpg', 'Thiết kế chống nước cao cấp với chất liệu Polyester giúp bạn có thể diện giày ở mọi lúc, mọi nơi, mọi thời điểm. Tone màu xanh rêu mạnh mẽ, tạo sự nổi bật khi kết hợp outfit với phần lưỡi gà cao hơn để bạn có được sự thoải mái khi di chuyển. Đế giày với nhiều khe rãnh và trọng lượng nhẹ, chống trơn trượt, bạn hoàn toàn có thể yên tâm khi mang giày này vào mùa mưa ở bất kì địa hình nào.', 4, 21),
(14, 'CHUCK TAYLOR ALL STAR 1970S VINTAGE CANVAS', 1900000, 1700000, 'chuck7.jpg', 'MIỄN PHÍ VẬN CHUYỂN, TẶNG VỚ CONVERSE CHÍNH HÃNG KHI ĐẶT HÀNG ONLINE\r\nVẫn là màu vàng best-seller của nhà Converse, tuy nhiên lần này lại là tone vàng vintage kết hợp với thiết kế cổ điển của dòng Chuck 1970s. Với đế giày cao, trắng ngà và dây giày có phần thanh mảnh hơn, form giày cứng cáp cùng chất liệu vải êm nhẹ, chắc chắn đây là siêu phẩm bạn phải sở hữu.', 1, 50),
(15, 'CHUCK TAYLOR ALL STAR 1970S VINTAGE LITEN', 1980000, 1850000, 'chuck8.jpg', 'MIỄN PHÍ VẬN CHUYỂN, TẶNG VỚ CONVERSE CHÍNH HÃNG KHI ĐẶT HÀNG ONLINE\r\nVẫn là màu vàng best-seller của nhà Converse, tuy nhiên lần này lại là tone vàng vintage kết hợp với thiết kế cổ điển của dòng Chuck 1970s. Với đế giày cao, trắng ngà và dây giày có phần thanh mảnh hơn, form giày cứng cáp cùng chất liệu vải êm nhẹ, chắc chắn đây là siêu phẩm bạn phải sở hữu.', 1, 14),
(16, 'Chuck Taylor All Star 1970s Black Canvas Hi', 1600000, 1570000, 'chuck9.jpg', 'Thiết kế cổ điển của Chuck 1970s với tone đen huyền thoại hiện đang được các bạn trẻ săn đón liên tục . Với sự thay đổi ở phần đế giày được phủ bóng và làm cao hơn, logo nền đen đặc trưng của dòng Chuck 70s mang đến điểm nhấn cho đôi giày. Chất vải Canvas dày, nhẹ ở phiên bản cổ cao giúp người dùng có được sự thoải mái, từng đường kim mũi chỉ được chăm chút tỉ mỉ hơn rất nhiều.', 1, 20),
(17, 'Chuck Taylor All Star Classic Mono Canvas Low', 1490000, 1350000, 'class8.jpg', 'Giữ nguyên thiết kế của dòng Classic cổ điển cùng chất liệu vải Canvas mỏng nhẹ khiến đôi chân luôn bạn luôn dễ chịu trong từng bước đi. Bên cạnh đó, tone màu full đen bắt mắt luôn được các giới trẻ yêu giày ưa chuộng. Sở hữu sản phẩm này bạn hoàn toàn có thể yên tâm về chất lượng cũng như khả năng mix-macth với nhiều phong cách từ dịu dàng, nhẹ nhàng đến chất chơi, bụi bặm.', 1, 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `Idreview` int(11) NOT NULL,
  `Idproduct` int(11) NOT NULL,
  `Star` int(11) NOT NULL,
  `Review` varchar(1000) NOT NULL,
  `Namereviewer` varchar(100) NOT NULL,
  `Datereview` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `review`
--

INSERT INTO `review` (`Idreview`, `Idproduct`, `Star`, `Review`, `Namereviewer`, `Datereview`) VALUES
(1, 1, 4, 'xinh quá', '2', '2019-06-19'),
(2, 5, 3, 'êm ái thoải mái', '2', '2019-06-02'),
(3, 3, 5, 'best xì dầu', 'Ánh Tồ', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Type` int(1) NOT NULL,
  `Dateofbirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Idbill`),
  ADD KEY `bill_user` (`Id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Idcategory`);

--
-- Chỉ mục cho bảng `detail_bill`
--
ALTER TABLE `detail_bill`
  ADD KEY `detail_bill` (`Idbill`),
  ADD KEY `detail_product` (`Idproduct`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Idproduct`),
  ADD KEY `product_category` (`Idcategory`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Idreview`),
  ADD KEY `review_product` (`Idproduct`),
  ADD KEY `review_user` (`Namereviewer`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `Idbill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `Idcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `Idproduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `Idreview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_user` FOREIGN KEY (`Id`) REFERENCES `user` (`Id`);

--
-- Các ràng buộc cho bảng `detail_bill`
--
ALTER TABLE `detail_bill`
  ADD CONSTRAINT `detail_bill` FOREIGN KEY (`Idbill`) REFERENCES `bill` (`Idbill`),
  ADD CONSTRAINT `detail_product` FOREIGN KEY (`Idproduct`) REFERENCES `product` (`Idproduct`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category` FOREIGN KEY (`Idcategory`) REFERENCES `categories` (`Idcategory`);

--
-- Các ràng buộc cho bảng `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_product` FOREIGN KEY (`Idproduct`) REFERENCES `product` (`Idproduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
