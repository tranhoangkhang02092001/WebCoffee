-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 06, 2023 lúc 08:24 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websitecoffee`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `id_cart` int(11) NOT NULL AUTO_INCREMENT,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cart`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`) VALUES
(62, 23, '2265', 0, '2023-09-18 19:20:48'),
(63, 27, '1192', 0, '2023-12-02 14:47:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

DROP TABLE IF EXISTS `tbl_cart_details`;
CREATE TABLE IF NOT EXISTS `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL AUTO_INCREMENT,
  `code_cart` varchar(10) NOT NULL,
  `id_thucuong` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  PRIMARY KEY (`id_cart_details`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_thucuong`, `soluongmua`) VALUES
(55, '2265', 54, 3),
(56, '2265', 53, 1),
(57, '1192', 53, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

DROP TABLE IF EXISTS `tbl_dangky`;
CREATE TABLE IF NOT EXISTS `tbl_dangky` (
  `id_dangky` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  PRIMARY KEY (`id_dangky`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(23, 'HoangKhang', 'tranhoangkhang020901@gmail.com', 'TPHCM', '202cb962ac59075b964b07152d234b70', '0396805653'),
(24, 'huavanphu', 'phu2001@gmail.com', 'C4Pháº¡m hÃ¹ng', '202cb962ac59075b964b07152d234b70', '0367346343'),
(25, 'HoangKhang', 'tranhoangkhang020901@gmail.com', 'TPHCM', '202cb962ac59075b964b07152d234b70', '0396805653'),
(26, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(27, 'HoangKhang', 'tranhoangkhang020901@gmail.com', 'TPHCM', '202cb962ac59075b964b07152d234b70', '0396805653'),
(28, 'Khang', 'khang', 'TPHCM', '202cb962ac59075b964b07152d234b70', '0396805653');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

DROP TABLE IF EXISTS `tbl_danhmuc`;
CREATE TABLE IF NOT EXISTS `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL,
  PRIMARY KEY (`id_danhmuc`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(14, 'NÆ°á»›c Ã©p', 3),
(13, 'NÆ°á»›c ngá»t', 2),
(12, 'Coffee', 1),
(15, 'TrÃ  Ä‘Ã o & trÃ  sá»¯a', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

DROP TABLE IF EXISTS `tbl_lienhe`;
CREATE TABLE IF NOT EXISTS `tbl_lienhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thongtinlienhe` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\r\n	<li>\r\n	<h3><em><strong>SÄ‘t: 0396805653</strong></em></h3>\r\n	</li>\r\n	<li>\r\n	<h3><em><strong>Zalo: 0396805653</strong></em></h3>\r\n	</li>\r\n	<li>\r\n	<h3><em><strong>Fb:&nbsp;<a href=\"https://www.facebook.com/Sol02092001/\">https://www.facebook.com/Sol02092001/</a></strong></em></h3>\r\n	</li>\r\n	<li>\r\n	<h3><strong><em>Email: tranhoangkhang020901@gmail.com</em></strong></h3>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong><em>Chuy&ecirc;n b&aacute;n c&aacute;c loáº¡i thá»©c uá»‘ng thÆ¡m ngon cho kh&aacute;ch h&agrave;ng, li&ecirc;n há»‡ ngay cho ch&uacute;ng t&ocirc;i Ä‘á»ƒ Ä‘áº·t h&agrave;ng ngay n&agrave;o !!!</em></strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRTXDgZRas3E4YOGAjvui_uhSdUic2MCeitUsqzajWkbRJBiqxbs5pFs-kZfYT1gSEuI0&amp;usqp=CAU\" style=\"height:233px; width:216px\" />&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"https://lofita.vn/public/upload/files/91945849_600264467229868_5586633991072514048_n.jpg\" style=\"height:233px; width:175px\" />&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhYZGBgZGhoaGhwaGhgaGhoYGhoaGhocGBwcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHzQrJCs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAAIDBQYBBwj/xABBEAACAQIDBgMFBQYFBAMBAAABAgADEQQSIQUGMUFRYSJxgRMykaHBQlKx0fAHFGJykuEVM4Ki8SNDg9I0ssIW/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAKBEAAgICAQMDAwUAAAAAAAAAAAECESExAwQSQRNRYSIykRRxgaHR/9oADAMBAAIRAxEAPwDx8XkiU5NYjjadVSeA9YxjQnxhdCnYRYejYX5w+jT0mcmVFDVWF4dbyFxYiEUxJKJETWTmndSD6QaohvcSdFa8RQMl29NDCWNgIPiPA9+TcfOTHUSrwRQ9COM5Vf4SNFPOIm0lloG1JsJEXa9iIS45jiJG+uvWHcHaNTXSDVKBvC0W47yZUjsVA1OmEAPOXNNldc3McYN7EMNZHSJRrjUcx2kvORrBZYbDl3C/HsBqT8INXre0uFGWmtwq8M1vtHqZebHoh3yqdXSoqn+IqbSoV8qBbarodNQRofnOflbwb8SWSPAIAbWC9uct6eFvK7CqzES7w1F7gA3M5uRnRFF5s/djMoZnVb8OcsDumLaP/tk+y9lsUBDkHmOkvaWHyj3mPmZ08HDGauS/mzl5eaUX9L/ox+J3WccArDtx+coMbslk4AqZ6rlguNoIynOAR3lT6RJXF1+5MOqd1JHk4x7po+oliKyVVs4zL/uTup6dpYbQw9I/Y0vYawDD4dFbwqR63nF3duVs7KUlTKLHYA03y8RxU9VPAiQFL8Zpd5EAo0DzvUA/lBFpQXvynfGTcUzjkkm0BtSI8pH7OH5u2kY6jiLy7FQMicjHexHSOJklJ4rCgf2KxQzIIoWKjDmkOMNwyBxbpJKeHBBk2Dw4BmzZmkOw+H5QjKOUehANjEjg3HCSUMGonUFpxFsSJ2ABakEcJIsZhtdBCWpyRguLpZ178o1Bp5cfOE0hraDBMlQg8G1HnGmDOsOc4yhhpxkpXUiKmlriDEiKunhvzHGAhwtwfSXdGmOB5yt2rgSuo4D8IkVYGtfjpJ8O9zpB6S3ljQw44wYh6pY/jJ8PhTUsqqWJ4BRcy12JsV8S+VRZR7z8gPqZ6XsfYtLDLZF15sdWJ85cY2RKVGE2PuxiaKGq9lVSGVb3f5cIZtLYK1y1Wn4ajDxpwDn7y9G6jnN5iUzIynmCJlshU25iOXEpKhR5JRdowhpvSch0IIPAixlvhsTexB1mpeorrlqIrj+IajybiJWYjYWHOqO9M9D4x8tZxcnSy8ZOuHUxf3YH4XatRBofqJbYfb5+2flKT/BnHuVEb/VlPwInf8Or/dU+Tp+cxjDmhqy5S4pbaNE+8A5KT3OkrMdthm4n0EA/cKvPKPN0+hi/dUX36qDst2Pymj9eappkpcMcpoHrVS5/CFYXCgAu5yoOLHgPzPaMbG0k9xC56toPgPzlNtPF1KrAMSR9lRoB2AEqHSO7l+CJ9QtRDdqYB8WntafuJdKaHiVHFvMmZUowOU3VgdQeM9h2VswU6CINGCi/djqfnKrbmwErDUZXHBh9es63CtGCmee2uO85a0fjcO9JyjjUc+RHURucTHRrghejfhB1QjRocptIKwvGBFYzsiyHrOxisCo0bAi3KJEst+kOpqLWkmRVGvCaEFcuGJOaPfDm1+YjqmK5LCaZzCx49OsAAla4vzHGE5Mw4SOmlnK8jCcO1mynhBgjmHFjaHAXEFYawqgNJDGCvTswMixKXW41K6j0h1dNIPTFjblH8gdRgyhu0Y41B68ZFQXKzpy95fIwnL4Tpw1gwQ7Na2kkxSEjUaHjOI2ne0mVyya8ZJRn2oZGtCtmqzuqKLlyFHmdJLiqWcdx85ablIDjaOYc2+IVrS1kl4R6psjZy0Ka015DxHmW5kywAkSmTLOg5zhWUWPw/iM0BEExVEMO8AM2UtIH0lnWokQSpTgSBs8gYkwp6MiNOMAFwZCiZmy9Ye9ODmib3vbygOwJ1tLLYWAzVFZhoNQPqYqVAEy82SqFiqnUcf7RUFmhR4qtMMIPfKbSZXgMzu3tjispXg4909/ynn+KwrU2yOtiPge4nrOPXQMPIyk2hs9Ky5WGvI8wZjOFmsJHnxSDuhEO29hnw1gwvmNlPIytwmKzgk9Zj2tKzXuWiX2Yijsp6xRWOivSmGAINo6o7j3gCDpJqSfA8R3jwmhQ+k1sigH93GbwnpDMMfEO9xBFU5mA7Q2gljf7pF/IxOQJEWLp63HETim+vMSbG1gh15yBaivqp1jWgYYg0HePXSR4V7ixGqm0nDcpOgGs17wcvYwi3cQOo41vpBAQ16vjVhyNj5GWGXwtrKnEpdT3EuNj4Z6lBXIyKBlLuciEjS4J97/TeGkHkVJBa8dhmAGveSIaQUjM9Xr7Ncq+jvx+EelcBQBhkIHAvUck89QhAmbnE1UJFbVNm7GH7LrilUp1eaMGPlz+V5OuLN//AI+EH/jLfNmhP74CLNRw5/8AGV0/0nSNcsRelJnp9N1YBlNwwBB6g6iEIZgNn7wvSQItNMi8ArtYeWfW3a8tKG+KC3tEZB97kPxHzmy54MxfTzRr4PiAeUiwG1qNW2R1JPK9j6dfSGOt5qpJq0YuLWGVps/nzEFq4SF4rCm91NjBTjsmlRSP4gLr69JRIG+GMgfDy4XEU31VlPkRGOU6iMCmbDGM/doZi9o0k4uL9BqfgJSYraL1PCilF6nifIcoCsj2hjghyJq3M9P7wnZNxY84JhtlW1MusLhssKCy4oPcawlWgNKGIIDGY97IT5SvUwDeXafjSghuQQz9ugjNp7QFGg7niF0/mOgmctmkVgx29FRsTi1pKfCpy6f7j9JJj93HoLdLunPqD3j9y8IXqNUbU/U6zeFZMo2ik6Z5VnMU9GqbGoMSSgueMUz7Gad6PNOXC2t4S51WLFCwJtpb6xrcUtAAWk/iJt+rwmk4NQqODL8wYMEIzdj+Mb7TIEqHk1vQxAFbTwxbXmBBcJgzYtqDLbFVQAG7QAYlr6C8IvA2shOzNSw7R9U+IjpOYQEMGyngRH1KBBLs2UH4+UVNyHaSH7GwL4hyiLc6dgNdbmaPHblpSVTUZ3djYJT0HxtczQ7jYVUpZgLX4fmepg2+u2ChWlSNqzi2a3+Wn2nHfgBNZKPGrZknKbqJkcVhcPh3KIgxFXQlXINKj/Pb32/h4QGur1GzVWaow08XuqOiKNAOENpYUIMia9T35knrLTB7NJ46/r5Tzp8zkzvhxKKKenRc8Bp9ZOMHU01AtNF+6qBx/X1kFWmBwvf0AmLmzVJFE+Eca3B8wPxgpQtwFjex6TS0MMXYKDqdNfrDcLsdU4glG8FQXF1e+jDtwMqLlImTUQHC7rOULGoFAGmma+l+vCQPsOr7PO7BFAuAdSdOnKayi/s0Csb2NhfUkDhoNTKTeHGXS7o5H2c5CC/ZAbn1mslFJPzRlGUnKvBi1QgnKSh524E9SDNLsDe+rSITEH2iXyh+Y8ifLgfQyhfGACyga31/XrBA4PHUXvY69o4TlHJUuOMlTPbMPiEqIHRgyngR+tDOVKIPKeb7pbbNCotNmvTdreRNgDfhoSAe09AobUpOSFqoSCVIzC4YGxBHEEEWtPQ4uRSR5/LxuEqBcRsem2pQX62sYC+wKf3T8W/OaLNGNNjKigTYqLwQD0kq4EDlLVljGSBNAIw4ES0pLiMXSQXeoi+ZEzm0d+cLTuEJqt/Dw+Jg5JDUWaanTtKHeDehKINOlZ6p001VO7Hr2mPx+82JxPhX/poeS8SO7SfZWybanjIcr0Wo1sN2HhGLF3JZmNyTxJMi39DGnTQcGcDzNr/hNNgsOFEotqF6+Lo0WRkWmpqnMLFi5sD5WERZZ7DwHsqajmQCZaK0cE0jGWAEkUZeKAHmlRcwJsbmNpYR3KhUJYcussXbWaPdLZxv7YkW8S2tr5zFI0bM+u7eIa//AEzr1sPxMJTc6oy5WUZb3sWH0noForSu1E9zMSm6FS+pTLpYXJt8oUm6bW99PgTNbONH2oXczMf/AMrpq4Hkv95j94KDLiRRUl8tracSddBPS9obSp0EzVHCjkOJPkOJnme8W0Ur4lalJXTgMxGunMBY4pRdik2z0DYm0/YUkpujK7cLiwNzYG/rMltV2fG4hiScrBF7KFDWHq0udlbOxGLFN6jFUpsGV2Qq7lTfRTY2NuJ+cA21hfZ4yoeVXLUTuGAUj0K/MTDq7cbNumpSomwFC5Gku2W5CL69z+UrtkkZx3lhsprVRfv8Z5qWl7s7pOrfsix/w5bHovPmzflK0bPYscwsFIDevT0lwKvgVuQbxfGFaFiPvCdXpRlVHN6sldlbhaao7oo10ZfTWPSoC/tCbKVIcH7wNh9YTQs2rCzppft9YDiWdR4WCDoFzN5mwg/oSfgF9Ta8ixO16R8KlwTzUWJ+ImZ3gF0Iyat9qowL2/hX7MssRtB+AFRr87ZR8FF/nKuvQ1zs3iPBdT6m/CYT5XLf+G0ONRMzVwLKL6+f9oHYrwNxw+et+01wUHQ/r9fSZ+tRs5Xlr8Y4TemXKJBSa4IsPCAQR63Hwv8AGVO/9Bkxa1FLKa1GlVaxI8ZBRjp1ZCfWXgo2VrDiLeZOn1lzvbunVqqlVVzilSSk4HvAoC7G3MXcjTpOvgll0c3OlSs8xobbxSe5iKi/6zDqe+uPXhianrYx77MtJtk7ANaslMDQm57KNT+u86VM5XENw2820HUE1317D8pMcRjanvVqh9bfhNzR3eRbCGpstByjyxYPOk2G7m7lm8yT+MssLu9biJuVwSjlOmhblHSCyhwmyQvKAYjeZEYpTpl7faJyj001E1tWn4DboZ5fWwvjdUcK6mwViAxF+ClvCR5kEQsC32d+0dxWC1KCBAwzeJibX6ETfbVaj+8LiRWQh6aKNRoLkrr3zHTsZ4zj8A6WNZXV7jIxQjMO72yt5gz0TEbOxNTDI2IfDIiKCjKvjCAcNGCnlG3SElbNWrXiImV3T2gBTdS90RzlLHXL39b6cpdYjbNFFuXB7DU/CTY6DssUy9Te7U2osRyPhF4ou6PuPsZQ0uOvA85uN0nBpNbk5/ATBomvlNpuS4yVVHJlv8P7SI7Llo0hM5eIxvOaGZ0mAbQ2ilOym5c8FUXbtp1Mj23tVaC2HidvdXp0J/WsqtjYV2Yu3iqN7zccoPJe8bwhLLGvsw1ameood7WAOqUx0H3m7n0mi2TsNKfjZQWPX6w3BYUAXtoOHcwy8Ix8sJS8IRMzW3dm+2XKtva0iTTv9pTqUPYjh3HaaYCU+1kIa4Njb5f8iOcVONMUJOLtGKwlcg9CDwPEEcQehvylwzFznT3uJHO4+0OskxmFp1zdiEq/ft4XtoA469+PnwlY9GrQIzrbXRgbqf5W+k8nl4J8fyvc9Lj5Yz+GX1PFBgbcx4h0P3h1HWT4bEnRftLqp+h7Sjw2IDsDfK3UfUfWXbgoLXUX5n6CTGUnkJRWiV8UQSwW5OmpAAA6kwHEYytzdF7Bh9Iiy83B/wBF/wAZz2iff+CKPnaEpSa2Cil4O06pYEszN1ucqfmZVYukWYELZetsq+cs3xqLyuerG5/KVeO2oCOsiTTWzSKd6BqhCAknraUNizluv/MLxBZzfXy668oeuASkufEEqOK010qP5/cXudfLjK4oSk6SFOcYq2RYCkiD29T3EIyA/wDcrfZUdVU6nyt1no2yEK0kDe8Rmb+ZyWPzM81wTvi8QhYBadMjIi6KoB8KqPmTPUUPKetw8ahGjzebkc5GV3t3SWpetQAWoNWQaLU626P+MrNzcBZXqkWJOQXFiAvvfPT0no1MXEqto0MviA0vr5nnKcVdkqTqivacQ8jHrrGk624xDHCdAkNWuiasyr5kCVuK3iw6cXv5f3jsKLfLMXvRu3nJqJx5iS4nfInSlSJ7tcD56/KUWPx+IqC9SqQp+zT8I8ieJ+MlyRSizNbQoui2LkKD7uY2v2EqvbOxtdmt94k/ATTHAIeGvnrBv8Oyt2kqSH2j9msxAVycnQaA+YHGXlAKNALQDDUbaQmlM5Oy44DLCKR2EUmh2TU114TRbiPd6y/yn5tKJllvuN4a9QdV/Bh+c0W0Q9G2ZZU7Y2ytAZVsXIvbkg+8/wBBz+cdj9oszmjh7NU+05/y6S82c9R0/wCJlMJsxsTVZFctTDXqVDxfv5nl0E6EltmLb0g3YmzWxLtVqElQe/ibv/by5TX0cKq2VRYR2GoKihEACgWAEIorrfoJO2PSJT0HKdEZeSrNCDoED2rSut+kOWdenmBB5wAw2LpwZdpugI95easLqfQy52lhSpMocVRuOkVDTJExeGfUo1JuqHw/0tw9LSY0lb3MSh7VAyH0IvKOrSI5QZhOeXT8ctr8YNo8046Zo/8AD6vJ6beVQfW0Y2zavNqY/wDIn5zNs56mMZ26mZ/pOP5/Jp+pn8GiqYAD369JR/MzH4KNZARhl41HqHoihB8WuflM8xMkojWXHpeNeCZdRN+TV4bFD/tIqX0uPE/9R1+FpVbV2XWY3yOVOpaxNvOXW670wLswzHgDyE2dMAjtOlRilSRzOUm7Zhd26CoRbguvrNhTrXkeN2chuUAVuOgsD5wPDVCNDxEYmXlCprHYizC3XQwKm8nVoUFnle29sY5Kz0VFNAjkBrEkrxU+qkStXbFf7de56Jf8c1hLz9pOHtiUa5s9PUcrqdT8CvwmWSkBymEmkzeOUOes7BsrZSb+KwLX87R2AoAi594aG+pvz/OIC0SvlOYcD7w7dfMSHJlpINCdJx6fz5SSwIBU8dRb9esazGRZVAK0yp7X+Ee6dfjJmtEjcusGBGtx3tJ3FxmXSRutj5/CPom2nI/CJ+417DvbdoovZDvFFQWJcVY8fylpu9Qr1qjLhzluLO+tlU8deRNtOZ5dYPsDYJxLIBUp2a+YK4LoBxunHXlym0xe28PhAmCwmV67kqqgg2YC7NUbmQAT6eQPTGKWWYSk3hHMZs1aNMYOhrUqeKq54hb3JbpfkP0bXAYNKSBEGg58yeZMbgMIKa6ks7au59525k9ughN5Tdiqjsloc/KRCSUDr53gtkvQ4SZZBzkyGaEkiyh342rVw2FapR0fMq5iAQgY6ub6crC+l2Evlmd3r3lw+HU06imq7L/lqAfCebk6KPn2iehrZh91t73Zmo4ti5fxU3JF83DJfv8AZ76cxNHXpBhmXUHhMjsDB7Px1dlSk9GqoLhCwZGAIBytYagkaEeV7GbqmgpqVcE879evr+P4qOge9FHUpmCPS7TRYmimTODdT0la6KecomyoegOkjOHHSW7YaRthYUOyr9gOkcElg2HtxjqWHB9IUFlYFINv16y62Vt5qJVSSy8wTcgdR+Upcfi1UlU1I4nkPzgmH1N+ckD1Q41XUMp0IvK18QM4HXT1lFgcWUS3L8IBj9q2ZSD7rqfgQZeKJzZvacJQwZBCEEAPPv2n1LVsOP4Kl/IlPyMyOfv/AMQ79oG0xUx7IpuKSKn+rV2/+6j0lOX0FuM5p/dZ0x+2gpHvpIs1r24TijnOOLyaGT4Z7EC5APC34fUessR09fjKZDcWljhsTnWxIzLx7g8/j8JMkUmT5O0jRON/0YmJPOJe8VBZ1DcFTxiHblGq3O8mPiFxpDQzvs+8U4GiiwPJTfunizqzI4OjKxVhy0K6y83SwAp4um5JZ2c5mYlmOZWGpPnIKVNbEkDjLPZf+dSYcnS/9U1tmdI9LvFeRCdBmlmZKJ0m2sivHZoWASTcBhz/ABjkMATEhGs3uNz+63Xyh5EuMrRnJUSqZ57vhuDWxOJavSrKiuFDq2a4KgLcEcRYDpN+rSQGME6MRuluEmCY1WcvVKlb2sADxyjvPNt9N4sRVruH9rRRCVRAWQgA8XAPiY9bkdO/0BM/vhtNMNQ9o1MVHLBKamwuxBOrWNgACflzg9DTdnmG5e1sUEJYM63sM9/EthxJ4631msXbWHOjo1M9xp/UNPjK7Ym/dCozriUShkXOrKWKsAQCuW182osBe+vC0Pw+LwWMJWi4Li5yEFHIHMBgMw7i8F8CaflBY2nhwBkdCP5hHDH0SLl0HqJ5nv5ghRqogGUMpe/XW1vS3zku5WzfboxZfdawNuOgMdu6FWLNpjtu4YcDnPRNfmNIJhNsLVJV/wDpjkDwI7nkYR/gaIpZrAAEknQADUk9pmMTvLhblUp1HX7wVVHmAxv8QI3a2Czo39LZaFdFHnBK2wgDdNJnNj492T2mGdsgNmQ/ZbQ2ZdRwI1Et6e89QaOinyuv5wtBTH4tHp0nBAta9/LUWlBsPCPicQot4EYNUblYG4XzPDyuZcYnaJrjKy5VPEA3J+UutkUkRQqqFXoPr3iq2F0jT0zcWHD8YDvFtdcJh3rt9keEc2c6Ko8z9ZMcSiIXdgqKCWYmwAGpJPITw3fzew46sAlxQpk5AdMx4F2HyA5DzMG6CKsp8Pimeo1Rzd3Yux6sxufmZf5Ba4EzOGEu6Fc5B2nPI6IhoFxGLe9pGmKubH4yaqLRIYPWOUzq1rFXHEfMHiIq6XUGCobGFBZoabqQCOB4W/AzjCVuAxWRspPhPXlLaoefIyHgpDPOSU3t5SJo1X/X1ieQD7CKB5jFFkeAymgsLc9fjD9mkCrTAFvGt/6h+crdlVL0KTHmin1sJYbK1qp/Olv6hLZKPRCYryJ2jGqTUyCM04zwJ8QBfWZzbu8yUgRe7W4fnAC/2njEVGzEAWMyexP2jU6VX93rteiTZKnEp0D9U78R5cPPdubx1MQxUNp290eXWAUdnkjMdSeZjWMg1eD6ZRwyh0YOjAEMpBBB4EEcRJEqT573b3qxOAa1Ns9K+tJ7lNeJXmp7jTqDPV939/sHibKzewqH7FQgAn+B/db5HtLUkyHFo2IaUO+ewWxmH9mjBHVg6Fr2uLgg21sQx+UuCp4g6dtRG+2sbGVRKdHkB/ZrilR6jujvyRbkMOepAsZWbtbFrpjaRFOomR8xzKRawsQD0Oo8vOe6ioDOWXpCkPuZS7S2FQxAX2tNXy6i41HkY/C7ISkoRECqOQAAlwQIwiOyaKbH7OWojo3uurKfJgQfxnmlb9m2IF1SshXvmBt3AvPYGWQuIYewTa0ZXdPdgYWkULZ2ZszG1he1tB5AQrGbBVtQLGX6ITwEjxdenSUvVdEUcSzAD5x4Fky42OU90Fj15f3ixGNTDIXruFA/VgOZ7CVG8f7UKKAphE9o3DOwIQeQ4t8h3nl+0dpVsS+esxZuV9FUdFHACS5JFKLey73v3wqYw5FulAHRebEcC/0H6FDRo3F4qdEc4fRp28pm3ZolRFhltCsO2hHKOemLA/KKknG0g0OMZYUquZZWlTCMM1liGFZtCIE5sZMj+KMqrABqtfTpLrZmKDjIfeGoPUcP+fSUgTgbfrnJKTEEFdCOHYxSVgmaG0jZNZ3CYkVFzcGGjDpJSkzKGWMUktFAAPYFYnDU+wI/pYi/4S72RpWT+ZfodPhFFL8krRuKtWB18Vbt+u3lFFNCDG7yb1BAyre44mx08p5xi8Y9Ym5NvPU+cUUaBh2z8CNJbrTGXyiikMpA2Iwlxf8AXSV2JwcUUQMI2ZvJjMJYUa7qo+wxzp5ZWuB6Wmu2f+16qLCvh0fqUJU/0m4+cUU0TZm0aHC/tSwD++tWke65h/tJl7gt8MC4ulZjfrTcf/mKKXbJpFkNt4c8Kn+x/wD1kNXeHCrqan+x/wD1nYoxUUuM/aNgKf8A3HPYU3+oEoMd+1zDi/ssO7nkXKqPxJ+UUUSbHSMttP8AaljalxTyUR/CMzD1bT5THYzH1a7ZqtR6jdWYm3lfh6RRQYIip04dSoxRRFhVMDmIVRXTSKKQykOokFsp/wCYSVA0AiiksaOZA2hnDRsNIooIGcSlqI90iih4DycAGX1kdMfLWKKMRJhq+R844DiOo/t+c0WhFxwOsUUzkWhmk7FFJKP/2Q==\" style=\"height:233px; width:350px\" />&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYHenptslFLpXA6VvYzS7LlXtplqWjAKCfKQ&amp;usqp=CAU\" style=\"height:233px; width:233px\" /></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thucuong`
--

DROP TABLE IF EXISTS `tbl_thucuong`;
CREATE TABLE IF NOT EXISTS `tbl_thucuong` (
  `id_thucuong` int(11) NOT NULL AUTO_INCREMENT,
  `tenthucuong` varchar(250) NOT NULL,
  `mathucuong` varchar(100) NOT NULL,
  `giathucuong` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  PRIMARY KEY (`id_thucuong`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_thucuong`
--

INSERT INTO `tbl_thucuong` (`id_thucuong`, `tenthucuong`, `mathucuong`, `giathucuong`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(36, 'TrÃ  chanh', '22', '25000', 1, '1671738209_trÃ  chanh.jpg', 'ngon ', 'ngon', 0, 15),
(24, 'coffee', '555', '10000', 1, '1671389645_logo.jpg', 'f', 'f', 1, 7),
(25, 'cafe', '999', '10000', 2, '1671389669_background1.jpg', 'f', 'f', 1, 7),
(31, 'sting', '6666', '10000', 1, '1671695830_logo.jpg', 'd', 'd', 1, 10),
(28, 'sting1', '999', '20000', 1, '1671397872_menu2.jpg', 'v', 'v', 1, 8),
(30, 'sinhto1', '6666', '10000', 1, '1671397865_menu2.jpg', 'd', 'd', 1, 11),
(32, 'sinhto', '6666', '10000', 2, '1671695850_background.jpg', 'd', 'd', 1, 10),
(35, 'TrÃ  chanh Ä‘áº·c biá»‡t', '11', '25000', 1, '1671738183_trÃ  chanh Ä‘áº·c biá»‡t.jpg', 'ngon', 'ngon', 1, 15),
(34, 'coffee', '555', '10000', 1, '1671695903_background1.jpg', 'c', 'c', 1, 11),
(37, 'TrÃ  Ä‘Ã o', '33', '30000', 1, '1671738243_trÃ  Ä‘Ã o.jpg', 'ngon ', 'ngon', 1, 15),
(38, 'TrÃ  sá»¯a trÃ  xanh', '44', '40000', 1, '1671738285_trÃ  sá»¯a trÃ  xanh.png', 'ngon', 'ngon', 1, 15),
(39, 'TrÃ  sá»¯a', '55', '35000', 1, '1671738333_trÃ  sá»¯a.jpg', 'ngon', 'ngon', 1, 15),
(40, 'TrÃ  váº£i', '66', '25000', 1, '1695168216_trÃ  váº£i.jpeg', 'ngon', 'ngon', 1, 15),
(41, 'Coffee sá»¯a', '11', '40000', 1, '1671738483_cafe 1.jpg', 'ngon', 'ngon', 1, 12),
(42, 'Báº¡c xá»‰u', '22', '45000', 1, '1671738517_cafe 2.jpg', 'ngon', 'ngon', 1, 12),
(43, 'Coffee Ä‘en Ä‘Ã¡', '33', '25000', 1, '1671738548_cafe 3.jpg', 'ngon', 'ngon', 1, 12),
(44, 'Coffee nÃ³ng', '44', '40000', 1, '1671738641_cafe 5.png', 'ngon ', 'ngon', 1, 12),
(45, 'Báº¡c xá»‰u nÃ³ng', '55', '40000', 1, '1671779057_cafe 6.png', 'ngon', 'ngon', 1, 12),
(46, 'Capuchino', '66', '40000', 1, '1671779026_cafe 7.jpg', 'ngon', 'ngon', 1, 12),
(47, 'NÆ°á»›c Ã©p cÃ  rá»‘t', '11', '35000', 1, '1671738771_nÆ°á»›c Ã©o cÃ  rá»‘t.png', 'ngon', 'ngon', 1, 14),
(48, 'NÆ°á»›c Ã©p dÆ°a háº¥u', '22', '35000', 1, '1671738800_nÆ°á»›c Ã©o dÆ°a háº¥u.png', 'ngon', 'ngon', 1, 14),
(49, 'NÆ°á»›c Ã©p cam', '33', '35000', 1, '1671738829_nÆ°á»›c Ã©p cam.jpg', 'ngon', 'ngon', 1, 14),
(50, 'NÆ°á»›c Ã©p dÃ¢u', '44', '35000', 1, '1671738865_nÆ°á»›c Ã©p dÃ¢u.png', 'ngon', 'ngon', 1, 14),
(52, 'NÆ°á»›c Ã©p dá»©a', '66', '35000', 1, '1671738939_nÆ°á»›c Ã©p dá»©a.jpg', 'ngon', 'ngon', 1, 14),
(53, 'Pepsi', '11', '20000', 1, '1671739011_pepsi.jpg', 'ngon', 'ngon', 1, 13),
(54, 'Coca', '22', '20000', 1, '1671739101_menu2.jpg', 'ngon', 'ngon', 1, 13);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
