/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Thu Nov 28 20:43:14 2024
/////////////////////////////////////////////////////////////


module MyDesign ( reset_n, clk, dut_valid, dut_ready, 
        dut__tb__sram_input_write_enable, dut__tb__sram_input_write_address, 
        dut__tb__sram_input_write_data, dut__tb__sram_input_read_address, 
        tb__dut__sram_input_read_data, dut__tb__sram_weight_write_enable, 
        dut__tb__sram_weight_write_address, dut__tb__sram_weight_write_data, 
        dut__tb__sram_weight_read_address, tb__dut__sram_weight_read_data, 
        dut__tb__sram_result_write_enable, dut__tb__sram_result_write_address, 
        dut__tb__sram_result_write_data, dut__tb__sram_result_read_address, 
        tb__dut__sram_result_read_data, dut__tb__sram_scratchpad_write_enable, 
        dut__tb__sram_scratchpad_write_address, 
        dut__tb__sram_scratchpad_write_data, 
        dut__tb__sram_scratchpad_read_address, 
        tb__dut__sram_scratchpad_read_data );
  output [15:0] dut__tb__sram_input_write_address;
  output [31:0] dut__tb__sram_input_write_data;
  output [15:0] dut__tb__sram_input_read_address;
  input [31:0] tb__dut__sram_input_read_data;
  output [15:0] dut__tb__sram_weight_write_address;
  output [31:0] dut__tb__sram_weight_write_data;
  output [15:0] dut__tb__sram_weight_read_address;
  input [31:0] tb__dut__sram_weight_read_data;
  output [15:0] dut__tb__sram_result_write_address;
  output [31:0] dut__tb__sram_result_write_data;
  output [15:0] dut__tb__sram_result_read_address;
  input [31:0] tb__dut__sram_result_read_data;
  output [15:0] dut__tb__sram_scratchpad_write_address;
  output [31:0] dut__tb__sram_scratchpad_write_data;
  output [15:0] dut__tb__sram_scratchpad_read_address;
  input [31:0] tb__dut__sram_scratchpad_read_data;
  input reset_n, clk, dut_valid;
  output dut_ready, dut__tb__sram_input_write_enable,
         dut__tb__sram_weight_write_enable, dut__tb__sram_result_write_enable,
         dut__tb__sram_scratchpad_write_enable;
  wire   N117, MAC_N129, MAC_calculation_done, MAC_N56, MAC_N53, MAC_N52,
         MAC_N51, MAC_N47, MAC_N46, MAC_N42, MAC_N41, MAC_N38, MAC_N37,
         MAC_N34, MAC_N33, MAC_N31, MAC_N30, MAC_N28, MAC_N26, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_SUM_4_, intadd_1_SUM_3_,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_n5, intadd_1_n4,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_4_, intadd_2_A_3_,
         intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_4_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, intadd_3_A_4_, intadd_3_A_3_, intadd_3_A_2_,
         intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_4_, intadd_3_B_3_,
         intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_, intadd_3_CI,
         intadd_3_SUM_4_, intadd_3_SUM_3_, intadd_3_n5, intadd_3_n4,
         intadd_3_n3, intadd_3_n2, intadd_3_n1, intadd_4_A_4_, intadd_4_A_3_,
         intadd_4_A_2_, intadd_4_A_1_, intadd_4_A_0_, intadd_4_B_3_,
         intadd_4_B_2_, intadd_4_B_1_, intadd_4_B_0_, intadd_4_CI,
         intadd_4_SUM_3_, intadd_4_SUM_2_, intadd_4_SUM_1_, intadd_4_SUM_0_,
         intadd_4_n5, intadd_4_n4, intadd_4_n3, intadd_4_n2, intadd_4_n1,
         intadd_5_A_1_, intadd_5_A_0_, intadd_5_B_3_, intadd_5_B_2_,
         intadd_5_B_1_, intadd_5_B_0_, intadd_5_CI, intadd_5_SUM_3_,
         intadd_5_SUM_2_, intadd_5_SUM_1_, intadd_5_n4, intadd_5_n3,
         intadd_5_n2, intadd_5_n1, intadd_6_A_3_, intadd_6_A_2_, intadd_6_A_0_,
         intadd_6_B_3_, intadd_6_B_0_, intadd_6_CI, intadd_6_SUM_3_,
         intadd_6_SUM_2_, intadd_6_SUM_1_, intadd_6_SUM_0_, intadd_6_n4,
         intadd_6_n3, intadd_6_n2, intadd_6_n1, intadd_7_A_1_, intadd_7_A_0_,
         intadd_7_B_2_, intadd_7_B_1_, intadd_7_B_0_, intadd_7_CI,
         intadd_7_SUM_1_, intadd_7_SUM_0_, intadd_7_n4, intadd_7_n3,
         intadd_7_n2, intadd_7_n1, intadd_8_A_2_, intadd_8_A_1_, intadd_8_A_0_,
         intadd_8_B_2_, intadd_8_B_1_, intadd_8_B_0_, intadd_8_CI,
         intadd_8_SUM_1_, intadd_8_SUM_0_, intadd_8_n3, intadd_8_n2,
         intadd_8_n1, intadd_9_A_0_, intadd_9_B_2_, intadd_9_B_1_,
         intadd_9_B_0_, intadd_9_CI, intadd_9_SUM_2_, intadd_9_SUM_1_,
         intadd_9_SUM_0_, intadd_9_n3, intadd_9_n2, intadd_9_n1,
         intadd_10_B_1_, intadd_10_B_0_, intadd_10_CI, intadd_10_SUM_1_,
         intadd_10_SUM_0_, intadd_10_n3, intadd_10_n2, intadd_11_A_1_,
         intadd_11_A_0_, intadd_11_B_0_, intadd_11_CI, intadd_11_n3,
         intadd_11_n2, intadd_11_n1, intadd_12_A_2_, intadd_12_A_1_,
         intadd_12_A_0_, intadd_12_B_2_, intadd_12_B_1_, intadd_12_B_0_,
         intadd_12_CI, intadd_12_SUM_2_, intadd_12_n3, intadd_12_n2,
         intadd_12_n1, intadd_13_A_2_, intadd_13_A_1_, intadd_13_A_0_,
         intadd_13_B_2_, intadd_13_B_1_, intadd_13_B_0_, intadd_13_CI,
         intadd_13_n3, intadd_13_n2, intadd_13_n1, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_B_5_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, n709, n710, n939, n940, n941, n942, n943, n944, n945,
         n946, n947, n948, n949, n950, n951, n952, n953, n954, n955, n956,
         n957, n958, n959, n960, n961, n962, n963, n964, n965, n966, n967,
         n968, n969, n970, n971, n972, n973, n974, n975, n976, n977, n978,
         n979, n980, n981, n982, n983, n984, n985, n986, n987, n988, n989,
         n990, n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000,
         n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010,
         n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020,
         n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030,
         n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040,
         n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050,
         n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060,
         n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070,
         n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080,
         n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090,
         n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100,
         n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110,
         n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120,
         n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130,
         n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140,
         n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150,
         n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160,
         n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170,
         n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180,
         n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190,
         n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200,
         n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210,
         n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220,
         n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230,
         n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240,
         n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250,
         n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260,
         n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270,
         n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280,
         n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290,
         n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300,
         n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310,
         n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320,
         n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330,
         n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340,
         n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350,
         n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360,
         n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370,
         n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380,
         n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390,
         n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400,
         n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410,
         n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420,
         n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430,
         n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440,
         n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450,
         n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460,
         n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470,
         n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480,
         n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490,
         n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500,
         n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510,
         n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520,
         n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530,
         n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540,
         n1541, n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550,
         n1551, n1552, n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560,
         n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570,
         n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580,
         n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590,
         n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600,
         n1601, n1602, n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610,
         n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620,
         n1621, n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630,
         n1631, n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640,
         n1641, n1642, n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650,
         n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658, n1659, n1660,
         n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669, n1670,
         n1671, n1672, n1673, n1674, n1675, n1676, n1677, n1678, n1679, n1680,
         n1681, n1682, n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690,
         n1691, n1692, n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700,
         n1701, n1702, n1703, n1704, n1705, n1706, n1707, n1708, n1709, n1710,
         n1711, n1712, n1713, n1714, n1715, n1716, n1717, n1718, n1719, n1720,
         n1721, n1722, n1723, n1724, n1725, n1726, n1727, n1728, n1729, n1730,
         n1731, n1732, n1733, n1734, n1735, n1736, n1737, n1738, n1739, n1740,
         n1741, n1742, n1743, n1744, n1745, n1746, n1747, n1748, n1749, n1750,
         n1751, n1752, n1753, n1754, n1755, n1756, n1757, n1758, n1759, n1760,
         n1761, n1762, n1763, n1764, n1765, n1766, n1767, n1768, n1769, n1770,
         n1771, n1772, n1773, n1774, n1775, n1776, n1777, n1778, n1779, n1780,
         n1781, n1782, n1783, n1784, n1785, n1786, n1787, n1788, n1789, n1790,
         n1791, n1792, n1793, n1794, n1795, n1796, n1797, n1798, n1799, n1800,
         n1801, n1802, n1803, n1804, n1805, n1806, n1807, n1808, n1809, n1810,
         n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820,
         n1821, n1822, n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830,
         n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840,
         n1841, n1842, n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850,
         n1851, n1852, n1853, n1854, n1855, n1856, n1857, n1858, n1859, n1860,
         n1861, n1862, n1863, n1864, n1865, n1866, n1867, n1868, n1869, n1870,
         n1871, n1872, n1873, n1874, n1875, n1876, n1877, n1878, n1879, n1880,
         n1881, n1882, n1883, n1884, n1885, n1886, n1887, n1888, n1889, n1890,
         n1891, n1892, n1893, n1894, n1895, n1896, n1897, n1898, n1899, n1900,
         n1901, n1902, n1903, n1904, n1905, n1906, n1907, n1908, n1909, n1910,
         n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918, n1919, n1920,
         n1921, n1922, n1923, n1924, n1925, n1926, n1927, n1928, n1929, n1930,
         n1931, n1932, n1933, n1934, n1935, n1936, n1937, n1938, n1939, n1940,
         n1941, n1942, n1943, n1944, n1945, n1946, n1947, n1948, n1949, n1950,
         n1951, n1952, n1953, n1954, n1955, n1956, n1957, n1958, n1959, n1960,
         n1961, n1962, n1963, n1964, n1965, n1966, n1967, n1968, n1969, n1970,
         n1971, n1972, n1973, n1974, n1975, n1976, n1977, n1978, n1979, n1980,
         n1981, n1982, n1983, n1984, n1985, n1986, n1987, n1988, n1989, n1990,
         n1991, n1992, n1993, n1994, n1995, n1996, n1997, n1998, n1999, n2000,
         n2001, n2002, n2003, n2004, n2005, n2006, n2007, n2008, n2009, n2010,
         n2011, n2012, n2013, n2014, n2015, n2016, n2017, n2018, n2019, n2020,
         n2021, n2022, n2023, n2024, n2025, n2026, n2027, n2028, n2029, n2030,
         n2031, n2032, n2033, n2034, n2035, n2036, n2037, n2038, n2039, n2040,
         n2041, n2042, n2043, n2044, n2045, n2046, n2047, n2048, n2049, n2050,
         n2051, n2052, n2053, n2054, n2055, n2056, n2057, n2058, n2059, n2060,
         n2061, n2062, n2063, n2064, n2065, n2066, n2067, n2068, n2069, n2070,
         n2071, n2072, n2073, n2074, n2075, n2076, n2077, n2078, n2079, n2080,
         n2081, n2082, n2083, n2084, n2085, n2086, n2087, n2088, n2089, n2090,
         n2091, n2092, n2093, n2094, n2095, n2096, n2097, n2098, n2099, n2100,
         n2101, n2102, n2103, n2104, n2105, n2106, n2107, n2108, n2109, n2110,
         n2111, n2112, n2113, n2114, n2115, n2116, n2117, n2118, n2119, n2120,
         n2121, n2122, n2123, n2124, n2125, n2126, n2127, n2128, n2129, n2130,
         n2131, n2132, n2133, n2134, n2135, n2136, n2137, n2138, n2139, n2140,
         n2141, n2142, n2143, n2144, n2145, n2146, n2147, n2148, n2149, n2150,
         n2151, n2152, n2153, n2154, n2155, n2156, n2157, n2158, n2159, n2160,
         n2161, n2162, n2163, n2164, n2165, n2166, n2167, n2168, n2169, n2170,
         n2171, n2172, n2173, n2174, n2175, n2176, n2177, n2178, n2179, n2180,
         n2181, n2182, n2183, n2184, n2185, n2186, n2187, n2188, n2189, n2190,
         n2191, n2192, n2193, n2194, n2195, n2196, n2197, n2198, n2199, n2200,
         n2201, n2202, n2203, n2204, n2205, n2206, n2207, n2208, n2209, n2210,
         n2211, n2212, n2213, n2214, n2215, n2216, n2217, n2218, n2219, n2220,
         n2221, n2222, n2223, n2224, n2225, n2226, n2227, n2228, n2229, n2230,
         n2231, n2232, n2233, n2234, n2235, n2236, n2237, n2238, n2239, n2240,
         n2241, n2242, n2243, n2244, n2245, n2246, n2247, n2248, n2249, n2250,
         n2251, n2252, n2253, n2254, n2255, n2256, n2257, n2258, n2259, n2260,
         n2261, n2262, n2263, n2264, n2265, n2266, n2267, n2268, n2269, n2270,
         n2271, n2272, n2273, n2274, n2275, n2276, n2277, n2278, n2279, n2280,
         n2281, n2282, n2283, n2284, n2285, n2286, n2287, n2288, n2289, n2290,
         n2291, n2292, n2293, n2294, n2295, n2296, n2297, n2298, n2299, n2300,
         n2301, n2302, n2303, n2304, n2305, n2306, n2307, n2308, n2309, n2310,
         n2311, n2312, n2313, n2314, n2315, n2316, n2317, n2318, n2319, n2320,
         n2321, n2322, n2323, n2324, n2325, n2326, n2327, n2328, n2329, n2330,
         n2331, n2332, n2333, n2334, n2335, n2336, n2337, n2338, n2339, n2340,
         n2341, n2342, n2343, n2344, n2345, n2346, n2347, n2348, n2349, n2350,
         n2351, n2352, n2353, n2354, n2355, n2356, n2357, n2358, n2359, n2360,
         n2361, n2362, n2363, n2364, n2365, n2366, n2367, n2368, n2369, n2370,
         n2371, n2372, n2373, n2374, n2375, n2376, n2377, n2378, n2379, n2380,
         n2381, n2382, n2383, n2384, n2385, n2386, n2387, n2388, n2389, n2390,
         n2391, n2392, n2393, n2394, n2395, n2396, n2397, n2398, n2399, n2400,
         n2401, n2402, n2403, n2404, n2405, n2406, n2407, n2408, n2409, n2410,
         n2411, n2412, n2413, n2414, n2415, n2416, n2417, n2418, n2419, n2420,
         n2421, n2422, n2423, n2424, n2425, n2426, n2427, n2428, n2429, n2430,
         n2431, n2432, n2433, n2434, n2435, n2436, n2437, n2438, n2439, n2440,
         n2441, n2442, n2443, n2444, n2445, n2446, n2447, n2448, n2449, n2450,
         n2451, n2452, n2453, n2454, n2455, n2456, n2457, n2458, n2459, n2460,
         n2461, n2462, n2463, n2464, n2465, n2466, n2467, n2468, n2469, n2470,
         n2471, n2472, n2473, n2474, n2475, n2476, n2477, n2478, n2479, n2480,
         n2481, n2482, n2483, n2484, n2485, n2486, n2487, n2488, n2489, n2490,
         n2491, n2492, n2493, n2494, n2495, n2496, n2497, n2498, n2499, n2500,
         n2501, n2502, n2503, n2504, n2505, n2506, n2507, n2508, n2509, n2510,
         n2511, n2512, n2513, n2514, n2515, n2516, n2517, n2518, n2519, n2520,
         n2521, n2522, n2523, n2524, n2525, n2526, n2527, n2528, n2529, n2530,
         n2531, n2532, n2533, n2534, n2535, n2536, n2537, n2538, n2539, n2540,
         n2541, n2542, n2543, n2544, n2545, n2546, n2547, n2548, n2549, n2550,
         n2551, n2552, n2553, n2554, n2555, n2556, n2557, n2558, n2559, n2560,
         n2561, n2562, n2563, n2564, n2565, n2566, n2567, n2568, n2569, n2570,
         n2571, n2572, n2573, n2574, n2575, n2576, n2577, n2578, n2579, n2580,
         n2581, n2582, n2583, n2584, n2585, n2586, n2587, n2588, n2589, n2590,
         n2591, n2592, n2593, n2594, n2595, n2596, n2597, n2598, n2599, n2600,
         n2601, n2602, n2603, n2604, n2605, n2606, n2607, n2608, n2609, n2610,
         n2611, n2612, n2613, n2614, n2615, n2616, n2617, n2618, n2619, n2620,
         n2621, n2622, n2623, n2624, n2625, n2626, n2627, n2628, n2629, n2630,
         n2631, n2632, n2633, n2634, n2635, n2636, n2637, n2638, n2639, n2640,
         n2641, n2642, n2643, n2644, n2645, n2646, n2647, n2648, n2649, n2650,
         n2651, n2652, n2653, n2654, n2655, n2656, n2657, n2658, n2659, n2660,
         n2661, n2662, n2663, n2664, n2665, n2666, n2667, n2668, n2669, n2670,
         n2671, n2672, n2673, n2674, n2675, n2676, n2677, n2678, n2679, n2680,
         n2681, n2682, n2683, n2684, n2685, n2686, n2687, n2688, n2689, n2690,
         n2691, n2692, n2693, n2694, n2695, n2696, n2697, n2698, n2699, n2700,
         n2701, n2702, n2703, n2704, n2705, n2706, n2707, n2708, n2709, n2710,
         n2711, n2712, n2713, n2714, n2715, n2716, n2717, n2718, n2719, n2720,
         n2721, n2722, n2723, n2724, n2725, n2726, n2727, n2728, n2729, n2730,
         n2731, n2732, n2733, n2734, n2735, n2736, n2737, n2738, n2739, n2740,
         n2741, n2742, n2743, n2744, n2745, n2746, n2747, n2748, n2749, n2750,
         n2751, n2752, n2753, n2754, n2755, n2756, n2757, n2758, n2759, n2760,
         n2761, n2762, n2763, n2764, n2765, n2766, n2767, n2768, n2769, n2770,
         n2771, n2772, n2773, n2774, n2775, n2776, n2777, n2778, n2779, n2780,
         n2781, n2782, n2783, n2784, n2785, n2786, n2787, n2788, n2789, n2790,
         n2791, n2792, n2793, n2794, n2795, n2796, n2797, n2798, n2799, n2800,
         n2801, n2802, n2803, n2804, n2805, n2806, n2807, n2808, n2809, n2810,
         n2811, n2812, n2813, n2814, n2815, n2816, n2817, n2818, n2819, n2820,
         n2821, n2822, n2823, n2824, n2825, n2826, n2827, n2828, n2829, n2830,
         n2831, n2832, n2833, n2834, n2835, n2836, n2837, n2838, n2839, n2840,
         n2841, n2842, n2843, n2844, n2845, n2846, n2847, n2848, n2849, n2850,
         n2851, n2852, n2853, n2854, n2855, n2856, n2857, n2858, n2859, n2860,
         n2861, n2862, n2863, n2864, n2865, n2866, n2867, n2868, n2869, n2870,
         n2871, n2872, n2873, n2874, n2875, n2876, n2877, n2878, n2879, n2880,
         n2881, n2882, n2883, n2884, n2885, n2886, n2887, n2888, n2889, n2890,
         n2891, n2892, n2893, n2894, n2895, n2896, n2897, n2898, n2899, n2900,
         n2901, n2902, n2903, n2904, n2905, n2906, n2907, n2908, n2909, n2910,
         n2911, n2912, n2913, n2914, n2915, n2916, n2917, n2918, n2919, n2920,
         n2921, n2922, n2923, n2924, n2925, n2926, n2927, n2928, n2929, n2930,
         n2931, n2932, n2933, n2934, n2935, n2936, n2937, n2938, n2939, n2940,
         n2941, n2942, n2943, n2944, n2945, n2946, n2947, n2948, n2949, n2950,
         n2951, n2952, n2953, n2954, n2955, n2956, n2957, n2958, n2959, n2960,
         n2961, n2962, n2963, n2964, n2965, n2966, n2967, n2968, n2969, n2970,
         n2971, n2972, n2973, n2974, n2975, n2976, n2977, n2978, n2979, n2980,
         n2981, n2982, n2983, n2984, n2985, n2986, n2987, n2988, n2989, n2990,
         n2991, n2992, n2993, n2994, n2995, n2996, n2997, n2998, n2999, n3000,
         n3001, n3002, n3003, n3004, n3005, n3006, n3007, n3008, n3009, n3010,
         n3011, n3012, n3013, n3014, n3015, n3016, n3017, n3018, n3019, n3020,
         n3021, n3022, n3023, n3024, n3025, n3026, n3027, n3028, n3029, n3030,
         n3031, n3032, n3033, n3034, n3035, n3036, n3037, n3038, n3039, n3040,
         n3041, n3042, n3043, n3044, n3045, n3046, n3047, n3048, n3049, n3050,
         n3051, n3052, n3053, n3054, n3055, n3056, n3057, n3058, n3059, n3060,
         n3061, n3062, n3063, n3064, n3065, n3066, n3067, n3068, n3069, n3070,
         n3071, n3072, n3073, n3074, n3075, n3076, n3077, n3078, n3079, n3080,
         n3081, n3082, n3083, n3084, n3085, n3086, n3087, n3088, n3089, n3090,
         n3091, n3092, n3093, n3094, n3095, n3096, n3097, n3098, n3099, n3100,
         n3101, n3102, n3103, n3104, n3105, n3106, n3107, n3108, n3109, n3110,
         n3111, n3112, n3113, n3114, n3115, n3116, n3117, n3118, n3119, n3120,
         n3121, n3122, n3123, n3124, n3125, n3126, n3127, n3128, n3129, n3130,
         n3131, n3132, n3133, n3134, n3135, n3136, n3137, n3138, n3139, n3140,
         n3141, n3142, n3143, n3144, n3145, n3146, n3147, n3148, n3149, n3150,
         n3151, n3152, n3153, n3154, n3155, n3156, n3157, n3158, n3159, n3160,
         n3161, n3162, n3163, n3164, n3165, n3166, n3167, n3168, n3169, n3170,
         n3171, n3172, n3173, n3174, n3175, n3176, n3177, n3178, n3179, n3180,
         n3181, n3182, n3183, n3184, n3185, n3186, n3187, n3188, n3189, n3190,
         n3191, n3192, n3193, n3194, n3195, n3196, n3197, n3198, n3199, n3200,
         n3201, n3202, n3203, n3204, n3205, n3206, n3207, n3208, n3209, n3210,
         n3211, n3212, n3213, n3214, n3215, n3216, n3217, n3218, n3219, n3220,
         n3221, n3222, n3223, n3224, n3225, n3226, n3227, n3228, n3229, n3230,
         n3231, n3232, n3233, n3234, n3235, n3236, n3237, n3238, n3239, n3240,
         n3241, n3242, n3243, n3244, n3245, n3246, n3247, n3248, n3249, n3250,
         n3251, n3252, n3253, n3254, n3255, n3256, n3257, n3258, n3259, n3260,
         n3261, n3262, n3263, n3264, n3265, n3266, n3267, n3268, n3269, n3270,
         n3271, n3272, n3273, n3274, n3275, n3276, n3277, n3278, n3279, n3280,
         n3281, n3282, n3283, n3284, n3285, n3286, n3287, n3288, n3289, n3290,
         n3291, n3292, n3293, n3294, n3295, n3296, n3297, n3298, n3299, n3300,
         n3301, n3302, n3303, n3304, n3305, n3306, n3307, n3308, n3309, n3310,
         n3311, n3312, n3313, n3314, n3315, n3316, n3317, n3318, n3319, n3320,
         n3321, n3322, n3323, n3324, n3325, n3326, n3327, n3328, n3329, n3330,
         n3331, n3332, n3333, n3334, n3335, n3336, n3337, n3338, n3339, n3340,
         n3341, n3342, n3343, n3344, n3345, n3346, n3347, n3348, n3349, n3350,
         n3351, n3352, n3353, n3354, n3355, n3356, n3357, n3358, n3359, n3360,
         n3361, n3362, n3363, n3364, n3365, n3366, n3367, n3368, n3369, n3370,
         n3371, n3372, n3373, n3374, n3375, n3376, n3377, n3378, n3379, n3380,
         n3381, n3382, n3383, n3384, n3385, n3386, n3387, n3388, n3389, n3390,
         n3391, n3392, n3393, n3394, n3395, n3396, n3397, n3398, n3399, n3400,
         n3401, n3402, n3403, n3404, n3405, n3406, n3407, n3408, n3409, n3410,
         n3411, n3412, n3413, n3414, n3415, n3416, n3417, n3418, n3419, n3420,
         n3421, n3422, n3423, n3424, n3425, n3426, n3427, n3428, n3429, n3430,
         n3431, n3432, n3433, n3434, n3435, n3436, n3437, n3438, n3439, n3440,
         n3441, n3442, n3443, n3444, n3445, n3446, n3447, n3448, n3449, n3450,
         n3451, n3452, n3453, n3454, n3455, n3456, n3457, n3458, n3459, n3460,
         n3461, n3462, n3463, n3464, n3465, n3466, n3467, n3468, n3469, n3470,
         n3471, n3472, n3473, n3474, n3475, n3476, n3477, n3478, n3479, n3480,
         n3481, n3482, n3483, n3484, n3485, n3486, n3487, n3488, n3489, n3490,
         n3491, n3492, n3493, n3494, n3495, n3496, n3497, n3498, n3499, n3500,
         n3501, n3502, n3503, n3504, n3505, n3506, n3507, n3508, n3509, n3510,
         n3511, n3512, n3513, n3514, n3515, n3516, n3517, n3518, n3519, n3520,
         n3521, n3522, n3523, n3524, n3525, n3526, n3527, n3528, n3529, n3530,
         n3531, n3532, n3533, n3534, n3535, n3536, n3537, n3538, n3539, n3540,
         n3541, n3542, n3543, n3544, n3545, n3546, n3547, n3548, n3549, n3550,
         n3551, n3552, n3553, n3554, n3555, n3556, n3557, n3558, n3559, n3560,
         n3561, n3562, n3563, n3564, n3565, n3566, n3567, n3568, n3569, n3570,
         n3571, n3572, n3573, n3574, n3575, n3576, n3577, n3578, n3579, n3580,
         n3581, n3582, n3583, n3584, n3585, n3586, n3587, n3588, n3589, n3590,
         n3591, n3592, n3593, n3594, n3595, n3596, n3597, n3598, n3599, n3600,
         n3601, n3602, n3603, n3604, n3605, n3606, n3607, n3608, n3609, n3610,
         n3611, n3612, n3613, n3614, n3615, n3616, n3617, n3618, n3619, n3620,
         n3621, n3622, n3623, n3624, n3625, n3626, n3627, n3628, n3629, n3630,
         n3631, n3632, n3633, n3634, n3635, n3636, n3637, n3638, n3639, n3640,
         n3641, n3642, n3643, n3644, n3645, n3646, n3647, n3648, n3649, n3650,
         n3651, n3652, n3653, n3654, n3655, n3656, n3657, n3658, n3659, n3660,
         n3661, n3662, n3663, n3664, n3665, n3666, n3667, n3668, n3669, n3670,
         n3671, n3672, n3673, n3674, n3675, n3676, n3677, n3678, n3679, n3680,
         n3681, n3682, n3683, n3684, n3685, n3686, n3687, n3688, n3689, n3690,
         n3691, n3692, n3693, n3694, n3695, n3696, n3697, n3698, n3699, n3700,
         n3701, n3702, n3703, n3704, n3705, n3706, n3707, n3708, n3709, n3710,
         n3711, n3712, n3713, n3714, n3715, n3716, n3717, n3718, n3719, n3720,
         n3721, n3722, n3723, n3724, n3725, n3726, n3727, n3728, n3729, n3730,
         n3731, n3732, n3733, n3734, n3735, n3736, n3737, n3738, n3739, n3740,
         n3741, n3742, n3743, n3744, n3745, n3746, n3747, n3748, n3749, n3750,
         n3751, n3752, n3753, n3754, n3755, n3756, n3757, n3758, n3759, n3760,
         n3761, n3762, n3763, n3764, n3765, n3766, n3767, n3768, n3769, n3770,
         n3771, n3772, n3773, n3774, n3775, n3776, n3777, n3778, n3779, n3780,
         n3781, n3782, n3783, n3784, n3785, n3786, n3787, n3788, n3789, n3790,
         n3791, n3792, n3793, n3794, n3795, n3796, n3797, n3798, n3799, n3800,
         n3801, n3802, n3803, n3804, n3805, n3806, n3807, n3808, n3809, n3810,
         n3811, n3812, n3813, n3814, n3815, n3816, n3817, n3818, n3819, n3820,
         n3821, n3822, n3823, n3824, n3825, n3826, n3827, n3828, n3829, n3830,
         n3831, n3832, n3833, n3834, n3835, n3836, n3837, n3838, n3839, n3840,
         n3841, n3842, n3843, n3844, n3845, n3846, n3847, n3848, n3849, n3850,
         n3851, n3852, n3853, n3854, n3855, n3856, n3857, n3858, n3859, n3860,
         n3861, n3862, n3863, n3864, n3865, n3866, n3867, n3868, n3869, n3870,
         n3871, n3872, n3873, n3874, n3875, n3876, n3877, n3878, n3879, n3880,
         n3881, n3882, n3883, n3884, n3885, n3886, n3887, n3888, n3889, n3890,
         n3891, n3892, n3893, n3894, n3895, n3896, n3897, n3898, n3899, n3900,
         n3901, n3902, n3903, n3904, n3905, n3906, n3907, n3908, n3909, n3910,
         n3911, n3912, n3913, n3914, n3915, n3916, n3917, n3918, n3919, n3920,
         n3921, n3922, n3923, n3924, n3925, n3926, n3927, n3928, n3929, n3930,
         n3931, n3932, n3933, n3934, n3935, n3936, n3937, n3938, n3939, n3940,
         n3941, n3942, n3943, n3944, n3945, n3946, n3947, n3948, n3949, n3950,
         n3951, n3952, n3953, n3954, n3955, n3956, n3957, n3958, n3959, n3960,
         n3961, n3962, n3963, n3964, n3965, n3966, n3967, n3968, n3969, n3970,
         n3971, n3972, n3973, n3974, n3975, n3976, n3977, n3978, n3979, n3980,
         n3981, n3982, n3983, n3984, n3985, n3986, n3987, n3988, n3989, n3990,
         n3991, n3992, n3993, n3994, n3995, n3996, n3997, n3998, n3999, n4000,
         n4001, n4002, n4003, n4004, n4005, n4006, n4007, n4008, n4009, n4010,
         n4011, n4012, n4013, n4014, n4015, n4016, n4017, n4018, n4019, n4020,
         n4021, n4022, n4023, n4024, n4025, n4026, n4027, n4028, n4029, n4030,
         n4031, n4032, n4033, n4034, n4035, n4037;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [15:0] sram_weight_read_base_address;
  wire   [15:0] sram_result_write_start_address;
  wire   [15:0] input_num_rows;
  wire   [15:0] input_num_cols;
  wire   [15:0] MAC_input_read_start_address;
  wire   [15:0] MAC_weight_read_start_address;
  wire   [15:2] MAC_weight_max_addr;
  wire   [15:0] MAC_loop_count;
  wire   [3:0] MAC_next_state;
  wire   [3:0] MAC_current_state;
  wire   [31:0] MAC_accum_result;
  wire   [31:0] MAC_sram_weight_read_data;
  wire   [31:1] MAC_sram_input_read_data;

  DFFR_X1 MAC_current_state_reg_3_ ( .D(MAC_next_state[3]), .CK(clk), .RN(n941), .Q(MAC_current_state[3]), .QN(n3879) );
  DFFR_X1 current_state_reg_2_ ( .D(next_state[2]), .CK(clk), .RN(n941), .Q(
        current_state[2]), .QN(n3957) );
  DFFR_X1 current_state_reg_0_ ( .D(next_state[0]), .CK(clk), .RN(n941), .Q(
        current_state[0]), .QN(n3960) );
  DFFR_X1 current_state_reg_1_ ( .D(next_state[1]), .CK(clk), .RN(n941), .Q(
        current_state[1]), .QN(n3883) );
  DFFR_X1 MAC_current_state_reg_0_ ( .D(MAC_next_state[0]), .CK(clk), .RN(n941), .Q(MAC_current_state[0]), .QN(n3882) );
  DFFR_X1 MAC_current_state_reg_2_ ( .D(n708), .CK(clk), .RN(n941), .Q(
        MAC_current_state[2]), .QN(n3945) );
  DFFR_X1 MAC_current_state_reg_1_ ( .D(n707), .CK(clk), .RN(n941), .Q(
        MAC_current_state[1]), .QN(n3946) );
  DFF_X1 MAC_weight_wraparound_reg ( .D(n4037), .CK(clk), .QN(n3973) );
  DFF_X1 MAC_loop_count_reg_0_ ( .D(n622), .CK(clk), .Q(MAC_loop_count[0]) );
  DFF_X1 MAC_loop_count_reg_1_ ( .D(n621), .CK(clk), .Q(MAC_loop_count[1]), 
        .QN(n3994) );
  DFF_X1 MAC_loop_count_reg_2_ ( .D(n620), .CK(clk), .Q(MAC_loop_count[2]), 
        .QN(n3976) );
  DFF_X1 MAC_loop_count_reg_3_ ( .D(n619), .CK(clk), .Q(MAC_loop_count[3]), 
        .QN(n3885) );
  DFF_X1 MAC_loop_count_reg_4_ ( .D(n618), .CK(clk), .Q(MAC_loop_count[4]), 
        .QN(n3979) );
  DFF_X1 MAC_loop_count_reg_5_ ( .D(n617), .CK(clk), .Q(MAC_loop_count[5]), 
        .QN(n3993) );
  DFF_X1 MAC_loop_count_reg_6_ ( .D(n616), .CK(clk), .Q(MAC_loop_count[6]), 
        .QN(n4015) );
  DFF_X1 MAC_loop_count_reg_7_ ( .D(n615), .CK(clk), .Q(MAC_loop_count[7]), 
        .QN(n3992) );
  DFF_X1 MAC_loop_count_reg_8_ ( .D(n614), .CK(clk), .Q(MAC_loop_count[8]), 
        .QN(n4016) );
  DFF_X1 MAC_loop_count_reg_9_ ( .D(n613), .CK(clk), .Q(MAC_loop_count[9]), 
        .QN(n3995) );
  DFF_X1 MAC_loop_count_reg_10_ ( .D(n612), .CK(clk), .Q(MAC_loop_count[10]), 
        .QN(n4014) );
  DFF_X1 MAC_loop_count_reg_11_ ( .D(n611), .CK(clk), .Q(MAC_loop_count[11]), 
        .QN(n3996) );
  DFF_X1 MAC_loop_count_reg_12_ ( .D(n610), .CK(clk), .Q(MAC_loop_count[12]), 
        .QN(n4017) );
  DFF_X1 MAC_loop_count_reg_13_ ( .D(n609), .CK(clk), .Q(MAC_loop_count[13]), 
        .QN(n3988) );
  DFF_X1 MAC_loop_count_reg_14_ ( .D(n608), .CK(clk), .Q(MAC_loop_count[14]), 
        .QN(n3991) );
  DFF_X1 MAC_loop_count_reg_15_ ( .D(n607), .CK(clk), .Q(MAC_loop_count[15]), 
        .QN(n3989) );
  DFF_X1 sram_weight_read_base_address_reg_15_ ( .D(n706), .CK(clk), .Q(
        sram_weight_read_base_address[15]), .QN(n4032) );
  DFF_X1 sram_weight_read_base_address_reg_0_ ( .D(n669), .CK(clk), .Q(
        sram_weight_read_base_address[0]), .QN(n3990) );
  DFF_X1 sram_weight_read_base_address_reg_1_ ( .D(n668), .CK(clk), .Q(
        sram_weight_read_base_address[1]), .QN(n4031) );
  DFF_X1 sram_weight_read_base_address_reg_2_ ( .D(n667), .CK(clk), .Q(
        sram_weight_read_base_address[2]), .QN(n4030) );
  DFF_X1 sram_weight_read_base_address_reg_3_ ( .D(n666), .CK(clk), .Q(
        sram_weight_read_base_address[3]), .QN(n4029) );
  DFF_X1 sram_weight_read_base_address_reg_4_ ( .D(n665), .CK(clk), .Q(
        sram_weight_read_base_address[4]), .QN(n4028) );
  DFF_X1 sram_weight_read_base_address_reg_5_ ( .D(n664), .CK(clk), .Q(
        sram_weight_read_base_address[5]), .QN(n4027) );
  DFF_X1 sram_weight_read_base_address_reg_6_ ( .D(n663), .CK(clk), .Q(
        sram_weight_read_base_address[6]), .QN(n4026) );
  DFF_X1 sram_weight_read_base_address_reg_7_ ( .D(n662), .CK(clk), .Q(
        sram_weight_read_base_address[7]), .QN(n4025) );
  DFF_X1 sram_weight_read_base_address_reg_8_ ( .D(n661), .CK(clk), .Q(
        sram_weight_read_base_address[8]), .QN(n4024) );
  DFF_X1 sram_weight_read_base_address_reg_9_ ( .D(n660), .CK(clk), .Q(
        sram_weight_read_base_address[9]), .QN(n4023) );
  DFF_X1 sram_weight_read_base_address_reg_10_ ( .D(n659), .CK(clk), .Q(
        sram_weight_read_base_address[10]), .QN(n4022) );
  DFF_X1 sram_weight_read_base_address_reg_11_ ( .D(n658), .CK(clk), .Q(
        sram_weight_read_base_address[11]), .QN(n4021) );
  DFF_X1 sram_weight_read_base_address_reg_12_ ( .D(n657), .CK(clk), .Q(
        sram_weight_read_base_address[12]), .QN(n4020) );
  DFF_X1 sram_weight_read_base_address_reg_13_ ( .D(n656), .CK(clk), .Q(
        sram_weight_read_base_address[13]), .QN(n4019) );
  DFF_X1 sram_weight_read_base_address_reg_14_ ( .D(n655), .CK(clk), .Q(
        sram_weight_read_base_address[14]), .QN(n4018) );
  DFF_X1 sram_result_write_start_address_reg_0_ ( .D(n654), .CK(clk), .Q(
        sram_result_write_start_address[0]), .QN(n4004) );
  DFF_X1 sram_result_write_start_address_reg_1_ ( .D(n653), .CK(clk), .Q(
        sram_result_write_start_address[1]), .QN(n3919) );
  DFF_X1 sram_result_write_start_address_reg_2_ ( .D(n652), .CK(clk), .Q(
        sram_result_write_start_address[2]), .QN(n3924) );
  DFF_X1 sram_result_write_start_address_reg_3_ ( .D(n651), .CK(clk), .Q(
        sram_result_write_start_address[3]), .QN(n3929) );
  DFF_X1 sram_result_write_start_address_reg_4_ ( .D(n650), .CK(clk), .Q(
        sram_result_write_start_address[4]), .QN(n3938) );
  DFF_X1 sram_result_write_start_address_reg_5_ ( .D(n649), .CK(clk), .Q(
        sram_result_write_start_address[5]), .QN(n3947) );
  DFF_X1 sram_result_write_start_address_reg_6_ ( .D(n648), .CK(clk), .Q(
        sram_result_write_start_address[6]), .QN(n3949) );
  DFF_X1 sram_result_write_start_address_reg_7_ ( .D(n647), .CK(clk), .Q(
        sram_result_write_start_address[7]), .QN(n3950) );
  DFF_X1 sram_result_write_start_address_reg_8_ ( .D(n646), .CK(clk), .Q(
        sram_result_write_start_address[8]), .QN(n3953) );
  DFF_X1 sram_result_write_start_address_reg_9_ ( .D(n645), .CK(clk), .Q(
        sram_result_write_start_address[9]), .QN(n3958) );
  DFF_X1 sram_result_write_start_address_reg_10_ ( .D(n644), .CK(clk), .Q(
        sram_result_write_start_address[10]), .QN(n3961) );
  DFF_X1 sram_result_write_start_address_reg_11_ ( .D(n643), .CK(clk), .Q(
        sram_result_write_start_address[11]), .QN(n3978) );
  DFF_X1 sram_result_write_start_address_reg_12_ ( .D(n642), .CK(clk), .Q(
        sram_result_write_start_address[12]), .QN(n3981) );
  DFF_X1 sram_result_write_start_address_reg_13_ ( .D(n641), .CK(clk), .Q(
        sram_result_write_start_address[13]), .QN(n3983) );
  DFF_X1 sram_result_write_start_address_reg_14_ ( .D(n640), .CK(clk), .Q(
        sram_result_write_start_address[14]), .QN(n3985) );
  DFF_X1 sram_result_write_start_address_reg_15_ ( .D(n639), .CK(clk), .Q(
        sram_result_write_start_address[15]), .QN(n3987) );
  DFF_X1 MAC_weight_read_start_address_reg_15_ ( .D(n705), .CK(clk), .Q(
        MAC_weight_read_start_address[15]) );
  DFF_X1 MAC_weight_read_start_address_reg_0_ ( .D(n606), .CK(clk), .Q(
        MAC_weight_read_start_address[0]), .QN(n4013) );
  DFF_X1 MAC_weight_read_start_address_reg_1_ ( .D(n605), .CK(clk), .Q(
        MAC_weight_read_start_address[1]) );
  DFF_X1 MAC_weight_read_start_address_reg_2_ ( .D(n604), .CK(clk), .Q(
        MAC_weight_read_start_address[2]) );
  DFF_X1 MAC_weight_read_start_address_reg_3_ ( .D(n603), .CK(clk), .Q(
        MAC_weight_read_start_address[3]) );
  DFF_X1 MAC_weight_read_start_address_reg_4_ ( .D(n602), .CK(clk), .Q(
        MAC_weight_read_start_address[4]) );
  DFF_X1 MAC_weight_read_start_address_reg_5_ ( .D(n601), .CK(clk), .Q(
        MAC_weight_read_start_address[5]) );
  DFF_X1 MAC_weight_read_start_address_reg_6_ ( .D(n600), .CK(clk), .Q(
        MAC_weight_read_start_address[6]) );
  DFF_X1 MAC_weight_read_start_address_reg_7_ ( .D(n599), .CK(clk), .Q(
        MAC_weight_read_start_address[7]) );
  DFF_X1 MAC_weight_read_start_address_reg_8_ ( .D(n598), .CK(clk), .Q(
        MAC_weight_read_start_address[8]) );
  DFF_X1 MAC_weight_read_start_address_reg_9_ ( .D(n597), .CK(clk), .Q(
        MAC_weight_read_start_address[9]) );
  DFF_X1 MAC_weight_read_start_address_reg_10_ ( .D(n596), .CK(clk), .Q(
        MAC_weight_read_start_address[10]) );
  DFF_X1 MAC_weight_read_start_address_reg_11_ ( .D(n595), .CK(clk), .Q(
        MAC_weight_read_start_address[11]) );
  DFF_X1 MAC_weight_read_start_address_reg_12_ ( .D(n594), .CK(clk), .Q(
        MAC_weight_read_start_address[12]) );
  DFF_X1 MAC_weight_read_start_address_reg_13_ ( .D(n593), .CK(clk), .Q(
        MAC_weight_read_start_address[13]) );
  DFF_X1 MAC_weight_read_start_address_reg_14_ ( .D(n592), .CK(clk), .Q(
        MAC_weight_read_start_address[14]) );
  DFF_X1 MAC_input_read_start_address_reg_15_ ( .D(n703), .CK(clk), .Q(
        MAC_input_read_start_address[15]), .QN(n4005) );
  DFF_X1 MAC_input_read_start_address_reg_14_ ( .D(n687), .CK(clk), .Q(
        MAC_input_read_start_address[14]), .QN(n4006) );
  DFF_X1 MAC_input_read_start_address_reg_13_ ( .D(n688), .CK(clk), .Q(
        MAC_input_read_start_address[13]), .QN(n3999) );
  DFF_X1 MAC_input_read_start_address_reg_0_ ( .D(n701), .CK(clk), .Q(
        MAC_input_read_start_address[0]) );
  DFF_X1 MAC_input_read_start_address_reg_1_ ( .D(n700), .CK(clk), .Q(
        MAC_input_read_start_address[1]), .QN(n4008) );
  DFF_X1 MAC_input_read_start_address_reg_2_ ( .D(n699), .CK(clk), .Q(
        MAC_input_read_start_address[2]), .QN(n4009) );
  DFF_X1 MAC_input_read_start_address_reg_3_ ( .D(n698), .CK(clk), .Q(
        MAC_input_read_start_address[3]), .QN(n4003) );
  DFF_X1 MAC_input_read_start_address_reg_4_ ( .D(n697), .CK(clk), .Q(
        MAC_input_read_start_address[4]), .QN(n3998) );
  DFF_X1 MAC_input_read_start_address_reg_5_ ( .D(n696), .CK(clk), .Q(
        MAC_input_read_start_address[5]), .QN(n4002) );
  DFF_X1 MAC_input_read_start_address_reg_6_ ( .D(n695), .CK(clk), .Q(
        MAC_input_read_start_address[6]), .QN(n4010) );
  DFF_X1 MAC_input_read_start_address_reg_7_ ( .D(n694), .CK(clk), .Q(
        MAC_input_read_start_address[7]), .QN(n4001) );
  DFF_X1 MAC_input_read_start_address_reg_8_ ( .D(n693), .CK(clk), .Q(
        MAC_input_read_start_address[8]), .QN(n4011) );
  DFF_X1 MAC_input_read_start_address_reg_9_ ( .D(n692), .CK(clk), .Q(
        MAC_input_read_start_address[9]), .QN(n4007) );
  DFF_X1 MAC_input_read_start_address_reg_10_ ( .D(n691), .CK(clk), .Q(
        MAC_input_read_start_address[10]), .QN(n4012) );
  DFF_X1 MAC_input_read_start_address_reg_11_ ( .D(n690), .CK(clk), .Q(
        MAC_input_read_start_address[11]), .QN(n3997) );
  DFF_X1 MAC_input_read_start_address_reg_12_ ( .D(n689), .CK(clk), .Q(
        MAC_input_read_start_address[12]), .QN(n4000) );
  DFF_X1 MAC_accum_result_reg_0_ ( .D(MAC_N26), .CK(clk), .Q(
        MAC_accum_result[0]) );
  DFF_X1 MAC_accum_result_reg_1_ ( .D(n3954), .CK(clk), .Q(MAC_accum_result[1]) );
  DFF_X1 MAC_accum_result_reg_2_ ( .D(MAC_N28), .CK(clk), .Q(
        MAC_accum_result[2]) );
  DFF_X1 MAC_accum_result_reg_3_ ( .D(n3944), .CK(clk), .Q(MAC_accum_result[3]) );
  DFF_X1 MAC_accum_result_reg_4_ ( .D(MAC_N30), .CK(clk), .Q(
        MAC_accum_result[4]) );
  DFF_X1 MAC_accum_result_reg_5_ ( .D(MAC_N31), .CK(clk), .Q(
        MAC_accum_result[5]) );
  DFF_X1 MAC_accum_result_reg_6_ ( .D(n3923), .CK(clk), .Q(MAC_accum_result[6]) );
  DFF_X1 MAC_accum_result_reg_7_ ( .D(MAC_N33), .CK(clk), .Q(
        MAC_accum_result[7]) );
  DFF_X1 MAC_accum_result_reg_8_ ( .D(MAC_N34), .CK(clk), .Q(
        MAC_accum_result[8]) );
  DFF_X1 MAC_accum_result_reg_9_ ( .D(n3918), .CK(clk), .Q(MAC_accum_result[9]) );
  DFF_X1 MAC_accum_result_reg_10_ ( .D(n3916), .CK(clk), .Q(
        MAC_accum_result[10]) );
  DFF_X1 MAC_accum_result_reg_11_ ( .D(MAC_N37), .CK(clk), .Q(
        MAC_accum_result[11]) );
  DFF_X1 MAC_accum_result_reg_12_ ( .D(MAC_N38), .CK(clk), .Q(
        MAC_accum_result[12]) );
  DFF_X1 MAC_accum_result_reg_13_ ( .D(n3914), .CK(clk), .Q(
        MAC_accum_result[13]) );
  DFF_X1 MAC_accum_result_reg_14_ ( .D(n3915), .CK(clk), .Q(
        MAC_accum_result[14]) );
  DFF_X1 MAC_accum_result_reg_15_ ( .D(MAC_N41), .CK(clk), .Q(
        MAC_accum_result[15]), .QN(n992) );
  DFF_X1 MAC_accum_result_reg_16_ ( .D(MAC_N42), .CK(clk), .Q(
        MAC_accum_result[16]) );
  DFF_X1 MAC_accum_result_reg_17_ ( .D(n3912), .CK(clk), .Q(
        MAC_accum_result[17]) );
  DFF_X1 MAC_accum_result_reg_18_ ( .D(n3911), .CK(clk), .Q(
        MAC_accum_result[18]) );
  DFF_X1 MAC_accum_result_reg_19_ ( .D(n3913), .CK(clk), .Q(
        MAC_accum_result[19]) );
  DFF_X1 MAC_accum_result_reg_20_ ( .D(MAC_N46), .CK(clk), .Q(
        MAC_accum_result[20]) );
  DFF_X1 MAC_accum_result_reg_21_ ( .D(MAC_N47), .CK(clk), .Q(
        MAC_accum_result[21]) );
  DFF_X1 MAC_accum_result_reg_22_ ( .D(n3909), .CK(clk), .Q(
        MAC_accum_result[22]) );
  DFF_X1 MAC_accum_result_reg_23_ ( .D(n3908), .CK(clk), .Q(
        MAC_accum_result[23]) );
  DFF_X1 MAC_accum_result_reg_24_ ( .D(n3910), .CK(clk), .Q(
        MAC_accum_result[24]) );
  DFF_X1 MAC_accum_result_reg_25_ ( .D(MAC_N51), .CK(clk), .Q(
        MAC_accum_result[25]) );
  DFF_X1 MAC_accum_result_reg_26_ ( .D(MAC_N52), .CK(clk), .Q(
        MAC_accum_result[26]) );
  DFF_X1 MAC_accum_result_reg_27_ ( .D(MAC_N53), .CK(clk), .Q(
        MAC_accum_result[27]) );
  DFF_X1 MAC_accum_result_reg_28_ ( .D(n3907), .CK(clk), .Q(
        MAC_accum_result[28]) );
  DFF_X1 MAC_accum_result_reg_29_ ( .D(n3906), .CK(clk), .Q(
        MAC_accum_result[29]) );
  DFF_X1 MAC_accum_result_reg_30_ ( .D(MAC_N56), .CK(clk), .Q(
        MAC_accum_result[30]) );
  DFF_X1 MAC_accum_result_reg_31_ ( .D(n3902), .CK(clk), .Q(
        MAC_accum_result[31]) );
  DFF_X1 MAC_sram_weight_read_data_reg_1_ ( .D(
        tb__dut__sram_weight_read_data[1]), .CK(clk), .QN(n3903) );
  DFF_X1 MAC_sram_weight_read_data_reg_2_ ( .D(
        tb__dut__sram_weight_read_data[2]), .CK(clk), .QN(n3901) );
  DFF_X1 MAC_sram_weight_read_data_reg_3_ ( .D(
        tb__dut__sram_weight_read_data[3]), .CK(clk), .QN(n3880) );
  DFF_X1 MAC_sram_weight_read_data_reg_4_ ( .D(
        tb__dut__sram_weight_read_data[4]), .CK(clk), .QN(n3905) );
  DFF_X1 MAC_sram_weight_read_data_reg_5_ ( .D(
        tb__dut__sram_weight_read_data[5]), .CK(clk), .QN(n3904) );
  DFF_X1 MAC_sram_weight_read_data_reg_6_ ( .D(
        tb__dut__sram_weight_read_data[6]), .CK(clk), .QN(n3877) );
  DFF_X1 MAC_sram_weight_read_data_reg_7_ ( .D(
        tb__dut__sram_weight_read_data[7]), .CK(clk), .QN(n949) );
  DFF_X1 MAC_sram_weight_read_data_reg_8_ ( .D(
        tb__dut__sram_weight_read_data[8]), .CK(clk), .QN(n953) );
  DFF_X1 MAC_sram_weight_read_data_reg_9_ ( .D(
        tb__dut__sram_weight_read_data[9]), .CK(clk), .QN(n3876) );
  DFF_X1 MAC_sram_weight_read_data_reg_10_ ( .D(
        tb__dut__sram_weight_read_data[10]), .CK(clk), .QN(n948) );
  DFF_X1 MAC_sram_weight_read_data_reg_11_ ( .D(
        tb__dut__sram_weight_read_data[11]), .CK(clk), .QN(n950) );
  DFF_X1 MAC_sram_weight_read_data_reg_12_ ( .D(
        tb__dut__sram_weight_read_data[12]), .CK(clk), .QN(n3878) );
  DFF_X1 MAC_sram_weight_read_data_reg_13_ ( .D(
        tb__dut__sram_weight_read_data[13]), .CK(clk), .Q(
        MAC_sram_weight_read_data[13]) );
  DFF_X1 MAC_sram_weight_read_data_reg_14_ ( .D(
        tb__dut__sram_weight_read_data[14]), .CK(clk), .Q(
        MAC_sram_weight_read_data[14]) );
  DFF_X1 MAC_sram_weight_read_data_reg_17_ ( .D(
        tb__dut__sram_weight_read_data[17]), .CK(clk), .Q(
        MAC_sram_weight_read_data[17]) );
  DFF_X1 MAC_sram_weight_read_data_reg_18_ ( .D(
        tb__dut__sram_weight_read_data[18]), .CK(clk), .Q(
        MAC_sram_weight_read_data[18]) );
  DFF_X1 MAC_sram_weight_read_data_reg_19_ ( .D(
        tb__dut__sram_weight_read_data[19]), .CK(clk), .Q(
        MAC_sram_weight_read_data[19]) );
  DFF_X1 MAC_sram_weight_read_data_reg_20_ ( .D(
        tb__dut__sram_weight_read_data[20]), .CK(clk), .Q(
        MAC_sram_weight_read_data[20]) );
  DFF_X1 MAC_sram_weight_read_data_reg_21_ ( .D(
        tb__dut__sram_weight_read_data[21]), .CK(clk), .Q(
        MAC_sram_weight_read_data[21]) );
  DFF_X1 MAC_sram_weight_read_data_reg_22_ ( .D(
        tb__dut__sram_weight_read_data[22]), .CK(clk), .Q(
        MAC_sram_weight_read_data[22]) );
  DFF_X1 MAC_sram_weight_read_data_reg_23_ ( .D(
        tb__dut__sram_weight_read_data[23]), .CK(clk), .Q(
        MAC_sram_weight_read_data[23]) );
  DFF_X1 MAC_sram_weight_read_data_reg_24_ ( .D(
        tb__dut__sram_weight_read_data[24]), .CK(clk), .Q(
        MAC_sram_weight_read_data[24]) );
  DFF_X1 MAC_sram_weight_read_data_reg_25_ ( .D(
        tb__dut__sram_weight_read_data[25]), .CK(clk), .Q(
        MAC_sram_weight_read_data[25]) );
  DFF_X1 MAC_sram_weight_read_data_reg_26_ ( .D(
        tb__dut__sram_weight_read_data[26]), .CK(clk), .Q(
        MAC_sram_weight_read_data[26]) );
  DFF_X1 MAC_sram_weight_read_data_reg_27_ ( .D(
        tb__dut__sram_weight_read_data[27]), .CK(clk), .Q(
        MAC_sram_weight_read_data[27]) );
  DFF_X1 MAC_sram_weight_read_data_reg_28_ ( .D(
        tb__dut__sram_weight_read_data[28]), .CK(clk), .Q(
        MAC_sram_weight_read_data[28]) );
  DFF_X1 MAC_sram_weight_read_data_reg_29_ ( .D(
        tb__dut__sram_weight_read_data[29]), .CK(clk), .Q(
        MAC_sram_weight_read_data[29]) );
  DFF_X1 MAC_sram_weight_read_data_reg_30_ ( .D(
        tb__dut__sram_weight_read_data[30]), .CK(clk), .Q(
        MAC_sram_weight_read_data[30]) );
  DFF_X1 MAC_sram_weight_read_data_reg_31_ ( .D(
        tb__dut__sram_weight_read_data[31]), .CK(clk), .Q(
        MAC_sram_weight_read_data[31]) );
  DFF_X1 MAC_sram_input_read_data_reg_0_ ( .D(tb__dut__sram_input_read_data[0]), .CK(clk), .QN(n973) );
  DFF_X1 MAC_sram_input_read_data_reg_1_ ( .D(tb__dut__sram_input_read_data[1]), .CK(clk), .Q(MAC_sram_input_read_data[1]), .QN(n991) );
  DFF_X1 MAC_sram_input_read_data_reg_2_ ( .D(tb__dut__sram_input_read_data[2]), .CK(clk), .Q(MAC_sram_input_read_data[2]), .QN(n945) );
  DFF_X1 MAC_sram_input_read_data_reg_3_ ( .D(tb__dut__sram_input_read_data[3]), .CK(clk), .Q(MAC_sram_input_read_data[3]) );
  DFF_X1 MAC_sram_input_read_data_reg_4_ ( .D(tb__dut__sram_input_read_data[4]), .CK(clk), .Q(MAC_sram_input_read_data[4]) );
  DFF_X1 MAC_sram_input_read_data_reg_5_ ( .D(tb__dut__sram_input_read_data[5]), .CK(clk), .Q(MAC_sram_input_read_data[5]), .QN(n990) );
  DFF_X1 MAC_sram_input_read_data_reg_6_ ( .D(tb__dut__sram_input_read_data[6]), .CK(clk), .Q(MAC_sram_input_read_data[6]) );
  DFF_X1 MAC_sram_input_read_data_reg_7_ ( .D(tb__dut__sram_input_read_data[7]), .CK(clk), .Q(MAC_sram_input_read_data[7]) );
  DFF_X1 MAC_sram_input_read_data_reg_8_ ( .D(tb__dut__sram_input_read_data[8]), .CK(clk), .QN(n988) );
  DFF_X1 MAC_sram_input_read_data_reg_9_ ( .D(tb__dut__sram_input_read_data[9]), .CK(clk), .Q(MAC_sram_input_read_data[9]) );
  DFF_X1 MAC_sram_input_read_data_reg_10_ ( .D(
        tb__dut__sram_input_read_data[10]), .CK(clk), .Q(
        MAC_sram_input_read_data[10]) );
  DFF_X1 MAC_sram_input_read_data_reg_11_ ( .D(
        tb__dut__sram_input_read_data[11]), .CK(clk), .QN(n987) );
  DFF_X1 MAC_sram_input_read_data_reg_12_ ( .D(
        tb__dut__sram_input_read_data[12]), .CK(clk), .Q(
        MAC_sram_input_read_data[12]) );
  DFF_X1 MAC_sram_input_read_data_reg_13_ ( .D(
        tb__dut__sram_input_read_data[13]), .CK(clk), .Q(
        MAC_sram_input_read_data[13]) );
  DFF_X1 MAC_sram_input_read_data_reg_14_ ( .D(
        tb__dut__sram_input_read_data[14]), .CK(clk), .Q(
        MAC_sram_input_read_data[14]) );
  DFF_X1 MAC_sram_input_read_data_reg_15_ ( .D(
        tb__dut__sram_input_read_data[15]), .CK(clk), .Q(
        MAC_sram_input_read_data[15]) );
  DFF_X1 MAC_sram_input_read_data_reg_16_ ( .D(
        tb__dut__sram_input_read_data[16]), .CK(clk), .Q(
        MAC_sram_input_read_data[16]), .QN(n976) );
  DFF_X1 MAC_sram_input_read_data_reg_17_ ( .D(
        tb__dut__sram_input_read_data[17]), .CK(clk), .Q(
        MAC_sram_input_read_data[17]), .QN(n942) );
  DFF_X1 MAC_sram_input_read_data_reg_18_ ( .D(
        tb__dut__sram_input_read_data[18]), .CK(clk), .Q(
        MAC_sram_input_read_data[18]) );
  DFF_X1 MAC_sram_input_read_data_reg_19_ ( .D(
        tb__dut__sram_input_read_data[19]), .CK(clk), .Q(
        MAC_sram_input_read_data[19]) );
  DFF_X1 MAC_sram_input_read_data_reg_20_ ( .D(
        tb__dut__sram_input_read_data[20]), .CK(clk), .Q(
        MAC_sram_input_read_data[20]) );
  DFF_X1 MAC_sram_input_read_data_reg_21_ ( .D(
        tb__dut__sram_input_read_data[21]), .CK(clk), .Q(
        MAC_sram_input_read_data[21]) );
  DFF_X1 MAC_sram_input_read_data_reg_22_ ( .D(
        tb__dut__sram_input_read_data[22]), .CK(clk), .Q(
        MAC_sram_input_read_data[22]) );
  DFF_X1 MAC_sram_input_read_data_reg_23_ ( .D(
        tb__dut__sram_input_read_data[23]), .CK(clk), .Q(
        MAC_sram_input_read_data[23]) );
  DFF_X1 MAC_sram_input_read_data_reg_24_ ( .D(
        tb__dut__sram_input_read_data[24]), .CK(clk), .Q(
        MAC_sram_input_read_data[24]) );
  DFF_X1 MAC_sram_input_read_data_reg_25_ ( .D(
        tb__dut__sram_input_read_data[25]), .CK(clk), .Q(
        MAC_sram_input_read_data[25]) );
  DFF_X1 MAC_sram_input_read_data_reg_26_ ( .D(
        tb__dut__sram_input_read_data[26]), .CK(clk), .Q(
        MAC_sram_input_read_data[26]) );
  DFF_X1 MAC_sram_input_read_data_reg_27_ ( .D(
        tb__dut__sram_input_read_data[27]), .CK(clk), .Q(
        MAC_sram_input_read_data[27]) );
  DFF_X1 MAC_sram_input_read_data_reg_28_ ( .D(
        tb__dut__sram_input_read_data[28]), .CK(clk), .Q(
        MAC_sram_input_read_data[28]) );
  DFF_X1 MAC_sram_input_read_data_reg_29_ ( .D(
        tb__dut__sram_input_read_data[29]), .CK(clk), .Q(
        MAC_sram_input_read_data[29]) );
  DFF_X1 MAC_sram_input_read_data_reg_30_ ( .D(
        tb__dut__sram_input_read_data[30]), .CK(clk), .Q(
        MAC_sram_input_read_data[30]) );
  DFF_X1 MAC_sram_input_read_data_reg_31_ ( .D(
        tb__dut__sram_input_read_data[31]), .CK(clk), .Q(
        MAC_sram_input_read_data[31]), .QN(n966) );
  DFF_X1 MAC_input_num_rows_reg_0_ ( .D(n530), .CK(clk), .Q(input_num_rows[0]), 
        .QN(n965) );
  DFF_X1 MAC_weight_max_addr_reg_15_ ( .D(n529), .CK(clk), .Q(
        MAC_weight_max_addr[15]), .QN(n3939) );
  DFF_X1 MAC_weight_max_addr_reg_14_ ( .D(n528), .CK(clk), .Q(
        MAC_weight_max_addr[14]), .QN(n3941) );
  DFF_X1 MAC_weight_max_addr_reg_13_ ( .D(n527), .CK(clk), .Q(
        MAC_weight_max_addr[13]), .QN(n3942) );
  DFF_X1 MAC_weight_max_addr_reg_12_ ( .D(n526), .CK(clk), .Q(
        MAC_weight_max_addr[12]), .QN(n3940) );
  DFF_X1 MAC_weight_max_addr_reg_11_ ( .D(n525), .CK(clk), .Q(
        MAC_weight_max_addr[11]), .QN(n3937) );
  DFF_X1 MAC_weight_max_addr_reg_10_ ( .D(n524), .CK(clk), .Q(
        MAC_weight_max_addr[10]), .QN(n3934) );
  DFF_X1 MAC_weight_max_addr_reg_9_ ( .D(n523), .CK(clk), .Q(
        MAC_weight_max_addr[9]), .QN(n3935) );
  DFF_X1 MAC_weight_max_addr_reg_8_ ( .D(n522), .CK(clk), .Q(
        MAC_weight_max_addr[8]), .QN(n3932) );
  DFF_X1 MAC_weight_max_addr_reg_7_ ( .D(n521), .CK(clk), .Q(
        MAC_weight_max_addr[7]), .QN(n3931) );
  DFF_X1 MAC_weight_max_addr_reg_6_ ( .D(n520), .CK(clk), .Q(
        MAC_weight_max_addr[6]), .QN(n3933) );
  DFF_X1 MAC_weight_max_addr_reg_5_ ( .D(n519), .CK(clk), .Q(
        MAC_weight_max_addr[5]), .QN(n3928) );
  DFF_X1 MAC_weight_max_addr_reg_4_ ( .D(n518), .CK(clk), .Q(
        MAC_weight_max_addr[4]), .QN(n3927) );
  DFF_X1 MAC_weight_max_addr_reg_3_ ( .D(n517), .CK(clk), .Q(
        MAC_weight_max_addr[3]), .QN(n3926) );
  DFF_X1 MAC_weight_max_addr_reg_2_ ( .D(n516), .CK(clk), .Q(
        MAC_weight_max_addr[2]), .QN(n3925) );
  DFF_X1 MAC_weight_max_addr_reg_1_ ( .D(n515), .CK(clk), .QN(n4033) );
  DFF_X1 MAC_weight_max_addr_reg_0_ ( .D(n514), .CK(clk), .QN(n4034) );
  DFF_X1 MAC_input_num_cols_reg_15_ ( .D(n513), .CK(clk), .Q(
        input_num_cols[15]), .QN(n967) );
  DFF_X1 MAC_input_num_cols_reg_14_ ( .D(n512), .CK(clk), .Q(
        input_num_cols[14]), .QN(n964) );
  DFF_X1 MAC_input_num_cols_reg_13_ ( .D(n511), .CK(clk), .Q(
        input_num_cols[13]), .QN(n968) );
  DFF_X1 MAC_input_num_cols_reg_12_ ( .D(n510), .CK(clk), .Q(
        input_num_cols[12]), .QN(n963) );
  DFF_X1 MAC_input_num_cols_reg_11_ ( .D(n509), .CK(clk), .Q(
        input_num_cols[11]), .QN(n969) );
  DFF_X1 MAC_input_num_cols_reg_10_ ( .D(n508), .CK(clk), .Q(
        input_num_cols[10]), .QN(n962) );
  DFF_X1 MAC_input_num_cols_reg_9_ ( .D(n507), .CK(clk), .Q(input_num_cols[9]), 
        .QN(n970) );
  DFF_X1 MAC_input_num_cols_reg_8_ ( .D(n506), .CK(clk), .Q(input_num_cols[8]), 
        .QN(n961) );
  DFF_X1 MAC_input_num_cols_reg_7_ ( .D(n505), .CK(clk), .Q(input_num_cols[7]), 
        .QN(n960) );
  DFF_X1 MAC_input_num_cols_reg_6_ ( .D(n504), .CK(clk), .Q(input_num_cols[6]), 
        .QN(n959) );
  DFF_X1 MAC_input_num_cols_reg_5_ ( .D(n503), .CK(clk), .Q(input_num_cols[5]), 
        .QN(n958) );
  DFF_X1 MAC_input_num_cols_reg_4_ ( .D(n502), .CK(clk), .Q(input_num_cols[4]), 
        .QN(n957) );
  DFF_X1 MAC_input_num_cols_reg_3_ ( .D(n501), .CK(clk), .Q(input_num_cols[3]), 
        .QN(n956) );
  DFF_X1 MAC_input_num_cols_reg_2_ ( .D(n500), .CK(clk), .Q(input_num_cols[2]), 
        .QN(n955) );
  DFF_X1 MAC_input_num_cols_reg_1_ ( .D(n499), .CK(clk), .Q(input_num_cols[1]), 
        .QN(n947) );
  DFF_X1 MAC_input_num_cols_reg_0_ ( .D(n498), .CK(clk), .Q(input_num_cols[0]), 
        .QN(n954) );
  DFF_X1 MAC_input_num_rows_reg_15_ ( .D(n497), .CK(clk), .Q(
        input_num_rows[15]), .QN(n986) );
  DFF_X1 MAC_input_num_rows_reg_14_ ( .D(n496), .CK(clk), .Q(
        input_num_rows[14]), .QN(n985) );
  DFF_X1 MAC_input_num_rows_reg_13_ ( .D(n495), .CK(clk), .Q(
        input_num_rows[13]), .QN(n971) );
  DFF_X1 MAC_input_num_rows_reg_12_ ( .D(n494), .CK(clk), .Q(
        input_num_rows[12]), .QN(n984) );
  DFF_X1 MAC_input_num_rows_reg_11_ ( .D(n493), .CK(clk), .Q(
        input_num_rows[11]), .QN(n983) );
  DFF_X1 MAC_input_num_rows_reg_10_ ( .D(n492), .CK(clk), .Q(
        input_num_rows[10]), .QN(n982) );
  DFF_X1 MAC_input_num_rows_reg_9_ ( .D(n491), .CK(clk), .Q(input_num_rows[9]), 
        .QN(n972) );
  DFF_X1 MAC_input_num_rows_reg_8_ ( .D(n490), .CK(clk), .Q(input_num_rows[8]), 
        .QN(n981) );
  DFF_X1 MAC_input_num_rows_reg_7_ ( .D(n489), .CK(clk), .Q(input_num_rows[7]), 
        .QN(n975) );
  DFF_X1 MAC_input_num_rows_reg_6_ ( .D(n488), .CK(clk), .Q(input_num_rows[6]), 
        .QN(n980) );
  DFF_X1 MAC_input_num_rows_reg_5_ ( .D(n487), .CK(clk), .Q(input_num_rows[5]), 
        .QN(n944) );
  DFF_X1 MAC_input_num_rows_reg_4_ ( .D(n486), .CK(clk), .Q(input_num_rows[4]), 
        .QN(n979) );
  DFF_X1 MAC_input_num_rows_reg_3_ ( .D(n485), .CK(clk), .Q(input_num_rows[3]), 
        .QN(n974) );
  DFF_X1 MAC_input_num_rows_reg_2_ ( .D(n484), .CK(clk), .Q(input_num_rows[2]), 
        .QN(n978) );
  DFF_X1 MAC_input_num_rows_reg_1_ ( .D(n483), .CK(clk), .Q(input_num_rows[1]), 
        .QN(n977) );
  AOI22_X1 U689 ( .A1(n4037), .A2(MAC_N129), .B1(MAC_calculation_done), .B2(
        n449), .ZN(n450) );
  FA_X1 intadd_1_U5 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_1_) );
  FA_X1 intadd_1_U4 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_2_) );
  FA_X1 intadd_1_U3 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_3_) );
  FA_X1 intadd_1_U2 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_4_) );
  FA_X1 intadd_2_U6 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n5), .S(intadd_1_B_2_) );
  FA_X1 intadd_2_U5 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_1_) );
  FA_X1 intadd_2_U4 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_2_) );
  FA_X1 intadd_2_U3 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_3_) );
  FA_X1 intadd_2_U2 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_4_) );
  FA_X1 intadd_3_U6 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n5), .S(intadd_2_B_2_) );
  FA_X1 intadd_3_U5 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_2_A_3_) );
  FA_X1 intadd_3_U4 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_2_B_4_) );
  FA_X1 intadd_3_U3 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_3_) );
  FA_X1 intadd_3_U2 ( .A(intadd_3_A_4_), .B(intadd_3_B_4_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_4_) );
  FA_X1 intadd_4_U6 ( .A(intadd_4_A_0_), .B(intadd_4_B_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n5), .S(intadd_4_SUM_0_) );
  FA_X1 intadd_4_U5 ( .A(intadd_4_A_1_), .B(intadd_4_B_1_), .CI(intadd_4_n5), 
        .CO(intadd_4_n4), .S(intadd_4_SUM_1_) );
  FA_X1 intadd_4_U4 ( .A(intadd_4_A_2_), .B(intadd_4_B_2_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_2_) );
  FA_X1 intadd_4_U3 ( .A(intadd_4_A_3_), .B(intadd_4_B_3_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_3_) );
  FA_X1 intadd_4_U2 ( .A(intadd_4_A_4_), .B(intadd_8_n1), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_3_A_4_) );
  FA_X1 intadd_5_U5 ( .A(intadd_5_A_0_), .B(intadd_5_B_0_), .CI(intadd_5_CI), 
        .CO(intadd_5_n4), .S(intadd_1_B_3_) );
  FA_X1 intadd_5_U4 ( .A(intadd_5_A_1_), .B(intadd_5_B_1_), .CI(intadd_5_n4), 
        .CO(intadd_5_n3), .S(intadd_5_SUM_1_) );
  FA_X1 intadd_5_U3 ( .A(intadd_2_SUM_3_), .B(intadd_5_B_2_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(intadd_5_SUM_2_) );
  FA_X1 intadd_5_U2 ( .A(intadd_2_SUM_4_), .B(intadd_5_B_3_), .CI(intadd_5_n2), 
        .CO(intadd_5_n1), .S(intadd_5_SUM_3_) );
  FA_X1 intadd_6_U5 ( .A(intadd_6_A_0_), .B(intadd_6_B_0_), .CI(intadd_6_CI), 
        .CO(intadd_6_n4), .S(intadd_6_SUM_0_) );
  FA_X1 intadd_6_U3 ( .A(intadd_6_A_2_), .B(intadd_1_SUM_1_), .CI(intadd_6_n3), 
        .CO(intadd_6_n2), .S(intadd_6_SUM_2_) );
  FA_X1 intadd_6_U2 ( .A(intadd_6_A_3_), .B(intadd_6_B_3_), .CI(intadd_6_n2), 
        .CO(intadd_6_n1), .S(intadd_6_SUM_3_) );
  FA_X1 intadd_7_U5 ( .A(intadd_7_A_0_), .B(intadd_7_B_0_), .CI(intadd_7_CI), 
        .CO(intadd_7_n4), .S(intadd_7_SUM_0_) );
  FA_X1 intadd_7_U4 ( .A(intadd_7_A_1_), .B(intadd_7_B_1_), .CI(intadd_7_n4), 
        .CO(intadd_7_n3), .S(intadd_7_SUM_1_) );
  FA_X1 intadd_7_U3 ( .A(intadd_2_SUM_1_), .B(intadd_7_B_2_), .CI(intadd_7_n3), 
        .CO(intadd_7_n2), .S(intadd_1_A_3_) );
  FA_X1 intadd_7_U2 ( .A(intadd_5_SUM_1_), .B(intadd_2_SUM_2_), .CI(
        intadd_7_n2), .CO(intadd_7_n1), .S(intadd_1_A_4_) );
  FA_X1 intadd_8_U4 ( .A(intadd_8_A_0_), .B(intadd_8_B_0_), .CI(intadd_8_CI), 
        .CO(intadd_8_n3), .S(intadd_8_SUM_0_) );
  FA_X1 intadd_8_U3 ( .A(intadd_8_A_1_), .B(intadd_8_B_1_), .CI(intadd_8_n3), 
        .CO(intadd_8_n2), .S(intadd_8_SUM_1_) );
  FA_X1 intadd_8_U2 ( .A(intadd_8_A_2_), .B(intadd_8_B_2_), .CI(intadd_8_n2), 
        .CO(intadd_8_n1), .S(intadd_3_A_3_) );
  FA_X1 intadd_9_U4 ( .A(intadd_9_A_0_), .B(intadd_9_B_0_), .CI(intadd_9_CI), 
        .CO(intadd_9_n3), .S(intadd_9_SUM_0_) );
  FA_X1 intadd_9_U3 ( .A(n4035), .B(intadd_9_B_1_), .CI(intadd_9_n3), .CO(
        intadd_9_n2), .S(intadd_9_SUM_1_) );
  FA_X1 intadd_9_U2 ( .A(intadd_6_SUM_1_), .B(intadd_9_B_2_), .CI(intadd_9_n2), 
        .CO(intadd_9_n1), .S(intadd_9_SUM_2_) );
  FA_X1 intadd_10_U4 ( .A(n2952), .B(intadd_10_B_0_), .CI(intadd_10_CI), .CO(
        intadd_10_n3), .S(intadd_10_SUM_0_) );
  FA_X1 intadd_10_U3 ( .A(intadd_6_SUM_0_), .B(intadd_10_B_1_), .CI(
        intadd_10_n3), .CO(intadd_10_n2), .S(intadd_10_SUM_1_) );
  FA_X1 intadd_11_U4 ( .A(intadd_11_A_0_), .B(intadd_11_B_0_), .CI(
        intadd_11_CI), .CO(intadd_11_n3), .S(intadd_9_B_2_) );
  FA_X1 intadd_11_U3 ( .A(intadd_11_A_1_), .B(intadd_7_SUM_0_), .CI(
        intadd_11_n3), .CO(intadd_11_n2), .S(intadd_6_A_2_) );
  FA_X1 intadd_11_U2 ( .A(intadd_1_SUM_2_), .B(intadd_7_SUM_1_), .CI(
        intadd_11_n2), .CO(intadd_11_n1), .S(intadd_6_A_3_) );
  FA_X1 intadd_12_U4 ( .A(intadd_12_A_0_), .B(intadd_12_B_0_), .CI(
        intadd_12_CI), .CO(intadd_12_n3), .S(intadd_8_A_1_) );
  FA_X1 intadd_12_U3 ( .A(intadd_12_A_1_), .B(intadd_12_B_1_), .CI(
        intadd_12_n3), .CO(intadd_12_n2), .S(intadd_4_B_3_) );
  FA_X1 intadd_12_U2 ( .A(intadd_12_A_2_), .B(intadd_12_B_2_), .CI(
        intadd_12_n2), .CO(intadd_12_n1), .S(intadd_12_SUM_2_) );
  FA_X1 intadd_13_U4 ( .A(intadd_13_A_0_), .B(intadd_13_B_0_), .CI(
        intadd_13_CI), .CO(intadd_13_n3), .S(intadd_4_A_2_) );
  FA_X1 intadd_13_U3 ( .A(intadd_13_A_1_), .B(intadd_13_B_1_), .CI(
        intadd_13_n3), .CO(intadd_13_n2), .S(intadd_4_A_3_) );
  FA_X1 intadd_13_U2 ( .A(intadd_13_A_2_), .B(intadd_13_B_2_), .CI(
        intadd_13_n2), .CO(intadd_13_n1), .S(intadd_4_A_4_) );
  FA_X1 intadd_0_U7 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n6), .S(intadd_5_CI) );
  FA_X1 intadd_0_U6 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_5_B_1_) );
  FA_X1 intadd_0_U5 ( .A(intadd_4_SUM_1_), .B(intadd_0_B_2_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_5_B_2_) );
  FA_X1 intadd_0_U4 ( .A(intadd_4_SUM_2_), .B(intadd_8_SUM_1_), .CI(
        intadd_0_n4), .CO(intadd_0_n3), .S(intadd_2_A_4_) );
  FA_X1 intadd_0_U3 ( .A(intadd_4_SUM_3_), .B(intadd_3_SUM_3_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(intadd_0_SUM_4_) );
  FA_X1 intadd_0_U2 ( .A(intadd_3_SUM_4_), .B(intadd_0_B_5_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_5_) );
  DFF_X2 MAC_sram_result_write_address_reg_11_ ( .D(n674), .CK(clk), .Q(
        dut__tb__sram_result_write_address[11]), .QN(n3956) );
  DFF_X2 MAC_sram_input_read_address_reg_7_ ( .D(n568), .CK(clk), .Q(
        dut__tb__sram_input_read_address[7]), .QN(n3893) );
  DFF_X2 MAC_sram_weight_read_address_reg_0_ ( .D(n591), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[0]), .QN(n3884) );
  DFF_X2 MAC_sram_result_write_address_reg_13_ ( .D(n672), .CK(clk), .Q(
        dut__tb__sram_result_write_address[13]), .QN(n3959) );
  DFF_X2 MAC_sram_input_read_address_reg_0_ ( .D(n575), .CK(clk), .Q(
        dut__tb__sram_input_read_address[0]), .QN(n3984) );
  DFF_X2 MAC_sram_result_write_address_reg_3_ ( .D(n682), .CK(clk), .Q(
        dut__tb__sram_result_write_address[3]), .QN(n3921) );
  DFF_X2 MAC_sram_input_read_address_reg_5_ ( .D(n570), .CK(clk), .Q(
        dut__tb__sram_input_read_address[5]), .QN(n3894) );
  DFF_X2 MAC_sram_input_read_address_reg_13_ ( .D(n576), .CK(clk), .Q(
        dut__tb__sram_input_read_address[13]), .QN(n3888) );
  DFF_X2 MAC_sram_result_write_address_reg_9_ ( .D(n676), .CK(clk), .Q(
        dut__tb__sram_result_write_address[9]), .QN(n3951) );
  DFF_X2 MAC_sram_input_read_address_reg_11_ ( .D(n564), .CK(clk), .Q(
        dut__tb__sram_input_read_address[11]), .QN(n3899) );
  DFF_X2 MAC_sram_result_write_address_reg_5_ ( .D(n680), .CK(clk), .Q(
        dut__tb__sram_result_write_address[5]), .QN(n3930) );
  DFF_X2 MAC_sram_input_read_address_reg_9_ ( .D(n566), .CK(clk), .Q(
        dut__tb__sram_input_read_address[9]), .QN(n3892) );
  DFF_X2 MAC_sram_result_write_address_reg_2_ ( .D(n683), .CK(clk), .Q(
        dut__tb__sram_result_write_address[2]), .QN(n3920) );
  DFF_X2 MAC_sram_result_write_address_reg_7_ ( .D(n678), .CK(clk), .Q(
        dut__tb__sram_result_write_address[7]), .QN(n3943) );
  DFF_X2 MAC_sram_result_write_address_reg_14_ ( .D(n671), .CK(clk), .Q(
        dut__tb__sram_result_write_address[14]), .QN(n3980) );
  DFF_X2 MAC_sram_result_write_address_reg_6_ ( .D(n679), .CK(clk), .Q(
        dut__tb__sram_result_write_address[6]), .QN(n3936) );
  DFF_X2 MAC_sram_input_read_address_reg_3_ ( .D(n572), .CK(clk), .Q(
        dut__tb__sram_input_read_address[3]), .QN(n3887) );
  DFF_X2 MAC_sram_result_write_address_reg_0_ ( .D(n685), .CK(clk), .Q(
        dut__tb__sram_result_write_address[0]), .QN(n3881) );
  DFF_X2 MAC_sram_result_write_address_reg_15_ ( .D(n670), .CK(clk), .Q(
        dut__tb__sram_result_write_address[15]), .QN(n3986) );
  DFF_X2 MAC_sram_result_write_address_reg_12_ ( .D(n673), .CK(clk), .Q(
        dut__tb__sram_result_write_address[12]), .QN(n3955) );
  DFF_X2 MAC_sram_result_write_address_reg_10_ ( .D(n675), .CK(clk), .Q(
        dut__tb__sram_result_write_address[10]), .QN(n3952) );
  DFF_X2 MAC_sram_result_write_address_reg_4_ ( .D(n681), .CK(clk), .Q(
        dut__tb__sram_result_write_address[4]), .QN(n3922) );
  DFF_X2 MAC_sram_weight_read_address_reg_8_ ( .D(n583), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[8]), .QN(n3967) );
  DFF_X2 MAC_sram_weight_read_address_reg_6_ ( .D(n585), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[6]), .QN(n3963) );
  DFF_X2 MAC_sram_weight_read_address_reg_2_ ( .D(n589), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[2]), .QN(n3965) );
  DFF_X2 MAC_sram_input_read_address_reg_8_ ( .D(n567), .CK(clk), .Q(
        dut__tb__sram_input_read_address[8]), .QN(n3891) );
  DFF_X2 MAC_sram_input_read_address_reg_6_ ( .D(n569), .CK(clk), .Q(
        dut__tb__sram_input_read_address[6]), .QN(n3890) );
  DFF_X2 MAC_sram_result_write_address_reg_8_ ( .D(n677), .CK(clk), .Q(
        dut__tb__sram_result_write_address[8]), .QN(n3948) );
  DFF_X2 MAC_sram_result_write_data_reg_0_ ( .D(n451), .CK(clk), .Q(
        dut__tb__sram_result_write_data[0]) );
  DFF_X2 MAC_sram_result_write_data_reg_29_ ( .D(n454), .CK(clk), .Q(
        dut__tb__sram_result_write_data[29]) );
  DFF_X2 MAC_sram_result_write_data_reg_28_ ( .D(n455), .CK(clk), .Q(
        dut__tb__sram_result_write_data[28]) );
  DFF_X2 MAC_sram_result_write_data_reg_27_ ( .D(n456), .CK(clk), .Q(
        dut__tb__sram_result_write_data[27]) );
  DFF_X2 MAC_sram_result_write_data_reg_26_ ( .D(n457), .CK(clk), .Q(
        dut__tb__sram_result_write_data[26]) );
  DFF_X2 MAC_sram_result_write_data_reg_25_ ( .D(n458), .CK(clk), .Q(
        dut__tb__sram_result_write_data[25]) );
  DFF_X2 MAC_sram_result_write_data_reg_24_ ( .D(n459), .CK(clk), .Q(
        dut__tb__sram_result_write_data[24]) );
  DFF_X2 MAC_sram_result_write_data_reg_23_ ( .D(n460), .CK(clk), .Q(
        dut__tb__sram_result_write_data[23]) );
  DFF_X2 MAC_sram_result_write_data_reg_22_ ( .D(n461), .CK(clk), .Q(
        dut__tb__sram_result_write_data[22]) );
  DFF_X2 MAC_sram_result_write_data_reg_21_ ( .D(n462), .CK(clk), .Q(
        dut__tb__sram_result_write_data[21]) );
  DFF_X2 MAC_sram_result_write_data_reg_20_ ( .D(n463), .CK(clk), .Q(
        dut__tb__sram_result_write_data[20]) );
  DFF_X2 MAC_sram_result_write_data_reg_19_ ( .D(n464), .CK(clk), .Q(
        dut__tb__sram_result_write_data[19]) );
  DFF_X2 MAC_sram_result_write_data_reg_18_ ( .D(n465), .CK(clk), .Q(
        dut__tb__sram_result_write_data[18]) );
  DFF_X2 MAC_sram_result_write_data_reg_17_ ( .D(n466), .CK(clk), .Q(
        dut__tb__sram_result_write_data[17]) );
  DFF_X2 MAC_sram_result_write_data_reg_16_ ( .D(n467), .CK(clk), .Q(
        dut__tb__sram_result_write_data[16]) );
  DFF_X2 MAC_sram_result_write_data_reg_15_ ( .D(n468), .CK(clk), .Q(
        dut__tb__sram_result_write_data[15]) );
  DFF_X2 MAC_sram_result_write_data_reg_14_ ( .D(n469), .CK(clk), .Q(
        dut__tb__sram_result_write_data[14]) );
  DFF_X2 MAC_sram_result_write_data_reg_13_ ( .D(n470), .CK(clk), .Q(
        dut__tb__sram_result_write_data[13]) );
  DFF_X2 MAC_sram_result_write_data_reg_12_ ( .D(n471), .CK(clk), .Q(
        dut__tb__sram_result_write_data[12]) );
  DFF_X2 MAC_sram_result_write_data_reg_11_ ( .D(n472), .CK(clk), .Q(
        dut__tb__sram_result_write_data[11]) );
  DFF_X2 MAC_sram_result_write_data_reg_10_ ( .D(n473), .CK(clk), .Q(
        dut__tb__sram_result_write_data[10]) );
  DFF_X2 MAC_sram_result_write_data_reg_9_ ( .D(n474), .CK(clk), .Q(
        dut__tb__sram_result_write_data[9]) );
  DFF_X2 MAC_sram_result_write_data_reg_8_ ( .D(n475), .CK(clk), .Q(
        dut__tb__sram_result_write_data[8]) );
  DFF_X2 MAC_sram_result_write_data_reg_7_ ( .D(n476), .CK(clk), .Q(
        dut__tb__sram_result_write_data[7]) );
  DFF_X2 MAC_sram_result_write_data_reg_6_ ( .D(n477), .CK(clk), .Q(
        dut__tb__sram_result_write_data[6]) );
  DFF_X2 MAC_sram_result_write_data_reg_5_ ( .D(n478), .CK(clk), .Q(
        dut__tb__sram_result_write_data[5]) );
  DFF_X2 MAC_sram_result_write_data_reg_4_ ( .D(n479), .CK(clk), .Q(
        dut__tb__sram_result_write_data[4]) );
  DFF_X2 MAC_sram_result_write_data_reg_3_ ( .D(n480), .CK(clk), .Q(
        dut__tb__sram_result_write_data[3]) );
  DFF_X2 MAC_sram_result_write_data_reg_2_ ( .D(n481), .CK(clk), .Q(
        dut__tb__sram_result_write_data[2]) );
  DFF_X2 MAC_sram_result_write_data_reg_1_ ( .D(n482), .CK(clk), .Q(
        dut__tb__sram_result_write_data[1]) );
  DFF_X2 MAC_sram_result_write_data_reg_31_ ( .D(n452), .CK(clk), .Q(
        dut__tb__sram_result_write_data[31]) );
  DFF_X2 MAC_sram_result_write_data_reg_30_ ( .D(n453), .CK(clk), .Q(
        dut__tb__sram_result_write_data[30]) );
  DFF_X2 MAC_sram_weight_read_address_reg_14_ ( .D(n577), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[14]), .QN(n3977) );
  DFF_X2 MAC_sram_weight_read_address_reg_12_ ( .D(n579), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[12]), .QN(n3974) );
  DFF_X2 MAC_sram_weight_read_address_reg_10_ ( .D(n581), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[10]), .QN(n3964) );
  DFF_X2 MAC_sram_weight_read_address_reg_4_ ( .D(n587), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[4]), .QN(n3972) );
  DFF_X2 MAC_sram_input_read_address_reg_12_ ( .D(n563), .CK(clk), .Q(
        dut__tb__sram_input_read_address[12]), .QN(n3886) );
  DFF_X2 MAC_sram_input_read_address_reg_15_ ( .D(n702), .CK(clk), .Q(
        dut__tb__sram_input_read_address[15]), .QN(n3895) );
  DFF_X2 scratchpad_write_address_reg_15_ ( .D(n623), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[15]) );
  DFF_X2 scratchpad_write_address_reg_14_ ( .D(n624), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[14]) );
  DFF_X2 scratchpad_write_address_reg_13_ ( .D(n625), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[13]) );
  DFF_X2 scratchpad_write_address_reg_12_ ( .D(n626), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[12]) );
  DFF_X2 scratchpad_write_address_reg_11_ ( .D(n627), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[11]) );
  DFF_X2 scratchpad_write_address_reg_10_ ( .D(n628), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[10]) );
  DFF_X2 scratchpad_write_address_reg_9_ ( .D(n629), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[9]) );
  DFF_X2 scratchpad_write_address_reg_8_ ( .D(n630), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[8]) );
  DFF_X2 scratchpad_write_address_reg_7_ ( .D(n631), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[7]) );
  DFF_X2 scratchpad_write_address_reg_6_ ( .D(n632), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[6]) );
  DFF_X2 scratchpad_write_address_reg_5_ ( .D(n633), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[5]) );
  DFF_X2 scratchpad_write_address_reg_4_ ( .D(n634), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[4]) );
  DFF_X2 scratchpad_write_address_reg_3_ ( .D(n635), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[3]) );
  DFF_X2 scratchpad_write_address_reg_2_ ( .D(n636), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[2]) );
  DFF_X2 scratchpad_write_address_reg_1_ ( .D(n637), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[1]) );
  DFF_X2 scratchpad_write_address_reg_0_ ( .D(n638), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_address[0]) );
  DFF_X2 scratchpad_write_enable_reg ( .D(N117), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_enable) );
  DFF_X2 MAC_sram_input_read_address_reg_2_ ( .D(n573), .CK(clk), .Q(
        dut__tb__sram_input_read_address[2]), .QN(n3898) );
  DFF_X2 MAC_sram_input_read_address_reg_1_ ( .D(n574), .CK(clk), .Q(
        dut__tb__sram_input_read_address[1]), .QN(n3897) );
  DFF_X2 MAC_sram_input_read_address_reg_4_ ( .D(n571), .CK(clk), .Q(
        dut__tb__sram_input_read_address[4]), .QN(n3900) );
  DFF_X2 MAC_sram_input_read_address_reg_10_ ( .D(n565), .CK(clk), .Q(
        dut__tb__sram_input_read_address[10]), .QN(n3889) );
  DFF_X2 MAC_sram_input_read_address_reg_14_ ( .D(n686), .CK(clk), .Q(
        dut__tb__sram_input_read_address[14]), .QN(n3896) );
  DFF_X2 MAC_sram_result_write_address_reg_1_ ( .D(n684), .CK(clk), .Q(
        dut__tb__sram_result_write_address[1]), .QN(n3917) );
  DFF_X2 MAC_sram_weight_read_address_reg_1_ ( .D(n590), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[1]), .QN(n3962) );
  DFF_X2 MAC_sram_weight_read_address_reg_15_ ( .D(n704), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[15]), .QN(n3982) );
  DFF_X2 MAC_sram_weight_read_address_reg_3_ ( .D(n588), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[3]), .QN(n3970) );
  DFF_X2 MAC_sram_weight_read_address_reg_5_ ( .D(n586), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[5]), .QN(n3971) );
  DFF_X2 MAC_sram_weight_read_address_reg_7_ ( .D(n584), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[7]), .QN(n3968) );
  DFF_X2 MAC_sram_weight_read_address_reg_9_ ( .D(n582), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[9]), .QN(n3969) );
  DFF_X2 MAC_sram_weight_read_address_reg_11_ ( .D(n580), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[11]), .QN(n3966) );
  DFF_X2 MAC_sram_weight_read_address_reg_13_ ( .D(n578), .CK(clk), .Q(
        dut__tb__sram_weight_read_address[13]), .QN(n3975) );
  DFF_X2 scratchpad_write_data_reg_0_ ( .D(n562), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[0]) );
  DFF_X2 scratchpad_write_data_reg_1_ ( .D(n561), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[1]) );
  DFF_X2 scratchpad_write_data_reg_2_ ( .D(n560), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[2]) );
  DFF_X2 scratchpad_write_data_reg_3_ ( .D(n559), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[3]) );
  DFF_X2 scratchpad_write_data_reg_4_ ( .D(n558), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[4]) );
  DFF_X2 scratchpad_write_data_reg_5_ ( .D(n557), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[5]) );
  DFF_X2 scratchpad_write_data_reg_6_ ( .D(n556), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[6]) );
  DFF_X2 scratchpad_write_data_reg_7_ ( .D(n555), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[7]) );
  DFF_X2 scratchpad_write_data_reg_8_ ( .D(n554), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[8]) );
  DFF_X2 scratchpad_write_data_reg_9_ ( .D(n553), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[9]) );
  DFF_X2 scratchpad_write_data_reg_10_ ( .D(n552), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[10]) );
  DFF_X2 scratchpad_write_data_reg_11_ ( .D(n551), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[11]) );
  DFF_X2 scratchpad_write_data_reg_12_ ( .D(n550), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[12]) );
  DFF_X2 scratchpad_write_data_reg_13_ ( .D(n549), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[13]) );
  DFF_X2 scratchpad_write_data_reg_14_ ( .D(n548), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[14]) );
  DFF_X2 scratchpad_write_data_reg_15_ ( .D(n547), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[15]) );
  DFF_X2 scratchpad_write_data_reg_16_ ( .D(n546), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[16]) );
  DFF_X2 scratchpad_write_data_reg_17_ ( .D(n545), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[17]) );
  DFF_X2 scratchpad_write_data_reg_18_ ( .D(n544), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[18]) );
  DFF_X2 scratchpad_write_data_reg_19_ ( .D(n543), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[19]) );
  DFF_X2 scratchpad_write_data_reg_20_ ( .D(n542), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[20]) );
  DFF_X2 scratchpad_write_data_reg_21_ ( .D(n541), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[21]) );
  DFF_X2 scratchpad_write_data_reg_22_ ( .D(n540), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[22]) );
  DFF_X2 scratchpad_write_data_reg_23_ ( .D(n539), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[23]) );
  DFF_X2 scratchpad_write_data_reg_24_ ( .D(n538), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[24]) );
  DFF_X2 scratchpad_write_data_reg_25_ ( .D(n537), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[25]) );
  DFF_X2 scratchpad_write_data_reg_26_ ( .D(n536), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[26]) );
  DFF_X2 scratchpad_write_data_reg_27_ ( .D(n535), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[27]) );
  DFF_X2 scratchpad_write_data_reg_28_ ( .D(n534), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[28]) );
  DFF_X2 scratchpad_write_data_reg_29_ ( .D(n533), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[29]) );
  DFF_X2 scratchpad_write_data_reg_30_ ( .D(n532), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[30]) );
  DFF_X2 scratchpad_write_data_reg_31_ ( .D(n531), .CK(clk), .Q(
        dut__tb__sram_scratchpad_write_data[31]) );
  NOR2_X2 U691 ( .A1(n1142), .A2(n1141), .ZN(n1243) );
  NOR2_X2 U692 ( .A1(n1038), .A2(n1037), .ZN(n1872) );
  INV_X4 U693 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[0]) );
  INV_X4 U694 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[1]) );
  INV_X4 U695 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[2]) );
  INV_X4 U696 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[3]) );
  INV_X4 U697 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[4]) );
  INV_X4 U698 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[5]) );
  INV_X4 U699 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[6]) );
  INV_X4 U700 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[7]) );
  INV_X4 U701 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[8]) );
  INV_X4 U702 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[9]) );
  INV_X4 U703 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[10]) );
  INV_X4 U704 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[11]) );
  INV_X4 U705 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[12]) );
  INV_X4 U706 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[13]) );
  INV_X4 U707 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[14]) );
  INV_X4 U708 ( .A(1'b1), .ZN(dut__tb__sram_result_read_address[15]) );
  INV_X4 U709 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[0]) );
  INV_X4 U710 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[1]) );
  INV_X4 U711 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[2]) );
  INV_X4 U712 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[3]) );
  INV_X4 U713 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[4]) );
  INV_X4 U714 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[5]) );
  INV_X4 U715 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[6]) );
  INV_X4 U716 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[7]) );
  INV_X4 U717 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[8]) );
  INV_X4 U718 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[9]) );
  INV_X4 U719 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[10]) );
  INV_X4 U720 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[11]) );
  INV_X4 U721 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[12]) );
  INV_X4 U722 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[13]) );
  INV_X4 U723 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[14]) );
  INV_X4 U724 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[15]) );
  INV_X4 U725 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[16]) );
  INV_X4 U726 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[17]) );
  INV_X4 U727 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[18]) );
  INV_X4 U728 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[19]) );
  INV_X4 U729 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[20]) );
  INV_X4 U730 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[21]) );
  INV_X4 U731 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[22]) );
  INV_X4 U732 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[23]) );
  INV_X4 U733 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[24]) );
  INV_X4 U734 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[25]) );
  INV_X4 U735 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[26]) );
  INV_X4 U736 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[27]) );
  INV_X4 U737 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[28]) );
  INV_X4 U738 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[29]) );
  INV_X4 U739 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[30]) );
  INV_X4 U740 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_data[31]) );
  INV_X4 U741 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[0]) );
  INV_X4 U742 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[1]) );
  INV_X4 U743 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[2]) );
  INV_X4 U744 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[3]) );
  INV_X4 U745 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[4]) );
  INV_X4 U746 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[5]) );
  INV_X4 U747 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[6]) );
  INV_X4 U748 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[7]) );
  INV_X4 U749 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[8]) );
  INV_X4 U750 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[9]) );
  INV_X4 U751 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[10]) );
  INV_X4 U752 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[11]) );
  INV_X4 U753 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[12]) );
  INV_X4 U754 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[13]) );
  INV_X4 U755 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[14]) );
  INV_X4 U756 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_address[15]) );
  INV_X4 U757 ( .A(1'b1), .ZN(dut__tb__sram_weight_write_enable) );
  INV_X4 U758 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[0]) );
  INV_X4 U759 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[1]) );
  INV_X4 U760 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[2]) );
  INV_X4 U761 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[3]) );
  INV_X1 U762 ( .A(n449), .ZN(n3795) );
  NAND2_X1 U763 ( .A1(n3819), .A2(n3879), .ZN(n449) );
  NOR2_X2 U764 ( .A1(n2123), .A2(dut_ready), .ZN(n3676) );
  INV_X1 U765 ( .A(n450), .ZN(MAC_calculation_done) );
  OAI21_X2 U766 ( .B1(n3521), .B2(n3520), .A(n3519), .ZN(intadd_5_B_3_) );
  OAI21_X2 U767 ( .B1(intadd_1_n1), .B2(intadd_5_SUM_2_), .A(intadd_7_n1), 
        .ZN(n3519) );
  XNOR2_X2 U768 ( .A(n2956), .B(n2964), .ZN(intadd_6_SUM_1_) );
  AOI21_X2 U769 ( .B1(n2951), .B2(n2950), .A(n4035), .ZN(n2952) );
  INV_X4 U770 ( .A(n2949), .ZN(n4035) );
  OR2_X2 U771 ( .A1(n3814), .A2(n3977), .ZN(n3041) );
  INV_X2 U772 ( .A(n3676), .ZN(n3815) );
  OR2_X1 U773 ( .A1(n3814), .A2(n3982), .ZN(n3309) );
  AND3_X2 U774 ( .A1(n3034), .A2(n3960), .A3(n2122), .ZN(n2123) );
  INV_X2 U775 ( .A(n3032), .ZN(n3034) );
  OAI21_X1 U776 ( .B1(n3514), .B2(n3513), .A(n3512), .ZN(intadd_6_B_3_) );
  OAI21_X1 U777 ( .B1(n3545), .B2(intadd_6_SUM_2_), .A(intadd_9_n1), .ZN(n3512) );
  OR2_X1 U778 ( .A1(n1742), .A2(n1741), .ZN(n1561) );
  INV_X1 U779 ( .A(intadd_10_SUM_1_), .ZN(n3507) );
  INV_X2 U780 ( .A(n3502), .ZN(n3553) );
  OR2_X1 U781 ( .A1(n2205), .A2(n2276), .ZN(n1446) );
  INV_X2 U782 ( .A(n3794), .ZN(n3819) );
  OR2_X2 U783 ( .A1(n2220), .A2(n2222), .ZN(n1044) );
  OR2_X1 U784 ( .A1(n2200), .A2(n2220), .ZN(n1167) );
  INV_X8 U785 ( .A(n3868), .ZN(n709) );
  INV_X8 U786 ( .A(n3646), .ZN(n710) );
  OR3_X1 U787 ( .A1(n3479), .A2(n3857), .A3(n3852), .ZN(n2949) );
  OR2_X4 U788 ( .A1(n961), .A2(n980), .ZN(n2352) );
  OR2_X2 U789 ( .A1(n968), .A2(n977), .ZN(n2376) );
  OR2_X2 U790 ( .A1(n963), .A2(n977), .ZN(n2365) );
  OR2_X2 U791 ( .A1(n959), .A2(n975), .ZN(n2366) );
  BUF_X2 U792 ( .A(MAC_sram_input_read_data[17]), .Z(n2279) );
  OR2_X2 U793 ( .A1(n970), .A2(n979), .ZN(n2363) );
  OR2_X2 U794 ( .A1(n960), .A2(n980), .ZN(n2364) );
  OR2_X1 U795 ( .A1(n947), .A2(n985), .ZN(n2447) );
  BUF_X2 U796 ( .A(MAC_sram_input_read_data[26]), .Z(n2219) );
  OR2_X2 U797 ( .A1(n970), .A2(n944), .ZN(n2353) );
  BUF_X2 U798 ( .A(MAC_sram_input_read_data[20]), .Z(n1966) );
  OR2_X1 U799 ( .A1(n955), .A2(n971), .ZN(n2433) );
  OR2_X2 U800 ( .A1(n960), .A2(n975), .ZN(n2375) );
  OR2_X2 U801 ( .A1(n947), .A2(n972), .ZN(n2320) );
  OR2_X2 U802 ( .A1(n955), .A2(n981), .ZN(n2319) );
  OR2_X2 U803 ( .A1(n947), .A2(n982), .ZN(n2323) );
  OR2_X2 U804 ( .A1(n955), .A2(n972), .ZN(n2322) );
  OR2_X2 U805 ( .A1(n962), .A2(n977), .ZN(n2321) );
  OR2_X2 U806 ( .A1(n958), .A2(n980), .ZN(n2325) );
  OR2_X2 U807 ( .A1(n957), .A2(n975), .ZN(n2324) );
  INV_X2 U808 ( .A(n3876), .ZN(n2263) );
  OR2_X2 U809 ( .A1(n961), .A2(n974), .ZN(n2329) );
  OR2_X2 U810 ( .A1(n970), .A2(n978), .ZN(n2328) );
  OR2_X1 U811 ( .A1(n954), .A2(n977), .ZN(n2666) );
  OR2_X1 U812 ( .A1(n965), .A2(n947), .ZN(n2665) );
  OR2_X1 U813 ( .A1(n947), .A2(n977), .ZN(n2664) );
  OR2_X1 U814 ( .A1(n965), .A2(n955), .ZN(n2667) );
  OR2_X1 U815 ( .A1(n955), .A2(n977), .ZN(n2653) );
  OR2_X1 U816 ( .A1(n947), .A2(n978), .ZN(n2652) );
  INV_X2 U817 ( .A(n948), .ZN(n2265) );
  OR2_X1 U818 ( .A1(n947), .A2(n974), .ZN(n2623) );
  OR2_X2 U819 ( .A1(n957), .A2(n980), .ZN(n2339) );
  OR2_X2 U820 ( .A1(n961), .A2(n978), .ZN(n2338) );
  OR2_X4 U821 ( .A1(n970), .A2(n977), .ZN(n2337) );
  OR2_X2 U822 ( .A1(n956), .A2(n975), .ZN(n2341) );
  OR2_X2 U823 ( .A1(n947), .A2(n975), .ZN(n2401) );
  OR2_X1 U824 ( .A1(n955), .A2(n980), .ZN(n2400) );
  OR2_X2 U825 ( .A1(n961), .A2(n977), .ZN(n2399) );
  OR2_X2 U826 ( .A1(n965), .A2(n970), .ZN(n2398) );
  OR2_X2 U827 ( .A1(n956), .A2(n980), .ZN(n2397) );
  BUF_X2 U828 ( .A(MAC_sram_weight_read_data[13]), .Z(n2283) );
  OR2_X2 U829 ( .A1(n959), .A2(n977), .ZN(n2549) );
  OR2_X2 U830 ( .A1(n960), .A2(n977), .ZN(n2522) );
  OR2_X1 U831 ( .A1(n954), .A2(n975), .ZN(n2521) );
  INV_X2 U832 ( .A(n953), .ZN(n2261) );
  OR2_X1 U833 ( .A1(n947), .A2(n980), .ZN(n2520) );
  OR2_X2 U834 ( .A1(n947), .A2(n981), .ZN(n2331) );
  OR2_X2 U835 ( .A1(n955), .A2(n975), .ZN(n2330) );
  OR2_X2 U836 ( .A1(n965), .A2(n961), .ZN(n2519) );
  OR2_X1 U837 ( .A1(n954), .A2(n980), .ZN(n2571) );
  OR2_X1 U838 ( .A1(n947), .A2(n944), .ZN(n2570) );
  INV_X2 U839 ( .A(n950), .ZN(n2280) );
  OR2_X2 U840 ( .A1(n961), .A2(n979), .ZN(n2347) );
  OR2_X2 U841 ( .A1(n959), .A2(n980), .ZN(n2346) );
  BUF_X2 U842 ( .A(MAC_sram_input_read_data[23]), .Z(n2271) );
  OR2_X2 U843 ( .A1(n970), .A2(n974), .ZN(n2345) );
  INV_X2 U844 ( .A(n3878), .ZN(n2281) );
  BUF_X2 U845 ( .A(MAC_sram_weight_read_data[14]), .Z(n2272) );
  OR2_X2 U846 ( .A1(n958), .A2(n975), .ZN(n2350) );
  OR2_X1 U847 ( .A1(n958), .A2(n977), .ZN(n2580) );
  OR2_X2 U848 ( .A1(n947), .A2(n983), .ZN(n2327) );
  OR2_X1 U849 ( .A1(n957), .A2(n977), .ZN(n2624) );
  OR2_X2 U850 ( .A1(n955), .A2(n982), .ZN(n2326) );
  OR2_X1 U851 ( .A1(n947), .A2(n979), .ZN(n2581) );
  OR2_X2 U852 ( .A1(n947), .A2(n984), .ZN(n2344) );
  OR2_X2 U853 ( .A1(n955), .A2(n983), .ZN(n2343) );
  OR2_X2 U854 ( .A1(n969), .A2(n977), .ZN(n2351) );
  OR2_X1 U855 ( .A1(n955), .A2(n978), .ZN(n2639) );
  OR2_X1 U856 ( .A1(n956), .A2(n977), .ZN(n2638) );
  BUF_X2 U857 ( .A(tb__dut__sram_weight_read_data[0]), .Z(n3484) );
  BUF_X2 U858 ( .A(tb__dut__sram_weight_read_data[1]), .Z(n3490) );
  BUF_X2 U859 ( .A(reset_n), .Z(n941) );
  INV_X2 U860 ( .A(1'b1), .ZN(dut__tb__sram_input_write_enable) );
  INV_X2 U861 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[15]) );
  INV_X2 U862 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[14]) );
  INV_X2 U863 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[13]) );
  INV_X2 U864 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[12]) );
  INV_X2 U865 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[11]) );
  INV_X2 U866 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[10]) );
  INV_X2 U867 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[9]) );
  INV_X2 U868 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[8]) );
  INV_X2 U869 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[7]) );
  INV_X2 U870 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[6]) );
  INV_X2 U871 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[5]) );
  INV_X2 U872 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[4]) );
  INV_X2 U873 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[3]) );
  INV_X2 U874 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[2]) );
  INV_X2 U875 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[1]) );
  INV_X2 U876 ( .A(1'b1), .ZN(dut__tb__sram_input_write_address[0]) );
  INV_X2 U877 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[31]) );
  INV_X2 U878 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[30]) );
  INV_X2 U879 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[29]) );
  INV_X2 U880 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[28]) );
  INV_X2 U881 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[27]) );
  INV_X2 U882 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[26]) );
  INV_X2 U883 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[25]) );
  INV_X2 U884 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[24]) );
  INV_X2 U885 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[23]) );
  INV_X2 U886 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[22]) );
  INV_X2 U887 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[21]) );
  INV_X2 U888 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[20]) );
  INV_X2 U889 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[19]) );
  INV_X2 U890 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[18]) );
  INV_X2 U891 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[17]) );
  INV_X2 U892 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[16]) );
  INV_X2 U893 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[15]) );
  INV_X2 U894 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[14]) );
  INV_X2 U895 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[13]) );
  INV_X2 U896 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[12]) );
  INV_X2 U897 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[11]) );
  INV_X2 U898 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[10]) );
  INV_X2 U899 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[9]) );
  INV_X2 U900 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[8]) );
  INV_X2 U901 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[7]) );
  INV_X2 U902 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[6]) );
  INV_X2 U903 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[5]) );
  INV_X2 U904 ( .A(1'b1), .ZN(dut__tb__sram_input_write_data[4]) );
  INV_X1 U1019 ( .A(n1170), .ZN(n998) );
  INV_X1 U1020 ( .A(n1208), .ZN(n1346) );
  INV_X1 U1021 ( .A(n1207), .ZN(n1347) );
  AOI222_X1 U1022 ( .A1(n2266), .A2(n2220), .B1(n2264), .B2(n2200), .C1(n2262), 
        .C2(n2202), .ZN(n1922) );
  INV_X1 U1023 ( .A(n1240), .ZN(n1135) );
  INV_X1 U1024 ( .A(n1134), .ZN(n1241) );
  INV_X1 U1025 ( .A(n1370), .ZN(n1014) );
  INV_X1 U1026 ( .A(n1367), .ZN(n1015) );
  AND3_X1 U1027 ( .A1(n1089), .A2(n1088), .A3(n1087), .ZN(n1281) );
  AND2_X1 U1028 ( .A1(n1088), .A2(n1086), .ZN(n2273) );
  INV_X1 U1029 ( .A(n1087), .ZN(n1086) );
  AOI222_X1 U1030 ( .A1(n1243), .A2(n2281), .B1(n2187), .B2(n2280), .C1(n1304), 
        .C2(n2265), .ZN(n1993) );
  AOI222_X1 U1031 ( .A1(n1243), .A2(n2280), .B1(n2187), .B2(n2265), .C1(n1304), 
        .C2(n2263), .ZN(n1931) );
  AOI222_X1 U1032 ( .A1(n1243), .A2(n2265), .B1(n2187), .B2(n2263), .C1(n1304), 
        .C2(n2261), .ZN(n1849) );
  INV_X1 U1033 ( .A(n1295), .ZN(n1297) );
  AOI222_X1 U1034 ( .A1(n1243), .A2(n2220), .B1(n2187), .B2(n2200), .C1(n1304), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1529) );
  INV_X1 U1035 ( .A(n1117), .ZN(n1118) );
  INV_X1 U1036 ( .A(n1116), .ZN(n1119) );
  INV_X1 U1037 ( .A(n1192), .ZN(n1177) );
  INV_X1 U1038 ( .A(n3183), .ZN(n3045) );
  OR2_X1 U1039 ( .A1(n2665), .A2(n2666), .ZN(n2686) );
  OR2_X1 U1040 ( .A1(n954), .A2(n944), .ZN(n2625) );
  OR2_X1 U1041 ( .A1(n954), .A2(n979), .ZN(n2651) );
  OR2_X1 U1042 ( .A1(n965), .A2(n959), .ZN(n2620) );
  OR2_X1 U1043 ( .A1(n956), .A2(n974), .ZN(n2622) );
  OR2_X1 U1044 ( .A1(n955), .A2(n979), .ZN(n2621) );
  OR2_X1 U1045 ( .A1(n960), .A2(n978), .ZN(n2523) );
  OR2_X1 U1046 ( .A1(n958), .A2(n979), .ZN(n2525) );
  OR2_X1 U1047 ( .A1(n959), .A2(n974), .ZN(n2524) );
  INV_X1 U1048 ( .A(n1011), .ZN(n2156) );
  AOI222_X1 U1049 ( .A1(n989), .A2(n2261), .B1(n2167), .B2(n2213), .C1(n2166), 
        .C2(n2211), .ZN(n1525) );
  INV_X1 U1050 ( .A(n1246), .ZN(n1248) );
  INV_X1 U1051 ( .A(n1073), .ZN(n1286) );
  INV_X1 U1052 ( .A(n3190), .ZN(n3168) );
  OR2_X1 U1053 ( .A1(n3276), .A2(n4028), .ZN(n3166) );
  OR2_X1 U1054 ( .A1(n3289), .A2(n4030), .ZN(n3184) );
  OR2_X1 U1055 ( .A1(n3283), .A2(n4029), .ZN(n3191) );
  XOR2_X1 U1056 ( .A(dut__tb__sram_input_read_address[1]), .B(n2689), .Z(n939)
         );
  XOR2_X1 U1057 ( .A(dut__tb__sram_input_read_address[0]), .B(n2688), .Z(n940)
         );
  OR2_X1 U1058 ( .A1(n954), .A2(n965), .ZN(n2688) );
  OR2_X1 U1059 ( .A1(n965), .A2(n956), .ZN(n2682) );
  OR2_X1 U1060 ( .A1(n954), .A2(n974), .ZN(n2681) );
  OR2_X1 U1061 ( .A1(n2664), .A2(n2668), .ZN(n2680) );
  OR2_X1 U1062 ( .A1(n955), .A2(n984), .ZN(n2464) );
  OR2_X1 U1063 ( .A1(n2326), .A2(n2327), .ZN(n2378) );
  OR2_X1 U1064 ( .A1(n3443), .A2(n3442), .ZN(n3416) );
  INV_X1 U1065 ( .A(tb__dut__sram_weight_read_data[6]), .ZN(n3835) );
  INV_X1 U1066 ( .A(tb__dut__sram_weight_read_data[24]), .ZN(n3834) );
  INV_X1 U1067 ( .A(n3136), .ZN(n3132) );
  OR2_X1 U1068 ( .A1(n3264), .A2(n4026), .ZN(n3146) );
  INV_X1 U1069 ( .A(n3062), .ZN(n3122) );
  XOR2_X1 U1070 ( .A(n2471), .B(n2470), .Z(n993) );
  INV_X1 U1071 ( .A(n3470), .ZN(n3463) );
  INV_X1 U1072 ( .A(n3531), .ZN(n3528) );
  INV_X1 U1073 ( .A(n3453), .ZN(n3448) );
  INV_X1 U1074 ( .A(n3081), .ZN(n2749) );
  INV_X1 U1075 ( .A(n3103), .ZN(n3139) );
  AND2_X1 U1076 ( .A1(n3091), .A2(n3085), .ZN(n3094) );
  INV_X1 U1077 ( .A(n2864), .ZN(n2865) );
  INV_X1 U1078 ( .A(n2851), .ZN(n2866) );
  INV_X1 U1079 ( .A(n2879), .ZN(n2880) );
  INV_X1 U1080 ( .A(n2835), .ZN(n2881) );
  INV_X1 U1081 ( .A(n2898), .ZN(n2899) );
  INV_X1 U1082 ( .A(n2825), .ZN(n2901) );
  INV_X1 U1083 ( .A(n3234), .ZN(n3226) );
  INV_X1 U1084 ( .A(n3037), .ZN(n3241) );
  INV_X1 U1085 ( .A(n3250), .ZN(n3273) );
  INV_X1 U1086 ( .A(n3266), .ZN(n3274) );
  INV_X1 U1087 ( .A(n3279), .ZN(n3287) );
  INV_X1 U1088 ( .A(n1270), .ZN(n2142) );
  INV_X1 U1089 ( .A(n1157), .ZN(n1353) );
  INV_X1 U1090 ( .A(n1354), .ZN(n1357) );
  AOI222_X1 U1091 ( .A1(n2274), .A2(n2265), .B1(n2273), .B2(n2263), .C1(n1281), 
        .C2(n2261), .ZN(n1419) );
  INV_X1 U1092 ( .A(n1298), .ZN(n1299) );
  INV_X1 U1093 ( .A(n1269), .ZN(n2150) );
  INV_X1 U1094 ( .A(n1216), .ZN(n2153) );
  OR2_X1 U1095 ( .A1(n2198), .A2(n966), .ZN(n2204) );
  AND3_X1 U1096 ( .A1(n1064), .A2(n1063), .A3(n1062), .ZN(n2262) );
  AND2_X1 U1097 ( .A1(n1063), .A2(n1061), .ZN(n2264) );
  AND3_X1 U1098 ( .A1(n1128), .A2(n1127), .A3(n1126), .ZN(n1292) );
  AND2_X1 U1099 ( .A1(n1127), .A2(n1125), .ZN(n2282) );
  INV_X1 U1100 ( .A(n1126), .ZN(n1125) );
  OR2_X1 U1101 ( .A1(n1127), .A2(n1124), .ZN(n2286) );
  INV_X1 U1102 ( .A(n1128), .ZN(n1124) );
  AND3_X1 U1103 ( .A1(n1309), .A2(n1308), .A3(n1307), .ZN(n2221) );
  AND3_X1 U1104 ( .A1(n1052), .A2(n1051), .A3(n1050), .ZN(n2210) );
  AND2_X1 U1105 ( .A1(n1051), .A2(n1049), .ZN(n2212) );
  INV_X1 U1106 ( .A(n1050), .ZN(n1049) );
  AND2_X1 U1107 ( .A1(n1308), .A2(n1068), .ZN(n2223) );
  OR2_X1 U1108 ( .A1(n1051), .A2(n1048), .ZN(n2216) );
  INV_X1 U1109 ( .A(n1052), .ZN(n1048) );
  INV_X1 U1110 ( .A(n1217), .ZN(n2143) );
  INV_X1 U1111 ( .A(n1343), .ZN(n1345) );
  AOI222_X1 U1112 ( .A1(n943), .A2(MAC_sram_weight_read_data[23]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[22]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[21]), .ZN(n1928) );
  AOI222_X1 U1113 ( .A1(n2274), .A2(n2213), .B1(n2273), .B2(n2211), .C1(n1281), 
        .C2(n2209), .ZN(n1845) );
  INV_X1 U1114 ( .A(n1148), .ZN(n1029) );
  INV_X1 U1115 ( .A(n1149), .ZN(n1028) );
  INV_X1 U1116 ( .A(n1131), .ZN(n1133) );
  INV_X1 U1117 ( .A(n1198), .ZN(n1121) );
  INV_X1 U1118 ( .A(n1250), .ZN(n1077) );
  INV_X1 U1119 ( .A(n1277), .ZN(n1252) );
  INV_X1 U1120 ( .A(n1251), .ZN(n1278) );
  OR2_X1 U1121 ( .A1(n954), .A2(n978), .ZN(n2668) );
  OR2_X1 U1122 ( .A1(n965), .A2(n957), .ZN(n2663) );
  OR2_X1 U1123 ( .A1(n965), .A2(n958), .ZN(n2640) );
  OR2_X1 U1124 ( .A1(n956), .A2(n978), .ZN(n2642) );
  OR2_X1 U1125 ( .A1(n955), .A2(n974), .ZN(n2641) );
  OR2_X1 U1126 ( .A1(n958), .A2(n978), .ZN(n2582) );
  OR2_X1 U1127 ( .A1(n956), .A2(n979), .ZN(n2583) );
  OR2_X1 U1128 ( .A1(n957), .A2(n978), .ZN(n2627) );
  OR2_X1 U1129 ( .A1(n2581), .A2(n2625), .ZN(n2626) );
  OR2_X1 U1130 ( .A1(n965), .A2(n960), .ZN(n2602) );
  OR2_X1 U1131 ( .A1(n957), .A2(n974), .ZN(n2604) );
  OR2_X1 U1132 ( .A1(n955), .A2(n944), .ZN(n2603) );
  OR2_X1 U1133 ( .A1(n2570), .A2(n2571), .ZN(n2606) );
  OR2_X1 U1134 ( .A1(n965), .A2(n967), .ZN(n2463) );
  OR2_X1 U1135 ( .A1(n964), .A2(n977), .ZN(n2462) );
  OR2_X1 U1136 ( .A1(n2520), .A2(n2521), .ZN(n2585) );
  OR2_X1 U1137 ( .A1(n956), .A2(n944), .ZN(n2566) );
  OR2_X1 U1138 ( .A1(n954), .A2(n981), .ZN(n2565) );
  OR2_X1 U1139 ( .A1(n958), .A2(n974), .ZN(n2567) );
  OR2_X1 U1140 ( .A1(n957), .A2(n979), .ZN(n2569) );
  OR2_X1 U1141 ( .A1(n959), .A2(n978), .ZN(n2568) );
  OR2_X1 U1142 ( .A1(n957), .A2(n944), .ZN(n2547) );
  OR2_X1 U1143 ( .A1(n2400), .A2(n2401), .ZN(n2546) );
  OR2_X1 U1144 ( .A1(n954), .A2(n972), .ZN(n2548) );
  OR2_X1 U1145 ( .A1(n958), .A2(n944), .ZN(n2394) );
  OR2_X1 U1146 ( .A1(n959), .A2(n979), .ZN(n2395) );
  OR2_X1 U1147 ( .A1(n960), .A2(n974), .ZN(n2396) );
  INV_X1 U1148 ( .A(n1369), .ZN(n996) );
  OR2_X1 U1149 ( .A1(n1063), .A2(n1060), .ZN(n2268) );
  INV_X1 U1150 ( .A(n1064), .ZN(n1060) );
  INV_X1 U1151 ( .A(n1140), .ZN(n1139) );
  OR2_X1 U1152 ( .A1(n1141), .A2(n1138), .ZN(n2189) );
  OR2_X1 U1153 ( .A1(n1308), .A2(n1041), .ZN(n2227) );
  OR2_X1 U1154 ( .A1(n1088), .A2(n1085), .ZN(n2276) );
  INV_X1 U1155 ( .A(n1089), .ZN(n1085) );
  AOI222_X1 U1156 ( .A1(n943), .A2(n2272), .B1(n2160), .B2(
        MAC_sram_weight_read_data[13]), .C1(n2159), .C2(n2281), .ZN(n1527) );
  AOI222_X1 U1157 ( .A1(n989), .A2(n2213), .B1(n2167), .B2(n2211), .C1(n2166), 
        .C2(n2209), .ZN(n1548) );
  AOI222_X1 U1158 ( .A1(n951), .A2(n2265), .B1(n2252), .B2(n2263), .C1(n2251), 
        .C2(n2261), .ZN(n1552) );
  AOI222_X1 U1159 ( .A1(n1872), .A2(n2224), .B1(n2174), .B2(n2222), .C1(n2173), 
        .C2(n2220), .ZN(n1550) );
  INV_X1 U1160 ( .A(n1036), .ZN(n1035) );
  INV_X1 U1161 ( .A(n1020), .ZN(n1019) );
  INV_X1 U1162 ( .A(n1183), .ZN(n1055) );
  INV_X1 U1163 ( .A(n1173), .ZN(n1175) );
  INV_X1 U1164 ( .A(n1176), .ZN(n1193) );
  INV_X1 U1165 ( .A(n3167), .ZN(n3193) );
  INV_X1 U1166 ( .A(n3144), .ZN(n3161) );
  INV_X1 U1167 ( .A(n3165), .ZN(n3046) );
  OR2_X1 U1168 ( .A1(n2652), .A2(n2653), .ZN(n2674) );
  OR2_X1 U1169 ( .A1(n2623), .A2(n2651), .ZN(n2655) );
  OR2_X1 U1170 ( .A1(n963), .A2(n978), .ZN(n2451) );
  OR2_X1 U1171 ( .A1(n969), .A2(n978), .ZN(n2371) );
  OR2_X1 U1172 ( .A1(n962), .A2(n974), .ZN(n2370) );
  OR2_X1 U1173 ( .A1(n968), .A2(n978), .ZN(n2442) );
  OR2_X1 U1174 ( .A1(n962), .A2(n944), .ZN(n2438) );
  OR2_X1 U1175 ( .A1(n954), .A2(n986), .ZN(n2434) );
  OR2_X1 U1176 ( .A1(n965), .A2(n968), .ZN(n2360) );
  OR2_X1 U1177 ( .A1(n957), .A2(n972), .ZN(n2362) );
  OR2_X1 U1178 ( .A1(n954), .A2(n971), .ZN(n2361) );
  OR2_X1 U1179 ( .A1(n958), .A2(n981), .ZN(n2372) );
  OR2_X1 U1180 ( .A1(n956), .A2(n982), .ZN(n2374) );
  OR2_X1 U1181 ( .A1(n961), .A2(n944), .ZN(n2373) );
  OR2_X1 U1182 ( .A1(n959), .A2(n981), .ZN(n2461) );
  OR2_X1 U1183 ( .A1(n962), .A2(n979), .ZN(n2460) );
  OR2_X1 U1184 ( .A1(n2330), .A2(n2331), .ZN(n2517) );
  OR2_X1 U1185 ( .A1(n2319), .A2(n2320), .ZN(n2336) );
  OR2_X1 U1186 ( .A1(n956), .A2(n981), .ZN(n2334) );
  OR2_X1 U1187 ( .A1(n965), .A2(n969), .ZN(n2332) );
  OR2_X1 U1188 ( .A1(n954), .A2(n983), .ZN(n2333) );
  OR2_X1 U1189 ( .A1(n960), .A2(n979), .ZN(n2342) );
  OR2_X1 U1190 ( .A1(n959), .A2(n944), .ZN(n2340) );
  OR2_X1 U1191 ( .A1(n965), .A2(n962), .ZN(n2392) );
  OR2_X1 U1192 ( .A1(n954), .A2(n982), .ZN(n2393) );
  OR2_X1 U1193 ( .A1(n956), .A2(n972), .ZN(n2381) );
  OR2_X1 U1194 ( .A1(n960), .A2(n944), .ZN(n2380) );
  OR2_X1 U1195 ( .A1(n962), .A2(n978), .ZN(n2383) );
  OR2_X1 U1196 ( .A1(n2322), .A2(n2323), .ZN(n2382) );
  OR2_X1 U1197 ( .A1(n965), .A2(n963), .ZN(n2367) );
  OR2_X1 U1198 ( .A1(n957), .A2(n981), .ZN(n2369) );
  OR2_X1 U1199 ( .A1(n954), .A2(n984), .ZN(n2368) );
  INV_X1 U1200 ( .A(n3426), .ZN(n3420) );
  INV_X1 U1201 ( .A(tb__dut__sram_weight_read_data[11]), .ZN(n3828) );
  INV_X1 U1202 ( .A(n1204), .ZN(n1206) );
  AOI222_X1 U1204 ( .A1(n943), .A2(n2283), .B1(n2160), .B2(n2281), .C1(n2159), 
        .C2(n2280), .ZN(n1698) );
  INV_X1 U1205 ( .A(n1287), .ZN(n1289) );
  INV_X1 U1206 ( .A(n1285), .ZN(n1072) );
  INV_X1 U1207 ( .A(n1222), .ZN(n1221) );
  NAND2_X1 U1208 ( .A1(n1067), .A2(n1170), .ZN(n2205) );
  OR2_X1 U1209 ( .A1(n2202), .A2(n2200), .ZN(n1067) );
  INV_X1 U1210 ( .A(n3160), .ZN(n3050) );
  INV_X1 U1211 ( .A(n3143), .ZN(n3162) );
  INV_X1 U1212 ( .A(n3090), .ZN(n3072) );
  INV_X1 U1213 ( .A(n3085), .ZN(n3071) );
  INV_X1 U1214 ( .A(n3111), .ZN(n3113) );
  INV_X1 U1215 ( .A(n3115), .ZN(n3104) );
  OR2_X1 U1216 ( .A1(n2693), .A2(n2692), .ZN(n2694) );
  AND2_X1 U1217 ( .A1(n940), .A2(n939), .ZN(n2690) );
  OR2_X1 U1218 ( .A1(n958), .A2(n972), .ZN(n2491) );
  OR2_X1 U1219 ( .A1(n957), .A2(n982), .ZN(n2490) );
  OR2_X1 U1220 ( .A1(n969), .A2(n974), .ZN(n2493) );
  OR2_X1 U1221 ( .A1(n2343), .A2(n2344), .ZN(n2494) );
  OR2_X1 U1222 ( .A1(n956), .A2(n983), .ZN(n2489) );
  OR2_X1 U1223 ( .A1(n965), .A2(n964), .ZN(n2487) );
  OR2_X1 U1224 ( .A1(n954), .A2(n985), .ZN(n2488) );
  AND2_X1 U1225 ( .A1(tb__dut__sram_weight_read_data[18]), .A2(
        tb__dut__sram_weight_read_data[5]), .ZN(intadd_7_B_0_) );
  AND2_X1 U1226 ( .A1(tb__dut__sram_weight_read_data[17]), .A2(
        tb__dut__sram_weight_read_data[6]), .ZN(intadd_7_A_0_) );
  OR2_X1 U1227 ( .A1(n3476), .A2(n3475), .ZN(n3462) );
  OR2_X1 U1228 ( .A1(n3460), .A2(n3459), .ZN(n3455) );
  INV_X1 U1229 ( .A(n3533), .ZN(n3537) );
  INV_X1 U1230 ( .A(n3534), .ZN(n3536) );
  INV_X1 U1231 ( .A(tb__dut__sram_weight_read_data[9]), .ZN(n3846) );
  INV_X1 U1232 ( .A(tb__dut__sram_weight_read_data[20]), .ZN(n3852) );
  INV_X1 U1233 ( .A(tb__dut__sram_weight_read_data[10]), .ZN(n3829) );
  INV_X1 U1234 ( .A(tb__dut__sram_weight_read_data[12]), .ZN(n3410) );
  INV_X1 U1235 ( .A(tb__dut__sram_weight_read_data[26]), .ZN(n3409) );
  INV_X1 U1236 ( .A(tb__dut__sram_weight_read_data[5]), .ZN(n3858) );
  INV_X1 U1237 ( .A(tb__dut__sram_weight_read_data[25]), .ZN(n3449) );
  INV_X1 U1238 ( .A(tb__dut__sram_weight_read_data[22]), .ZN(n3851) );
  INV_X1 U1239 ( .A(tb__dut__sram_weight_read_data[27]), .ZN(n3415) );
  NAND2_X1 U1240 ( .A1(n1952), .A2(n1951), .ZN(n2837) );
  OR2_X1 U1241 ( .A1(n2834), .A2(n1943), .ZN(n1952) );
  INV_X1 U1242 ( .A(n2926), .ZN(n1680) );
  INV_X1 U1243 ( .A(n952), .ZN(n2202) );
  INV_X4 U1244 ( .A(n945), .ZN(n2165) );
  INV_X1 U1245 ( .A(n3128), .ZN(n3130) );
  INV_X1 U1246 ( .A(n3121), .ZN(n3057) );
  INV_X1 U1247 ( .A(n3064), .ZN(n3044) );
  INV_X1 U1248 ( .A(n3084), .ZN(n3061) );
  XOR2_X1 U1249 ( .A(n2474), .B(n2473), .Z(n994) );
  AND2_X1 U1250 ( .A1(tb__dut__sram_weight_read_data[1]), .A2(
        tb__dut__sram_weight_read_data[0]), .ZN(n3495) );
  AND2_X1 U1251 ( .A1(tb__dut__sram_weight_read_data[17]), .A2(
        tb__dut__sram_weight_read_data[16]), .ZN(n3496) );
  INV_X1 U1252 ( .A(tb__dut__sram_weight_read_data[18]), .ZN(n3861) );
  INV_X1 U1253 ( .A(tb__dut__sram_weight_read_data[3]), .ZN(n3859) );
  INV_X1 U1254 ( .A(n3561), .ZN(n3482) );
  INV_X1 U1255 ( .A(tb__dut__sram_weight_read_data[4]), .ZN(n3862) );
  INV_X1 U1256 ( .A(intadd_6_n1), .ZN(n3517) );
  INV_X1 U1257 ( .A(intadd_1_SUM_3_), .ZN(n3518) );
  INV_X1 U1258 ( .A(intadd_8_SUM_0_), .ZN(n3447) );
  INV_X1 U1259 ( .A(intadd_5_n1), .ZN(n3525) );
  INV_X1 U1260 ( .A(intadd_0_SUM_4_), .ZN(n3526) );
  AND4_X1 U1261 ( .A1(tb__dut__sram_weight_read_data[1]), .A2(
        tb__dut__sram_weight_read_data[0]), .A3(
        tb__dut__sram_weight_read_data[29]), .A4(
        tb__dut__sram_weight_read_data[30]), .ZN(n3389) );
  OR2_X1 U1262 ( .A1(n2115), .A2(n2114), .ZN(n2856) );
  INV_X1 U1263 ( .A(n2885), .ZN(n2069) );
  OR2_X1 U1264 ( .A1(n2067), .A2(n2066), .ZN(n2847) );
  INV_X1 U1265 ( .A(n2845), .ZN(n2886) );
  INV_X1 U1266 ( .A(n2837), .ZN(n2887) );
  OR2_X1 U1267 ( .A1(n1949), .A2(n1948), .ZN(n2871) );
  INV_X1 U1268 ( .A(n2828), .ZN(n2907) );
  OR2_X1 U1269 ( .A1(n1759), .A2(n1758), .ZN(n2890) );
  INV_X1 U1270 ( .A(n2817), .ZN(n2911) );
  OR2_X1 U1271 ( .A1(n1725), .A2(n1724), .ZN(n2910) );
  OR2_X1 U1272 ( .A1(n1723), .A2(n1722), .ZN(n2912) );
  INV_X1 U1273 ( .A(n2810), .ZN(n2924) );
  INV_X1 U1274 ( .A(n2807), .ZN(n2928) );
  OR2_X1 U1275 ( .A1(n1679), .A2(n1678), .ZN(n2927) );
  OR2_X1 U1276 ( .A1(n1677), .A2(n1676), .ZN(n2930) );
  INV_X1 U1277 ( .A(n2808), .ZN(n2929) );
  OR2_X1 U1278 ( .A1(n1674), .A2(n1673), .ZN(n2804) );
  INV_X1 U1279 ( .A(n2768), .ZN(n2771) );
  INV_X1 U1280 ( .A(n2752), .ZN(n2753) );
  INV_X1 U1281 ( .A(n2756), .ZN(n2773) );
  INV_X1 U1282 ( .A(n2764), .ZN(n2780) );
  INV_X1 U1283 ( .A(n3079), .ZN(n2767) );
  INV_X1 U1284 ( .A(n3804), .ZN(n3805) );
  OR2_X1 U1285 ( .A1(n3791), .A2(n3959), .ZN(n3804) );
  OR2_X1 U1286 ( .A1(n3782), .A2(n3955), .ZN(n3791) );
  INV_X1 U1287 ( .A(n3772), .ZN(n3773) );
  OR2_X1 U1288 ( .A1(n3763), .A2(n3952), .ZN(n3772) );
  INV_X1 U1289 ( .A(n3753), .ZN(n3754) );
  OR2_X1 U1290 ( .A1(n3744), .A2(n3948), .ZN(n3753) );
  OR2_X1 U1291 ( .A1(n3734), .A2(n3943), .ZN(n3744) );
  INV_X1 U1292 ( .A(n3724), .ZN(n3725) );
  OR2_X1 U1293 ( .A1(n3714), .A2(n3930), .ZN(n3724) );
  OR2_X1 U1294 ( .A1(n3705), .A2(n3922), .ZN(n3714) );
  XOR2_X1 U1295 ( .A(n3096), .B(n3095), .Z(n995) );
  INV_X4 U1296 ( .A(n3870), .ZN(n3817) );
  INV_X1 U1297 ( .A(tb__dut__sram_weight_read_data[16]), .ZN(n3565) );
  INV_X1 U1298 ( .A(tb__dut__sram_weight_read_data[17]), .ZN(n3863) );
  AND2_X1 U1299 ( .A1(tb__dut__sram_weight_read_data[0]), .A2(
        tb__dut__sram_weight_read_data[18]), .ZN(n3561) );
  INV_X1 U1300 ( .A(intadd_9_SUM_1_), .ZN(n3508) );
  INV_X1 U1301 ( .A(n2861), .ZN(n2863) );
  INV_X1 U1302 ( .A(n2876), .ZN(n2878) );
  INV_X1 U1303 ( .A(n2895), .ZN(n2897) );
  AND2_X1 U1304 ( .A1(n3209), .A2(n449), .ZN(n3312) );
  XOR2_X1 U1305 ( .A(dut__tb__sram_result_write_address[15]), .B(n3813), .Z(
        n3818) );
  INV_X4 U1306 ( .A(n2123), .ZN(n3814) );
  INV_X1 U1307 ( .A(n3304), .ZN(n3039) );
  NAND2_X1 U1308 ( .A1(n449), .A2(n3572), .ZN(n3623) );
  NAND2_X1 U1310 ( .A1(n2968), .A2(n2976), .ZN(n3572) );
  AND2_X1 U1311 ( .A1(n2741), .A2(n2740), .ZN(n3872) );
  XOR2_X1 U1312 ( .A(dut__tb__sram_result_write_address[3]), .B(
        sram_result_write_start_address[3]), .Z(n3703) );
  XOR2_X1 U1313 ( .A(dut__tb__sram_result_write_address[7]), .B(
        sram_result_write_start_address[7]), .Z(n3742) );
  XOR2_X1 U1314 ( .A(dut__tb__sram_result_write_address[11]), .B(
        sram_result_write_start_address[11]), .Z(n3780) );
  XOR2_X1 U1315 ( .A(dut__tb__sram_result_write_address[13]), .B(
        sram_result_write_start_address[13]), .Z(n3802) );
  AND2_X1 U1316 ( .A1(n2854), .A2(n2948), .ZN(n3902) );
  AND2_X1 U1317 ( .A1(n2853), .A2(n2948), .ZN(MAC_N56) );
  AND2_X1 U1318 ( .A1(n3675), .A2(n2948), .ZN(n3906) );
  AND2_X1 U1319 ( .A1(n3674), .A2(n2948), .ZN(n3907) );
  AND2_X1 U1320 ( .A1(n3673), .A2(n2948), .ZN(MAC_N53) );
  AND2_X1 U1321 ( .A1(n3672), .A2(n2948), .ZN(MAC_N52) );
  AND2_X1 U1322 ( .A1(n3671), .A2(n2948), .ZN(MAC_N51) );
  AND2_X1 U1323 ( .A1(n3670), .A2(n2948), .ZN(n3910) );
  AND2_X1 U1324 ( .A1(n3669), .A2(n2948), .ZN(n3908) );
  AND2_X1 U1325 ( .A1(n3668), .A2(n2948), .ZN(n3909) );
  AND2_X1 U1326 ( .A1(n3667), .A2(n2948), .ZN(MAC_N47) );
  AND2_X1 U1327 ( .A1(n3666), .A2(n2948), .ZN(MAC_N46) );
  AND2_X1 U1328 ( .A1(n3665), .A2(n2948), .ZN(n3913) );
  AND2_X1 U1329 ( .A1(n3664), .A2(n2948), .ZN(n3911) );
  AND2_X1 U1330 ( .A1(n3663), .A2(n2948), .ZN(n3912) );
  AND2_X1 U1331 ( .A1(n3662), .A2(n2948), .ZN(MAC_N42) );
  AND2_X1 U1332 ( .A1(n3661), .A2(n2948), .ZN(MAC_N41) );
  AND2_X1 U1333 ( .A1(n3660), .A2(n2948), .ZN(n3915) );
  AND2_X1 U1334 ( .A1(n3659), .A2(n2948), .ZN(n3914) );
  AND2_X1 U1335 ( .A1(n3658), .A2(n2948), .ZN(MAC_N38) );
  AND2_X1 U1336 ( .A1(n3657), .A2(n2948), .ZN(MAC_N37) );
  AND2_X1 U1337 ( .A1(n3656), .A2(n2948), .ZN(n3916) );
  AND2_X1 U1338 ( .A1(n3655), .A2(n2948), .ZN(n3918) );
  AND2_X1 U1339 ( .A1(n3654), .A2(n2948), .ZN(MAC_N34) );
  AND2_X1 U1340 ( .A1(n3653), .A2(n2948), .ZN(MAC_N33) );
  INV_X1 U1341 ( .A(n3213), .ZN(n3214) );
  INV_X1 U1342 ( .A(n3220), .ZN(n3221) );
  INV_X1 U1343 ( .A(n3228), .ZN(n3229) );
  INV_X1 U1344 ( .A(n3235), .ZN(n3236) );
  INV_X1 U1345 ( .A(n3242), .ZN(n3243) );
  INV_X1 U1346 ( .A(n3260), .ZN(n3261) );
  INV_X1 U1347 ( .A(n3267), .ZN(n3268) );
  INV_X1 U1348 ( .A(n3278), .ZN(n3281) );
  INV_X1 U1349 ( .A(n3285), .ZN(n3286) );
  INV_X1 U1350 ( .A(n3291), .ZN(n3292) );
  AOI222_X1 U1351 ( .A1(n989), .A2(MAC_sram_weight_read_data[17]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[16]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[15]), .ZN(n1934) );
  AND3_X1 U1352 ( .A1(n3600), .A2(dut__tb__sram_input_read_address[5]), .A3(
        dut__tb__sram_input_read_address[6]), .ZN(n3607) );
  AND3_X1 U1353 ( .A1(n3607), .A2(dut__tb__sram_input_read_address[7]), .A3(
        dut__tb__sram_input_read_address[8]), .ZN(n3618) );
  NOR2_X2 U1354 ( .A1(n2122), .A2(current_state[0]), .ZN(dut_ready) );
  NOR2_X2 U1355 ( .A1(n1109), .A2(n973), .ZN(n943) );
  NAND2_X1 U1356 ( .A1(input_num_cols[1]), .A2(input_num_rows[13]), .ZN(n946)
         );
  NOR2_X2 U1357 ( .A1(n1224), .A2(n1223), .ZN(n951) );
  NOR2_X2 U1358 ( .A1(n1022), .A2(n1021), .ZN(n989) );
  NAND2_X1 U1359 ( .A1(n3819), .A2(MAC_current_state[3]), .ZN(n3798) );
  INV_X1 U1360 ( .A(n3798), .ZN(n3870) );
  INV_X1 U1361 ( .A(n3174), .ZN(n3176) );
  INV_X1 U1362 ( .A(n1352), .ZN(n1158) );
  INV_X1 U1363 ( .A(n1249), .ZN(n1080) );
  INV_X1 U1364 ( .A(n3145), .ZN(n3049) );
  INV_X1 U1365 ( .A(n1355), .ZN(n1356) );
  INV_X1 U1366 ( .A(n1307), .ZN(n1068) );
  INV_X1 U1367 ( .A(n1154), .ZN(n1156) );
  INV_X1 U1368 ( .A(n1062), .ZN(n1061) );
  INV_X1 U1369 ( .A(n1025), .ZN(n1027) );
  INV_X1 U1370 ( .A(n1083), .ZN(n1300) );
  INV_X1 U1371 ( .A(n1120), .ZN(n1199) );
  INV_X1 U1372 ( .A(n3152), .ZN(n3154) );
  INV_X1 U1373 ( .A(n3114), .ZN(n3105) );
  INV_X1 U1374 ( .A(n1381), .ZN(n1268) );
  INV_X1 U1375 ( .A(n1364), .ZN(n1366) );
  INV_X1 U1376 ( .A(n1145), .ZN(n1147) );
  INV_X1 U1377 ( .A(n1309), .ZN(n1041) );
  AOI222_X1 U1378 ( .A1(n951), .A2(MAC_sram_weight_read_data[21]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[20]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[19]), .ZN(n1956) );
  AOI222_X1 U1379 ( .A1(n1872), .A2(MAC_sram_weight_read_data[14]), .B1(n2174), 
        .B2(n2283), .C1(n2173), .C2(n2281), .ZN(n1907) );
  AOI222_X1 U1380 ( .A1(n1872), .A2(n2209), .B1(n2174), .B2(n2224), .C1(n2173), 
        .C2(n2222), .ZN(n1531) );
  INV_X1 U1381 ( .A(n1185), .ZN(n1187) );
  INV_X1 U1382 ( .A(n3131), .ZN(n3137) );
  INV_X1 U1383 ( .A(n3100), .ZN(n3102) );
  INV_X1 U1384 ( .A(n2481), .ZN(n2504) );
  INV_X1 U1385 ( .A(tb__dut__sram_weight_read_data[13]), .ZN(n3333) );
  AOI222_X1 U1386 ( .A1(n951), .A2(n2280), .B1(n2252), .B2(n2265), .C1(n2251), 
        .C2(n2263), .ZN(n1554) );
  INV_X1 U1387 ( .A(n3092), .ZN(n3093) );
  INV_X1 U1388 ( .A(n3088), .ZN(n3070) );
  INV_X1 U1389 ( .A(intadd_12_SUM_2_), .ZN(n3348) );
  INV_X1 U1390 ( .A(n1056), .ZN(n1195) );
  INV_X1 U1391 ( .A(tb__dut__sram_weight_read_data[23]), .ZN(n3833) );
  INV_X1 U1392 ( .A(tb__dut__sram_weight_read_data[7]), .ZN(n3853) );
  INV_X1 U1393 ( .A(tb__dut__sram_weight_read_data[8]), .ZN(n3845) );
  INV_X1 U1394 ( .A(tb__dut__sram_weight_read_data[28]), .ZN(n3414) );
  INV_X1 U1395 ( .A(n3428), .ZN(n3419) );
  INV_X1 U1396 ( .A(n3437), .ZN(n3407) );
  INV_X4 U1397 ( .A(n987), .ZN(n2179) );
  INV_X4 U1398 ( .A(n988), .ZN(n2172) );
  INV_X1 U1399 ( .A(tb__dut__sram_weight_read_data[2]), .ZN(n3860) );
  INV_X1 U1400 ( .A(tb__dut__sram_weight_read_data[21]), .ZN(n3850) );
  INV_X1 U1401 ( .A(n3469), .ZN(n3465) );
  INV_X1 U1402 ( .A(intadd_4_SUM_0_), .ZN(n3530) );
  INV_X1 U1403 ( .A(n3318), .ZN(n3321) );
  INV_X1 U1404 ( .A(n2870), .ZN(n1950) );
  INV_X1 U1405 ( .A(n2889), .ZN(n1760) );
  INV_X1 U1406 ( .A(n2909), .ZN(n1726) );
  INV_X4 U1407 ( .A(n990), .ZN(n2257) );
  INV_X1 U1408 ( .A(tb__dut__sram_weight_read_data[19]), .ZN(n3857) );
  INV_X1 U1409 ( .A(n2855), .ZN(n2116) );
  INV_X1 U1410 ( .A(n2846), .ZN(n2068) );
  INV_X1 U1411 ( .A(n2803), .ZN(n1675) );
  INV_X1 U1412 ( .A(n3259), .ZN(n3251) );
  INV_X1 U1413 ( .A(intadd_6_SUM_2_), .ZN(n3514) );
  INV_X1 U1414 ( .A(intadd_5_SUM_2_), .ZN(n3521) );
  INV_X1 U1415 ( .A(n2904), .ZN(n2906) );
  INV_X1 U1416 ( .A(n2820), .ZN(n2822) );
  INV_X1 U1417 ( .A(n2921), .ZN(n2923) );
  INV_X1 U1418 ( .A(n2933), .ZN(n2935) );
  INV_X1 U1419 ( .A(n2786), .ZN(n1642) );
  INV_X1 U1420 ( .A(n3082), .ZN(n2784) );
  INV_X1 U1421 ( .A(n3306), .ZN(n3219) );
  INV_X1 U1422 ( .A(n2314), .ZN(n2315) );
  INV_X1 U1423 ( .A(n2850), .ZN(n2867) );
  INV_X1 U1424 ( .A(n2834), .ZN(n2882) );
  INV_X1 U1425 ( .A(n2816), .ZN(n2913) );
  INV_X1 U1426 ( .A(n1654), .ZN(n2801) );
  INV_X1 U1427 ( .A(n3631), .ZN(n3626) );
  INV_X1 U1428 ( .A(n3253), .ZN(n3254) );
  INV_X1 U1429 ( .A(n2990), .ZN(n2985) );
  INV_X1 U1430 ( .A(n2854), .ZN(n2318) );
  INV_X1 U1431 ( .A(n3614), .ZN(n3611) );
  NAND2_X1 U1432 ( .A1(n3608), .A2(n3630), .ZN(n3634) );
  INV_X1 U1433 ( .A(n3638), .ZN(n3637) );
  AOI222_X1 U1434 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[7]), 
        .B1(n3257), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[7]), .ZN(n2761) );
  INV_X1 U1435 ( .A(n3312), .ZN(n3299) );
  INV_X1 U1436 ( .A(n3296), .ZN(n3297) );
  INV_X1 U1437 ( .A(n2980), .ZN(n2979) );
  INV_X1 U1438 ( .A(dut__tb__sram_result_write_enable), .ZN(n3875) );
  INV_X1 U1439 ( .A(n2777), .ZN(n577) );
  INV_X1 U1440 ( .A(n2763), .ZN(n582) );
  NOR2_X1 U1441 ( .A1(MAC_sram_weight_read_data[21]), .A2(
        MAC_sram_weight_read_data[22]), .ZN(n1369) );
  NAND2_X1 U1442 ( .A1(MAC_sram_weight_read_data[21]), .A2(
        MAC_sram_weight_read_data[22]), .ZN(n1368) );
  NAND2_X1 U1443 ( .A1(n996), .A2(n1368), .ZN(n1017) );
  INV_X4 U1444 ( .A(n3901), .ZN(n2220) );
  INV_X4 U1445 ( .A(n3880), .ZN(n2222) );
  INV_X4 U1446 ( .A(n3903), .ZN(n2200) );
  NAND2_X1 U1447 ( .A1(n2202), .A2(n2200), .ZN(n1170) );
  NAND2_X1 U1448 ( .A1(n2220), .A2(n2222), .ZN(n1045) );
  NAND2_X1 U1449 ( .A1(n2200), .A2(n2220), .ZN(n1168) );
  NAND2_X1 U1450 ( .A1(n1045), .A2(n1168), .ZN(n997) );
  AOI21_X1 U1451 ( .B1(n1044), .B2(n998), .A(n997), .ZN(n1056) );
  INV_X4 U1452 ( .A(n3905), .ZN(n2224) );
  NOR2_X1 U1453 ( .A1(n2222), .A2(n2224), .ZN(n1176) );
  INV_X4 U1454 ( .A(n3904), .ZN(n2209) );
  NOR2_X1 U1455 ( .A1(n2224), .A2(n2209), .ZN(n1173) );
  NOR2_X1 U1456 ( .A1(n1176), .A2(n1173), .ZN(n1058) );
  INV_X4 U1457 ( .A(n3877), .ZN(n2211) );
  NOR2_X1 U1458 ( .A1(n2209), .A2(n2211), .ZN(n1183) );
  INV_X4 U1459 ( .A(n949), .ZN(n2213) );
  NOR2_X1 U1460 ( .A1(n2211), .A2(n2213), .ZN(n1185) );
  NOR2_X1 U1461 ( .A1(n1183), .A2(n1185), .ZN(n1000) );
  NAND2_X1 U1462 ( .A1(n1058), .A2(n1000), .ZN(n1002) );
  NAND2_X1 U1463 ( .A1(n2224), .A2(n2209), .ZN(n1174) );
  NAND2_X1 U1464 ( .A1(n2222), .A2(n2224), .ZN(n1192) );
  NAND2_X1 U1465 ( .A1(n1174), .A2(n1192), .ZN(n1057) );
  NAND2_X1 U1466 ( .A1(n2211), .A2(n2213), .ZN(n1186) );
  NAND2_X1 U1467 ( .A1(n2209), .A2(n2211), .ZN(n1182) );
  NAND2_X1 U1468 ( .A1(n1186), .A2(n1182), .ZN(n999) );
  AOI21_X1 U1469 ( .B1(n1000), .B2(n1057), .A(n999), .ZN(n1001) );
  OAI21_X1 U1470 ( .B1(n1056), .B2(n1002), .A(n1001), .ZN(n1073) );
  NOR2_X1 U1471 ( .A1(n2213), .A2(n2261), .ZN(n1285) );
  NOR2_X1 U1472 ( .A1(n2261), .A2(n2263), .ZN(n1287) );
  NOR2_X1 U1473 ( .A1(n1285), .A2(n1287), .ZN(n1116) );
  NOR2_X1 U1474 ( .A1(n2263), .A2(n2265), .ZN(n1120) );
  NOR2_X1 U1475 ( .A1(n2265), .A2(n2280), .ZN(n1113) );
  NOR2_X1 U1476 ( .A1(n1120), .A2(n1113), .ZN(n1004) );
  NAND2_X1 U1477 ( .A1(n1116), .A2(n1004), .ZN(n1250) );
  NOR2_X1 U1478 ( .A1(n2280), .A2(n2281), .ZN(n1251) );
  NOR2_X1 U1479 ( .A1(n2281), .A2(n2283), .ZN(n1246) );
  NOR2_X1 U1480 ( .A1(n1251), .A2(n1246), .ZN(n1079) );
  NOR2_X1 U1481 ( .A1(n2283), .A2(n2272), .ZN(n1083) );
  NOR2_X1 U1482 ( .A1(n2272), .A2(MAC_sram_weight_read_data[15]), .ZN(n1295)
         );
  NOR2_X1 U1483 ( .A1(n1083), .A2(n1295), .ZN(n1006) );
  NAND2_X1 U1484 ( .A1(n1079), .A2(n1006), .ZN(n1008) );
  NOR2_X1 U1485 ( .A1(n1250), .A2(n1008), .ZN(n1010) );
  NAND2_X1 U1486 ( .A1(n2261), .A2(n2263), .ZN(n1288) );
  NAND2_X1 U1487 ( .A1(n2213), .A2(n2261), .ZN(n1284) );
  NAND2_X1 U1488 ( .A1(n1288), .A2(n1284), .ZN(n1117) );
  NAND2_X1 U1489 ( .A1(n2265), .A2(n2280), .ZN(n1114) );
  NAND2_X1 U1490 ( .A1(n2263), .A2(n2265), .ZN(n1198) );
  NAND2_X1 U1491 ( .A1(n1114), .A2(n1198), .ZN(n1003) );
  AOI21_X1 U1492 ( .B1(n1004), .B2(n1117), .A(n1003), .ZN(n1249) );
  NAND2_X1 U1493 ( .A1(n2281), .A2(n2283), .ZN(n1247) );
  NAND2_X1 U1494 ( .A1(n2280), .A2(n2281), .ZN(n1277) );
  NAND2_X1 U1495 ( .A1(n1247), .A2(n1277), .ZN(n1078) );
  NAND2_X1 U1496 ( .A1(n2272), .A2(MAC_sram_weight_read_data[15]), .ZN(n1296)
         );
  NAND2_X1 U1497 ( .A1(n2283), .A2(n2272), .ZN(n1298) );
  NAND2_X1 U1498 ( .A1(n1296), .A2(n1298), .ZN(n1005) );
  AOI21_X1 U1499 ( .B1(n1006), .B2(n1078), .A(n1005), .ZN(n1007) );
  OAI21_X1 U1500 ( .B1(n1249), .B2(n1008), .A(n1007), .ZN(n1009) );
  AOI21_X1 U1501 ( .B1(n1073), .B2(n1010), .A(n1009), .ZN(n1011) );
  NOR2_X1 U1502 ( .A1(MAC_sram_weight_read_data[15]), .A2(
        MAC_sram_weight_read_data[16]), .ZN(n1134) );
  NOR2_X1 U1503 ( .A1(MAC_sram_weight_read_data[16]), .A2(
        MAC_sram_weight_read_data[17]), .ZN(n1131) );
  NOR2_X1 U1504 ( .A1(n1134), .A2(n1131), .ZN(n1149) );
  NOR2_X1 U1505 ( .A1(MAC_sram_weight_read_data[17]), .A2(
        MAC_sram_weight_read_data[18]), .ZN(n1145) );
  NOR2_X1 U1506 ( .A1(MAC_sram_weight_read_data[18]), .A2(
        MAC_sram_weight_read_data[19]), .ZN(n1025) );
  NOR2_X1 U1507 ( .A1(n1145), .A2(n1025), .ZN(n1013) );
  NAND2_X1 U1508 ( .A1(n1149), .A2(n1013), .ZN(n1207) );
  NOR2_X1 U1509 ( .A1(MAC_sram_weight_read_data[19]), .A2(
        MAC_sram_weight_read_data[20]), .ZN(n1343) );
  NOR2_X1 U1510 ( .A1(MAC_sram_weight_read_data[20]), .A2(
        MAC_sram_weight_read_data[21]), .ZN(n1204) );
  NOR2_X1 U1511 ( .A1(n1343), .A2(n1204), .ZN(n1093) );
  NAND2_X1 U1512 ( .A1(n1347), .A2(n1093), .ZN(n1367) );
  NAND2_X1 U1513 ( .A1(MAC_sram_weight_read_data[16]), .A2(
        MAC_sram_weight_read_data[17]), .ZN(n1132) );
  NAND2_X1 U1514 ( .A1(MAC_sram_weight_read_data[15]), .A2(
        MAC_sram_weight_read_data[16]), .ZN(n1240) );
  NAND2_X1 U1515 ( .A1(n1132), .A2(n1240), .ZN(n1148) );
  NAND2_X1 U1516 ( .A1(MAC_sram_weight_read_data[18]), .A2(
        MAC_sram_weight_read_data[19]), .ZN(n1026) );
  NAND2_X1 U1517 ( .A1(MAC_sram_weight_read_data[17]), .A2(
        MAC_sram_weight_read_data[18]), .ZN(n1146) );
  NAND2_X1 U1518 ( .A1(n1026), .A2(n1146), .ZN(n1012) );
  AOI21_X1 U1519 ( .B1(n1013), .B2(n1148), .A(n1012), .ZN(n1208) );
  NAND2_X1 U1520 ( .A1(MAC_sram_weight_read_data[20]), .A2(
        MAC_sram_weight_read_data[21]), .ZN(n1205) );
  NAND2_X1 U1521 ( .A1(MAC_sram_weight_read_data[19]), .A2(
        MAC_sram_weight_read_data[20]), .ZN(n1344) );
  NAND2_X1 U1522 ( .A1(n1205), .A2(n1344), .ZN(n1095) );
  AOI21_X1 U1523 ( .B1(n1346), .B2(n1093), .A(n1095), .ZN(n1370) );
  AOI21_X1 U1524 ( .B1(n2156), .B2(n1015), .A(n1014), .ZN(n1016) );
  XNOR2_X1 U1525 ( .A(n1017), .B(n1016), .ZN(n2177) );
  XNOR2_X1 U1526 ( .A(MAC_sram_input_read_data[5]), .B(
        MAC_sram_input_read_data[6]), .ZN(n1021) );
  XOR2_X1 U1527 ( .A(MAC_sram_input_read_data[7]), .B(n2172), .Z(n1022) );
  INV_X1 U1528 ( .A(n1022), .ZN(n1018) );
  OR2_X2 U1529 ( .A1(n1021), .A2(n1018), .ZN(n2169) );
  XNOR2_X1 U1530 ( .A(MAC_sram_input_read_data[6]), .B(
        MAC_sram_input_read_data[7]), .ZN(n1020) );
  AND2_X2 U1531 ( .A1(n1021), .A2(n1019), .ZN(n2167) );
  AND3_X2 U1532 ( .A1(n1022), .A2(n1021), .A3(n1020), .ZN(n2166) );
  AOI222_X1 U1533 ( .A1(n989), .A2(MAC_sram_weight_read_data[22]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[21]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[20]), .ZN(n1023) );
  OAI21_X1 U1534 ( .B1(n2177), .B2(n2169), .A(n1023), .ZN(n1024) );
  XOR2_X1 U1535 ( .A(n2172), .B(n1024), .Z(n1237) );
  NAND2_X1 U1536 ( .A1(n1027), .A2(n1026), .ZN(n1033) );
  NOR2_X1 U1537 ( .A1(n1028), .A2(n1145), .ZN(n1031) );
  OAI21_X1 U1538 ( .B1(n1029), .B2(n1145), .A(n1146), .ZN(n1030) );
  AOI21_X1 U1539 ( .B1(n2156), .B2(n1031), .A(n1030), .ZN(n1032) );
  XNOR2_X1 U1540 ( .A(n1033), .B(n1032), .ZN(n2190) );
  XNOR2_X1 U1541 ( .A(n2172), .B(MAC_sram_input_read_data[9]), .ZN(n1037) );
  XOR2_X1 U1542 ( .A(MAC_sram_input_read_data[10]), .B(n2179), .Z(n1038) );
  INV_X1 U1543 ( .A(n1038), .ZN(n1034) );
  XNOR2_X1 U1544 ( .A(MAC_sram_input_read_data[9]), .B(
        MAC_sram_input_read_data[10]), .ZN(n1036) );
  AND2_X2 U1545 ( .A1(n1037), .A2(n1035), .ZN(n2174) );
  AND3_X2 U1546 ( .A1(n1038), .A2(n1037), .A3(n1036), .ZN(n2173) );
  AOI222_X1 U1547 ( .A1(n1872), .A2(MAC_sram_weight_read_data[19]), .B1(n2174), 
        .B2(MAC_sram_weight_read_data[18]), .C1(n2173), .C2(
        MAC_sram_weight_read_data[17]), .ZN(n1039) );
  OAI21_X1 U1548 ( .B1(n2190), .B2(n2176), .A(n1039), .ZN(n1040) );
  XOR2_X1 U1549 ( .A(n2179), .B(n1040), .Z(n1236) );
  XNOR2_X1 U1550 ( .A(n2219), .B(MAC_sram_input_read_data[27]), .ZN(n1308) );
  XOR2_X1 U1551 ( .A(MAC_sram_input_read_data[28]), .B(
        MAC_sram_input_read_data[29]), .Z(n1309) );
  NOR2_X1 U1552 ( .A1(n1309), .A2(n1308), .ZN(n2225) );
  NAND2_X1 U1553 ( .A1(n2225), .A2(MAC_sram_weight_read_data[0]), .ZN(n1042)
         );
  OAI21_X1 U1554 ( .B1(n2227), .B2(n952), .A(n1042), .ZN(n1043) );
  XOR2_X1 U1555 ( .A(MAC_sram_input_read_data[29]), .B(n1043), .Z(n1071) );
  NAND2_X1 U1556 ( .A1(n1168), .A2(n1170), .ZN(n1047) );
  NAND2_X1 U1557 ( .A1(n1044), .A2(n1045), .ZN(n1046) );
  XOR2_X1 U1558 ( .A(n1047), .B(n1046), .Z(n1961) );
  XNOR2_X1 U1559 ( .A(n2271), .B(MAC_sram_input_read_data[24]), .ZN(n1051) );
  XOR2_X1 U1560 ( .A(MAC_sram_input_read_data[25]), .B(n2219), .Z(n1052) );
  NOR2_X1 U1561 ( .A1(n1052), .A2(n1051), .ZN(n2214) );
  XNOR2_X1 U1562 ( .A(MAC_sram_input_read_data[24]), .B(
        MAC_sram_input_read_data[25]), .ZN(n1050) );
  AOI222_X1 U1563 ( .A1(n2214), .A2(n2222), .B1(n2212), .B2(n2220), .C1(n2210), 
        .C2(n2200), .ZN(n1053) );
  OAI21_X1 U1564 ( .B1(n1961), .B2(n2216), .A(n1053), .ZN(n1054) );
  XOR2_X1 U1565 ( .A(n2219), .B(n1054), .Z(n1432) );
  NAND2_X1 U1566 ( .A1(n1055), .A2(n1182), .ZN(n1059) );
  AOI21_X1 U1567 ( .B1(n1195), .B2(n1058), .A(n1057), .ZN(n1184) );
  XNOR2_X1 U1568 ( .A(n1059), .B(n1184), .ZN(n1964) );
  XNOR2_X1 U1569 ( .A(n1966), .B(MAC_sram_input_read_data[21]), .ZN(n1063) );
  XOR2_X1 U1570 ( .A(MAC_sram_input_read_data[22]), .B(n2271), .Z(n1064) );
  NOR2_X1 U1571 ( .A1(n1064), .A2(n1063), .ZN(n2266) );
  XNOR2_X1 U1572 ( .A(MAC_sram_input_read_data[21]), .B(
        MAC_sram_input_read_data[22]), .ZN(n1062) );
  AOI222_X1 U1573 ( .A1(n2266), .A2(n2211), .B1(n2264), .B2(n2209), .C1(n2262), 
        .C2(n2224), .ZN(n1065) );
  OAI21_X1 U1574 ( .B1(n1964), .B2(n2268), .A(n1065), .ZN(n1066) );
  XOR2_X1 U1575 ( .A(n2271), .B(n1066), .Z(n1431) );
  XNOR2_X1 U1576 ( .A(MAC_sram_input_read_data[27]), .B(
        MAC_sram_input_read_data[28]), .ZN(n1307) );
  AOI22_X1 U1577 ( .A1(n2225), .A2(n2200), .B1(MAC_sram_weight_read_data[0]), 
        .B2(n2223), .ZN(n1069) );
  OAI21_X1 U1578 ( .B1(n2227), .B2(n2205), .A(n1069), .ZN(n1070) );
  XOR2_X1 U1579 ( .A(MAC_sram_input_read_data[29]), .B(n1070), .Z(n1239) );
  FA_X1 U1580 ( .A(MAC_sram_input_read_data[29]), .B(MAC_accum_result[27]), 
        .CI(n1071), .CO(n1238), .S(n1433) );
  NAND2_X1 U1581 ( .A1(n1072), .A2(n1284), .ZN(n1074) );
  XNOR2_X1 U1582 ( .A(n1074), .B(n1286), .ZN(n1905) );
  AOI222_X1 U1583 ( .A1(n2266), .A2(n2261), .B1(n2264), .B2(n2213), .C1(n2262), 
        .C2(n2211), .ZN(n1075) );
  OAI21_X1 U1584 ( .B1(n1905), .B2(n2268), .A(n1075), .ZN(n1076) );
  XOR2_X1 U1585 ( .A(n2271), .B(n1076), .Z(n1332) );
  NAND2_X1 U1586 ( .A1(n1077), .A2(n1079), .ZN(n1082) );
  AOI21_X1 U1587 ( .B1(n1080), .B2(n1079), .A(n1078), .ZN(n1081) );
  OAI21_X1 U1588 ( .B1(n1286), .B2(n1082), .A(n1081), .ZN(n1301) );
  NAND2_X1 U1589 ( .A1(n1300), .A2(n1298), .ZN(n1084) );
  XOR2_X1 U1590 ( .A(n1301), .B(n1084), .Z(n1908) );
  XNOR2_X1 U1591 ( .A(MAC_sram_input_read_data[14]), .B(
        MAC_sram_input_read_data[15]), .ZN(n1088) );
  XNOR2_X1 U1592 ( .A(n2279), .B(n976), .ZN(n1089) );
  NOR2_X1 U1593 ( .A1(n1089), .A2(n1088), .ZN(n2274) );
  XNOR2_X1 U1594 ( .A(MAC_sram_input_read_data[15]), .B(
        MAC_sram_input_read_data[16]), .ZN(n1087) );
  AOI222_X1 U1595 ( .A1(n2274), .A2(n2272), .B1(n2273), .B2(n2283), .C1(n1281), 
        .C2(n2281), .ZN(n1090) );
  OAI21_X1 U1596 ( .B1(n1908), .B2(n2276), .A(n1090), .ZN(n1091) );
  XOR2_X1 U1597 ( .A(n2279), .B(n1091), .Z(n1331) );
  NOR2_X1 U1598 ( .A1(MAC_sram_weight_read_data[28]), .A2(
        MAC_sram_weight_read_data[29]), .ZN(n1380) );
  INV_X1 U1599 ( .A(n1380), .ZN(n1092) );
  NAND2_X1 U1600 ( .A1(MAC_sram_weight_read_data[28]), .A2(
        MAC_sram_weight_read_data[29]), .ZN(n1383) );
  NAND2_X1 U1601 ( .A1(n1092), .A2(n1383), .ZN(n1107) );
  NOR2_X1 U1602 ( .A1(MAC_sram_weight_read_data[22]), .A2(
        MAC_sram_weight_read_data[23]), .ZN(n1364) );
  NOR2_X1 U1603 ( .A1(n1369), .A2(n1364), .ZN(n1096) );
  NAND2_X1 U1604 ( .A1(n1093), .A2(n1096), .ZN(n1098) );
  NOR2_X1 U1605 ( .A1(n1207), .A2(n1098), .ZN(n1217) );
  NOR2_X1 U1606 ( .A1(MAC_sram_weight_read_data[23]), .A2(
        MAC_sram_weight_read_data[24]), .ZN(n1261) );
  NOR2_X1 U1607 ( .A1(MAC_sram_weight_read_data[24]), .A2(
        MAC_sram_weight_read_data[25]), .ZN(n1257) );
  NOR2_X1 U1608 ( .A1(n1261), .A2(n1257), .ZN(n1354) );
  NOR2_X1 U1609 ( .A1(MAC_sram_weight_read_data[25]), .A2(
        MAC_sram_weight_read_data[26]), .ZN(n1157) );
  NOR2_X1 U1610 ( .A1(MAC_sram_weight_read_data[26]), .A2(
        MAC_sram_weight_read_data[27]), .ZN(n1154) );
  NOR2_X1 U1611 ( .A1(n1157), .A2(n1154), .ZN(n1100) );
  NAND2_X1 U1612 ( .A1(n1354), .A2(n1100), .ZN(n1270) );
  NOR2_X1 U1613 ( .A1(MAC_sram_weight_read_data[27]), .A2(
        MAC_sram_weight_read_data[28]), .ZN(n1381) );
  NAND2_X1 U1614 ( .A1(n2142), .A2(n1268), .ZN(n1103) );
  NOR2_X1 U1615 ( .A1(n2143), .A2(n1103), .ZN(n1105) );
  NAND2_X1 U1616 ( .A1(MAC_sram_weight_read_data[22]), .A2(
        MAC_sram_weight_read_data[23]), .ZN(n1365) );
  NAND2_X1 U1617 ( .A1(n1365), .A2(n1368), .ZN(n1094) );
  AOI21_X1 U1618 ( .B1(n1096), .B2(n1095), .A(n1094), .ZN(n1097) );
  OAI21_X1 U1619 ( .B1(n1208), .B2(n1098), .A(n1097), .ZN(n1216) );
  NAND2_X1 U1620 ( .A1(MAC_sram_weight_read_data[24]), .A2(
        MAC_sram_weight_read_data[25]), .ZN(n1258) );
  NAND2_X1 U1621 ( .A1(MAC_sram_weight_read_data[23]), .A2(
        MAC_sram_weight_read_data[24]), .ZN(n1260) );
  NAND2_X1 U1622 ( .A1(n1258), .A2(n1260), .ZN(n1355) );
  NAND2_X1 U1623 ( .A1(MAC_sram_weight_read_data[26]), .A2(
        MAC_sram_weight_read_data[27]), .ZN(n1155) );
  NAND2_X1 U1624 ( .A1(MAC_sram_weight_read_data[25]), .A2(
        MAC_sram_weight_read_data[26]), .ZN(n1352) );
  NAND2_X1 U1625 ( .A1(n1155), .A2(n1352), .ZN(n1099) );
  AOI21_X1 U1626 ( .B1(n1100), .B2(n1355), .A(n1099), .ZN(n1269) );
  NAND2_X1 U1627 ( .A1(MAC_sram_weight_read_data[27]), .A2(
        MAC_sram_weight_read_data[28]), .ZN(n1382) );
  INV_X1 U1628 ( .A(n1382), .ZN(n1101) );
  AOI21_X1 U1629 ( .B1(n2150), .B2(n1268), .A(n1101), .ZN(n1102) );
  OAI21_X1 U1630 ( .B1(n2153), .B2(n1103), .A(n1102), .ZN(n1104) );
  AOI21_X1 U1631 ( .B1(n2156), .B2(n1105), .A(n1104), .ZN(n1106) );
  XNOR2_X1 U1632 ( .A(n1107), .B(n1106), .ZN(n1111) );
  XOR2_X1 U1633 ( .A(MAC_sram_input_read_data[1]), .B(n2165), .Z(n1109) );
  INV_X1 U1634 ( .A(n1109), .ZN(n1108) );
  OR2_X2 U1635 ( .A1(n973), .A2(n1108), .ZN(n2162) );
  AND2_X2 U1636 ( .A1(n973), .A2(MAC_sram_input_read_data[1]), .ZN(n2160) );
  AND3_X2 U1637 ( .A1(n1109), .A2(n991), .A3(n973), .ZN(n2159) );
  AOI222_X1 U1638 ( .A1(n943), .A2(MAC_sram_weight_read_data[29]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[28]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[27]), .ZN(n1110) );
  OAI21_X1 U1639 ( .B1(n1111), .B2(n2162), .A(n1110), .ZN(n1112) );
  XOR2_X1 U1640 ( .A(n2165), .B(n1112), .Z(n1336) );
  INV_X1 U1641 ( .A(n1113), .ZN(n1115) );
  NAND2_X1 U1642 ( .A1(n1115), .A2(n1114), .ZN(n1123) );
  OAI21_X1 U1643 ( .B1(n1286), .B2(n1119), .A(n1118), .ZN(n1201) );
  AOI21_X1 U1644 ( .B1(n1201), .B2(n1199), .A(n1121), .ZN(n1122) );
  XNOR2_X1 U1645 ( .A(n1123), .B(n1122), .ZN(n1932) );
  XNOR2_X1 U1646 ( .A(n2279), .B(MAC_sram_input_read_data[18]), .ZN(n1127) );
  XOR2_X1 U1647 ( .A(MAC_sram_input_read_data[19]), .B(n1966), .Z(n1128) );
  NOR2_X1 U1648 ( .A1(n1128), .A2(n1127), .ZN(n2284) );
  XNOR2_X1 U1649 ( .A(MAC_sram_input_read_data[18]), .B(
        MAC_sram_input_read_data[19]), .ZN(n1126) );
  AOI222_X1 U1650 ( .A1(n2284), .A2(n2280), .B1(n2282), .B2(n2265), .C1(n1292), 
        .C2(n2263), .ZN(n1129) );
  OAI21_X1 U1651 ( .B1(n1932), .B2(n2286), .A(n1129), .ZN(n1130) );
  XOR2_X1 U1652 ( .A(n1966), .B(n1130), .Z(n1335) );
  NAND2_X1 U1653 ( .A1(n1133), .A2(n1132), .ZN(n1137) );
  AOI21_X1 U1654 ( .B1(n2156), .B2(n1241), .A(n1135), .ZN(n1136) );
  XNOR2_X1 U1655 ( .A(n1137), .B(n1136), .ZN(n1935) );
  XNOR2_X1 U1656 ( .A(n2179), .B(MAC_sram_input_read_data[12]), .ZN(n1141) );
  CLKBUF_X3 U1657 ( .A(MAC_sram_input_read_data[14]), .Z(n2192) );
  XOR2_X1 U1658 ( .A(MAC_sram_input_read_data[13]), .B(n2192), .Z(n1142) );
  INV_X1 U1659 ( .A(n1142), .ZN(n1138) );
  XNOR2_X1 U1660 ( .A(MAC_sram_input_read_data[12]), .B(
        MAC_sram_input_read_data[13]), .ZN(n1140) );
  AND2_X2 U1661 ( .A1(n1141), .A2(n1139), .ZN(n2187) );
  AND3_X2 U1662 ( .A1(n1142), .A2(n1141), .A3(n1140), .ZN(n1304) );
  AOI222_X1 U1663 ( .A1(n1243), .A2(MAC_sram_weight_read_data[17]), .B1(n2187), 
        .B2(MAC_sram_weight_read_data[16]), .C1(n1304), .C2(
        MAC_sram_weight_read_data[15]), .ZN(n1143) );
  OAI21_X1 U1664 ( .B1(n1935), .B2(n2189), .A(n1143), .ZN(n1144) );
  XOR2_X1 U1665 ( .A(MAC_sram_input_read_data[14]), .B(n1144), .Z(n1334) );
  NAND2_X1 U1666 ( .A1(n1147), .A2(n1146), .ZN(n1151) );
  AOI21_X1 U1667 ( .B1(n2156), .B2(n1149), .A(n1148), .ZN(n1150) );
  XNOR2_X1 U1668 ( .A(n1151), .B(n1150), .ZN(n1968) );
  AOI222_X1 U1669 ( .A1(n1872), .A2(MAC_sram_weight_read_data[18]), .B1(n2174), 
        .B2(MAC_sram_weight_read_data[17]), .C1(n2173), .C2(
        MAC_sram_weight_read_data[16]), .ZN(n1152) );
  OAI21_X1 U1670 ( .B1(n1968), .B2(n2176), .A(n1152), .ZN(n1153) );
  XOR2_X1 U1671 ( .A(n2179), .B(n1153), .Z(n1410) );
  NAND2_X1 U1672 ( .A1(n1156), .A2(n1155), .ZN(n1164) );
  NAND2_X1 U1673 ( .A1(n1354), .A2(n1353), .ZN(n1160) );
  NOR2_X1 U1674 ( .A1(n2143), .A2(n1160), .ZN(n1162) );
  AOI21_X1 U1675 ( .B1(n1355), .B2(n1353), .A(n1158), .ZN(n1159) );
  OAI21_X1 U1676 ( .B1(n2153), .B2(n1160), .A(n1159), .ZN(n1161) );
  AOI21_X1 U1677 ( .B1(n2156), .B2(n1162), .A(n1161), .ZN(n1163) );
  XNOR2_X1 U1678 ( .A(n1164), .B(n1163), .ZN(n1394) );
  AOI222_X1 U1679 ( .A1(n943), .A2(MAC_sram_weight_read_data[27]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[26]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[25]), .ZN(n1165) );
  OAI21_X1 U1680 ( .B1(n1394), .B2(n2162), .A(n1165), .ZN(n1166) );
  XOR2_X1 U1681 ( .A(n2165), .B(n1166), .Z(n1409) );
  NAND2_X1 U1682 ( .A1(n1167), .A2(n1168), .ZN(n1169) );
  XNOR2_X1 U1683 ( .A(n1170), .B(n1169), .ZN(n1923) );
  AOI222_X1 U1684 ( .A1(n2214), .A2(n2220), .B1(n2212), .B2(n2200), .C1(n2210), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1171) );
  OAI21_X1 U1685 ( .B1(n1923), .B2(n2216), .A(n1171), .ZN(n1172) );
  XOR2_X1 U1686 ( .A(n2219), .B(n1172), .Z(n2057) );
  NAND2_X1 U1687 ( .A1(n1175), .A2(n1174), .ZN(n1179) );
  AOI21_X1 U1688 ( .B1(n1195), .B2(n1193), .A(n1177), .ZN(n1178) );
  XNOR2_X1 U1689 ( .A(n1179), .B(n1178), .ZN(n1926) );
  AOI222_X1 U1690 ( .A1(n2266), .A2(n2209), .B1(n2264), .B2(n2224), .C1(n2262), 
        .C2(n2222), .ZN(n1180) );
  OAI21_X1 U1691 ( .B1(n1926), .B2(n2268), .A(n1180), .ZN(n1181) );
  XOR2_X1 U1692 ( .A(n2271), .B(n1181), .Z(n2056) );
  OAI21_X1 U1693 ( .B1(n1184), .B2(n1183), .A(n1182), .ZN(n1189) );
  NAND2_X1 U1694 ( .A1(n1187), .A2(n1186), .ZN(n1188) );
  XOR2_X1 U1695 ( .A(n1189), .B(n1188), .Z(n2217) );
  AOI222_X1 U1696 ( .A1(n2266), .A2(n2213), .B1(n2264), .B2(n2211), .C1(n2262), 
        .C2(n2209), .ZN(n1190) );
  OAI21_X1 U1697 ( .B1(n2217), .B2(n2268), .A(n1190), .ZN(n1191) );
  XOR2_X1 U1698 ( .A(n2271), .B(n1191), .Z(n1316) );
  NAND2_X1 U1699 ( .A1(n1193), .A2(n1192), .ZN(n1194) );
  XOR2_X1 U1700 ( .A(n1195), .B(n1194), .Z(n2228) );
  AOI222_X1 U1701 ( .A1(n2214), .A2(n2224), .B1(n2212), .B2(n2222), .C1(n2210), 
        .C2(n2220), .ZN(n1196) );
  OAI21_X1 U1702 ( .B1(n2228), .B2(n2216), .A(n1196), .ZN(n1197) );
  XOR2_X1 U1703 ( .A(n2219), .B(n1197), .Z(n1315) );
  NAND2_X1 U1704 ( .A1(n1199), .A2(n1198), .ZN(n1200) );
  XOR2_X1 U1705 ( .A(n1201), .B(n1200), .Z(n2269) );
  AOI222_X1 U1706 ( .A1(n2284), .A2(n2265), .B1(n2282), .B2(n2263), .C1(n1292), 
        .C2(n2261), .ZN(n1202) );
  OAI21_X1 U1707 ( .B1(n2269), .B2(n2286), .A(n1202), .ZN(n1203) );
  XOR2_X1 U1708 ( .A(n1966), .B(n1203), .Z(n1314) );
  NAND2_X1 U1709 ( .A1(n1206), .A2(n1205), .ZN(n1212) );
  NOR2_X1 U1710 ( .A1(n1207), .A2(n1343), .ZN(n1210) );
  OAI21_X1 U1711 ( .B1(n1208), .B2(n1343), .A(n1344), .ZN(n1209) );
  AOI21_X1 U1712 ( .B1(n2156), .B2(n1210), .A(n1209), .ZN(n1211) );
  XNOR2_X1 U1713 ( .A(n1212), .B(n1211), .ZN(n1957) );
  AOI222_X1 U1714 ( .A1(n989), .A2(MAC_sram_weight_read_data[21]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[20]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[19]), .ZN(n1213) );
  OAI21_X1 U1715 ( .B1(n1957), .B2(n2169), .A(n1213), .ZN(n1214) );
  XOR2_X1 U1716 ( .A(n2172), .B(n1214), .Z(n1423) );
  INV_X1 U1717 ( .A(n1261), .ZN(n1215) );
  NAND2_X1 U1718 ( .A1(n1215), .A2(n1260), .ZN(n1219) );
  AOI21_X1 U1719 ( .B1(n2156), .B2(n1217), .A(n1216), .ZN(n1218) );
  XNOR2_X1 U1720 ( .A(n1219), .B(n1218), .ZN(n1971) );
  XNOR2_X1 U1721 ( .A(n2165), .B(MAC_sram_input_read_data[3]), .ZN(n1223) );
  XOR2_X1 U1722 ( .A(MAC_sram_input_read_data[4]), .B(n2257), .Z(n1224) );
  INV_X1 U1723 ( .A(n1224), .ZN(n1220) );
  OR2_X2 U1724 ( .A1(n1223), .A2(n1220), .ZN(n2254) );
  XNOR2_X1 U1725 ( .A(MAC_sram_input_read_data[3]), .B(
        MAC_sram_input_read_data[4]), .ZN(n1222) );
  AND2_X2 U1726 ( .A1(n1223), .A2(n1221), .ZN(n2252) );
  AND3_X2 U1727 ( .A1(n1224), .A2(n1223), .A3(n1222), .ZN(n2251) );
  AOI222_X1 U1728 ( .A1(n951), .A2(MAC_sram_weight_read_data[24]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[23]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[22]), .ZN(n1225) );
  OAI21_X1 U1729 ( .B1(n1971), .B2(n2254), .A(n1225), .ZN(n1226) );
  XOR2_X1 U1730 ( .A(n2257), .B(n1226), .Z(n1422) );
  AOI22_X1 U1731 ( .A1(n2212), .A2(MAC_sram_weight_read_data[0]), .B1(n2214), 
        .B2(n2200), .ZN(n1227) );
  OAI21_X1 U1732 ( .B1(n2205), .B2(n2216), .A(n1227), .ZN(n1228) );
  XOR2_X1 U1733 ( .A(n2219), .B(n1228), .Z(n1979) );
  NAND2_X1 U1734 ( .A1(n2214), .A2(MAC_sram_weight_read_data[0]), .ZN(n1229)
         );
  OAI21_X1 U1735 ( .B1(n2216), .B2(n952), .A(n1229), .ZN(n1230) );
  XOR2_X1 U1736 ( .A(n2219), .B(n1230), .Z(n1959) );
  AOI222_X1 U1737 ( .A1(n2284), .A2(n2261), .B1(n2282), .B2(n2213), .C1(n1292), 
        .C2(n2211), .ZN(n1231) );
  OAI21_X1 U1738 ( .B1(n1905), .B2(n2286), .A(n1231), .ZN(n1232) );
  XOR2_X1 U1739 ( .A(MAC_sram_input_read_data[20]), .B(n1232), .Z(n2059) );
  AOI222_X1 U1740 ( .A1(n1243), .A2(MAC_sram_weight_read_data[14]), .B1(n2187), 
        .B2(n2283), .C1(n1304), .C2(n2281), .ZN(n1233) );
  OAI21_X1 U1741 ( .B1(n1908), .B2(n2189), .A(n1233), .ZN(n1234) );
  XOR2_X1 U1742 ( .A(MAC_sram_input_read_data[14]), .B(n1234), .Z(n2058) );
  FA_X1 U1743 ( .A(n1237), .B(n1236), .CI(n1235), .CO(n1398), .S(n2085) );
  FA_X1 U1744 ( .A(n1239), .B(MAC_accum_result[28]), .CI(n1238), .CO(n1333), 
        .S(n1319) );
  NAND2_X1 U1745 ( .A1(n1241), .A2(n1240), .ZN(n1242) );
  XOR2_X1 U1746 ( .A(n2156), .B(n1242), .Z(n2277) );
  AOI222_X1 U1747 ( .A1(n1243), .A2(MAC_sram_weight_read_data[16]), .B1(n2187), 
        .B2(MAC_sram_weight_read_data[15]), .C1(n1304), .C2(
        MAC_sram_weight_read_data[14]), .ZN(n1244) );
  OAI21_X1 U1748 ( .B1(n2277), .B2(n2189), .A(n1244), .ZN(n1245) );
  XOR2_X1 U1749 ( .A(MAC_sram_input_read_data[14]), .B(n1245), .Z(n1318) );
  NAND2_X1 U1750 ( .A1(n1248), .A2(n1247), .ZN(n1254) );
  OAI21_X1 U1751 ( .B1(n1286), .B2(n1250), .A(n1249), .ZN(n1280) );
  AOI21_X1 U1752 ( .B1(n1280), .B2(n1278), .A(n1252), .ZN(n1253) );
  XNOR2_X1 U1753 ( .A(n1254), .B(n1253), .ZN(n2287) );
  AOI222_X1 U1754 ( .A1(n2274), .A2(n2283), .B1(n2273), .B2(n2281), .C1(n1281), 
        .C2(n2280), .ZN(n1255) );
  OAI21_X1 U1755 ( .B1(n2287), .B2(n2276), .A(n1255), .ZN(n1256) );
  XOR2_X1 U1756 ( .A(n2279), .B(n1256), .Z(n1317) );
  INV_X1 U1757 ( .A(n1257), .ZN(n1259) );
  NAND2_X1 U1758 ( .A1(n1259), .A2(n1258), .ZN(n1265) );
  NOR2_X1 U1759 ( .A1(n2143), .A2(n1261), .ZN(n1263) );
  OAI21_X1 U1760 ( .B1(n2153), .B2(n1261), .A(n1260), .ZN(n1262) );
  AOI21_X1 U1761 ( .B1(n2156), .B2(n1263), .A(n1262), .ZN(n1264) );
  XNOR2_X1 U1762 ( .A(n1265), .B(n1264), .ZN(n2170) );
  AOI222_X1 U1763 ( .A1(n951), .A2(MAC_sram_weight_read_data[25]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[24]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[23]), .ZN(n1266) );
  OAI21_X1 U1764 ( .B1(n2170), .B2(n2254), .A(n1266), .ZN(n1267) );
  XOR2_X1 U1765 ( .A(n2257), .B(n1267), .Z(n1404) );
  NAND2_X1 U1766 ( .A1(n1268), .A2(n1382), .ZN(n1274) );
  NOR2_X1 U1767 ( .A1(n2143), .A2(n1270), .ZN(n1272) );
  OAI21_X1 U1768 ( .B1(n2153), .B2(n1270), .A(n1269), .ZN(n1271) );
  AOI21_X1 U1769 ( .B1(n2156), .B2(n1272), .A(n1271), .ZN(n1273) );
  XNOR2_X1 U1770 ( .A(n1274), .B(n1273), .ZN(n2255) );
  AOI222_X1 U1771 ( .A1(n943), .A2(MAC_sram_weight_read_data[28]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[27]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[26]), .ZN(n1275) );
  OAI21_X1 U1772 ( .B1(n2255), .B2(n2162), .A(n1275), .ZN(n1276) );
  XOR2_X1 U1773 ( .A(n2165), .B(n1276), .Z(n1403) );
  NAND2_X1 U1774 ( .A1(n1278), .A2(n1277), .ZN(n1279) );
  XOR2_X1 U1775 ( .A(n1280), .B(n1279), .Z(n1994) );
  AOI222_X1 U1776 ( .A1(n2274), .A2(n2281), .B1(n2273), .B2(n2280), .C1(n1281), 
        .C2(n2265), .ZN(n1282) );
  OAI21_X1 U1777 ( .B1(n1994), .B2(n2276), .A(n1282), .ZN(n1283) );
  XOR2_X1 U1778 ( .A(n2279), .B(n1283), .Z(n1436) );
  OAI21_X1 U1779 ( .B1(n1286), .B2(n1285), .A(n1284), .ZN(n1291) );
  NAND2_X1 U1780 ( .A1(n1289), .A2(n1288), .ZN(n1290) );
  XOR2_X1 U1781 ( .A(n1291), .B(n1290), .Z(n1991) );
  AOI222_X1 U1782 ( .A1(n2284), .A2(n2263), .B1(n2282), .B2(n2261), .C1(n1292), 
        .C2(n2213), .ZN(n1293) );
  OAI21_X1 U1783 ( .B1(n1991), .B2(n2286), .A(n1293), .ZN(n1294) );
  XOR2_X1 U1784 ( .A(n1966), .B(n1294), .Z(n1435) );
  NAND2_X1 U1785 ( .A1(n1297), .A2(n1296), .ZN(n1303) );
  AOI21_X1 U1786 ( .B1(n1301), .B2(n1300), .A(n1299), .ZN(n1302) );
  XNOR2_X1 U1787 ( .A(n1303), .B(n1302), .ZN(n1997) );
  AOI222_X1 U1788 ( .A1(n1243), .A2(MAC_sram_weight_read_data[15]), .B1(n2187), 
        .B2(MAC_sram_weight_read_data[14]), .C1(n1304), .C2(n2283), .ZN(n1305)
         );
  OAI21_X1 U1789 ( .B1(n1997), .B2(n2189), .A(n1305), .ZN(n1306) );
  XOR2_X1 U1790 ( .A(MAC_sram_input_read_data[14]), .B(n1306), .Z(n1434) );
  AOI222_X1 U1791 ( .A1(n2225), .A2(n2220), .B1(n2223), .B2(n2200), .C1(n2221), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1310) );
  OAI21_X1 U1792 ( .B1(n1923), .B2(n2227), .A(n1310), .ZN(n1311) );
  XOR2_X1 U1793 ( .A(MAC_sram_input_read_data[29]), .B(n1311), .Z(n1325) );
  AOI222_X1 U1794 ( .A1(n2214), .A2(n2209), .B1(n2212), .B2(n2224), .C1(n2210), 
        .C2(n2222), .ZN(n1312) );
  OAI21_X1 U1795 ( .B1(n1926), .B2(n2216), .A(n1312), .ZN(n1313) );
  XOR2_X1 U1796 ( .A(n2219), .B(n1313), .Z(n1324) );
  FA_X1 U1797 ( .A(n1316), .B(n1315), .CI(n1314), .CO(n1406), .S(n1438) );
  FA_X1 U1798 ( .A(n1319), .B(n1318), .CI(n1317), .CO(n1405), .S(n2084) );
  AOI222_X1 U1799 ( .A1(n1872), .A2(MAC_sram_weight_read_data[21]), .B1(n2174), 
        .B2(MAC_sram_weight_read_data[20]), .C1(n2173), .C2(
        MAC_sram_weight_read_data[19]), .ZN(n1320) );
  OAI21_X1 U1800 ( .B1(n1957), .B2(n2176), .A(n1320), .ZN(n1321) );
  XOR2_X1 U1801 ( .A(n2179), .B(n1321), .Z(n2186) );
  AOI222_X1 U1802 ( .A1(n1243), .A2(MAC_sram_weight_read_data[18]), .B1(n2187), 
        .B2(MAC_sram_weight_read_data[17]), .C1(n1304), .C2(
        MAC_sram_weight_read_data[16]), .ZN(n1322) );
  OAI21_X1 U1803 ( .B1(n1968), .B2(n2189), .A(n1322), .ZN(n1323) );
  XOR2_X1 U1804 ( .A(MAC_sram_input_read_data[14]), .B(n1323), .Z(n2185) );
  FA_X1 U1805 ( .A(n1325), .B(MAC_accum_result[29]), .CI(n1324), .CO(n2184), 
        .S(n1407) );
  AOI222_X1 U1806 ( .A1(n2225), .A2(n2222), .B1(n2223), .B2(n2220), .C1(n2221), 
        .C2(n2200), .ZN(n1326) );
  OAI21_X1 U1807 ( .B1(n1961), .B2(n2227), .A(n1326), .ZN(n1327) );
  XOR2_X1 U1808 ( .A(MAC_sram_input_read_data[29]), .B(n1327), .Z(n2195) );
  XNOR2_X1 U1809 ( .A(MAC_sram_input_read_data[29]), .B(
        MAC_sram_input_read_data[30]), .ZN(n2198) );
  NOR2_X1 U1810 ( .A1(n2198), .A2(MAC_sram_input_read_data[31]), .ZN(n2199) );
  NAND2_X1 U1811 ( .A1(n2199), .A2(n2202), .ZN(n1328) );
  OAI21_X1 U1812 ( .B1(n952), .B2(n2204), .A(n1328), .ZN(n2196) );
  AOI222_X1 U1813 ( .A1(n2214), .A2(n2211), .B1(n2212), .B2(n2209), .C1(n2210), 
        .C2(n2224), .ZN(n1329) );
  OAI21_X1 U1814 ( .B1(n1964), .B2(n2216), .A(n1329), .ZN(n1330) );
  XOR2_X1 U1815 ( .A(MAC_sram_input_read_data[26]), .B(n1330), .Z(n2193) );
  FA_X1 U1816 ( .A(n1333), .B(n1332), .CI(n1331), .CO(n2249), .S(n1397) );
  FA_X1 U1817 ( .A(n1336), .B(n1335), .CI(n1334), .CO(n2248), .S(n1396) );
  AOI222_X1 U1818 ( .A1(n2266), .A2(n2263), .B1(n2264), .B2(n2261), .C1(n2262), 
        .C2(n2213), .ZN(n1337) );
  OAI21_X1 U1819 ( .B1(n1991), .B2(n2268), .A(n1337), .ZN(n1338) );
  XOR2_X1 U1820 ( .A(n2271), .B(n1338), .Z(n2260) );
  AOI222_X1 U1821 ( .A1(n2284), .A2(n2281), .B1(n2282), .B2(n2280), .C1(n1292), 
        .C2(n2265), .ZN(n1339) );
  OAI21_X1 U1822 ( .B1(n1994), .B2(n2286), .A(n1339), .ZN(n1340) );
  XOR2_X1 U1823 ( .A(MAC_sram_input_read_data[20]), .B(n1340), .Z(n2259) );
  AOI222_X1 U1824 ( .A1(n2274), .A2(MAC_sram_weight_read_data[15]), .B1(n2273), 
        .B2(n2272), .C1(n1281), .C2(n2283), .ZN(n1341) );
  OAI21_X1 U1825 ( .B1(n1997), .B2(n2276), .A(n1341), .ZN(n1342) );
  XOR2_X1 U1826 ( .A(n2279), .B(n1342), .Z(n2258) );
  NAND2_X1 U1827 ( .A1(n1345), .A2(n1344), .ZN(n1349) );
  AOI21_X1 U1828 ( .B1(n2156), .B2(n1347), .A(n1346), .ZN(n1348) );
  XNOR2_X1 U1829 ( .A(n1349), .B(n1348), .ZN(n1920) );
  AOI222_X1 U1830 ( .A1(n1872), .A2(MAC_sram_weight_read_data[20]), .B1(n2174), 
        .B2(MAC_sram_weight_read_data[19]), .C1(n2173), .C2(
        MAC_sram_weight_read_data[18]), .ZN(n1350) );
  OAI21_X1 U1831 ( .B1(n1920), .B2(n2176), .A(n1350), .ZN(n1351) );
  XOR2_X1 U1832 ( .A(n2179), .B(n1351), .Z(n1401) );
  NAND2_X1 U1833 ( .A1(n1353), .A2(n1352), .ZN(n1361) );
  NOR2_X1 U1834 ( .A1(n2143), .A2(n1357), .ZN(n1359) );
  OAI21_X1 U1835 ( .B1(n2153), .B2(n1357), .A(n1356), .ZN(n1358) );
  AOI21_X1 U1836 ( .B1(n2156), .B2(n1359), .A(n1358), .ZN(n1360) );
  XNOR2_X1 U1837 ( .A(n1361), .B(n1360), .ZN(n1425) );
  AOI222_X1 U1838 ( .A1(n951), .A2(MAC_sram_weight_read_data[26]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[25]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[24]), .ZN(n1362) );
  OAI21_X1 U1839 ( .B1(n1425), .B2(n2254), .A(n1362), .ZN(n1363) );
  XOR2_X1 U1840 ( .A(n2257), .B(n1363), .Z(n1400) );
  NAND2_X1 U1841 ( .A1(n1366), .A2(n1365), .ZN(n1374) );
  NOR2_X1 U1842 ( .A1(n1367), .A2(n1369), .ZN(n1372) );
  OAI21_X1 U1843 ( .B1(n1370), .B2(n1369), .A(n1368), .ZN(n1371) );
  AOI21_X1 U1844 ( .B1(n2156), .B2(n1372), .A(n1371), .ZN(n1373) );
  XNOR2_X1 U1845 ( .A(n1374), .B(n1373), .ZN(n1929) );
  AOI222_X1 U1846 ( .A1(n989), .A2(MAC_sram_weight_read_data[23]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[22]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[21]), .ZN(n1375) );
  OAI21_X1 U1847 ( .B1(n1929), .B2(n2169), .A(n1375), .ZN(n1376) );
  XOR2_X1 U1848 ( .A(n2172), .B(n1376), .Z(n1399) );
  AOI222_X1 U1849 ( .A1(n989), .A2(MAC_sram_weight_read_data[24]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[23]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[22]), .ZN(n1377) );
  OAI21_X1 U1850 ( .B1(n1971), .B2(n2169), .A(n1377), .ZN(n1378) );
  XOR2_X1 U1851 ( .A(n2172), .B(n1378), .Z(n2247) );
  NOR2_X1 U1852 ( .A1(MAC_sram_weight_read_data[29]), .A2(
        MAC_sram_weight_read_data[30]), .ZN(n2146) );
  INV_X1 U1853 ( .A(n2146), .ZN(n1379) );
  NAND2_X1 U1854 ( .A1(MAC_sram_weight_read_data[29]), .A2(
        MAC_sram_weight_read_data[30]), .ZN(n2145) );
  NAND2_X1 U1855 ( .A1(n1379), .A2(n2145), .ZN(n1389) );
  NOR2_X1 U1856 ( .A1(n1381), .A2(n1380), .ZN(n2140) );
  NAND2_X1 U1857 ( .A1(n2142), .A2(n2140), .ZN(n1385) );
  NOR2_X1 U1858 ( .A1(n2143), .A2(n1385), .ZN(n1387) );
  NAND2_X1 U1859 ( .A1(n1383), .A2(n1382), .ZN(n2144) );
  AOI21_X1 U1860 ( .B1(n2150), .B2(n2140), .A(n2144), .ZN(n1384) );
  OAI21_X1 U1861 ( .B1(n2153), .B2(n1385), .A(n1384), .ZN(n1386) );
  AOI21_X1 U1862 ( .B1(n2156), .B2(n1387), .A(n1386), .ZN(n1388) );
  XNOR2_X1 U1863 ( .A(n1389), .B(n1388), .ZN(n1391) );
  AOI222_X1 U1864 ( .A1(n943), .A2(MAC_sram_weight_read_data[30]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[29]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[28]), .ZN(n1390) );
  OAI21_X1 U1865 ( .B1(n1391), .B2(n2162), .A(n1390), .ZN(n1392) );
  XOR2_X1 U1866 ( .A(n2165), .B(n1392), .Z(n2246) );
  AOI222_X1 U1867 ( .A1(n951), .A2(MAC_sram_weight_read_data[27]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[26]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[25]), .ZN(n1393) );
  OAI21_X1 U1868 ( .B1(n1394), .B2(n2254), .A(n1393), .ZN(n1395) );
  XOR2_X1 U1869 ( .A(n2257), .B(n1395), .Z(n2245) );
  FA_X1 U1870 ( .A(n1398), .B(n1397), .CI(n1396), .CO(n2136), .S(n1445) );
  FA_X1 U1871 ( .A(n1401), .B(n1400), .CI(n1399), .CO(n2243), .S(n1442) );
  FA_X1 U1872 ( .A(n1404), .B(n1403), .CI(n1402), .CO(n1441), .S(n2083) );
  FA_X1 U1873 ( .A(n1407), .B(n1406), .CI(n1405), .CO(n2134), .S(n1440) );
  FA_X1 U1874 ( .A(n1410), .B(n1409), .CI(n1408), .CO(n1439), .S(n2094) );
  AOI222_X1 U1875 ( .A1(n989), .A2(MAC_sram_weight_read_data[20]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[19]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[18]), .ZN(n1411) );
  OAI21_X1 U1876 ( .B1(n1920), .B2(n2169), .A(n1411), .ZN(n1412) );
  XOR2_X1 U1877 ( .A(n2172), .B(n1412), .Z(n2046) );
  AOI222_X1 U1878 ( .A1(n951), .A2(MAC_sram_weight_read_data[23]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[22]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[21]), .ZN(n1413) );
  OAI21_X1 U1879 ( .B1(n1929), .B2(n2254), .A(n1413), .ZN(n1414) );
  XOR2_X1 U1880 ( .A(n2257), .B(n1414), .Z(n2045) );
  AOI222_X1 U1881 ( .A1(n2284), .A2(n2213), .B1(n2282), .B2(n2211), .C1(n1292), 
        .C2(n2209), .ZN(n1415) );
  OAI21_X1 U1882 ( .B1(n2217), .B2(n2286), .A(n1415), .ZN(n1416) );
  XOR2_X1 U1883 ( .A(MAC_sram_input_read_data[20]), .B(n1416), .Z(n2003) );
  AOI222_X1 U1884 ( .A1(n2266), .A2(n2224), .B1(n2264), .B2(n2222), .C1(n2262), 
        .C2(n2220), .ZN(n1417) );
  OAI21_X1 U1885 ( .B1(n2228), .B2(n2268), .A(n1417), .ZN(n1418) );
  XOR2_X1 U1886 ( .A(n2271), .B(n1418), .Z(n2002) );
  OAI21_X1 U1887 ( .B1(n2269), .B2(n2276), .A(n1419), .ZN(n1420) );
  XOR2_X1 U1888 ( .A(n2279), .B(n1420), .Z(n2001) );
  FA_X1 U1889 ( .A(n1423), .B(n1422), .CI(n1421), .CO(n1437), .S(n2092) );
  AOI222_X1 U1890 ( .A1(n943), .A2(MAC_sram_weight_read_data[26]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[25]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[24]), .ZN(n1424) );
  OAI21_X1 U1891 ( .B1(n1425), .B2(n2162), .A(n1424), .ZN(n1426) );
  XOR2_X1 U1892 ( .A(n2165), .B(n1426), .Z(n2040) );
  AOI222_X1 U1893 ( .A1(n2274), .A2(n2280), .B1(n2273), .B2(n2265), .C1(n1281), 
        .C2(n2263), .ZN(n1427) );
  OAI21_X1 U1894 ( .B1(n1932), .B2(n2276), .A(n1427), .ZN(n1428) );
  XOR2_X1 U1895 ( .A(n2279), .B(n1428), .Z(n2039) );
  AOI222_X1 U1896 ( .A1(n1872), .A2(MAC_sram_weight_read_data[17]), .B1(n2174), 
        .B2(MAC_sram_weight_read_data[16]), .C1(n2173), .C2(
        MAC_sram_weight_read_data[15]), .ZN(n1429) );
  OAI21_X1 U1897 ( .B1(n1935), .B2(n2176), .A(n1429), .ZN(n1430) );
  XOR2_X1 U1898 ( .A(n2179), .B(n1430), .Z(n2038) );
  FA_X1 U1899 ( .A(n1433), .B(n1432), .CI(n1431), .CO(n1235), .S(n2081) );
  FA_X1 U1900 ( .A(n1436), .B(n1435), .CI(n1434), .CO(n1402), .S(n2080) );
  FA_X1 U1901 ( .A(n1439), .B(n1438), .CI(n1437), .CO(n1444), .S(n2086) );
  FA_X1 U1902 ( .A(n1442), .B(n1441), .CI(n1440), .CO(n2135), .S(n2105) );
  FA_X1 U1903 ( .A(n1445), .B(n1444), .CI(n1443), .CO(n2311), .S(n2104) );
  AOI22_X1 U1904 ( .A1(MAC_sram_weight_read_data[0]), .A2(n2273), .B1(n2200), 
        .B2(n2274), .ZN(n1447) );
  NAND2_X1 U1905 ( .A1(n1447), .A2(n1446), .ZN(n1448) );
  XNOR2_X1 U1906 ( .A(n1448), .B(n942), .ZN(n1463) );
  NAND2_X1 U1907 ( .A1(n2274), .A2(MAC_sram_weight_read_data[0]), .ZN(n1449)
         );
  OAI21_X1 U1908 ( .B1(n2276), .B2(n952), .A(n1449), .ZN(n1450) );
  XNOR2_X1 U1909 ( .A(n1450), .B(n942), .ZN(n1504) );
  NAND2_X1 U1910 ( .A1(n942), .A2(n992), .ZN(n1451) );
  NAND2_X1 U1911 ( .A1(n1504), .A2(n1451), .ZN(n1453) );
  NAND2_X1 U1912 ( .A1(n2279), .A2(MAC_accum_result[15]), .ZN(n1452) );
  NAND2_X1 U1913 ( .A1(n1453), .A2(n1452), .ZN(n1462) );
  AOI222_X1 U1914 ( .A1(n1872), .A2(n2261), .B1(n2174), .B2(n2213), .C1(n2173), 
        .C2(n2211), .ZN(n1454) );
  OAI21_X1 U1915 ( .B1(n1905), .B2(n2176), .A(n1454), .ZN(n1455) );
  XOR2_X1 U1916 ( .A(n2179), .B(n1455), .Z(n1473) );
  AOI222_X1 U1917 ( .A1(n951), .A2(MAC_sram_weight_read_data[14]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[13]), .C1(n2251), .C2(n2281), .ZN(n1456)
         );
  OAI21_X1 U1918 ( .B1(n1908), .B2(n2254), .A(n1456), .ZN(n1457) );
  XOR2_X1 U1919 ( .A(n2257), .B(n1457), .Z(n1472) );
  AOI222_X1 U1920 ( .A1(n2274), .A2(n2220), .B1(n2273), .B2(n2200), .C1(n1281), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1458) );
  OAI21_X1 U1921 ( .B1(n1923), .B2(n2276), .A(n1458), .ZN(n1459) );
  XOR2_X1 U1922 ( .A(n2279), .B(n1459), .Z(n1469) );
  AOI222_X1 U1923 ( .A1(n1243), .A2(n2209), .B1(n2187), .B2(n2224), .C1(n1304), 
        .C2(n2222), .ZN(n1460) );
  OAI21_X1 U1924 ( .B1(n1926), .B2(n2189), .A(n1460), .ZN(n1461) );
  XOR2_X1 U1925 ( .A(n2192), .B(n1461), .Z(n1468) );
  FA_X1 U1926 ( .A(n1463), .B(MAC_accum_result[16]), .CI(n1462), .CO(n1474), 
        .S(n1538) );
  AOI222_X1 U1927 ( .A1(n943), .A2(MAC_sram_weight_read_data[16]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[15]), .C1(n2159), .C2(n2272), .ZN(n1464)
         );
  OAI21_X1 U1928 ( .B1(n2277), .B2(n2162), .A(n1464), .ZN(n1465) );
  XOR2_X1 U1929 ( .A(MAC_sram_input_read_data[2]), .B(n1465), .Z(n1537) );
  AOI222_X1 U1930 ( .A1(n951), .A2(n2283), .B1(n2252), .B2(n2281), .C1(n2251), 
        .C2(n2280), .ZN(n1466) );
  OAI21_X1 U1931 ( .B1(n2287), .B2(n2254), .A(n1466), .ZN(n1467) );
  XOR2_X1 U1932 ( .A(n2257), .B(n1467), .Z(n1536) );
  FA_X1 U1933 ( .A(n1469), .B(MAC_accum_result[17]), .CI(n1468), .CO(n1765), 
        .S(n1516) );
  AOI222_X1 U1934 ( .A1(n943), .A2(MAC_sram_weight_read_data[18]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[17]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[16]), .ZN(n1470) );
  OAI21_X1 U1935 ( .B1(n1968), .B2(n2162), .A(n1470), .ZN(n1471) );
  XOR2_X1 U1936 ( .A(MAC_sram_input_read_data[2]), .B(n1471), .Z(n1764) );
  FA_X1 U1937 ( .A(n1474), .B(n1473), .CI(n1472), .CO(n1763), .S(n1517) );
  AOI222_X1 U1938 ( .A1(n1872), .A2(n2263), .B1(n2174), .B2(n2261), .C1(n2173), 
        .C2(n2213), .ZN(n1475) );
  OAI21_X1 U1939 ( .B1(n1991), .B2(n2176), .A(n1475), .ZN(n1476) );
  XOR2_X1 U1940 ( .A(n2179), .B(n1476), .Z(n1808) );
  AOI222_X1 U1941 ( .A1(n989), .A2(n2281), .B1(n2167), .B2(n2280), .C1(n2166), 
        .C2(n2265), .ZN(n1477) );
  OAI21_X1 U1942 ( .B1(n1994), .B2(n2169), .A(n1477), .ZN(n1478) );
  XOR2_X1 U1943 ( .A(n2172), .B(n1478), .Z(n1807) );
  AOI222_X1 U1944 ( .A1(n951), .A2(MAC_sram_weight_read_data[15]), .B1(n2252), 
        .B2(n2272), .C1(n2251), .C2(n2283), .ZN(n1479) );
  OAI21_X1 U1945 ( .B1(n1997), .B2(n2254), .A(n1479), .ZN(n1480) );
  XOR2_X1 U1946 ( .A(n2257), .B(n1480), .Z(n1806) );
  NAND2_X1 U1947 ( .A1(n2284), .A2(MAC_sram_weight_read_data[0]), .ZN(n1481)
         );
  OAI21_X1 U1948 ( .B1(n2286), .B2(n952), .A(n1481), .ZN(n1482) );
  XOR2_X1 U1949 ( .A(n1966), .B(n1482), .Z(n1774) );
  AOI222_X1 U1950 ( .A1(n2274), .A2(n2222), .B1(n2273), .B2(n2220), .C1(n1281), 
        .C2(n2200), .ZN(n1483) );
  OAI21_X1 U1951 ( .B1(n1961), .B2(n2276), .A(n1483), .ZN(n1484) );
  XOR2_X1 U1952 ( .A(n2279), .B(n1484), .Z(n1802) );
  AOI222_X1 U1953 ( .A1(n1243), .A2(n2211), .B1(n2187), .B2(n2209), .C1(n1304), 
        .C2(n2224), .ZN(n1485) );
  OAI21_X1 U1954 ( .B1(n1964), .B2(n2189), .A(n1485), .ZN(n1486) );
  XOR2_X1 U1955 ( .A(n2192), .B(n1486), .Z(n1801) );
  AOI222_X1 U1956 ( .A1(n943), .A2(MAC_sram_weight_read_data[17]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[16]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[15]), .ZN(n1487) );
  OAI21_X1 U1957 ( .B1(n1935), .B2(n2162), .A(n1487), .ZN(n1488) );
  XOR2_X1 U1958 ( .A(MAC_sram_input_read_data[2]), .B(n1488), .Z(n1514) );
  AOI222_X1 U1959 ( .A1(n989), .A2(n2280), .B1(n2167), .B2(n2265), .C1(n2166), 
        .C2(n2263), .ZN(n1489) );
  OAI21_X1 U1960 ( .B1(n1932), .B2(n2169), .A(n1489), .ZN(n1490) );
  XOR2_X1 U1961 ( .A(n2172), .B(n1490), .Z(n1513) );
  AOI222_X1 U1962 ( .A1(n1872), .A2(n2213), .B1(n2174), .B2(n2211), .C1(n2173), 
        .C2(n2209), .ZN(n1491) );
  OAI21_X1 U1963 ( .B1(n2217), .B2(n2176), .A(n1491), .ZN(n1492) );
  XOR2_X1 U1964 ( .A(n2179), .B(n1492), .Z(n1511) );
  AOI222_X1 U1965 ( .A1(n1243), .A2(n2224), .B1(n2187), .B2(n2222), .C1(n1304), 
        .C2(n2220), .ZN(n1493) );
  OAI21_X1 U1966 ( .B1(n2228), .B2(n2189), .A(n1493), .ZN(n1494) );
  XOR2_X1 U1967 ( .A(n2192), .B(n1494), .Z(n1510) );
  AOI222_X1 U1968 ( .A1(n989), .A2(n2265), .B1(n2167), .B2(n2263), .C1(n2166), 
        .C2(n2261), .ZN(n1495) );
  OAI21_X1 U1969 ( .B1(n2269), .B2(n2169), .A(n1495), .ZN(n1496) );
  XOR2_X1 U1970 ( .A(n2172), .B(n1496), .Z(n1509) );
  AOI222_X1 U1971 ( .A1(n989), .A2(n2263), .B1(n2167), .B2(n2261), .C1(n2166), 
        .C2(n2213), .ZN(n1497) );
  OAI21_X1 U1972 ( .B1(n1991), .B2(n2169), .A(n1497), .ZN(n1498) );
  XOR2_X1 U1973 ( .A(n2172), .B(n1498), .Z(n1560) );
  AOI222_X1 U1974 ( .A1(n951), .A2(n2281), .B1(n2252), .B2(n2280), .C1(n2251), 
        .C2(n2265), .ZN(n1499) );
  OAI21_X1 U1975 ( .B1(n1994), .B2(n2254), .A(n1499), .ZN(n1500) );
  XOR2_X1 U1976 ( .A(n2257), .B(n1500), .Z(n1559) );
  AOI222_X1 U1977 ( .A1(n943), .A2(MAC_sram_weight_read_data[15]), .B1(n2160), 
        .B2(n2272), .C1(n2159), .C2(MAC_sram_weight_read_data[13]), .ZN(n1501)
         );
  OAI21_X1 U1978 ( .B1(n1997), .B2(n2162), .A(n1501), .ZN(n1502) );
  XOR2_X1 U1979 ( .A(MAC_sram_input_read_data[2]), .B(n1502), .Z(n1558) );
  XNOR2_X1 U1980 ( .A(n2279), .B(MAC_accum_result[15]), .ZN(n1503) );
  XNOR2_X1 U1981 ( .A(n1504), .B(n1503), .ZN(n1535) );
  AOI222_X1 U1982 ( .A1(n1243), .A2(n2222), .B1(n2187), .B2(n2220), .C1(n1304), 
        .C2(n2200), .ZN(n1505) );
  OAI21_X1 U1983 ( .B1(n1961), .B2(n2189), .A(n1505), .ZN(n1506) );
  XOR2_X1 U1984 ( .A(MAC_sram_input_read_data[14]), .B(n1506), .Z(n1534) );
  AOI222_X1 U1985 ( .A1(n1872), .A2(n2211), .B1(n2174), .B2(n2209), .C1(n2173), 
        .C2(n2224), .ZN(n1507) );
  OAI21_X1 U1986 ( .B1(n1964), .B2(n2176), .A(n1507), .ZN(n1508) );
  XOR2_X1 U1987 ( .A(n2179), .B(n1508), .Z(n1533) );
  FA_X1 U1988 ( .A(n1511), .B(n1510), .CI(n1509), .CO(n1512), .S(n1539) );
  FA_X1 U1989 ( .A(n1514), .B(n1513), .CI(n1512), .CO(n1809), .S(n1519) );
  FA_X1 U1990 ( .A(n1517), .B(n1516), .CI(n1515), .CO(n1823), .S(n1518) );
  FA_X1 U1991 ( .A(n1520), .B(n1519), .CI(n1518), .CO(n1758), .S(n1757) );
  AOI22_X1 U1992 ( .A1(MAC_sram_weight_read_data[0]), .A2(n2187), .B1(n2200), 
        .B2(n1243), .ZN(n1521) );
  OAI21_X1 U1993 ( .B1(n2205), .B2(n2189), .A(n1521), .ZN(n1522) );
  XOR2_X1 U1994 ( .A(n2192), .B(n1522), .Z(n1701) );
  NAND2_X1 U1995 ( .A1(n1243), .A2(MAC_sram_weight_read_data[0]), .ZN(n1523)
         );
  OAI21_X1 U1996 ( .B1(n2189), .B2(n952), .A(n1523), .ZN(n1524) );
  XOR2_X1 U1997 ( .A(n2192), .B(n1524), .Z(n1702) );
  OAI21_X1 U1998 ( .B1(n1905), .B2(n2169), .A(n1525), .ZN(n1526) );
  XOR2_X1 U1999 ( .A(n2172), .B(n1526), .Z(n1733) );
  OAI21_X1 U2000 ( .B1(n1908), .B2(n2162), .A(n1527), .ZN(n1528) );
  XOR2_X1 U2001 ( .A(n2165), .B(n1528), .Z(n1732) );
  OAI21_X1 U2002 ( .B1(n1923), .B2(n2189), .A(n1529), .ZN(n1530) );
  XOR2_X1 U2003 ( .A(n2192), .B(n1530), .Z(n1557) );
  OAI21_X1 U2004 ( .B1(n1926), .B2(n2176), .A(n1531), .ZN(n1532) );
  XOR2_X1 U2005 ( .A(n2179), .B(n1532), .Z(n1556) );
  FA_X1 U2006 ( .A(n1535), .B(n1534), .CI(n1533), .CO(n1540), .S(n1545) );
  FA_X1 U2007 ( .A(n1538), .B(n1537), .CI(n1536), .CO(n1515), .S(n1543) );
  FA_X1 U2008 ( .A(n1541), .B(n1540), .CI(n1539), .CO(n1520), .S(n1542) );
  NOR2_X1 U2009 ( .A1(n1757), .A2(n1756), .ZN(n2895) );
  FA_X1 U2010 ( .A(n1544), .B(n1543), .CI(n1542), .CO(n1756), .S(n1755) );
  FA_X1 U2011 ( .A(n1547), .B(n1546), .CI(n1545), .CO(n1544), .S(n1744) );
  OAI21_X1 U2012 ( .B1(n2217), .B2(n2169), .A(n1548), .ZN(n1549) );
  XOR2_X1 U2013 ( .A(n2172), .B(n1549), .Z(n1697) );
  OAI21_X1 U2014 ( .B1(n2228), .B2(n2176), .A(n1550), .ZN(n1551) );
  XOR2_X1 U2015 ( .A(n2179), .B(n1551), .Z(n1696) );
  OAI21_X1 U2016 ( .B1(n2269), .B2(n2254), .A(n1552), .ZN(n1553) );
  XOR2_X1 U2017 ( .A(n2257), .B(n1553), .Z(n1695) );
  OAI21_X1 U2018 ( .B1(n1932), .B2(n2254), .A(n1554), .ZN(n1555) );
  XOR2_X1 U2019 ( .A(n2257), .B(n1555), .Z(n1736) );
  FA_X1 U2020 ( .A(n1557), .B(MAC_accum_result[14]), .CI(n1556), .CO(n1546), 
        .S(n1735) );
  FA_X1 U2021 ( .A(n1560), .B(n1559), .CI(n1558), .CO(n1541), .S(n1741) );
  NAND2_X1 U2022 ( .A1(n1744), .A2(n1561), .ZN(n1563) );
  NAND2_X1 U2023 ( .A1(n1742), .A2(n1741), .ZN(n1562) );
  NAND2_X1 U2024 ( .A1(n1563), .A2(n1562), .ZN(n1754) );
  NOR2_X1 U2025 ( .A1(n1755), .A2(n1754), .ZN(n2826) );
  NOR2_X1 U2026 ( .A1(n2895), .A2(n2826), .ZN(n2892) );
  NAND2_X1 U2027 ( .A1(n2890), .A2(n2892), .ZN(n1762) );
  AOI222_X1 U2028 ( .A1(n1872), .A2(n2220), .B1(n2174), .B2(n2200), .C1(n2173), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1564) );
  OAI21_X1 U2029 ( .B1(n1923), .B2(n2176), .A(n1564), .ZN(n1565) );
  XOR2_X1 U2030 ( .A(n2179), .B(n1565), .Z(n1694) );
  AOI222_X1 U2031 ( .A1(n989), .A2(n2209), .B1(n2167), .B2(n2224), .C1(n2166), 
        .C2(n2222), .ZN(n1566) );
  OAI21_X1 U2032 ( .B1(n1926), .B2(n2169), .A(n1566), .ZN(n1567) );
  XOR2_X1 U2033 ( .A(n2172), .B(n1567), .Z(n1693) );
  AOI222_X1 U2034 ( .A1(n951), .A2(n2213), .B1(n2252), .B2(n2211), .C1(n2251), 
        .C2(n2209), .ZN(n1568) );
  OAI21_X1 U2035 ( .B1(n2217), .B2(n2254), .A(n1568), .ZN(n1569) );
  XOR2_X1 U2036 ( .A(n2257), .B(n1569), .Z(n1591) );
  AOI222_X1 U2037 ( .A1(n989), .A2(n2224), .B1(n2167), .B2(n2222), .C1(n2166), 
        .C2(n2220), .ZN(n1570) );
  OAI21_X1 U2038 ( .B1(n2228), .B2(n2169), .A(n1570), .ZN(n1571) );
  XOR2_X1 U2039 ( .A(n2172), .B(n1571), .Z(n1590) );
  AOI222_X1 U2040 ( .A1(n943), .A2(n2265), .B1(n2160), .B2(n2263), .C1(n2159), 
        .C2(n2261), .ZN(n1572) );
  OAI21_X1 U2041 ( .B1(n2269), .B2(n2162), .A(n1572), .ZN(n1573) );
  XOR2_X1 U2042 ( .A(n2165), .B(n1573), .Z(n1589) );
  AOI22_X1 U2043 ( .A1(n2202), .A2(n2174), .B1(n2200), .B2(n1872), .ZN(n1574)
         );
  OAI21_X1 U2044 ( .B1(n2205), .B2(n2176), .A(n1574), .ZN(n1575) );
  XOR2_X1 U2045 ( .A(n2179), .B(n1575), .Z(n1588) );
  NAND2_X1 U2046 ( .A1(n1872), .A2(MAC_sram_weight_read_data[0]), .ZN(n1576)
         );
  OAI21_X1 U2047 ( .B1(n2176), .B2(n952), .A(n1576), .ZN(n1577) );
  XOR2_X1 U2048 ( .A(n2179), .B(n1577), .Z(n1582) );
  AOI222_X1 U2049 ( .A1(n951), .A2(n2261), .B1(n2252), .B2(n2213), .C1(n2251), 
        .C2(n2211), .ZN(n1578) );
  OAI21_X1 U2050 ( .B1(n1905), .B2(n2254), .A(n1578), .ZN(n1579) );
  XOR2_X1 U2051 ( .A(n2257), .B(n1579), .Z(n1708) );
  AOI222_X1 U2052 ( .A1(n943), .A2(n2280), .B1(n2160), .B2(n2265), .C1(n2159), 
        .C2(n2263), .ZN(n1580) );
  OAI21_X1 U2053 ( .B1(n1932), .B2(n2162), .A(n1580), .ZN(n1581) );
  XOR2_X1 U2054 ( .A(n2165), .B(n1581), .Z(n1707) );
  FA_X1 U2055 ( .A(n2179), .B(MAC_accum_result[9]), .CI(n1582), .CO(n1587), 
        .S(n1603) );
  AOI222_X1 U2056 ( .A1(n989), .A2(n2222), .B1(n2167), .B2(n2220), .C1(n2166), 
        .C2(n2200), .ZN(n1583) );
  OAI21_X1 U2057 ( .B1(n1961), .B2(n2169), .A(n1583), .ZN(n1584) );
  XOR2_X1 U2058 ( .A(n2172), .B(n1584), .Z(n1602) );
  AOI222_X1 U2059 ( .A1(n951), .A2(n2211), .B1(n2252), .B2(n2209), .C1(n2251), 
        .C2(n2224), .ZN(n1585) );
  OAI21_X1 U2060 ( .B1(n1964), .B2(n2254), .A(n1585), .ZN(n1586) );
  XOR2_X1 U2061 ( .A(n2257), .B(n1586), .Z(n1601) );
  FA_X1 U2062 ( .A(n1588), .B(MAC_accum_result[10]), .CI(n1587), .CO(n1709), 
        .S(n1593) );
  FA_X1 U2063 ( .A(n1591), .B(n1590), .CI(n1589), .CO(n1720), .S(n1592) );
  NOR2_X1 U2064 ( .A1(n1686), .A2(n1685), .ZN(n2811) );
  FA_X1 U2065 ( .A(n1594), .B(n1593), .CI(n1592), .CO(n1685), .S(n1684) );
  AOI222_X1 U2066 ( .A1(n989), .A2(n2220), .B1(n2167), .B2(n2200), .C1(n2166), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1595) );
  OAI21_X1 U2067 ( .B1(n1923), .B2(n2169), .A(n1595), .ZN(n1596) );
  XOR2_X1 U2068 ( .A(n2172), .B(n1596), .Z(n1611) );
  AOI222_X1 U2069 ( .A1(n951), .A2(n2209), .B1(n2252), .B2(n2224), .C1(n2251), 
        .C2(n2222), .ZN(n1597) );
  OAI21_X1 U2070 ( .B1(n1926), .B2(n2254), .A(n1597), .ZN(n1598) );
  XOR2_X1 U2071 ( .A(n2257), .B(n1598), .Z(n1610) );
  AOI222_X1 U2072 ( .A1(n943), .A2(n2263), .B1(n2160), .B2(n2261), .C1(n2159), 
        .C2(n2213), .ZN(n1599) );
  OAI21_X1 U2073 ( .B1(n1991), .B2(n2162), .A(n1599), .ZN(n1600) );
  XOR2_X1 U2074 ( .A(n2165), .B(n1600), .Z(n1619) );
  FA_X1 U2075 ( .A(n1603), .B(n1602), .CI(n1601), .CO(n1594), .S(n1618) );
  NOR2_X1 U2076 ( .A1(n1684), .A2(n1683), .ZN(n2921) );
  NOR2_X1 U2077 ( .A1(n2811), .A2(n2921), .ZN(n1688) );
  AOI22_X1 U2078 ( .A1(n2202), .A2(n2167), .B1(n2200), .B2(n989), .ZN(n1604)
         );
  OAI21_X1 U2079 ( .B1(n2205), .B2(n2169), .A(n1604), .ZN(n1605) );
  XOR2_X1 U2080 ( .A(n2172), .B(n1605), .Z(n1617) );
  NAND2_X1 U2081 ( .A1(n989), .A2(n2202), .ZN(n1606) );
  OAI21_X1 U2082 ( .B1(n2169), .B2(n952), .A(n1606), .ZN(n1607) );
  XOR2_X1 U2083 ( .A(n2172), .B(n1607), .Z(n1658) );
  AOI222_X1 U2084 ( .A1(n943), .A2(n2261), .B1(n2160), .B2(n2213), .C1(n2159), 
        .C2(n2211), .ZN(n1608) );
  OAI21_X1 U2085 ( .B1(n1905), .B2(n2162), .A(n1608), .ZN(n1609) );
  XOR2_X1 U2086 ( .A(n2165), .B(n1609), .Z(n1622) );
  FA_X1 U2087 ( .A(n1611), .B(MAC_accum_result[8]), .CI(n1610), .CO(n1620), 
        .S(n1621) );
  AOI222_X1 U2088 ( .A1(n943), .A2(n2213), .B1(n2160), .B2(n2211), .C1(n2159), 
        .C2(n2209), .ZN(n1612) );
  OAI21_X1 U2089 ( .B1(n2217), .B2(n2162), .A(n1612), .ZN(n1613) );
  XOR2_X1 U2090 ( .A(n2165), .B(n1613), .Z(n1669) );
  AOI222_X1 U2091 ( .A1(n951), .A2(n2224), .B1(n2252), .B2(n2222), .C1(n2251), 
        .C2(n2220), .ZN(n1614) );
  OAI21_X1 U2092 ( .B1(n2228), .B2(n2254), .A(n1614), .ZN(n1615) );
  XOR2_X1 U2093 ( .A(n2257), .B(n1615), .Z(n1668) );
  FA_X1 U2094 ( .A(n1617), .B(MAC_accum_result[7]), .CI(n1616), .CO(n1623), 
        .S(n1667) );
  FA_X1 U2095 ( .A(n1620), .B(n1619), .CI(n1618), .CO(n1683), .S(n1679) );
  FA_X1 U2096 ( .A(n1623), .B(n1622), .CI(n1621), .CO(n1678), .S(n1677) );
  NAND2_X1 U2097 ( .A1(n2930), .A2(n2927), .ZN(n1682) );
  AOI222_X1 U2098 ( .A1(n951), .A2(n2220), .B1(n2252), .B2(n2200), .C1(n2251), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1624) );
  OAI21_X1 U2099 ( .B1(n1923), .B2(n2254), .A(n1624), .ZN(n1625) );
  XOR2_X1 U2100 ( .A(n2257), .B(n1625), .Z(n1664) );
  AOI222_X1 U2101 ( .A1(n943), .A2(n2209), .B1(n2160), .B2(n2224), .C1(n2159), 
        .C2(n2222), .ZN(n1626) );
  OAI21_X1 U2102 ( .B1(n1926), .B2(n2162), .A(n1626), .ZN(n1627) );
  XOR2_X1 U2103 ( .A(n2165), .B(n1627), .Z(n1663) );
  AOI22_X1 U2104 ( .A1(n2202), .A2(n2252), .B1(n2200), .B2(n951), .ZN(n1628)
         );
  OAI21_X1 U2105 ( .B1(n2205), .B2(n2254), .A(n1628), .ZN(n1629) );
  XOR2_X1 U2106 ( .A(n2257), .B(n1629), .Z(n1633) );
  NAND2_X1 U2107 ( .A1(n951), .A2(n2202), .ZN(n1630) );
  OAI21_X1 U2108 ( .B1(n2254), .B2(n952), .A(n1630), .ZN(n1631) );
  XOR2_X1 U2109 ( .A(n2257), .B(n1631), .Z(n1646) );
  OR2_X1 U2110 ( .A1(n1656), .A2(n1655), .ZN(n2800) );
  FA_X1 U2111 ( .A(n1633), .B(MAC_accum_result[4]), .CI(n1632), .CO(n1655), 
        .S(n1652) );
  AOI222_X1 U2112 ( .A1(n943), .A2(n2224), .B1(n2160), .B2(n2222), .C1(n2159), 
        .C2(n2220), .ZN(n1634) );
  OAI21_X1 U2113 ( .B1(n2228), .B2(n2162), .A(n1634), .ZN(n1635) );
  XOR2_X1 U2114 ( .A(n2165), .B(n1635), .Z(n1651) );
  OR2_X1 U2115 ( .A1(n1652), .A2(n1651), .ZN(n2796) );
  AOI222_X1 U2116 ( .A1(n943), .A2(n2220), .B1(n2160), .B2(n2200), .C1(n2159), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1636) );
  OAI21_X1 U2117 ( .B1(n1923), .B2(n2162), .A(n1636), .ZN(n1637) );
  XOR2_X1 U2118 ( .A(n2165), .B(n1637), .Z(n1644) );
  OR2_X1 U2119 ( .A1(n1644), .A2(MAC_accum_result[2]), .ZN(n2792) );
  AOI22_X1 U2120 ( .A1(n2202), .A2(n2160), .B1(n943), .B2(n2200), .ZN(n1638)
         );
  OAI21_X1 U2121 ( .B1(n2205), .B2(n2162), .A(n1638), .ZN(n1639) );
  XOR2_X1 U2122 ( .A(n2165), .B(n1639), .Z(n1643) );
  NOR2_X1 U2123 ( .A1(n1643), .A2(MAC_accum_result[1]), .ZN(n2943) );
  NAND2_X1 U2124 ( .A1(n943), .A2(n2202), .ZN(n1640) );
  OAI21_X1 U2125 ( .B1(n2162), .B2(n952), .A(n1640), .ZN(n1641) );
  XOR2_X1 U2126 ( .A(n2165), .B(n1641), .Z(n2789) );
  OR2_X1 U2127 ( .A1(n2165), .A2(MAC_accum_result[0]), .ZN(n2787) );
  NAND2_X1 U2128 ( .A1(n2165), .A2(MAC_accum_result[0]), .ZN(n2786) );
  AOI21_X1 U2129 ( .B1(n2789), .B2(n2787), .A(n1642), .ZN(n2947) );
  NAND2_X1 U2130 ( .A1(n1643), .A2(MAC_accum_result[1]), .ZN(n2944) );
  OAI21_X1 U2131 ( .B1(n2943), .B2(n2947), .A(n2944), .ZN(n2793) );
  NAND2_X1 U2132 ( .A1(n1644), .A2(MAC_accum_result[2]), .ZN(n2791) );
  INV_X1 U2133 ( .A(n2791), .ZN(n1645) );
  AOI21_X1 U2134 ( .B1(n2792), .B2(n2793), .A(n1645), .ZN(n2942) );
  FA_X1 U2135 ( .A(n2257), .B(MAC_accum_result[3]), .CI(n1646), .CO(n1632), 
        .S(n1650) );
  AOI222_X1 U2136 ( .A1(n943), .A2(n2222), .B1(n2160), .B2(n2220), .C1(n2159), 
        .C2(n2200), .ZN(n1647) );
  OAI21_X1 U2137 ( .B1(n1961), .B2(n2162), .A(n1647), .ZN(n1648) );
  XOR2_X1 U2138 ( .A(MAC_sram_input_read_data[2]), .B(n1648), .Z(n1649) );
  NOR2_X1 U2139 ( .A1(n1650), .A2(n1649), .ZN(n2938) );
  NAND2_X1 U2140 ( .A1(n1650), .A2(n1649), .ZN(n2939) );
  OAI21_X1 U2141 ( .B1(n2942), .B2(n2938), .A(n2939), .ZN(n2797) );
  NAND2_X1 U2142 ( .A1(n1652), .A2(n1651), .ZN(n2795) );
  INV_X1 U2143 ( .A(n2795), .ZN(n1653) );
  AOI21_X1 U2144 ( .B1(n2796), .B2(n2797), .A(n1653), .ZN(n1654) );
  NAND2_X1 U2145 ( .A1(n1656), .A2(n1655), .ZN(n2799) );
  INV_X1 U2146 ( .A(n2799), .ZN(n1657) );
  AOI21_X1 U2147 ( .B1(n2800), .B2(n2801), .A(n1657), .ZN(n2936) );
  FA_X1 U2148 ( .A(n2172), .B(MAC_accum_result[6]), .CI(n1658), .CO(n1616), 
        .S(n1672) );
  AOI222_X1 U2149 ( .A1(n951), .A2(n2222), .B1(n2252), .B2(n2220), .C1(n2251), 
        .C2(n2200), .ZN(n1659) );
  OAI21_X1 U2150 ( .B1(n1961), .B2(n2254), .A(n1659), .ZN(n1660) );
  XOR2_X1 U2151 ( .A(n2257), .B(n1660), .Z(n1671) );
  AOI222_X1 U2152 ( .A1(n943), .A2(n2211), .B1(n2160), .B2(n2209), .C1(n2159), 
        .C2(n2224), .ZN(n1661) );
  OAI21_X1 U2153 ( .B1(n1964), .B2(n2162), .A(n1661), .ZN(n1662) );
  XOR2_X1 U2154 ( .A(MAC_sram_input_read_data[2]), .B(n1662), .Z(n1670) );
  FA_X1 U2155 ( .A(n1664), .B(MAC_accum_result[5]), .CI(n1663), .CO(n1665), 
        .S(n1656) );
  NOR2_X1 U2156 ( .A1(n1666), .A2(n1665), .ZN(n2933) );
  NAND2_X1 U2157 ( .A1(n1666), .A2(n1665), .ZN(n2934) );
  OAI21_X1 U2158 ( .B1(n2936), .B2(n2933), .A(n2934), .ZN(n2805) );
  FA_X1 U2159 ( .A(n1669), .B(n1668), .CI(n1667), .CO(n1676), .S(n1674) );
  FA_X1 U2160 ( .A(n1672), .B(n1671), .CI(n1670), .CO(n1673), .S(n1666) );
  NAND2_X1 U2161 ( .A1(n1674), .A2(n1673), .ZN(n2803) );
  AOI21_X1 U2162 ( .B1(n2805), .B2(n2804), .A(n1675), .ZN(n2808) );
  NAND2_X1 U2163 ( .A1(n1677), .A2(n1676), .ZN(n2807) );
  NAND2_X1 U2164 ( .A1(n1679), .A2(n1678), .ZN(n2926) );
  AOI21_X1 U2165 ( .B1(n2927), .B2(n2928), .A(n1680), .ZN(n1681) );
  OAI21_X1 U2166 ( .B1(n1682), .B2(n2808), .A(n1681), .ZN(n2810) );
  NAND2_X1 U2167 ( .A1(n1684), .A2(n1683), .ZN(n2922) );
  NAND2_X1 U2168 ( .A1(n1686), .A2(n1685), .ZN(n2812) );
  OAI21_X1 U2169 ( .B1(n2811), .B2(n2922), .A(n2812), .ZN(n1687) );
  AOI21_X1 U2170 ( .B1(n1688), .B2(n2810), .A(n1687), .ZN(n2816) );
  AOI222_X1 U2171 ( .A1(n951), .A2(n2263), .B1(n2252), .B2(n2261), .C1(n2251), 
        .C2(n2213), .ZN(n1689) );
  OAI21_X1 U2172 ( .B1(n1991), .B2(n2254), .A(n1689), .ZN(n1690) );
  XOR2_X1 U2173 ( .A(n2257), .B(n1690), .Z(n1715) );
  AOI222_X1 U2174 ( .A1(n943), .A2(n2281), .B1(n2160), .B2(n2280), .C1(n2159), 
        .C2(n2265), .ZN(n1691) );
  OAI21_X1 U2175 ( .B1(n1994), .B2(n2162), .A(n1691), .ZN(n1692) );
  XOR2_X1 U2176 ( .A(MAC_sram_input_read_data[2]), .B(n1692), .Z(n1714) );
  FA_X1 U2177 ( .A(n1694), .B(MAC_accum_result[11]), .CI(n1693), .CO(n1713), 
        .S(n1721) );
  FA_X1 U2178 ( .A(n1697), .B(n1696), .CI(n1695), .CO(n1737), .S(n1739) );
  OAI21_X1 U2179 ( .B1(n2287), .B2(n2162), .A(n1698), .ZN(n1699) );
  XOR2_X1 U2180 ( .A(MAC_sram_input_read_data[2]), .B(n1699), .Z(n1731) );
  FA_X1 U2181 ( .A(n1701), .B(MAC_accum_result[13]), .CI(n1700), .CO(n1734), 
        .S(n1730) );
  FA_X1 U2182 ( .A(n2192), .B(MAC_accum_result[12]), .CI(n1702), .CO(n1700), 
        .S(n1712) );
  AOI222_X1 U2183 ( .A1(n1872), .A2(n2222), .B1(n2174), .B2(n2220), .C1(n2173), 
        .C2(n2200), .ZN(n1703) );
  OAI21_X1 U2184 ( .B1(n1961), .B2(n2176), .A(n1703), .ZN(n1704) );
  XOR2_X1 U2185 ( .A(n2179), .B(n1704), .Z(n1711) );
  AOI222_X1 U2186 ( .A1(n989), .A2(n2211), .B1(n2167), .B2(n2209), .C1(n2166), 
        .C2(n2224), .ZN(n1705) );
  OAI21_X1 U2187 ( .B1(n1964), .B2(n2169), .A(n1705), .ZN(n1706) );
  XOR2_X1 U2188 ( .A(n2172), .B(n1706), .Z(n1710) );
  FA_X1 U2189 ( .A(n1709), .B(n1708), .CI(n1707), .CO(n1718), .S(n1719) );
  FA_X1 U2190 ( .A(n1712), .B(n1711), .CI(n1710), .CO(n1729), .S(n1717) );
  FA_X1 U2191 ( .A(n1715), .B(n1714), .CI(n1713), .CO(n1740), .S(n1716) );
  FA_X1 U2192 ( .A(n1718), .B(n1717), .CI(n1716), .CO(n1724), .S(n1723) );
  FA_X1 U2193 ( .A(n1721), .B(n1720), .CI(n1719), .CO(n1722), .S(n1686) );
  NAND2_X1 U2194 ( .A1(n2910), .A2(n2912), .ZN(n1728) );
  NAND2_X1 U2195 ( .A1(n1723), .A2(n1722), .ZN(n2817) );
  NAND2_X1 U2196 ( .A1(n1725), .A2(n1724), .ZN(n2909) );
  AOI21_X1 U2197 ( .B1(n2910), .B2(n2911), .A(n1726), .ZN(n1727) );
  OAI21_X1 U2198 ( .B1(n2816), .B2(n1728), .A(n1727), .ZN(n2819) );
  FA_X1 U2199 ( .A(n1731), .B(n1730), .CI(n1729), .CO(n1747), .S(n1738) );
  FA_X1 U2200 ( .A(n1734), .B(n1733), .CI(n1732), .CO(n1547), .S(n1746) );
  FA_X1 U2201 ( .A(n1737), .B(n1736), .CI(n1735), .CO(n1742), .S(n1745) );
  FA_X1 U2202 ( .A(n1740), .B(n1739), .CI(n1738), .CO(n1748), .S(n1725) );
  NOR2_X1 U2203 ( .A1(n1749), .A2(n1748), .ZN(n2916) );
  XNOR2_X1 U2204 ( .A(n1742), .B(n1741), .ZN(n1743) );
  XNOR2_X1 U2205 ( .A(n1744), .B(n1743), .ZN(n1751) );
  FA_X1 U2206 ( .A(n1747), .B(n1746), .CI(n1745), .CO(n1750), .S(n1749) );
  NOR2_X1 U2207 ( .A1(n1751), .A2(n1750), .ZN(n2820) );
  NOR2_X1 U2208 ( .A1(n2916), .A2(n2820), .ZN(n1753) );
  NAND2_X1 U2209 ( .A1(n1749), .A2(n1748), .ZN(n2917) );
  NAND2_X1 U2210 ( .A1(n1751), .A2(n1750), .ZN(n2821) );
  OAI21_X1 U2211 ( .B1(n2820), .B2(n2917), .A(n2821), .ZN(n1752) );
  AOI21_X1 U2212 ( .B1(n2819), .B2(n1753), .A(n1752), .ZN(n2825) );
  NAND2_X1 U2213 ( .A1(n1755), .A2(n1754), .ZN(n2898) );
  NAND2_X1 U2214 ( .A1(n1757), .A2(n1756), .ZN(n2896) );
  OAI21_X1 U2215 ( .B1(n2895), .B2(n2898), .A(n2896), .ZN(n2891) );
  NAND2_X1 U2216 ( .A1(n1759), .A2(n1758), .ZN(n2889) );
  AOI21_X1 U2217 ( .B1(n2890), .B2(n2891), .A(n1760), .ZN(n1761) );
  OAI21_X1 U2218 ( .B1(n1762), .B2(n2825), .A(n1761), .ZN(n2828) );
  FA_X1 U2219 ( .A(n1765), .B(n1764), .CI(n1763), .CO(n1817), .S(n1822) );
  AOI222_X1 U2220 ( .A1(n1243), .A2(n2213), .B1(n2187), .B2(n2211), .C1(n1304), 
        .C2(n2209), .ZN(n1766) );
  OAI21_X1 U2221 ( .B1(n2217), .B2(n2189), .A(n1766), .ZN(n1767) );
  XOR2_X1 U2222 ( .A(n2192), .B(n1767), .Z(n1785) );
  AOI222_X1 U2223 ( .A1(n2274), .A2(n2224), .B1(n2273), .B2(n2222), .C1(n1281), 
        .C2(n2220), .ZN(n1768) );
  OAI21_X1 U2224 ( .B1(n2228), .B2(n2276), .A(n1768), .ZN(n1769) );
  XOR2_X1 U2225 ( .A(n2279), .B(n1769), .Z(n1784) );
  AOI222_X1 U2226 ( .A1(n1872), .A2(n2265), .B1(n2174), .B2(n2263), .C1(n2173), 
        .C2(n2261), .ZN(n1770) );
  OAI21_X1 U2227 ( .B1(n2269), .B2(n2176), .A(n1770), .ZN(n1771) );
  XOR2_X1 U2228 ( .A(n2179), .B(n1771), .Z(n1783) );
  AOI22_X1 U2229 ( .A1(n2202), .A2(n2282), .B1(n2200), .B2(n2284), .ZN(n1772)
         );
  OAI21_X1 U2230 ( .B1(n2205), .B2(n2286), .A(n1772), .ZN(n1773) );
  XOR2_X1 U2231 ( .A(n1966), .B(n1773), .Z(n1796) );
  FA_X1 U2232 ( .A(n1966), .B(MAC_accum_result[18]), .CI(n1774), .CO(n1795), 
        .S(n1803) );
  AOI222_X1 U2233 ( .A1(n951), .A2(MAC_sram_weight_read_data[16]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[15]), .C1(n2251), .C2(n2272), .ZN(n1775)
         );
  OAI21_X1 U2234 ( .B1(n2277), .B2(n2254), .A(n1775), .ZN(n1776) );
  XOR2_X1 U2235 ( .A(n2257), .B(n1776), .Z(n1787) );
  AOI222_X1 U2236 ( .A1(n989), .A2(n2283), .B1(n2167), .B2(n2281), .C1(n2166), 
        .C2(n2280), .ZN(n1777) );
  OAI21_X1 U2237 ( .B1(n2287), .B2(n2169), .A(n1777), .ZN(n1778) );
  XOR2_X1 U2238 ( .A(n2172), .B(n1778), .Z(n1786) );
  AOI222_X1 U2239 ( .A1(n2284), .A2(n2220), .B1(n2282), .B2(n2200), .C1(n1292), 
        .C2(MAC_sram_weight_read_data[0]), .ZN(n1779) );
  OAI21_X1 U2240 ( .B1(n1923), .B2(n2286), .A(n1779), .ZN(n1780) );
  XOR2_X1 U2241 ( .A(MAC_sram_input_read_data[20]), .B(n1780), .Z(n1835) );
  AOI222_X1 U2242 ( .A1(n2274), .A2(n2209), .B1(n2273), .B2(n2224), .C1(n1281), 
        .C2(n2222), .ZN(n1781) );
  OAI21_X1 U2243 ( .B1(n1926), .B2(n2276), .A(n1781), .ZN(n1782) );
  XOR2_X1 U2244 ( .A(n2279), .B(n1782), .Z(n1834) );
  FA_X1 U2245 ( .A(n1785), .B(n1784), .CI(n1783), .CO(n1843), .S(n1816) );
  FA_X1 U2246 ( .A(n1788), .B(n1787), .CI(n1786), .CO(n1842), .S(n1815) );
  AOI222_X1 U2247 ( .A1(n943), .A2(MAC_sram_weight_read_data[20]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[19]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[18]), .ZN(n1789) );
  OAI21_X1 U2248 ( .B1(n1920), .B2(n2162), .A(n1789), .ZN(n1790) );
  XOR2_X1 U2249 ( .A(n2165), .B(n1790), .Z(n1883) );
  AOI222_X1 U2250 ( .A1(n1872), .A2(n2280), .B1(n2174), .B2(n2265), .C1(n2173), 
        .C2(n2263), .ZN(n1791) );
  OAI21_X1 U2251 ( .B1(n1932), .B2(n2176), .A(n1791), .ZN(n1792) );
  XOR2_X1 U2252 ( .A(n2179), .B(n1792), .Z(n1882) );
  AOI222_X1 U2253 ( .A1(n951), .A2(MAC_sram_weight_read_data[17]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[16]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[15]), .ZN(n1793) );
  OAI21_X1 U2254 ( .B1(n1935), .B2(n2254), .A(n1793), .ZN(n1794) );
  XOR2_X1 U2255 ( .A(n2257), .B(n1794), .Z(n1881) );
  FA_X1 U2256 ( .A(n1796), .B(MAC_accum_result[19]), .CI(n1795), .CO(n1880), 
        .S(n1788) );
  AOI222_X1 U2257 ( .A1(n1243), .A2(n2261), .B1(n2187), .B2(n2213), .C1(n1304), 
        .C2(n2211), .ZN(n1797) );
  OAI21_X1 U2258 ( .B1(n1905), .B2(n2189), .A(n1797), .ZN(n1798) );
  XOR2_X1 U2259 ( .A(n2192), .B(n1798), .Z(n1879) );
  AOI222_X1 U2260 ( .A1(n989), .A2(n2272), .B1(n2167), .B2(
        MAC_sram_weight_read_data[13]), .C1(n2166), .C2(n2281), .ZN(n1799) );
  OAI21_X1 U2261 ( .B1(n1908), .B2(n2169), .A(n1799), .ZN(n1800) );
  XOR2_X1 U2262 ( .A(n2172), .B(n1800), .Z(n1878) );
  FA_X1 U2263 ( .A(n1803), .B(n1802), .CI(n1801), .CO(n1814), .S(n1810) );
  AOI222_X1 U2264 ( .A1(n943), .A2(MAC_sram_weight_read_data[19]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[18]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[17]), .ZN(n1804) );
  OAI21_X1 U2265 ( .B1(n2190), .B2(n2162), .A(n1804), .ZN(n1805) );
  XOR2_X1 U2266 ( .A(MAC_sram_input_read_data[2]), .B(n1805), .Z(n1813) );
  FA_X1 U2267 ( .A(n1808), .B(n1807), .CI(n1806), .CO(n1812), .S(n1811) );
  FA_X1 U2268 ( .A(n1811), .B(n1810), .CI(n1809), .CO(n1820), .S(n1821) );
  FA_X1 U2269 ( .A(n1814), .B(n1813), .CI(n1812), .CO(n1884), .S(n1819) );
  FA_X1 U2270 ( .A(n1817), .B(n1816), .CI(n1815), .CO(n1898), .S(n1818) );
  NOR2_X1 U2271 ( .A1(n1827), .A2(n1826), .ZN(n2829) );
  FA_X1 U2272 ( .A(n1820), .B(n1819), .CI(n1818), .CO(n1826), .S(n1825) );
  FA_X1 U2273 ( .A(n1823), .B(n1822), .CI(n1821), .CO(n1824), .S(n1759) );
  NOR2_X1 U2274 ( .A1(n1825), .A2(n1824), .ZN(n2904) );
  NOR2_X1 U2275 ( .A1(n2829), .A2(n2904), .ZN(n1829) );
  NAND2_X1 U2276 ( .A1(n1825), .A2(n1824), .ZN(n2905) );
  NAND2_X1 U2277 ( .A1(n1827), .A2(n1826), .ZN(n2830) );
  OAI21_X1 U2278 ( .B1(n2829), .B2(n2905), .A(n2830), .ZN(n1828) );
  AOI21_X1 U2279 ( .B1(n2828), .B2(n1829), .A(n1828), .ZN(n2834) );
  AOI222_X1 U2280 ( .A1(n951), .A2(MAC_sram_weight_read_data[18]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[17]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[16]), .ZN(n1830) );
  OAI21_X1 U2281 ( .B1(n1968), .B2(n2254), .A(n1830), .ZN(n1831) );
  XOR2_X1 U2282 ( .A(n2257), .B(n1831), .Z(n1856) );
  AOI222_X1 U2283 ( .A1(n943), .A2(MAC_sram_weight_read_data[21]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[20]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[19]), .ZN(n1832) );
  OAI21_X1 U2284 ( .B1(n1957), .B2(n2162), .A(n1832), .ZN(n1833) );
  XOR2_X1 U2285 ( .A(MAC_sram_input_read_data[2]), .B(n1833), .Z(n1855) );
  FA_X1 U2286 ( .A(n1835), .B(MAC_accum_result[20]), .CI(n1834), .CO(n1854), 
        .S(n1844) );
  AOI222_X1 U2287 ( .A1(n1872), .A2(n2281), .B1(n2174), .B2(n2280), .C1(n2173), 
        .C2(n2265), .ZN(n1836) );
  OAI21_X1 U2288 ( .B1(n1994), .B2(n2176), .A(n1836), .ZN(n1837) );
  XOR2_X1 U2289 ( .A(n2179), .B(n1837), .Z(n1853) );
  AOI222_X1 U2290 ( .A1(n1243), .A2(n2263), .B1(n2187), .B2(n2261), .C1(n1304), 
        .C2(n2213), .ZN(n1838) );
  OAI21_X1 U2291 ( .B1(n1991), .B2(n2189), .A(n1838), .ZN(n1839) );
  XOR2_X1 U2292 ( .A(MAC_sram_input_read_data[14]), .B(n1839), .Z(n1852) );
  AOI222_X1 U2293 ( .A1(n989), .A2(MAC_sram_weight_read_data[15]), .B1(n2167), 
        .B2(n2272), .C1(n2166), .C2(MAC_sram_weight_read_data[13]), .ZN(n1840)
         );
  OAI21_X1 U2294 ( .B1(n1997), .B2(n2169), .A(n1840), .ZN(n1841) );
  XOR2_X1 U2295 ( .A(n2172), .B(n1841), .Z(n1851) );
  FA_X1 U2296 ( .A(n1844), .B(n1843), .CI(n1842), .CO(n1890), .S(n1897) );
  OAI21_X1 U2297 ( .B1(n2217), .B2(n2276), .A(n1845), .ZN(n1846) );
  XOR2_X1 U2298 ( .A(n2279), .B(n1846), .Z(n1918) );
  AOI222_X1 U2299 ( .A1(n2284), .A2(n2224), .B1(n2282), .B2(n2222), .C1(n1292), 
        .C2(n2220), .ZN(n1847) );
  OAI21_X1 U2300 ( .B1(n2228), .B2(n2286), .A(n1847), .ZN(n1848) );
  XOR2_X1 U2301 ( .A(MAC_sram_input_read_data[20]), .B(n1848), .Z(n1917) );
  OAI21_X1 U2302 ( .B1(n2269), .B2(n2189), .A(n1849), .ZN(n1850) );
  XOR2_X1 U2303 ( .A(n2192), .B(n1850), .Z(n1916) );
  FA_X1 U2304 ( .A(n1853), .B(n1852), .CI(n1851), .CO(n1938), .S(n1891) );
  FA_X1 U2305 ( .A(n1856), .B(n1855), .CI(n1854), .CO(n1937), .S(n1892) );
  AOI222_X1 U2306 ( .A1(n951), .A2(MAC_sram_weight_read_data[19]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[18]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[17]), .ZN(n1857) );
  OAI21_X1 U2307 ( .B1(n2190), .B2(n2254), .A(n1857), .ZN(n1858) );
  XOR2_X1 U2308 ( .A(n2257), .B(n1858), .Z(n1915) );
  AOI222_X1 U2309 ( .A1(n943), .A2(MAC_sram_weight_read_data[22]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[21]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[20]), .ZN(n1859) );
  OAI21_X1 U2310 ( .B1(n2177), .B2(n2162), .A(n1859), .ZN(n1860) );
  XOR2_X1 U2311 ( .A(MAC_sram_input_read_data[2]), .B(n1860), .Z(n1914) );
  NAND2_X1 U2312 ( .A1(n2266), .A2(MAC_sram_weight_read_data[0]), .ZN(n1861)
         );
  OAI21_X1 U2313 ( .B1(n2268), .B2(n952), .A(n1861), .ZN(n1862) );
  XOR2_X1 U2314 ( .A(n2271), .B(n1862), .Z(n1869) );
  AOI222_X1 U2315 ( .A1(n2284), .A2(n2222), .B1(n2282), .B2(n2220), .C1(n1292), 
        .C2(n2200), .ZN(n1863) );
  OAI21_X1 U2316 ( .B1(n1961), .B2(n2286), .A(n1863), .ZN(n1864) );
  XOR2_X1 U2317 ( .A(MAC_sram_input_read_data[20]), .B(n1864), .Z(n1876) );
  AOI222_X1 U2318 ( .A1(n2274), .A2(n2211), .B1(n2273), .B2(n2209), .C1(n1281), 
        .C2(n2224), .ZN(n1865) );
  OAI21_X1 U2319 ( .B1(n1964), .B2(n2276), .A(n1865), .ZN(n1866) );
  XOR2_X1 U2320 ( .A(n2279), .B(n1866), .Z(n1875) );
  AOI22_X1 U2321 ( .A1(n2264), .A2(MAC_sram_weight_read_data[0]), .B1(n2266), 
        .B2(n2200), .ZN(n1867) );
  OAI21_X1 U2322 ( .B1(n2205), .B2(n2268), .A(n1867), .ZN(n1868) );
  XOR2_X1 U2323 ( .A(n2271), .B(n1868), .Z(n1903) );
  FA_X1 U2324 ( .A(n2271), .B(MAC_accum_result[21]), .CI(n1869), .CO(n1902), 
        .S(n1877) );
  AOI222_X1 U2325 ( .A1(n989), .A2(MAC_sram_weight_read_data[16]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[15]), .C1(n2166), .C2(n2272), .ZN(n1870)
         );
  OAI21_X1 U2326 ( .B1(n2277), .B2(n2169), .A(n1870), .ZN(n1871) );
  XOR2_X1 U2327 ( .A(n2172), .B(n1871), .Z(n1911) );
  AOI222_X1 U2328 ( .A1(n1872), .A2(n2283), .B1(n2174), .B2(n2281), .C1(n2173), 
        .C2(n2280), .ZN(n1873) );
  OAI21_X1 U2329 ( .B1(n2287), .B2(n2176), .A(n1873), .ZN(n1874) );
  XOR2_X1 U2330 ( .A(n2179), .B(n1874), .Z(n1910) );
  FA_X1 U2331 ( .A(n1877), .B(n1876), .CI(n1875), .CO(n1913), .S(n1889) );
  FA_X1 U2332 ( .A(n1880), .B(n1879), .CI(n1878), .CO(n1888), .S(n1885) );
  FA_X1 U2333 ( .A(n1883), .B(n1882), .CI(n1881), .CO(n1887), .S(n1886) );
  FA_X1 U2334 ( .A(n1886), .B(n1885), .CI(n1884), .CO(n1895), .S(n1896) );
  FA_X1 U2335 ( .A(n1889), .B(n1888), .CI(n1887), .CO(n1899), .S(n1894) );
  FA_X1 U2336 ( .A(n1892), .B(n1891), .CI(n1890), .CO(n1942), .S(n1893) );
  NOR2_X1 U2337 ( .A1(n1947), .A2(n1946), .ZN(n2876) );
  FA_X1 U2338 ( .A(n1895), .B(n1894), .CI(n1893), .CO(n1946), .S(n1945) );
  FA_X1 U2339 ( .A(n1898), .B(n1897), .CI(n1896), .CO(n1944), .S(n1827) );
  NOR2_X1 U2340 ( .A1(n1945), .A2(n1944), .ZN(n2835) );
  NOR2_X1 U2341 ( .A1(n2876), .A2(n2835), .ZN(n2873) );
  FA_X1 U2342 ( .A(n1901), .B(n1900), .CI(n1899), .CO(n2034), .S(n1940) );
  FA_X1 U2343 ( .A(n1903), .B(MAC_accum_result[22]), .CI(n1902), .CO(n1955), 
        .S(n1912) );
  AOI222_X1 U2344 ( .A1(n2274), .A2(n2261), .B1(n2273), .B2(n2213), .C1(n1281), 
        .C2(n2211), .ZN(n1904) );
  OAI21_X1 U2345 ( .B1(n1905), .B2(n2276), .A(n1904), .ZN(n1906) );
  XOR2_X1 U2346 ( .A(n2279), .B(n1906), .Z(n1954) );
  OAI21_X1 U2347 ( .B1(n1908), .B2(n2176), .A(n1907), .ZN(n1909) );
  XOR2_X1 U2348 ( .A(n2179), .B(n1909), .Z(n1953) );
  FA_X1 U2349 ( .A(n1912), .B(n1911), .CI(n1910), .CO(n1976), .S(n1900) );
  FA_X1 U2350 ( .A(n1915), .B(n1914), .CI(n1913), .CO(n1975), .S(n1901) );
  FA_X1 U2351 ( .A(n1918), .B(n1917), .CI(n1916), .CO(n2019), .S(n1939) );
  AOI222_X1 U2352 ( .A1(n951), .A2(MAC_sram_weight_read_data[20]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[19]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[18]), .ZN(n1919) );
  OAI21_X1 U2353 ( .B1(n1920), .B2(n2254), .A(n1919), .ZN(n1921) );
  XOR2_X1 U2354 ( .A(n2257), .B(n1921), .Z(n2018) );
  OAI21_X1 U2355 ( .B1(n1923), .B2(n2268), .A(n1922), .ZN(n1924) );
  XOR2_X1 U2356 ( .A(MAC_sram_input_read_data[23]), .B(n1924), .Z(n1974) );
  AOI222_X1 U2357 ( .A1(n2284), .A2(n2209), .B1(n2282), .B2(n2224), .C1(n1292), 
        .C2(n2222), .ZN(n1925) );
  OAI21_X1 U2358 ( .B1(n1926), .B2(n2286), .A(n1925), .ZN(n1927) );
  XOR2_X1 U2359 ( .A(n1966), .B(n1927), .Z(n1973) );
  OAI21_X1 U2360 ( .B1(n1929), .B2(n2162), .A(n1928), .ZN(n1930) );
  XOR2_X1 U2361 ( .A(n2165), .B(n1930), .Z(n2016) );
  OAI21_X1 U2362 ( .B1(n1932), .B2(n2189), .A(n1931), .ZN(n1933) );
  XOR2_X1 U2363 ( .A(n2192), .B(n1933), .Z(n2015) );
  OAI21_X1 U2364 ( .B1(n1935), .B2(n2169), .A(n1934), .ZN(n1936) );
  XOR2_X1 U2365 ( .A(n2172), .B(n1936), .Z(n2014) );
  FA_X1 U2366 ( .A(n1939), .B(n1938), .CI(n1937), .CO(n2020), .S(n1941) );
  FA_X1 U2367 ( .A(n1942), .B(n1941), .CI(n1940), .CO(n1948), .S(n1947) );
  NAND2_X1 U2368 ( .A1(n2873), .A2(n2871), .ZN(n1943) );
  NAND2_X1 U2369 ( .A1(n1945), .A2(n1944), .ZN(n2879) );
  NAND2_X1 U2370 ( .A1(n1947), .A2(n1946), .ZN(n2877) );
  OAI21_X1 U2371 ( .B1(n2876), .B2(n2879), .A(n2877), .ZN(n2872) );
  NAND2_X1 U2372 ( .A1(n1949), .A2(n1948), .ZN(n2870) );
  AOI21_X1 U2373 ( .B1(n2872), .B2(n2871), .A(n1950), .ZN(n1951) );
  FA_X1 U2374 ( .A(n1955), .B(n1954), .CI(n1953), .CO(n1989), .S(n1977) );
  OAI21_X1 U2375 ( .B1(n1957), .B2(n2254), .A(n1956), .ZN(n1958) );
  XOR2_X1 U2376 ( .A(n2257), .B(n1958), .Z(n1988) );
  FA_X1 U2377 ( .A(n2219), .B(MAC_accum_result[24]), .CI(n1959), .CO(n1978), 
        .S(n2010) );
  AOI222_X1 U2378 ( .A1(n2266), .A2(n2222), .B1(n2264), .B2(n2220), .C1(n2262), 
        .C2(n2200), .ZN(n1960) );
  OAI21_X1 U2379 ( .B1(n1961), .B2(n2268), .A(n1960), .ZN(n1962) );
  XOR2_X1 U2380 ( .A(MAC_sram_input_read_data[23]), .B(n1962), .Z(n2009) );
  AOI222_X1 U2381 ( .A1(n2284), .A2(n2211), .B1(n2282), .B2(n2209), .C1(n1292), 
        .C2(n2224), .ZN(n1963) );
  OAI21_X1 U2382 ( .B1(n1964), .B2(n2286), .A(n1963), .ZN(n1965) );
  XOR2_X1 U2383 ( .A(n1966), .B(n1965), .Z(n2008) );
  AOI222_X1 U2384 ( .A1(n989), .A2(MAC_sram_weight_read_data[18]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[17]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[16]), .ZN(n1967) );
  OAI21_X1 U2385 ( .B1(n1968), .B2(n2169), .A(n1967), .ZN(n1969) );
  XOR2_X1 U2386 ( .A(n2172), .B(n1969), .Z(n1986) );
  AOI222_X1 U2387 ( .A1(n943), .A2(MAC_sram_weight_read_data[24]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[23]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[22]), .ZN(n1970) );
  OAI21_X1 U2388 ( .B1(n1971), .B2(n2162), .A(n1970), .ZN(n1972) );
  XOR2_X1 U2389 ( .A(n2165), .B(n1972), .Z(n1985) );
  FA_X1 U2390 ( .A(n1974), .B(MAC_accum_result[23]), .CI(n1973), .CO(n1984), 
        .S(n2017) );
  FA_X1 U2391 ( .A(n1977), .B(n1976), .CI(n1975), .CO(n2026), .S(n2033) );
  FA_X1 U2392 ( .A(n1979), .B(MAC_accum_result[25]), .CI(n1978), .CO(n2060), 
        .S(n2055) );
  AOI222_X1 U2393 ( .A1(n1872), .A2(MAC_sram_weight_read_data[16]), .B1(n2174), 
        .B2(MAC_sram_weight_read_data[15]), .C1(n2173), .C2(n2272), .ZN(n1980)
         );
  OAI21_X1 U2394 ( .B1(n2277), .B2(n2176), .A(n1980), .ZN(n1981) );
  XOR2_X1 U2395 ( .A(n2179), .B(n1981), .Z(n2054) );
  AOI222_X1 U2396 ( .A1(n1243), .A2(n2283), .B1(n2187), .B2(n2281), .C1(n1304), 
        .C2(n2280), .ZN(n1982) );
  OAI21_X1 U2397 ( .B1(n2287), .B2(n2189), .A(n1982), .ZN(n1983) );
  XOR2_X1 U2398 ( .A(n2192), .B(n1983), .Z(n2053) );
  FA_X1 U2399 ( .A(n1986), .B(n1985), .CI(n1984), .CO(n2048), .S(n2027) );
  FA_X1 U2400 ( .A(n1989), .B(n1988), .CI(n1987), .CO(n2047), .S(n2028) );
  AOI222_X1 U2401 ( .A1(n2274), .A2(n2263), .B1(n2273), .B2(n2261), .C1(n1281), 
        .C2(n2213), .ZN(n1990) );
  OAI21_X1 U2402 ( .B1(n1991), .B2(n2276), .A(n1990), .ZN(n1992) );
  XOR2_X1 U2403 ( .A(n2279), .B(n1992), .Z(n2013) );
  OAI21_X1 U2404 ( .B1(n1994), .B2(n2189), .A(n1993), .ZN(n1995) );
  XOR2_X1 U2405 ( .A(n2192), .B(n1995), .Z(n2012) );
  AOI222_X1 U2406 ( .A1(n1872), .A2(MAC_sram_weight_read_data[15]), .B1(n2174), 
        .B2(n2272), .C1(n2173), .C2(n2283), .ZN(n1996) );
  OAI21_X1 U2407 ( .B1(n1997), .B2(n2176), .A(n1996), .ZN(n1998) );
  XOR2_X1 U2408 ( .A(n2179), .B(n1998), .Z(n2011) );
  AOI222_X1 U2409 ( .A1(n951), .A2(MAC_sram_weight_read_data[22]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[21]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[20]), .ZN(n1999) );
  OAI21_X1 U2410 ( .B1(n2177), .B2(n2254), .A(n1999), .ZN(n2000) );
  XOR2_X1 U2411 ( .A(n2257), .B(n2000), .Z(n2051) );
  FA_X1 U2412 ( .A(n2003), .B(n2002), .CI(n2001), .CO(n2044), .S(n2050) );
  AOI222_X1 U2413 ( .A1(n989), .A2(MAC_sram_weight_read_data[19]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[18]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[17]), .ZN(n2004) );
  OAI21_X1 U2414 ( .B1(n2190), .B2(n2169), .A(n2004), .ZN(n2005) );
  XOR2_X1 U2415 ( .A(n2172), .B(n2005), .Z(n2043) );
  AOI222_X1 U2416 ( .A1(n943), .A2(MAC_sram_weight_read_data[25]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[24]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[23]), .ZN(n2006) );
  OAI21_X1 U2417 ( .B1(n2170), .B2(n2162), .A(n2006), .ZN(n2007) );
  XOR2_X1 U2418 ( .A(n2165), .B(n2007), .Z(n2042) );
  FA_X1 U2419 ( .A(n2010), .B(n2009), .CI(n2008), .CO(n2041), .S(n1987) );
  FA_X1 U2420 ( .A(n2013), .B(n2012), .CI(n2011), .CO(n2052), .S(n2025) );
  FA_X1 U2421 ( .A(n2016), .B(n2015), .CI(n2014), .CO(n2024), .S(n2021) );
  FA_X1 U2422 ( .A(n2019), .B(n2018), .CI(n2017), .CO(n2023), .S(n2022) );
  FA_X1 U2423 ( .A(n2022), .B(n2021), .CI(n2020), .CO(n2031), .S(n2032) );
  FA_X1 U2424 ( .A(n2025), .B(n2024), .CI(n2023), .CO(n2035), .S(n2030) );
  FA_X1 U2425 ( .A(n2028), .B(n2027), .CI(n2026), .CO(n2063), .S(n2029) );
  FA_X1 U2426 ( .A(n2031), .B(n2030), .CI(n2029), .CO(n2066), .S(n2065) );
  FA_X1 U2427 ( .A(n2034), .B(n2033), .CI(n2032), .CO(n2064), .S(n1949) );
  NOR2_X1 U2428 ( .A1(n2065), .A2(n2064), .ZN(n2845) );
  NAND2_X1 U2429 ( .A1(n2847), .A2(n2886), .ZN(n2839) );
  FA_X1 U2430 ( .A(n2037), .B(n2036), .CI(n2035), .CO(n2103), .S(n2061) );
  FA_X1 U2431 ( .A(n2040), .B(n2039), .CI(n2038), .CO(n2082), .S(n2076) );
  FA_X1 U2432 ( .A(n2043), .B(n2042), .CI(n2041), .CO(n2075), .S(n2036) );
  FA_X1 U2433 ( .A(n2046), .B(n2045), .CI(n2044), .CO(n2093), .S(n2074) );
  FA_X1 U2434 ( .A(n2049), .B(n2048), .CI(n2047), .CO(n2091), .S(n2062) );
  FA_X1 U2435 ( .A(n2052), .B(n2051), .CI(n2050), .CO(n2090), .S(n2037) );
  FA_X1 U2436 ( .A(n2055), .B(n2054), .CI(n2053), .CO(n2079), .S(n2049) );
  FA_X1 U2437 ( .A(n2057), .B(MAC_accum_result[26]), .CI(n2056), .CO(n1408), 
        .S(n2078) );
  FA_X1 U2438 ( .A(n2060), .B(n2059), .CI(n2058), .CO(n1421), .S(n2077) );
  FA_X1 U2439 ( .A(n2063), .B(n2062), .CI(n2061), .CO(n2070), .S(n2067) );
  NOR2_X1 U2440 ( .A1(n2071), .A2(n2070), .ZN(n2840) );
  NOR2_X1 U2441 ( .A1(n2839), .A2(n2840), .ZN(n2073) );
  NAND2_X1 U2442 ( .A1(n2065), .A2(n2064), .ZN(n2885) );
  NAND2_X1 U2443 ( .A1(n2067), .A2(n2066), .ZN(n2846) );
  AOI21_X1 U2444 ( .B1(n2847), .B2(n2069), .A(n2068), .ZN(n2838) );
  NAND2_X1 U2445 ( .A1(n2071), .A2(n2070), .ZN(n2841) );
  OAI21_X1 U2446 ( .B1(n2838), .B2(n2840), .A(n2841), .ZN(n2072) );
  AOI21_X1 U2447 ( .B1(n2837), .B2(n2073), .A(n2072), .ZN(n2850) );
  FA_X1 U2448 ( .A(n2076), .B(n2075), .CI(n2074), .CO(n2097), .S(n2102) );
  FA_X1 U2449 ( .A(n2079), .B(n2078), .CI(n2077), .CO(n2096), .S(n2089) );
  FA_X1 U2450 ( .A(n2082), .B(n2081), .CI(n2080), .CO(n2087), .S(n2095) );
  FA_X1 U2451 ( .A(n2085), .B(n2084), .CI(n2083), .CO(n1443), .S(n2108) );
  FA_X1 U2452 ( .A(n2088), .B(n2087), .CI(n2086), .CO(n2106), .S(n2107) );
  FA_X1 U2453 ( .A(n2091), .B(n2090), .CI(n2089), .CO(n2100), .S(n2101) );
  FA_X1 U2454 ( .A(n2094), .B(n2093), .CI(n2092), .CO(n2088), .S(n2099) );
  FA_X1 U2455 ( .A(n2097), .B(n2096), .CI(n2095), .CO(n2109), .S(n2098) );
  NOR2_X1 U2456 ( .A1(n2113), .A2(n2112), .ZN(n2861) );
  FA_X1 U2457 ( .A(n2100), .B(n2099), .CI(n2098), .CO(n2112), .S(n2111) );
  FA_X1 U2458 ( .A(n2103), .B(n2102), .CI(n2101), .CO(n2110), .S(n2071) );
  NOR2_X1 U2459 ( .A1(n2111), .A2(n2110), .ZN(n2851) );
  NOR2_X1 U2460 ( .A1(n2861), .A2(n2851), .ZN(n2858) );
  FA_X1 U2461 ( .A(n2106), .B(n2105), .CI(n2104), .CO(n2130), .S(n2115) );
  FA_X1 U2462 ( .A(n2109), .B(n2108), .CI(n2107), .CO(n2114), .S(n2113) );
  NAND2_X1 U2463 ( .A1(n2858), .A2(n2856), .ZN(n2118) );
  NAND2_X1 U2464 ( .A1(n2111), .A2(n2110), .ZN(n2864) );
  NAND2_X1 U2465 ( .A1(n2113), .A2(n2112), .ZN(n2862) );
  OAI21_X1 U2466 ( .B1(n2861), .B2(n2864), .A(n2862), .ZN(n2857) );
  NAND2_X1 U2467 ( .A1(n2115), .A2(n2114), .ZN(n2855) );
  AOI21_X1 U2468 ( .B1(n2857), .B2(n2856), .A(n2116), .ZN(n2117) );
  OAI21_X1 U2469 ( .B1(n2850), .B2(n2118), .A(n2117), .ZN(n2129) );
  NOR2_X1 U2470 ( .A1(MAC_current_state[1]), .A2(MAC_current_state[2]), .ZN(
        n2119) );
  NAND2_X1 U2471 ( .A1(n2119), .A2(n3882), .ZN(n3794) );
  NAND2_X1 U2472 ( .A1(n2853), .A2(n3870), .ZN(n2121) );
  NAND2_X1 U2473 ( .A1(n3798), .A2(dut__tb__sram_result_write_data[30]), .ZN(
        n2120) );
  NAND2_X1 U2474 ( .A1(n2121), .A2(n2120), .ZN(n453) );
  NOR2_X1 U2475 ( .A1(n3882), .A2(MAC_current_state[1]), .ZN(n2972) );
  NOR2_X1 U2476 ( .A1(n3879), .A2(MAC_current_state[2]), .ZN(n2743) );
  AND2_X2 U2477 ( .A1(n2972), .A2(n2743), .ZN(
        dut__tb__sram_result_write_enable) );
  NAND2_X1 U2478 ( .A1(n3957), .A2(n3883), .ZN(n2122) );
  AOI21_X1 U2479 ( .B1(MAC_calculation_done), .B2(
        dut__tb__sram_result_write_enable), .A(n3795), .ZN(n3032) );
  NAND2_X1 U2480 ( .A1(n3676), .A2(sram_weight_read_base_address[8]), .ZN(
        n2128) );
  NOR2_X1 U2481 ( .A1(n3814), .A2(n3972), .ZN(n3266) );
  NOR2_X1 U2482 ( .A1(n3814), .A2(n3971), .ZN(n3267) );
  NAND2_X1 U2483 ( .A1(n3266), .A2(n3267), .ZN(n3259) );
  NOR2_X1 U2484 ( .A1(n3814), .A2(n3963), .ZN(n3260) );
  NOR2_X1 U2485 ( .A1(n3814), .A2(n3968), .ZN(n3253) );
  NAND2_X1 U2486 ( .A1(n3260), .A2(n3253), .ZN(n2124) );
  NOR2_X1 U2487 ( .A1(n3259), .A2(n2124), .ZN(n2126) );
  NOR2_X1 U2488 ( .A1(n3814), .A2(n3965), .ZN(n3285) );
  NOR2_X1 U2489 ( .A1(n3814), .A2(n3970), .ZN(n3278) );
  NAND2_X1 U2490 ( .A1(n3285), .A2(n3278), .ZN(n2125) );
  NOR2_X1 U2491 ( .A1(n3814), .A2(n3962), .ZN(n3291) );
  NOR2_X1 U2492 ( .A1(n3814), .A2(n3884), .ZN(n3296) );
  NAND2_X1 U2493 ( .A1(n3291), .A2(n3296), .ZN(n3279) );
  NOR2_X1 U2494 ( .A1(n2125), .A2(n3279), .ZN(n3250) );
  NAND2_X1 U2495 ( .A1(n2126), .A2(n3250), .ZN(n3307) );
  NOR2_X1 U2496 ( .A1(n3814), .A2(n3967), .ZN(n3037) );
  XNOR2_X1 U2497 ( .A(n3307), .B(n3241), .ZN(n2127) );
  NAND2_X1 U2498 ( .A1(n2128), .A2(n2127), .ZN(n661) );
  FA_X1 U2499 ( .A(n2131), .B(n2130), .CI(n2129), .CO(n2316), .S(n2853) );
  FA_X1 U2500 ( .A(n2134), .B(n2133), .CI(n2132), .CO(n2308), .S(n2310) );
  FA_X1 U2501 ( .A(n2137), .B(n2136), .CI(n2135), .CO(n2306), .S(n2309) );
  OR2_X1 U2502 ( .A1(MAC_sram_weight_read_data[30]), .A2(
        MAC_sram_weight_read_data[31]), .ZN(n2139) );
  NAND2_X1 U2503 ( .A1(MAC_sram_weight_read_data[30]), .A2(
        MAC_sram_weight_read_data[31]), .ZN(n2138) );
  NAND2_X1 U2504 ( .A1(n2139), .A2(n2138), .ZN(n2158) );
  INV_X1 U2505 ( .A(n2140), .ZN(n2141) );
  NOR2_X1 U2506 ( .A1(n2141), .A2(n2146), .ZN(n2149) );
  NAND2_X1 U2507 ( .A1(n2142), .A2(n2149), .ZN(n2152) );
  NOR2_X1 U2508 ( .A1(n2143), .A2(n2152), .ZN(n2155) );
  INV_X1 U2509 ( .A(n2144), .ZN(n2147) );
  OAI21_X1 U2510 ( .B1(n2147), .B2(n2146), .A(n2145), .ZN(n2148) );
  AOI21_X1 U2511 ( .B1(n2150), .B2(n2149), .A(n2148), .ZN(n2151) );
  OAI21_X1 U2512 ( .B1(n2153), .B2(n2152), .A(n2151), .ZN(n2154) );
  AOI21_X1 U2513 ( .B1(n2156), .B2(n2155), .A(n2154), .ZN(n2157) );
  XNOR2_X1 U2514 ( .A(n2158), .B(n2157), .ZN(n2163) );
  AOI222_X1 U2515 ( .A1(n943), .A2(MAC_sram_weight_read_data[31]), .B1(n2160), 
        .B2(MAC_sram_weight_read_data[30]), .C1(n2159), .C2(
        MAC_sram_weight_read_data[29]), .ZN(n2161) );
  OAI21_X1 U2516 ( .B1(n2163), .B2(n2162), .A(n2161), .ZN(n2164) );
  XOR2_X1 U2517 ( .A(n2165), .B(n2164), .Z(n2183) );
  AOI222_X1 U2518 ( .A1(n989), .A2(MAC_sram_weight_read_data[25]), .B1(n2167), 
        .B2(MAC_sram_weight_read_data[24]), .C1(n2166), .C2(
        MAC_sram_weight_read_data[23]), .ZN(n2168) );
  OAI21_X1 U2519 ( .B1(n2170), .B2(n2169), .A(n2168), .ZN(n2171) );
  XOR2_X1 U2520 ( .A(n2172), .B(n2171), .Z(n2181) );
  AOI222_X1 U2521 ( .A1(n1872), .A2(MAC_sram_weight_read_data[22]), .B1(n2174), 
        .B2(MAC_sram_weight_read_data[21]), .C1(n2173), .C2(
        MAC_sram_weight_read_data[20]), .ZN(n2175) );
  OAI21_X1 U2522 ( .B1(n2177), .B2(n2176), .A(n2175), .ZN(n2178) );
  XOR2_X1 U2523 ( .A(n2179), .B(n2178), .Z(n2180) );
  XOR2_X1 U2524 ( .A(n2181), .B(n2180), .Z(n2182) );
  XOR2_X1 U2525 ( .A(n2183), .B(n2182), .Z(n2241) );
  FA_X1 U2526 ( .A(n2186), .B(n2185), .CI(n2184), .CO(n2239), .S(n2133) );
  AOI222_X1 U2527 ( .A1(n1243), .A2(MAC_sram_weight_read_data[19]), .B1(n2187), 
        .B2(MAC_sram_weight_read_data[18]), .C1(n1304), .C2(
        MAC_sram_weight_read_data[17]), .ZN(n2188) );
  OAI21_X1 U2528 ( .B1(n2190), .B2(n2189), .A(n2188), .ZN(n2191) );
  XOR2_X1 U2529 ( .A(n2192), .B(n2191), .Z(n2237) );
  FA_X1 U2530 ( .A(n2195), .B(n2194), .CI(n2193), .CO(n2235), .S(n2250) );
  HA_X1 U2531 ( .A(MAC_accum_result[30]), .B(n2196), .CO(n2207), .S(n2194) );
  XOR2_X1 U2532 ( .A(MAC_sram_input_read_data[30]), .B(
        MAC_sram_input_read_data[31]), .Z(n2197) );
  AND2_X1 U2533 ( .A1(n2198), .A2(n2197), .ZN(n2201) );
  AOI22_X1 U2534 ( .A1(n2202), .A2(n2201), .B1(n2200), .B2(n2199), .ZN(n2203)
         );
  OAI21_X1 U2535 ( .B1(n2205), .B2(n2204), .A(n2203), .ZN(n2206) );
  XOR2_X1 U2536 ( .A(n2207), .B(n2206), .Z(n2208) );
  XOR2_X1 U2537 ( .A(MAC_accum_result[31]), .B(n2208), .Z(n2233) );
  AOI222_X1 U2538 ( .A1(n2214), .A2(n2213), .B1(n2212), .B2(n2211), .C1(n2210), 
        .C2(n2209), .ZN(n2215) );
  OAI21_X1 U2539 ( .B1(n2217), .B2(n2216), .A(n2215), .ZN(n2218) );
  XOR2_X1 U2540 ( .A(n2219), .B(n2218), .Z(n2231) );
  AOI222_X1 U2541 ( .A1(n2225), .A2(n2224), .B1(n2223), .B2(n2222), .C1(n2221), 
        .C2(n2220), .ZN(n2226) );
  OAI21_X1 U2542 ( .B1(n2228), .B2(n2227), .A(n2226), .ZN(n2229) );
  XOR2_X1 U2543 ( .A(MAC_sram_input_read_data[29]), .B(n2229), .Z(n2230) );
  XOR2_X1 U2544 ( .A(n2231), .B(n2230), .Z(n2232) );
  XOR2_X1 U2545 ( .A(n2233), .B(n2232), .Z(n2234) );
  XOR2_X1 U2546 ( .A(n2235), .B(n2234), .Z(n2236) );
  XOR2_X1 U2547 ( .A(n2237), .B(n2236), .Z(n2238) );
  XOR2_X1 U2548 ( .A(n2239), .B(n2238), .Z(n2240) );
  XOR2_X1 U2549 ( .A(n2241), .B(n2240), .Z(n2304) );
  FA_X1 U2550 ( .A(n2244), .B(n2243), .CI(n2242), .CO(n2302), .S(n2137) );
  FA_X1 U2551 ( .A(n2247), .B(n2246), .CI(n2245), .CO(n2300), .S(n2242) );
  FA_X1 U2552 ( .A(n2250), .B(n2249), .CI(n2248), .CO(n2298), .S(n2132) );
  AOI222_X1 U2553 ( .A1(n951), .A2(MAC_sram_weight_read_data[28]), .B1(n2252), 
        .B2(MAC_sram_weight_read_data[27]), .C1(n2251), .C2(
        MAC_sram_weight_read_data[26]), .ZN(n2253) );
  OAI21_X1 U2554 ( .B1(n2255), .B2(n2254), .A(n2253), .ZN(n2256) );
  XOR2_X1 U2555 ( .A(n2257), .B(n2256), .Z(n2296) );
  FA_X1 U2556 ( .A(n2260), .B(n2259), .CI(n2258), .CO(n2294), .S(n2244) );
  AOI222_X1 U2557 ( .A1(n2266), .A2(n2265), .B1(n2264), .B2(n2263), .C1(n2262), 
        .C2(n2261), .ZN(n2267) );
  OAI21_X1 U2558 ( .B1(n2269), .B2(n2268), .A(n2267), .ZN(n2270) );
  XOR2_X1 U2559 ( .A(n2271), .B(n2270), .Z(n2292) );
  AOI222_X1 U2560 ( .A1(n2274), .A2(MAC_sram_weight_read_data[16]), .B1(n2273), 
        .B2(MAC_sram_weight_read_data[15]), .C1(n1281), .C2(n2272), .ZN(n2275)
         );
  OAI21_X1 U2561 ( .B1(n2277), .B2(n2276), .A(n2275), .ZN(n2278) );
  XOR2_X1 U2562 ( .A(n2279), .B(n2278), .Z(n2290) );
  AOI222_X1 U2563 ( .A1(n2284), .A2(n2283), .B1(n2282), .B2(n2281), .C1(n1292), 
        .C2(n2280), .ZN(n2285) );
  OAI21_X1 U2564 ( .B1(n2287), .B2(n2286), .A(n2285), .ZN(n2288) );
  XNOR2_X1 U2565 ( .A(MAC_sram_input_read_data[20]), .B(n2288), .ZN(n2289) );
  XNOR2_X1 U2566 ( .A(n2290), .B(n2289), .ZN(n2291) );
  XOR2_X1 U2567 ( .A(n2292), .B(n2291), .Z(n2293) );
  XOR2_X1 U2568 ( .A(n2294), .B(n2293), .Z(n2295) );
  XOR2_X1 U2569 ( .A(n2296), .B(n2295), .Z(n2297) );
  XOR2_X1 U2570 ( .A(n2298), .B(n2297), .Z(n2299) );
  XOR2_X1 U2571 ( .A(n2300), .B(n2299), .Z(n2301) );
  XOR2_X1 U2572 ( .A(n2302), .B(n2301), .Z(n2303) );
  XOR2_X1 U2573 ( .A(n2304), .B(n2303), .Z(n2305) );
  XOR2_X1 U2574 ( .A(n2306), .B(n2305), .Z(n2307) );
  XOR2_X1 U2575 ( .A(n2308), .B(n2307), .Z(n2313) );
  FA_X1 U2576 ( .A(n2311), .B(n2310), .CI(n2309), .CO(n2312), .S(n2131) );
  XOR2_X1 U2577 ( .A(n2313), .B(n2312), .Z(n2314) );
  XNOR2_X1 U2578 ( .A(n2316), .B(n2315), .ZN(n2854) );
  NAND2_X1 U2579 ( .A1(n3798), .A2(dut__tb__sram_result_write_data[31]), .ZN(
        n2317) );
  OAI21_X1 U2580 ( .B1(n2318), .B2(n3798), .A(n2317), .ZN(n452) );
  XNOR2_X1 U2581 ( .A(n2322), .B(n2323), .ZN(n2335) );
  XNOR2_X1 U2582 ( .A(n2326), .B(n2327), .ZN(n2355) );
  XNOR2_X1 U2583 ( .A(n2319), .B(n2320), .ZN(n2518) );
  FA_X1 U2584 ( .A(n2334), .B(n2333), .CI(n2332), .CO(n2349), .S(n2530) );
  FA_X1 U2585 ( .A(n2336), .B(n2321), .CI(n2335), .CO(n2348), .S(n2529) );
  FA_X1 U2586 ( .A(n2340), .B(n2328), .CI(n2329), .CO(n2354), .S(n2528) );
  FA_X1 U2587 ( .A(n2324), .B(n2342), .CI(n2325), .CO(n2356), .S(n2526) );
  XNOR2_X1 U2588 ( .A(n2343), .B(n2344), .ZN(n2379) );
  FA_X1 U2589 ( .A(dut__tb__sram_input_read_address[12]), .B(n2349), .CI(n2348), .CO(n2358), .S(n2534) );
  FA_X1 U2590 ( .A(n2345), .B(n2346), .CI(n2347), .CO(n2377), .S(n2405) );
  FA_X1 U2591 ( .A(n2356), .B(n2355), .CI(n2354), .CO(n2389), .S(n2533) );
  FA_X1 U2592 ( .A(n2359), .B(n2358), .CI(n2357), .CO(n2421), .S(n2413) );
  FA_X1 U2593 ( .A(n2362), .B(n2361), .CI(n2360), .CO(n2483), .S(n2390) );
  FA_X1 U2594 ( .A(n2369), .B(n2368), .CI(n2367), .CO(n2385), .S(n2408) );
  FA_X1 U2595 ( .A(n2363), .B(n2364), .CI(n2370), .CO(n2482), .S(n2384) );
  FA_X1 U2596 ( .A(n2365), .B(n2371), .CI(n2366), .CO(n2486), .S(n2386) );
  FA_X1 U2597 ( .A(n2374), .B(n2373), .CI(n2372), .CO(n2485), .S(n2391) );
  XNOR2_X1 U2598 ( .A(n2464), .B(n946), .ZN(n2492) );
  FA_X1 U2599 ( .A(n2379), .B(n2378), .CI(n2377), .CO(n2431), .S(n2359) );
  FA_X1 U2600 ( .A(n2381), .B(n2380), .CI(n2350), .CO(n2388), .S(n2406) );
  FA_X1 U2601 ( .A(n2351), .B(n2383), .CI(n2382), .CO(n2387), .S(n2404) );
  FA_X1 U2602 ( .A(n2386), .B(n2385), .CI(n2384), .CO(n2425), .S(n2412) );
  FA_X1 U2603 ( .A(dut__tb__sram_input_read_address[13]), .B(n2388), .CI(n2387), .CO(n2430), .S(n2411) );
  FA_X1 U2604 ( .A(n2391), .B(n2390), .CI(n2389), .CO(n2422), .S(n2410) );
  FA_X1 U2605 ( .A(n2341), .B(n2393), .CI(n2392), .CO(n2527), .S(n2554) );
  FA_X1 U2606 ( .A(n2394), .B(n2337), .CI(n2338), .CO(n2403), .S(n2553) );
  FA_X1 U2607 ( .A(n2339), .B(n2396), .CI(n2395), .CO(n2402), .S(n2552) );
  FA_X1 U2608 ( .A(n2403), .B(n2402), .CI(dut__tb__sram_input_read_address[11]), .CO(n2409), .S(n2543) );
  FA_X1 U2609 ( .A(n2406), .B(n2405), .CI(n2404), .CO(n2357), .S(n2536) );
  FA_X1 U2610 ( .A(n2409), .B(n2408), .CI(n2407), .CO(n2414), .S(n2535) );
  FA_X1 U2611 ( .A(n2412), .B(n2411), .CI(n2410), .CO(n2478), .S(n2514) );
  FA_X1 U2612 ( .A(n2415), .B(n2414), .CI(n2413), .CO(n2420), .S(n2513) );
  XOR2_X1 U2613 ( .A(n2417), .B(n2416), .Z(n2512) );
  FA_X1 U2614 ( .A(n2420), .B(n2419), .CI(n2418), .CO(n2510), .S(n2417) );
  FA_X1 U2615 ( .A(n2423), .B(n2422), .CI(n2421), .CO(n2508), .S(n2419) );
  FA_X1 U2616 ( .A(n2426), .B(n2425), .CI(n2424), .CO(n2477), .S(n2480) );
  FA_X1 U2617 ( .A(n2429), .B(n2428), .CI(n2427), .CO(n2475), .S(n2423) );
  FA_X1 U2618 ( .A(n2432), .B(n2431), .CI(n2430), .CO(n2474), .S(n2479) );
  XNOR2_X1 U2619 ( .A(n2433), .B(n2434), .ZN(n2446) );
  NOR2_X1 U2620 ( .A1(n960), .A2(n981), .ZN(n2436) );
  NOR2_X1 U2621 ( .A1(n959), .A2(n972), .ZN(n2435) );
  XOR2_X1 U2622 ( .A(n2436), .B(n2435), .Z(n2437) );
  XOR2_X1 U2623 ( .A(n2438), .B(n2437), .Z(n2444) );
  NOR2_X1 U2624 ( .A1(n963), .A2(n974), .ZN(n2440) );
  NOR2_X1 U2625 ( .A1(n956), .A2(n984), .ZN(n2439) );
  XOR2_X1 U2626 ( .A(n2440), .B(n2439), .Z(n2441) );
  XOR2_X1 U2627 ( .A(n2442), .B(n2441), .Z(n2443) );
  XOR2_X1 U2628 ( .A(n2444), .B(n2443), .Z(n2445) );
  XOR2_X1 U2629 ( .A(n2446), .B(n2445), .Z(n2472) );
  NOR2_X1 U2630 ( .A1(n958), .A2(n982), .ZN(n2449) );
  NOR2_X1 U2631 ( .A1(n957), .A2(n983), .ZN(n2448) );
  XOR2_X1 U2632 ( .A(n2449), .B(n2448), .Z(n2450) );
  XOR2_X1 U2633 ( .A(n2447), .B(n2450), .Z(n2459) );
  FA_X1 U2634 ( .A(n2375), .B(n2451), .CI(n2376), .CO(n2457), .S(n2484) );
  NOR2_X1 U2635 ( .A1(n969), .A2(n979), .ZN(n2455) );
  NOR2_X1 U2636 ( .A1(n970), .A2(n980), .ZN(n2453) );
  NOR2_X1 U2637 ( .A1(n961), .A2(n975), .ZN(n2452) );
  XNOR2_X1 U2638 ( .A(n2453), .B(n2452), .ZN(n2454) );
  XOR2_X1 U2639 ( .A(n2455), .B(n2454), .Z(n2456) );
  XOR2_X1 U2640 ( .A(n2457), .B(n2456), .Z(n2458) );
  XOR2_X1 U2641 ( .A(n2459), .B(n2458), .Z(n2471) );
  FA_X1 U2642 ( .A(n2461), .B(n2460), .CI(n2353), .CO(n2469), .S(n2427) );
  XNOR2_X1 U2643 ( .A(n2463), .B(n2462), .ZN(n2466) );
  NOR2_X1 U2644 ( .A1(n2464), .A2(n946), .ZN(n2465) );
  XNOR2_X1 U2645 ( .A(n2466), .B(n2465), .ZN(n2467) );
  XNOR2_X1 U2646 ( .A(dut__tb__sram_input_read_address[15]), .B(n2467), .ZN(
        n2468) );
  XOR2_X1 U2647 ( .A(n2469), .B(n2468), .Z(n2470) );
  XOR2_X1 U2648 ( .A(n2472), .B(n993), .Z(n2473) );
  XOR2_X1 U2649 ( .A(n2475), .B(n994), .Z(n2476) );
  XOR2_X1 U2650 ( .A(n2477), .B(n2476), .Z(n2506) );
  FA_X1 U2651 ( .A(n2480), .B(n2479), .CI(n2478), .CO(n2481), .S(n2418) );
  FA_X1 U2652 ( .A(n2483), .B(n2482), .CI(dut__tb__sram_input_read_address[14]), .CO(n2502), .S(n2426) );
  FA_X1 U2653 ( .A(n2486), .B(n2485), .CI(n2484), .CO(n2500), .S(n2424) );
  FA_X1 U2654 ( .A(n2489), .B(n2488), .CI(n2487), .CO(n2498), .S(n2428) );
  FA_X1 U2655 ( .A(n2491), .B(n2352), .CI(n2490), .CO(n2496), .S(n2429) );
  FA_X1 U2656 ( .A(n2494), .B(n2493), .CI(n2492), .CO(n2495), .S(n2432) );
  XOR2_X1 U2657 ( .A(n2496), .B(n2495), .Z(n2497) );
  XOR2_X1 U2658 ( .A(n2498), .B(n2497), .Z(n2499) );
  XOR2_X1 U2659 ( .A(n2500), .B(n2499), .Z(n2501) );
  XOR2_X1 U2660 ( .A(n2502), .B(n2501), .Z(n2503) );
  XNOR2_X1 U2661 ( .A(n2504), .B(n2503), .ZN(n2505) );
  XNOR2_X1 U2662 ( .A(n2506), .B(n2505), .ZN(n2507) );
  XNOR2_X1 U2663 ( .A(n2508), .B(n2507), .ZN(n2509) );
  XOR2_X1 U2664 ( .A(n2510), .B(n2509), .Z(n2511) );
  NAND2_X1 U2665 ( .A1(n2512), .A2(n2511), .ZN(n2719) );
  FA_X1 U2666 ( .A(n2515), .B(n2514), .CI(n2513), .CO(n2416), .S(n2539) );
  FA_X1 U2667 ( .A(n2518), .B(n2517), .CI(n2516), .CO(n2531), .S(n2564) );
  XNOR2_X1 U2668 ( .A(n2330), .B(n2331), .ZN(n2573) );
  XNOR2_X1 U2669 ( .A(n2400), .B(n2401), .ZN(n2584) );
  FA_X1 U2670 ( .A(n2525), .B(n2524), .CI(n2523), .CO(n2516), .S(n2575) );
  FA_X1 U2671 ( .A(n2528), .B(n2527), .CI(n2526), .CO(n2407), .S(n2556) );
  FA_X1 U2672 ( .A(n2531), .B(n2530), .CI(n2529), .CO(n2532), .S(n2555) );
  FA_X1 U2673 ( .A(n2534), .B(n2533), .CI(n2532), .CO(n2415), .S(n2541) );
  FA_X1 U2674 ( .A(n2537), .B(n2536), .CI(n2535), .CO(n2515), .S(n2540) );
  XNOR2_X1 U2675 ( .A(n2539), .B(n2538), .ZN(n2561) );
  FA_X1 U2676 ( .A(n2542), .B(n2541), .CI(n2540), .CO(n2538), .S(n2559) );
  FA_X1 U2677 ( .A(n2545), .B(n2544), .CI(n2543), .CO(n2537), .S(n2708) );
  FA_X1 U2678 ( .A(n2547), .B(n2399), .CI(n2546), .CO(n2550), .S(n2590) );
  FA_X1 U2679 ( .A(n2397), .B(n2548), .CI(n2398), .CO(n2551), .S(n2589) );
  FA_X1 U2680 ( .A(dut__tb__sram_input_read_address[10]), .B(n2551), .CI(n2550), .CO(n2544), .S(n2578) );
  FA_X1 U2681 ( .A(n2554), .B(n2553), .CI(n2552), .CO(n2545), .S(n2577) );
  FA_X1 U2682 ( .A(n2557), .B(n2556), .CI(n2555), .CO(n2542), .S(n2706) );
  XNOR2_X1 U2683 ( .A(n2559), .B(n2558), .ZN(n2560) );
  NOR2_X1 U2684 ( .A1(n2561), .A2(n2560), .ZN(n2717) );
  FA_X1 U2685 ( .A(n2564), .B(n2563), .CI(n2562), .CO(n2557), .S(n2711) );
  FA_X1 U2686 ( .A(n2566), .B(n2565), .CI(n2519), .CO(n2574), .S(n2601) );
  FA_X1 U2687 ( .A(n2569), .B(n2568), .CI(n2567), .CO(n2572), .S(n2600) );
  XNOR2_X1 U2688 ( .A(n2520), .B(n2521), .ZN(n2607) );
  FA_X1 U2689 ( .A(n2574), .B(n2573), .CI(n2572), .CO(n2563), .S(n2592) );
  FA_X1 U2690 ( .A(n2576), .B(dut__tb__sram_input_read_address[9]), .CI(n2575), 
        .CO(n2562), .S(n2591) );
  FA_X1 U2691 ( .A(n2579), .B(n2578), .CI(n2577), .CO(n2707), .S(n2709) );
  FA_X1 U2692 ( .A(n2549), .B(n2583), .CI(n2582), .CO(n2587), .S(n2618) );
  FA_X1 U2693 ( .A(n2585), .B(n2522), .CI(n2584), .CO(n2576), .S(n2609) );
  FA_X1 U2694 ( .A(n2587), .B(n2586), .CI(dut__tb__sram_input_read_address[8]), 
        .CO(n2588), .S(n2608) );
  FA_X1 U2695 ( .A(n2590), .B(n2589), .CI(n2588), .CO(n2579), .S(n2597) );
  FA_X1 U2696 ( .A(n2593), .B(n2592), .CI(n2591), .CO(n2710), .S(n2596) );
  XNOR2_X1 U2697 ( .A(n2595), .B(n2594), .ZN(n2614) );
  FA_X1 U2698 ( .A(n2598), .B(n2597), .CI(n2596), .CO(n2594), .S(n2612) );
  FA_X1 U2699 ( .A(n2601), .B(n2600), .CI(n2599), .CO(n2593), .S(n2617) );
  XNOR2_X1 U2700 ( .A(n2570), .B(n2571), .ZN(n2636) );
  FA_X1 U2701 ( .A(n2604), .B(n2603), .CI(n2602), .CO(n2586), .S(n2629) );
  FA_X1 U2702 ( .A(n2607), .B(n2606), .CI(n2605), .CO(n2599), .S(n2628) );
  FA_X1 U2703 ( .A(n2610), .B(n2609), .CI(n2608), .CO(n2598), .S(n2615) );
  XNOR2_X1 U2704 ( .A(n2612), .B(n2611), .ZN(n2613) );
  NOR2_X1 U2705 ( .A1(n2614), .A2(n2613), .ZN(n2705) );
  FA_X1 U2706 ( .A(n2617), .B(n2616), .CI(n2615), .CO(n2611), .S(n2632) );
  FA_X1 U2707 ( .A(n2619), .B(dut__tb__sram_input_read_address[7]), .CI(n2618), 
        .CO(n2610), .S(n2635) );
  FA_X1 U2708 ( .A(n2622), .B(n2621), .CI(n2620), .CO(n2605), .S(n2645) );
  XNOR2_X1 U2709 ( .A(n2581), .B(n2625), .ZN(n2654) );
  FA_X1 U2710 ( .A(n2580), .B(n2627), .CI(n2626), .CO(n2619), .S(n2643) );
  FA_X1 U2711 ( .A(n2630), .B(n2629), .CI(n2628), .CO(n2616), .S(n2633) );
  XNOR2_X1 U2712 ( .A(n2632), .B(n2631), .ZN(n2703) );
  FA_X1 U2713 ( .A(n2635), .B(n2634), .CI(n2633), .CO(n2631), .S(n2647) );
  FA_X1 U2714 ( .A(n2637), .B(n2636), .CI(dut__tb__sram_input_read_address[6]), 
        .CO(n2630), .S(n2650) );
  FA_X1 U2715 ( .A(n2642), .B(n2641), .CI(n2640), .CO(n2637), .S(n2656) );
  FA_X1 U2716 ( .A(n2645), .B(n2644), .CI(n2643), .CO(n2634), .S(n2648) );
  XOR2_X1 U2717 ( .A(n2647), .B(n2646), .Z(n2701) );
  FA_X1 U2718 ( .A(n2650), .B(n2649), .CI(n2648), .CO(n2646), .S(n2659) );
  XNOR2_X1 U2719 ( .A(n2623), .B(n2651), .ZN(n2675) );
  FA_X1 U2720 ( .A(n2655), .B(n2624), .CI(n2654), .CO(n2644), .S(n2661) );
  FA_X1 U2721 ( .A(dut__tb__sram_input_read_address[5]), .B(n2657), .CI(n2656), 
        .CO(n2649), .S(n2660) );
  XNOR2_X1 U2722 ( .A(n2659), .B(n2658), .ZN(n2699) );
  FA_X1 U2723 ( .A(n2662), .B(n2661), .CI(n2660), .CO(n2658), .S(n2670) );
  FA_X1 U2724 ( .A(n2638), .B(n2639), .CI(n2663), .CO(n2657), .S(n2673) );
  XNOR2_X1 U2725 ( .A(n2652), .B(n2653), .ZN(n2679) );
  XNOR2_X1 U2726 ( .A(n2664), .B(n2668), .ZN(n2685) );
  XOR2_X1 U2727 ( .A(n2670), .B(n2669), .Z(n2697) );
  FA_X1 U2728 ( .A(n2673), .B(n2672), .CI(n2671), .CO(n2669), .S(n2677) );
  FA_X1 U2729 ( .A(n2675), .B(n2674), .CI(dut__tb__sram_input_read_address[4]), 
        .CO(n2662), .S(n2676) );
  XNOR2_X1 U2730 ( .A(n2677), .B(n2676), .ZN(n2695) );
  FA_X1 U2731 ( .A(dut__tb__sram_input_read_address[3]), .B(n2679), .CI(n2678), 
        .CO(n2671), .S(n2684) );
  FA_X1 U2732 ( .A(n2682), .B(n2681), .CI(n2680), .CO(n2672), .S(n2683) );
  XNOR2_X1 U2733 ( .A(n2684), .B(n2683), .ZN(n2693) );
  FA_X1 U2734 ( .A(n2686), .B(n2667), .CI(n2685), .CO(n2678), .S(n2687) );
  XOR2_X1 U2735 ( .A(n2687), .B(dut__tb__sram_input_read_address[2]), .Z(n2691) );
  XNOR2_X1 U2736 ( .A(n2665), .B(n2666), .ZN(n2689) );
  NAND2_X1 U2737 ( .A1(n2691), .A2(n2690), .ZN(n2692) );
  NOR2_X1 U2738 ( .A1(n2695), .A2(n2694), .ZN(n2696) );
  NAND2_X1 U2739 ( .A1(n2697), .A2(n2696), .ZN(n2698) );
  NOR2_X1 U2740 ( .A1(n2699), .A2(n2698), .ZN(n2700) );
  NAND2_X1 U2741 ( .A1(n2701), .A2(n2700), .ZN(n2702) );
  NOR2_X1 U2742 ( .A1(n2703), .A2(n2702), .ZN(n2704) );
  NAND2_X1 U2743 ( .A1(n2705), .A2(n2704), .ZN(n2715) );
  FA_X1 U2744 ( .A(n2708), .B(n2707), .CI(n2706), .CO(n2558), .S(n2713) );
  FA_X1 U2745 ( .A(n2711), .B(n2710), .CI(n2709), .CO(n2712), .S(n2595) );
  XNOR2_X1 U2746 ( .A(n2713), .B(n2712), .ZN(n2714) );
  NOR2_X1 U2747 ( .A1(n2715), .A2(n2714), .ZN(n2716) );
  NAND2_X1 U2748 ( .A1(n2717), .A2(n2716), .ZN(n2718) );
  NOR2_X1 U2749 ( .A1(n2719), .A2(n2718), .ZN(MAC_N129) );
  XNOR2_X1 U2750 ( .A(input_num_cols[14]), .B(MAC_loop_count[14]), .ZN(n2723)
         );
  XNOR2_X1 U2751 ( .A(input_num_cols[15]), .B(MAC_loop_count[15]), .ZN(n2722)
         );
  XNOR2_X1 U2752 ( .A(input_num_cols[12]), .B(MAC_loop_count[12]), .ZN(n2721)
         );
  XNOR2_X1 U2753 ( .A(input_num_cols[13]), .B(MAC_loop_count[13]), .ZN(n2720)
         );
  NAND4_X1 U2754 ( .A1(n2723), .A2(n2722), .A3(n2721), .A4(n2720), .ZN(n2729)
         );
  XNOR2_X1 U2755 ( .A(input_num_cols[6]), .B(MAC_loop_count[6]), .ZN(n2727) );
  XNOR2_X1 U2756 ( .A(input_num_cols[8]), .B(MAC_loop_count[8]), .ZN(n2726) );
  XNOR2_X1 U2757 ( .A(input_num_cols[2]), .B(MAC_loop_count[2]), .ZN(n2725) );
  XNOR2_X1 U2758 ( .A(input_num_cols[4]), .B(MAC_loop_count[4]), .ZN(n2724) );
  NAND4_X1 U2759 ( .A1(n2727), .A2(n2726), .A3(n2725), .A4(n2724), .ZN(n2728)
         );
  NOR2_X1 U2760 ( .A1(n2729), .A2(n2728), .ZN(n2741) );
  XNOR2_X1 U2761 ( .A(input_num_cols[10]), .B(MAC_loop_count[10]), .ZN(n2733)
         );
  XNOR2_X1 U2762 ( .A(input_num_cols[1]), .B(MAC_loop_count[1]), .ZN(n2732) );
  XNOR2_X1 U2763 ( .A(input_num_cols[9]), .B(MAC_loop_count[9]), .ZN(n2731) );
  XNOR2_X1 U2764 ( .A(input_num_cols[11]), .B(MAC_loop_count[11]), .ZN(n2730)
         );
  NAND4_X1 U2765 ( .A1(n2733), .A2(n2732), .A3(n2731), .A4(n2730), .ZN(n2739)
         );
  XNOR2_X1 U2766 ( .A(input_num_cols[5]), .B(MAC_loop_count[5]), .ZN(n2737) );
  XNOR2_X1 U2767 ( .A(input_num_cols[7]), .B(MAC_loop_count[7]), .ZN(n2736) );
  XNOR2_X1 U2768 ( .A(input_num_cols[0]), .B(MAC_loop_count[0]), .ZN(n2735) );
  XNOR2_X1 U2769 ( .A(input_num_cols[3]), .B(MAC_loop_count[3]), .ZN(n2734) );
  NAND4_X1 U2770 ( .A1(n2737), .A2(n2736), .A3(n2735), .A4(n2734), .ZN(n2738)
         );
  NOR2_X1 U2771 ( .A1(n2739), .A2(n2738), .ZN(n2740) );
  NOR2_X1 U2772 ( .A1(n3946), .A2(MAC_current_state[0]), .ZN(n2977) );
  NOR2_X1 U2773 ( .A1(n3945), .A2(MAC_current_state[3]), .ZN(n3871) );
  NAND3_X1 U2774 ( .A1(n3872), .A2(n2977), .A3(n3871), .ZN(n3209) );
  NAND2_X1 U2775 ( .A1(MAC_current_state[1]), .A2(MAC_current_state[0]), .ZN(
        n2742) );
  INV_X1 U2776 ( .A(n2742), .ZN(n2968) );
  NAND2_X1 U2777 ( .A1(n3871), .A2(n2968), .ZN(n2970) );
  NAND2_X1 U2778 ( .A1(n2743), .A2(n2742), .ZN(n2744) );
  AND2_X1 U2779 ( .A1(n2970), .A2(n2744), .ZN(n3576) );
  NAND2_X1 U2780 ( .A1(n3209), .A2(n3576), .ZN(n3301) );
  NAND2_X1 U2781 ( .A1(dut__tb__sram_weight_read_address[4]), .A2(
        dut__tb__sram_weight_read_address[5]), .ZN(n2759) );
  NAND2_X1 U2782 ( .A1(dut__tb__sram_weight_read_address[6]), .A2(
        dut__tb__sram_weight_read_address[7]), .ZN(n2745) );
  NOR2_X1 U2783 ( .A1(n2759), .A2(n2745), .ZN(n2747) );
  NAND2_X1 U2784 ( .A1(dut__tb__sram_weight_read_address[2]), .A2(
        dut__tb__sram_weight_read_address[3]), .ZN(n2746) );
  NAND2_X1 U2785 ( .A1(dut__tb__sram_weight_read_address[1]), .A2(
        dut__tb__sram_weight_read_address[0]), .ZN(n2764) );
  NOR2_X1 U2786 ( .A1(n2746), .A2(n2764), .ZN(n2756) );
  NAND2_X1 U2787 ( .A1(n2747), .A2(n2756), .ZN(n3082) );
  NAND2_X1 U2788 ( .A1(dut__tb__sram_weight_read_address[8]), .A2(
        dut__tb__sram_weight_read_address[9]), .ZN(n2752) );
  NAND2_X1 U2789 ( .A1(dut__tb__sram_weight_read_address[10]), .A2(
        dut__tb__sram_weight_read_address[11]), .ZN(n2748) );
  NOR2_X1 U2790 ( .A1(n2752), .A2(n2748), .ZN(n3081) );
  NOR2_X1 U2791 ( .A1(n3082), .A2(n2749), .ZN(n2768) );
  NOR2_X1 U2792 ( .A1(n2771), .A2(n3974), .ZN(n2750) );
  XNOR2_X1 U2793 ( .A(n2750), .B(n3975), .ZN(n3217) );
  NOR2_X1 U2794 ( .A1(MAC_current_state[2]), .A2(MAC_current_state[3]), .ZN(
        n2976) );
  NOR2_X1 U2795 ( .A1(n3301), .A2(n3623), .ZN(n3300) );
  INV_X2 U2796 ( .A(n3572), .ZN(n3641) );
  AOI222_X1 U2797 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[13]), 
        .B1(n3217), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[13]), .ZN(n2751) );
  INV_X1 U2798 ( .A(n2751), .ZN(n578) );
  NAND2_X1 U2799 ( .A1(n2784), .A2(n2753), .ZN(n2778) );
  NOR2_X1 U2800 ( .A1(n2778), .A2(n3964), .ZN(n2754) );
  XNOR2_X1 U2801 ( .A(n2754), .B(n3966), .ZN(n3232) );
  AOI222_X1 U2802 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[11]), 
        .B1(n3232), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[11]), .ZN(n2755) );
  INV_X1 U2803 ( .A(n2755), .ZN(n580) );
  NOR2_X1 U2804 ( .A1(n2773), .A2(n3972), .ZN(n2757) );
  XNOR2_X1 U2805 ( .A(n2757), .B(n3971), .ZN(n3271) );
  AOI222_X1 U2806 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[5]), 
        .B1(n3271), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[5]), .ZN(n2758) );
  INV_X1 U2807 ( .A(n2758), .ZN(n586) );
  NOR2_X1 U2808 ( .A1(n2773), .A2(n2759), .ZN(n2782) );
  NAND2_X1 U2809 ( .A1(n2782), .A2(dut__tb__sram_weight_read_address[6]), .ZN(
        n2760) );
  XOR2_X1 U2810 ( .A(n3968), .B(n2760), .Z(n3257) );
  INV_X1 U2811 ( .A(n2761), .ZN(n584) );
  NAND2_X1 U2812 ( .A1(n2784), .A2(dut__tb__sram_weight_read_address[8]), .ZN(
        n2762) );
  XOR2_X1 U2813 ( .A(n3969), .B(n2762), .Z(n3246) );
  AOI222_X1 U2814 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[9]), 
        .B1(n3246), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[9]), .ZN(n2763) );
  NAND2_X1 U2815 ( .A1(n2780), .A2(dut__tb__sram_weight_read_address[2]), .ZN(
        n2765) );
  XOR2_X1 U2816 ( .A(n3970), .B(n2765), .Z(n3283) );
  AOI222_X1 U2817 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[3]), 
        .B1(n3283), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[3]), .ZN(n2766) );
  INV_X1 U2818 ( .A(n2766), .ZN(n588) );
  NAND2_X1 U2819 ( .A1(dut__tb__sram_weight_read_address[12]), .A2(
        dut__tb__sram_weight_read_address[13]), .ZN(n3079) );
  NAND2_X1 U2820 ( .A1(n2768), .A2(n2767), .ZN(n2776) );
  NOR2_X1 U2821 ( .A1(n2776), .A2(n3977), .ZN(n2769) );
  XNOR2_X1 U2822 ( .A(n2769), .B(n3982), .ZN(n3313) );
  AOI222_X1 U2823 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[15]), 
        .B1(n3313), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[15]), .ZN(n2770) );
  INV_X1 U2824 ( .A(n2770), .ZN(n704) );
  XOR2_X1 U2825 ( .A(n3974), .B(n2771), .Z(n3224) );
  AOI222_X1 U2826 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[12]), 
        .B1(n3224), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[12]), .ZN(n2772) );
  INV_X1 U2827 ( .A(n2772), .ZN(n579) );
  XOR2_X1 U2828 ( .A(n3972), .B(n2773), .Z(n3276) );
  AOI222_X1 U2829 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[4]), 
        .B1(n3276), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[4]), .ZN(n2774) );
  INV_X1 U2830 ( .A(n2774), .ZN(n587) );
  XNOR2_X1 U2831 ( .A(n3962), .B(dut__tb__sram_weight_read_address[0]), .ZN(
        n3294) );
  AOI222_X1 U2832 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[1]), 
        .B1(n3294), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[1]), .ZN(n2775) );
  INV_X1 U2833 ( .A(n2775), .ZN(n590) );
  XOR2_X1 U2834 ( .A(n3977), .B(n2776), .Z(n3210) );
  AOI222_X1 U2835 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[14]), 
        .B1(n3210), .B2(n3300), .C1(MAC_weight_read_start_address[14]), .C2(
        n3641), .ZN(n2777) );
  XOR2_X1 U2836 ( .A(n3964), .B(n2778), .Z(n3239) );
  AOI222_X1 U2837 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[10]), 
        .B1(n3239), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[10]), .ZN(n2779) );
  INV_X1 U2838 ( .A(n2779), .ZN(n581) );
  XNOR2_X1 U2839 ( .A(n3965), .B(n2780), .ZN(n3289) );
  AOI222_X1 U2840 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[2]), 
        .B1(n3289), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[2]), .ZN(n2781) );
  INV_X1 U2841 ( .A(n2781), .ZN(n589) );
  XNOR2_X1 U2842 ( .A(n2782), .B(n3963), .ZN(n3264) );
  AOI222_X1 U2843 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[6]), 
        .B1(n3264), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[6]), .ZN(n2783) );
  INV_X1 U2844 ( .A(n2783), .ZN(n585) );
  XNOR2_X1 U2845 ( .A(n2784), .B(n3967), .ZN(n3248) );
  AOI222_X1 U2846 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[8]), 
        .B1(n3248), .B2(n3300), .C1(n3641), .C2(
        MAC_weight_read_start_address[8]), .ZN(n2785) );
  INV_X1 U2847 ( .A(n2785), .ZN(n583) );
  NAND2_X1 U2848 ( .A1(n2787), .A2(n2786), .ZN(n2788) );
  XNOR2_X1 U2849 ( .A(n2789), .B(n2788), .ZN(n3645) );
  NAND2_X1 U2850 ( .A1(n3871), .A2(n2972), .ZN(n2790) );
  AND2_X2 U2851 ( .A1(n449), .A2(n2790), .ZN(n2948) );
  AND2_X1 U2852 ( .A1(n3645), .A2(n2948), .ZN(MAC_N26) );
  NAND2_X1 U2853 ( .A1(n2792), .A2(n2791), .ZN(n2794) );
  XNOR2_X1 U2854 ( .A(n2794), .B(n2793), .ZN(n3648) );
  AND2_X1 U2855 ( .A1(n3648), .A2(n2948), .ZN(MAC_N28) );
  NAND2_X1 U2856 ( .A1(n2796), .A2(n2795), .ZN(n2798) );
  XNOR2_X1 U2857 ( .A(n2798), .B(n2797), .ZN(n3650) );
  AND2_X1 U2858 ( .A1(n3650), .A2(n2948), .ZN(MAC_N30) );
  NAND2_X1 U2859 ( .A1(n2800), .A2(n2799), .ZN(n2802) );
  XNOR2_X1 U2860 ( .A(n2802), .B(n2801), .ZN(n3651) );
  AND2_X1 U2861 ( .A1(n3651), .A2(n2948), .ZN(MAC_N31) );
  NAND2_X1 U2862 ( .A1(n2804), .A2(n2803), .ZN(n2806) );
  XNOR2_X1 U2863 ( .A(n2806), .B(n2805), .ZN(n3653) );
  NAND2_X1 U2864 ( .A1(n2930), .A2(n2807), .ZN(n2809) );
  XNOR2_X1 U2865 ( .A(n2809), .B(n2929), .ZN(n3654) );
  OAI21_X1 U2866 ( .B1(n2924), .B2(n2921), .A(n2922), .ZN(n2815) );
  INV_X1 U2867 ( .A(n2811), .ZN(n2813) );
  NAND2_X1 U2868 ( .A1(n2813), .A2(n2812), .ZN(n2814) );
  XNOR2_X1 U2869 ( .A(n2815), .B(n2814), .ZN(n3657) );
  NAND2_X1 U2870 ( .A1(n2912), .A2(n2817), .ZN(n2818) );
  XNOR2_X1 U2871 ( .A(n2913), .B(n2818), .ZN(n3658) );
  INV_X1 U2872 ( .A(n2819), .ZN(n2919) );
  OAI21_X1 U2873 ( .B1(n2919), .B2(n2916), .A(n2917), .ZN(n2824) );
  NAND2_X1 U2874 ( .A1(n2822), .A2(n2821), .ZN(n2823) );
  XNOR2_X1 U2875 ( .A(n2824), .B(n2823), .ZN(n3661) );
  INV_X1 U2876 ( .A(n2826), .ZN(n2900) );
  NAND2_X1 U2877 ( .A1(n2900), .A2(n2898), .ZN(n2827) );
  XNOR2_X1 U2878 ( .A(n2901), .B(n2827), .ZN(n3662) );
  OAI21_X1 U2879 ( .B1(n2907), .B2(n2904), .A(n2905), .ZN(n2833) );
  INV_X1 U2880 ( .A(n2829), .ZN(n2831) );
  NAND2_X1 U2881 ( .A1(n2831), .A2(n2830), .ZN(n2832) );
  XNOR2_X1 U2882 ( .A(n2833), .B(n2832), .ZN(n3666) );
  NAND2_X1 U2883 ( .A1(n2881), .A2(n2879), .ZN(n2836) );
  XNOR2_X1 U2884 ( .A(n2882), .B(n2836), .ZN(n3667) );
  OAI21_X1 U2885 ( .B1(n2887), .B2(n2839), .A(n2838), .ZN(n2844) );
  INV_X1 U2886 ( .A(n2840), .ZN(n2842) );
  NAND2_X1 U2887 ( .A1(n2842), .A2(n2841), .ZN(n2843) );
  XNOR2_X1 U2888 ( .A(n2844), .B(n2843), .ZN(n3672) );
  OAI21_X1 U2889 ( .B1(n2887), .B2(n2845), .A(n2885), .ZN(n2849) );
  NAND2_X1 U2890 ( .A1(n2847), .A2(n2846), .ZN(n2848) );
  XNOR2_X1 U2891 ( .A(n2849), .B(n2848), .ZN(n3671) );
  NAND2_X1 U2892 ( .A1(n2866), .A2(n2864), .ZN(n2852) );
  XNOR2_X1 U2893 ( .A(n2867), .B(n2852), .ZN(n3673) );
  NAND2_X1 U2894 ( .A1(n2856), .A2(n2855), .ZN(n2860) );
  AOI21_X1 U2895 ( .B1(n2867), .B2(n2858), .A(n2857), .ZN(n2859) );
  XOR2_X1 U2896 ( .A(n2860), .B(n2859), .Z(n3675) );
  NAND2_X1 U2897 ( .A1(n2863), .A2(n2862), .ZN(n2869) );
  AOI21_X1 U2898 ( .B1(n2867), .B2(n2866), .A(n2865), .ZN(n2868) );
  XOR2_X1 U2899 ( .A(n2869), .B(n2868), .Z(n3674) );
  NAND2_X1 U2900 ( .A1(n2871), .A2(n2870), .ZN(n2875) );
  AOI21_X1 U2901 ( .B1(n2882), .B2(n2873), .A(n2872), .ZN(n2874) );
  XOR2_X1 U2902 ( .A(n2875), .B(n2874), .Z(n3669) );
  NAND2_X1 U2903 ( .A1(n2878), .A2(n2877), .ZN(n2884) );
  AOI21_X1 U2904 ( .B1(n2882), .B2(n2881), .A(n2880), .ZN(n2883) );
  XOR2_X1 U2905 ( .A(n2884), .B(n2883), .Z(n3668) );
  NAND2_X1 U2906 ( .A1(n2886), .A2(n2885), .ZN(n2888) );
  XOR2_X1 U2907 ( .A(n2888), .B(n2887), .Z(n3670) );
  NAND2_X1 U2908 ( .A1(n2890), .A2(n2889), .ZN(n2894) );
  AOI21_X1 U2909 ( .B1(n2901), .B2(n2892), .A(n2891), .ZN(n2893) );
  XOR2_X1 U2910 ( .A(n2894), .B(n2893), .Z(n3664) );
  NAND2_X1 U2911 ( .A1(n2897), .A2(n2896), .ZN(n2903) );
  AOI21_X1 U2912 ( .B1(n2901), .B2(n2900), .A(n2899), .ZN(n2902) );
  XOR2_X1 U2913 ( .A(n2903), .B(n2902), .Z(n3663) );
  NAND2_X1 U2914 ( .A1(n2906), .A2(n2905), .ZN(n2908) );
  XOR2_X1 U2915 ( .A(n2908), .B(n2907), .Z(n3665) );
  NAND2_X1 U2916 ( .A1(n2910), .A2(n2909), .ZN(n2915) );
  AOI21_X1 U2917 ( .B1(n2913), .B2(n2912), .A(n2911), .ZN(n2914) );
  XOR2_X1 U2918 ( .A(n2915), .B(n2914), .Z(n3659) );
  INV_X1 U2919 ( .A(n2916), .ZN(n2918) );
  NAND2_X1 U2920 ( .A1(n2918), .A2(n2917), .ZN(n2920) );
  XOR2_X1 U2921 ( .A(n2920), .B(n2919), .Z(n3660) );
  NAND2_X1 U2922 ( .A1(n2923), .A2(n2922), .ZN(n2925) );
  XOR2_X1 U2923 ( .A(n2925), .B(n2924), .Z(n3656) );
  NAND2_X1 U2924 ( .A1(n2927), .A2(n2926), .ZN(n2932) );
  AOI21_X1 U2925 ( .B1(n2930), .B2(n2929), .A(n2928), .ZN(n2931) );
  XOR2_X1 U2926 ( .A(n2932), .B(n2931), .Z(n3655) );
  NAND2_X1 U2927 ( .A1(n2935), .A2(n2934), .ZN(n2937) );
  XOR2_X1 U2928 ( .A(n2937), .B(n2936), .Z(n3652) );
  AND2_X1 U2929 ( .A1(n3652), .A2(n2948), .ZN(n3923) );
  INV_X1 U2930 ( .A(n2938), .ZN(n2940) );
  NAND2_X1 U2931 ( .A1(n2940), .A2(n2939), .ZN(n2941) );
  XOR2_X1 U2932 ( .A(n2942), .B(n2941), .Z(n3649) );
  AND2_X1 U2933 ( .A1(n3649), .A2(n2948), .ZN(n3944) );
  INV_X1 U2934 ( .A(n2943), .ZN(n2945) );
  NAND2_X1 U2935 ( .A1(n2945), .A2(n2944), .ZN(n2946) );
  XOR2_X1 U2936 ( .A(n2947), .B(n2946), .Z(n3647) );
  AND2_X1 U2937 ( .A1(n3647), .A2(n2948), .ZN(n3954) );
  INV_X2 U2938 ( .A(n3495), .ZN(n3479) );
  NAND2_X1 U2939 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[20]), .ZN(
        n2951) );
  NAND2_X1 U2940 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[19]), .ZN(
        n2950) );
  NOR3_X1 U2941 ( .A1(n3479), .A2(n3851), .A3(n3850), .ZN(intadd_1_B_1_) );
  NAND2_X1 U2942 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[22]), .ZN(
        n2954) );
  NAND2_X1 U2943 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[21]), .ZN(
        n2953) );
  AOI21_X1 U2944 ( .B1(n2954), .B2(n2953), .A(intadd_1_B_1_), .ZN(n2963) );
  XNOR2_X1 U2945 ( .A(n2963), .B(intadd_6_n4), .ZN(n2956) );
  NOR2_X1 U2946 ( .A1(n3859), .A2(n3857), .ZN(n2957) );
  NOR2_X1 U2947 ( .A1(n3860), .A2(n3852), .ZN(n2959) );
  XOR2_X1 U2948 ( .A(n2957), .B(n2959), .Z(n2955) );
  NOR2_X1 U2949 ( .A1(n3835), .A2(n3565), .ZN(n2958) );
  XOR2_X1 U2950 ( .A(n2955), .B(n2958), .Z(n2964) );
  NAND2_X1 U2951 ( .A1(n2957), .A2(n2959), .ZN(n2962) );
  NAND2_X1 U2952 ( .A1(n2957), .A2(n2958), .ZN(n2961) );
  NAND2_X1 U2953 ( .A1(n2959), .A2(n2958), .ZN(n2960) );
  NAND3_X1 U2954 ( .A1(n2962), .A2(n2961), .A3(n2960), .ZN(intadd_1_n5) );
  NAND2_X1 U2955 ( .A1(n2963), .A2(intadd_6_n4), .ZN(n2967) );
  NAND2_X1 U2956 ( .A1(n2963), .A2(n2964), .ZN(n2966) );
  NAND2_X1 U2957 ( .A1(intadd_6_n4), .A2(n2964), .ZN(n2965) );
  NAND3_X1 U2958 ( .A1(n2967), .A2(n2966), .A3(n2965), .ZN(intadd_6_n3) );
  INV_X1 U2959 ( .A(n3871), .ZN(n2969) );
  OAI21_X1 U2960 ( .B1(n2969), .B2(n2968), .A(n3572), .ZN(n708) );
  NAND2_X1 U2961 ( .A1(MAC_calculation_done), .A2(
        dut__tb__sram_result_write_enable), .ZN(n2971) );
  NAND3_X1 U2962 ( .A1(n2971), .A2(n3798), .A3(n2970), .ZN(MAC_next_state[3])
         );
  INV_X1 U2963 ( .A(n2977), .ZN(n2974) );
  OAI21_X1 U2964 ( .B1(n3879), .B2(n3945), .A(n2972), .ZN(n2973) );
  OAI21_X1 U2965 ( .B1(MAC_current_state[3]), .B2(n2974), .A(n2973), .ZN(n707)
         );
  XNOR2_X1 U2966 ( .A(n449), .B(MAC_loop_count[0]), .ZN(n2975) );
  NAND2_X1 U2967 ( .A1(n2975), .A2(n3572), .ZN(n622) );
  AND2_X1 U2968 ( .A1(n2977), .A2(n2976), .ZN(n3868) );
  MUX2_X1 U2969 ( .A(tb__dut__sram_input_read_data[0]), .B(input_num_cols[0]), 
        .S(n709), .Z(n498) );
  OAI21_X1 U2970 ( .B1(n3641), .B2(MAC_loop_count[0]), .A(n449), .ZN(n2980) );
  NAND3_X1 U2971 ( .A1(n3630), .A2(MAC_loop_count[0]), .A3(n3994), .ZN(n2978)
         );
  OAI21_X1 U2972 ( .B1(n2979), .B2(n3994), .A(n2978), .ZN(n621) );
  AOI21_X1 U2973 ( .B1(n3994), .B2(n3572), .A(n2980), .ZN(n2982) );
  NAND2_X1 U2974 ( .A1(MAC_loop_count[0]), .A2(MAC_loop_count[1]), .ZN(n2983)
         );
  OR3_X1 U2975 ( .A1(n3623), .A2(MAC_loop_count[2]), .A3(n2983), .ZN(n2981) );
  OAI21_X1 U2976 ( .B1(n2982), .B2(n3976), .A(n2981), .ZN(n620) );
  NOR2_X1 U2977 ( .A1(n2983), .A2(n3976), .ZN(n2990) );
  OAI21_X1 U2978 ( .B1(n3795), .B2(n2985), .A(n3572), .ZN(n2988) );
  NAND3_X1 U2979 ( .A1(n3630), .A2(n2990), .A3(n3885), .ZN(n2984) );
  OAI21_X1 U2980 ( .B1(n2988), .B2(n3885), .A(n2984), .ZN(n619) );
  MUX2_X1 U2981 ( .A(tb__dut__sram_input_read_data[3]), .B(input_num_cols[3]), 
        .S(n709), .Z(n501) );
  OAI21_X1 U2982 ( .B1(n2985), .B2(MAC_loop_count[4]), .A(MAC_loop_count[3]), 
        .ZN(n2986) );
  OAI211_X1 U2983 ( .C1(MAC_loop_count[3]), .C2(MAC_loop_count[4]), .A(n3630), 
        .B(n2986), .ZN(n2987) );
  OAI21_X1 U2984 ( .B1(n2988), .B2(n3979), .A(n2987), .ZN(n618) );
  NOR2_X1 U2985 ( .A1(n3979), .A2(n3885), .ZN(n2989) );
  NAND2_X1 U2986 ( .A1(n2990), .A2(n2989), .ZN(n2997) );
  AOI21_X1 U2987 ( .B1(n3572), .B2(n2997), .A(n3795), .ZN(n2995) );
  INV_X1 U2988 ( .A(n2997), .ZN(n2991) );
  NAND3_X1 U2989 ( .A1(n3630), .A2(n2991), .A3(n3993), .ZN(n2992) );
  OAI21_X1 U2990 ( .B1(n2995), .B2(n3993), .A(n2992), .ZN(n617) );
  MUX2_X1 U2991 ( .A(tb__dut__sram_input_read_data[5]), .B(input_num_cols[5]), 
        .S(n709), .Z(n503) );
  OAI21_X1 U2992 ( .B1(n2997), .B2(MAC_loop_count[6]), .A(MAC_loop_count[5]), 
        .ZN(n2993) );
  OAI211_X1 U2993 ( .C1(MAC_loop_count[5]), .C2(MAC_loop_count[6]), .A(n3630), 
        .B(n2993), .ZN(n2994) );
  OAI21_X1 U2994 ( .B1(n2995), .B2(n4015), .A(n2994), .ZN(n616) );
  NAND2_X1 U2995 ( .A1(MAC_loop_count[6]), .A2(MAC_loop_count[5]), .ZN(n2996)
         );
  NOR2_X1 U2996 ( .A1(n2997), .A2(n2996), .ZN(n3003) );
  INV_X1 U2997 ( .A(n3003), .ZN(n2999) );
  OAI21_X1 U2998 ( .B1(n2999), .B2(n3795), .A(n3572), .ZN(n3002) );
  NAND3_X1 U2999 ( .A1(n3630), .A2(n3003), .A3(n3992), .ZN(n2998) );
  OAI21_X1 U3000 ( .B1(n3002), .B2(n3992), .A(n2998), .ZN(n615) );
  MUX2_X1 U3001 ( .A(tb__dut__sram_input_read_data[7]), .B(input_num_cols[7]), 
        .S(n709), .Z(n505) );
  OAI21_X1 U3002 ( .B1(n2999), .B2(MAC_loop_count[8]), .A(MAC_loop_count[7]), 
        .ZN(n3000) );
  OAI211_X1 U3003 ( .C1(MAC_loop_count[7]), .C2(MAC_loop_count[8]), .A(n3000), 
        .B(n3630), .ZN(n3001) );
  OAI21_X1 U3004 ( .B1(n3002), .B2(n4016), .A(n3001), .ZN(n614) );
  AND3_X1 U3005 ( .A1(n3003), .A2(MAC_loop_count[7]), .A3(MAC_loop_count[8]), 
        .ZN(n3009) );
  INV_X1 U3006 ( .A(n3009), .ZN(n3005) );
  AOI21_X1 U3007 ( .B1(n3005), .B2(n3572), .A(n3795), .ZN(n3008) );
  NAND3_X1 U3008 ( .A1(n3009), .A2(n3630), .A3(n3995), .ZN(n3004) );
  OAI21_X1 U3009 ( .B1(n3008), .B2(n3995), .A(n3004), .ZN(n613) );
  MUX2_X1 U3010 ( .A(tb__dut__sram_input_read_data[9]), .B(input_num_cols[9]), 
        .S(n709), .Z(n507) );
  OAI21_X1 U3011 ( .B1(n3005), .B2(MAC_loop_count[10]), .A(MAC_loop_count[9]), 
        .ZN(n3006) );
  OAI211_X1 U3012 ( .C1(MAC_loop_count[9]), .C2(MAC_loop_count[10]), .A(n3006), 
        .B(n3630), .ZN(n3007) );
  OAI21_X1 U3013 ( .B1(n3008), .B2(n4014), .A(n3007), .ZN(n612) );
  AND3_X1 U3014 ( .A1(n3009), .A2(MAC_loop_count[9]), .A3(MAC_loop_count[10]), 
        .ZN(n3015) );
  INV_X1 U3015 ( .A(n3015), .ZN(n3011) );
  OAI21_X1 U3016 ( .B1(n3011), .B2(n3795), .A(n3572), .ZN(n3014) );
  NAND3_X1 U3017 ( .A1(n3015), .A2(n3630), .A3(n3996), .ZN(n3010) );
  OAI21_X1 U3018 ( .B1(n3014), .B2(n3996), .A(n3010), .ZN(n611) );
  MUX2_X1 U3019 ( .A(tb__dut__sram_input_read_data[11]), .B(input_num_cols[11]), .S(n709), .Z(n509) );
  MUX2_X1 U3020 ( .A(tb__dut__sram_input_read_data[10]), .B(input_num_cols[10]), .S(n709), .Z(n508) );
  MUX2_X1 U3021 ( .A(tb__dut__sram_input_read_data[1]), .B(input_num_cols[1]), 
        .S(n709), .Z(n499) );
  MUX2_X1 U3022 ( .A(tb__dut__sram_input_read_data[2]), .B(input_num_cols[2]), 
        .S(n709), .Z(n500) );
  MUX2_X1 U3023 ( .A(tb__dut__sram_input_read_data[4]), .B(input_num_cols[4]), 
        .S(n709), .Z(n502) );
  MUX2_X1 U3024 ( .A(tb__dut__sram_input_read_data[6]), .B(input_num_cols[6]), 
        .S(n709), .Z(n504) );
  MUX2_X1 U3025 ( .A(tb__dut__sram_input_read_data[8]), .B(input_num_cols[8]), 
        .S(n709), .Z(n506) );
  OAI21_X1 U3026 ( .B1(n3011), .B2(MAC_loop_count[12]), .A(MAC_loop_count[11]), 
        .ZN(n3012) );
  OAI211_X1 U3027 ( .C1(MAC_loop_count[11]), .C2(MAC_loop_count[12]), .A(n3012), .B(n3630), .ZN(n3013) );
  OAI21_X1 U3028 ( .B1(n3014), .B2(n4017), .A(n3013), .ZN(n610) );
  MUX2_X1 U3029 ( .A(tb__dut__sram_input_read_data[12]), .B(input_num_cols[12]), .S(n709), .Z(n510) );
  NAND3_X1 U3030 ( .A1(n3015), .A2(MAC_loop_count[11]), .A3(MAC_loop_count[12]), .ZN(n3016) );
  AOI21_X1 U3031 ( .B1(n3016), .B2(n3572), .A(n3795), .ZN(n3019) );
  NAND2_X1 U3032 ( .A1(n3630), .A2(n3988), .ZN(n3018) );
  OAI22_X1 U3033 ( .A1(n3019), .A2(n3988), .B1(n3018), .B2(n3016), .ZN(n609)
         );
  MUX2_X1 U3034 ( .A(tb__dut__sram_input_read_data[13]), .B(input_num_cols[13]), .S(n709), .Z(n511) );
  INV_X1 U3035 ( .A(n3016), .ZN(n3017) );
  NAND3_X1 U3036 ( .A1(n3017), .A2(MAC_loop_count[13]), .A3(n3630), .ZN(n3023)
         );
  NAND2_X1 U3037 ( .A1(n3019), .A2(n3018), .ZN(n3021) );
  NAND2_X1 U3038 ( .A1(n3021), .A2(MAC_loop_count[14]), .ZN(n3020) );
  OAI21_X1 U3039 ( .B1(MAC_loop_count[14]), .B2(n3023), .A(n3020), .ZN(n608)
         );
  MUX2_X1 U3040 ( .A(tb__dut__sram_input_read_data[14]), .B(input_num_cols[14]), .S(n709), .Z(n512) );
  AOI21_X1 U3041 ( .B1(n3630), .B2(n3991), .A(n3021), .ZN(n3024) );
  NAND2_X1 U3042 ( .A1(n3989), .A2(MAC_loop_count[14]), .ZN(n3022) );
  OAI22_X1 U3043 ( .A1(n3024), .A2(n3989), .B1(n3023), .B2(n3022), .ZN(n607)
         );
  MUX2_X1 U3044 ( .A(tb__dut__sram_input_read_data[15]), .B(input_num_cols[15]), .S(n709), .Z(n513) );
  MUX2_X1 U3045 ( .A(n3883), .B(current_state[2]), .S(current_state[0]), .Z(
        n3026) );
  NAND3_X1 U3046 ( .A1(n3883), .A2(current_state[0]), .A3(n3034), .ZN(n3025)
         );
  NOR2_X1 U3047 ( .A1(n3883), .A2(current_state[2]), .ZN(n3033) );
  NAND2_X1 U3048 ( .A1(n3033), .A2(n3960), .ZN(n3027) );
  OAI211_X1 U3049 ( .C1(n3026), .C2(n3034), .A(n3025), .B(n3027), .ZN(
        next_state[1]) );
  NOR2_X1 U3050 ( .A1(n3957), .A2(current_state[1]), .ZN(n3029) );
  AND2_X1 U3051 ( .A1(n3029), .A2(n3960), .ZN(n3646) );
  AOI21_X1 U3052 ( .B1(n3027), .B2(n710), .A(n3032), .ZN(n3028) );
  AOI21_X1 U3053 ( .B1(dut_ready), .B2(dut_valid), .A(n3028), .ZN(n3031) );
  OAI211_X1 U3054 ( .C1(n3033), .C2(n3029), .A(n3032), .B(current_state[0]), 
        .ZN(n3030) );
  NAND2_X1 U3055 ( .A1(n3031), .A2(n3030), .ZN(next_state[0]) );
  AOI21_X1 U3056 ( .B1(n3032), .B2(n3960), .A(n3883), .ZN(n3036) );
  NAND3_X1 U3057 ( .A1(n3034), .A2(current_state[0]), .A3(n3033), .ZN(n3035)
         );
  OAI21_X1 U3058 ( .B1(n3036), .B2(n3957), .A(n3035), .ZN(next_state[2]) );
  NOR2_X1 U3059 ( .A1(n3814), .A2(n3969), .ZN(n3242) );
  NAND2_X1 U3060 ( .A1(n3037), .A2(n3242), .ZN(n3234) );
  NOR2_X1 U3061 ( .A1(n3814), .A2(n3964), .ZN(n3235) );
  NOR2_X1 U3062 ( .A1(n3814), .A2(n3966), .ZN(n3228) );
  NAND2_X1 U3063 ( .A1(n3235), .A2(n3228), .ZN(n3038) );
  NOR2_X1 U3064 ( .A1(n3234), .A2(n3038), .ZN(n3306) );
  NOR2_X1 U3065 ( .A1(n3814), .A2(n3974), .ZN(n3220) );
  NOR2_X1 U3066 ( .A1(n3814), .A2(n3975), .ZN(n3213) );
  NAND2_X1 U3067 ( .A1(n3220), .A2(n3213), .ZN(n3304) );
  NAND2_X1 U3068 ( .A1(n3306), .A2(n3039), .ZN(n3040) );
  NOR2_X1 U3069 ( .A1(n3040), .A2(n3307), .ZN(n3042) );
  XNOR2_X1 U3070 ( .A(n3042), .B(n3041), .ZN(n3043) );
  MUX2_X1 U3071 ( .A(n3043), .B(sram_weight_read_base_address[14]), .S(n3676), 
        .Z(n655) );
  NOR2_X1 U3072 ( .A1(n3217), .A2(n4019), .ZN(n3064) );
  NAND2_X1 U3073 ( .A1(n3217), .A2(n4019), .ZN(n3063) );
  NAND2_X1 U3074 ( .A1(n3044), .A2(n3063), .ZN(n3059) );
  NAND2_X1 U3075 ( .A1(n3166), .A2(n3191), .ZN(n3048) );
  NOR2_X1 U3076 ( .A1(n3294), .A2(n4031), .ZN(n3174) );
  NOR2_X1 U3077 ( .A1(n3884), .A2(n3990), .ZN(n3178) );
  NAND2_X1 U3078 ( .A1(n3294), .A2(n4031), .ZN(n3175) );
  OAI21_X1 U3079 ( .B1(n3174), .B2(n3178), .A(n3175), .ZN(n3186) );
  NAND2_X1 U3080 ( .A1(n3289), .A2(n4030), .ZN(n3183) );
  AOI21_X1 U3081 ( .B1(n3186), .B2(n3184), .A(n3045), .ZN(n3167) );
  NAND2_X1 U3082 ( .A1(n3283), .A2(n4029), .ZN(n3190) );
  NAND2_X1 U3083 ( .A1(n3276), .A2(n4028), .ZN(n3165) );
  AOI21_X1 U3084 ( .B1(n3166), .B2(n3168), .A(n3046), .ZN(n3047) );
  OAI21_X1 U3085 ( .B1(n3048), .B2(n3167), .A(n3047), .ZN(n3143) );
  NOR2_X1 U3086 ( .A1(n3257), .A2(n4025), .ZN(n3152) );
  NOR2_X1 U3087 ( .A1(n3271), .A2(n4027), .ZN(n3144) );
  NAND2_X1 U3088 ( .A1(n3161), .A2(n3146), .ZN(n3151) );
  NOR2_X1 U3089 ( .A1(n3152), .A2(n3151), .ZN(n3052) );
  NAND2_X1 U3090 ( .A1(n3271), .A2(n4027), .ZN(n3160) );
  NAND2_X1 U3091 ( .A1(n3264), .A2(n4026), .ZN(n3145) );
  AOI21_X1 U3092 ( .B1(n3146), .B2(n3050), .A(n3049), .ZN(n3150) );
  NAND2_X1 U3093 ( .A1(n3257), .A2(n4025), .ZN(n3153) );
  OAI21_X1 U3094 ( .B1(n3150), .B2(n3152), .A(n3153), .ZN(n3051) );
  AOI21_X1 U3095 ( .B1(n3143), .B2(n3052), .A(n3051), .ZN(n3103) );
  NOR2_X1 U3096 ( .A1(n3232), .A2(n4021), .ZN(n3100) );
  NOR2_X1 U3097 ( .A1(n3239), .A2(n4022), .ZN(n3111) );
  NOR2_X1 U3098 ( .A1(n3100), .A2(n3111), .ZN(n3054) );
  NOR2_X1 U3099 ( .A1(n3246), .A2(n4023), .ZN(n3128) );
  NOR2_X1 U3100 ( .A1(n3248), .A2(n4024), .ZN(n3131) );
  NOR2_X1 U3101 ( .A1(n3128), .A2(n3131), .ZN(n3115) );
  NAND2_X1 U3102 ( .A1(n3054), .A2(n3115), .ZN(n3056) );
  NAND2_X1 U3103 ( .A1(n3248), .A2(n4024), .ZN(n3136) );
  NAND2_X1 U3104 ( .A1(n3246), .A2(n4023), .ZN(n3129) );
  OAI21_X1 U3105 ( .B1(n3128), .B2(n3136), .A(n3129), .ZN(n3114) );
  NAND2_X1 U3106 ( .A1(n3239), .A2(n4022), .ZN(n3112) );
  NAND2_X1 U3107 ( .A1(n3232), .A2(n4021), .ZN(n3101) );
  OAI21_X1 U3108 ( .B1(n3100), .B2(n3112), .A(n3101), .ZN(n3053) );
  AOI21_X1 U3109 ( .B1(n3054), .B2(n3114), .A(n3053), .ZN(n3055) );
  OAI21_X1 U3110 ( .B1(n3103), .B2(n3056), .A(n3055), .ZN(n3124) );
  NOR2_X1 U3111 ( .A1(n3224), .A2(n4020), .ZN(n3062) );
  NAND2_X1 U3112 ( .A1(n3224), .A2(n4020), .ZN(n3121) );
  AOI21_X1 U3113 ( .B1(n3124), .B2(n3122), .A(n3057), .ZN(n3058) );
  XOR2_X1 U3114 ( .A(n3059), .B(n3058), .Z(n3060) );
  XNOR2_X1 U3115 ( .A(n3060), .B(n3942), .ZN(n3069) );
  NOR2_X1 U3116 ( .A1(n3210), .A2(n4018), .ZN(n3084) );
  NAND2_X1 U3117 ( .A1(n3210), .A2(n4018), .ZN(n3087) );
  NAND2_X1 U3118 ( .A1(n3061), .A2(n3087), .ZN(n3066) );
  NOR2_X1 U3119 ( .A1(n3064), .A2(n3062), .ZN(n3085) );
  OAI21_X1 U3120 ( .B1(n3064), .B2(n3121), .A(n3063), .ZN(n3090) );
  AOI21_X1 U3121 ( .B1(n3124), .B2(n3085), .A(n3090), .ZN(n3065) );
  XOR2_X1 U3122 ( .A(n3066), .B(n3065), .Z(n3067) );
  XNOR2_X1 U3123 ( .A(n3067), .B(n3941), .ZN(n3068) );
  NOR2_X1 U3124 ( .A1(n3069), .A2(n3068), .ZN(n3099) );
  NOR2_X1 U3125 ( .A1(n3313), .A2(n4032), .ZN(n3088) );
  NAND2_X1 U3126 ( .A1(n3313), .A2(n4032), .ZN(n3086) );
  NAND2_X1 U3127 ( .A1(n3070), .A2(n3086), .ZN(n3076) );
  NOR2_X1 U3128 ( .A1(n3071), .A2(n3084), .ZN(n3074) );
  OAI21_X1 U3129 ( .B1(n3072), .B2(n3084), .A(n3087), .ZN(n3073) );
  AOI21_X1 U3130 ( .B1(n3124), .B2(n3074), .A(n3073), .ZN(n3075) );
  XOR2_X1 U3131 ( .A(n3076), .B(n3075), .Z(n3077) );
  XNOR2_X1 U3132 ( .A(n3077), .B(n3939), .ZN(n3097) );
  NAND2_X1 U3133 ( .A1(dut__tb__sram_weight_read_address[14]), .A2(
        dut__tb__sram_weight_read_address[15]), .ZN(n3078) );
  NOR2_X1 U3134 ( .A1(n3079), .A2(n3078), .ZN(n3080) );
  NAND2_X1 U3135 ( .A1(n3081), .A2(n3080), .ZN(n3083) );
  NOR2_X1 U3136 ( .A1(n3083), .A2(n3082), .ZN(n3096) );
  NOR2_X1 U3137 ( .A1(n3088), .A2(n3084), .ZN(n3091) );
  OAI21_X1 U3138 ( .B1(n3088), .B2(n3087), .A(n3086), .ZN(n3089) );
  AOI21_X1 U3139 ( .B1(n3091), .B2(n3090), .A(n3089), .ZN(n3092) );
  AOI21_X1 U3140 ( .B1(n3124), .B2(n3094), .A(n3093), .ZN(n3095) );
  NOR2_X1 U3141 ( .A1(n3097), .A2(n995), .ZN(n3098) );
  NAND2_X1 U3142 ( .A1(n3099), .A2(n3098), .ZN(n3206) );
  NAND2_X1 U3143 ( .A1(n3102), .A2(n3101), .ZN(n3109) );
  NOR2_X1 U3144 ( .A1(n3104), .A2(n3111), .ZN(n3107) );
  OAI21_X1 U3145 ( .B1(n3105), .B2(n3111), .A(n3112), .ZN(n3106) );
  AOI21_X1 U3146 ( .B1(n3139), .B2(n3107), .A(n3106), .ZN(n3108) );
  XOR2_X1 U3147 ( .A(n3109), .B(n3108), .Z(n3110) );
  XOR2_X1 U3148 ( .A(n3110), .B(n3937), .Z(n3120) );
  NAND2_X1 U3149 ( .A1(n3113), .A2(n3112), .ZN(n3117) );
  AOI21_X1 U3150 ( .B1(n3139), .B2(n3115), .A(n3114), .ZN(n3116) );
  XOR2_X1 U3151 ( .A(n3117), .B(n3116), .Z(n3118) );
  XOR2_X1 U3152 ( .A(n3118), .B(n3934), .Z(n3119) );
  NAND2_X1 U3153 ( .A1(n3120), .A2(n3119), .ZN(n3127) );
  NAND2_X1 U3154 ( .A1(n3122), .A2(n3121), .ZN(n3123) );
  XNOR2_X1 U3155 ( .A(n3124), .B(n3123), .ZN(n3125) );
  XNOR2_X1 U3156 ( .A(n3125), .B(n3940), .ZN(n3126) );
  NOR2_X1 U3157 ( .A1(n3127), .A2(n3126), .ZN(n3204) );
  NAND2_X1 U3158 ( .A1(n3130), .A2(n3129), .ZN(n3134) );
  AOI21_X1 U3159 ( .B1(n3139), .B2(n3137), .A(n3132), .ZN(n3133) );
  XOR2_X1 U3160 ( .A(n3134), .B(n3133), .Z(n3135) );
  XOR2_X1 U3161 ( .A(n3135), .B(n3935), .Z(n3142) );
  NAND2_X1 U3162 ( .A1(n3137), .A2(n3136), .ZN(n3138) );
  XNOR2_X1 U3163 ( .A(n3139), .B(n3138), .ZN(n3140) );
  XOR2_X1 U3164 ( .A(n3140), .B(n3932), .Z(n3141) );
  NAND2_X1 U3165 ( .A1(n3142), .A2(n3141), .ZN(n3202) );
  OAI21_X1 U3166 ( .B1(n3162), .B2(n3144), .A(n3160), .ZN(n3148) );
  NAND2_X1 U3167 ( .A1(n3146), .A2(n3145), .ZN(n3147) );
  XNOR2_X1 U3168 ( .A(n3148), .B(n3147), .ZN(n3149) );
  XNOR2_X1 U3169 ( .A(n3149), .B(n3933), .ZN(n3159) );
  OAI21_X1 U3170 ( .B1(n3162), .B2(n3151), .A(n3150), .ZN(n3156) );
  NAND2_X1 U3171 ( .A1(n3154), .A2(n3153), .ZN(n3155) );
  XNOR2_X1 U3172 ( .A(n3156), .B(n3155), .ZN(n3157) );
  XNOR2_X1 U3173 ( .A(n3157), .B(n3931), .ZN(n3158) );
  NOR2_X1 U3174 ( .A1(n3159), .A2(n3158), .ZN(n3200) );
  NAND2_X1 U3175 ( .A1(n3161), .A2(n3160), .ZN(n3163) );
  XOR2_X1 U3176 ( .A(n3163), .B(n3162), .Z(n3164) );
  XOR2_X1 U3177 ( .A(n3164), .B(n3928), .Z(n3173) );
  NAND2_X1 U3178 ( .A1(n3166), .A2(n3165), .ZN(n3170) );
  AOI21_X1 U3179 ( .B1(n3193), .B2(n3191), .A(n3168), .ZN(n3169) );
  XOR2_X1 U3180 ( .A(n3170), .B(n3169), .Z(n3171) );
  XOR2_X1 U3181 ( .A(n3171), .B(n3927), .Z(n3172) );
  NAND2_X1 U3182 ( .A1(n3173), .A2(n3172), .ZN(n3198) );
  NAND2_X1 U3183 ( .A1(n3176), .A2(n3175), .ZN(n3177) );
  XOR2_X1 U3184 ( .A(n3178), .B(n3177), .Z(n3179) );
  XOR2_X1 U3185 ( .A(n3179), .B(n4033), .Z(n3182) );
  XNOR2_X1 U3186 ( .A(n3884), .B(n3990), .ZN(n3180) );
  XOR2_X1 U3187 ( .A(n3180), .B(n4034), .Z(n3181) );
  NAND2_X1 U3188 ( .A1(n3182), .A2(n3181), .ZN(n3189) );
  NAND2_X1 U3189 ( .A1(n3184), .A2(n3183), .ZN(n3185) );
  XNOR2_X1 U3190 ( .A(n3186), .B(n3185), .ZN(n3187) );
  XNOR2_X1 U3191 ( .A(n3187), .B(n3925), .ZN(n3188) );
  NOR2_X1 U3192 ( .A1(n3189), .A2(n3188), .ZN(n3196) );
  NAND2_X1 U3193 ( .A1(n3191), .A2(n3190), .ZN(n3192) );
  XNOR2_X1 U3194 ( .A(n3193), .B(n3192), .ZN(n3194) );
  XOR2_X1 U3195 ( .A(n3194), .B(n3926), .Z(n3195) );
  NAND2_X1 U3196 ( .A1(n3196), .A2(n3195), .ZN(n3197) );
  NOR2_X1 U3197 ( .A1(n3198), .A2(n3197), .ZN(n3199) );
  NAND2_X1 U3198 ( .A1(n3200), .A2(n3199), .ZN(n3201) );
  NOR2_X1 U3199 ( .A1(n3202), .A2(n3201), .ZN(n3203) );
  NAND2_X1 U3200 ( .A1(n3204), .A2(n3203), .ZN(n3205) );
  NOR2_X1 U3201 ( .A1(n3206), .A2(n3205), .ZN(n3207) );
  INV_X1 U3202 ( .A(n3207), .ZN(n3208) );
  NOR2_X1 U3203 ( .A1(n3208), .A2(n3209), .ZN(n4037) );
  NOR2_X1 U3204 ( .A1(n4037), .A2(n3795), .ZN(n3316) );
  NOR3_X1 U3205 ( .A1(n3207), .A2(n3312), .A3(n3623), .ZN(n3314) );
  AOI22_X1 U3206 ( .A1(n3314), .A2(n3210), .B1(n3312), .B2(
        MAC_weight_read_start_address[14]), .ZN(n3211) );
  OAI21_X1 U3207 ( .B1(n3316), .B2(n4018), .A(n3211), .ZN(n592) );
  NAND2_X1 U3208 ( .A1(n3306), .A2(n3220), .ZN(n3212) );
  NOR2_X1 U3209 ( .A1(n3212), .A2(n3307), .ZN(n3215) );
  XNOR2_X1 U3210 ( .A(n3215), .B(n3214), .ZN(n3216) );
  MUX2_X1 U3211 ( .A(n3216), .B(sram_weight_read_base_address[13]), .S(n3676), 
        .Z(n656) );
  AOI22_X1 U3212 ( .A1(n3314), .A2(n3217), .B1(n3312), .B2(
        MAC_weight_read_start_address[13]), .ZN(n3218) );
  OAI21_X1 U3213 ( .B1(n3316), .B2(n4019), .A(n3218), .ZN(n593) );
  NOR2_X1 U3214 ( .A1(n3307), .A2(n3219), .ZN(n3222) );
  XNOR2_X1 U3215 ( .A(n3222), .B(n3221), .ZN(n3223) );
  MUX2_X1 U3216 ( .A(n3223), .B(sram_weight_read_base_address[12]), .S(n3676), 
        .Z(n657) );
  AOI22_X1 U3217 ( .A1(n3314), .A2(n3224), .B1(n3312), .B2(
        MAC_weight_read_start_address[12]), .ZN(n3225) );
  OAI21_X1 U3218 ( .B1(n3316), .B2(n4020), .A(n3225), .ZN(n594) );
  NAND2_X1 U3219 ( .A1(n3226), .A2(n3235), .ZN(n3227) );
  NOR2_X1 U3220 ( .A1(n3307), .A2(n3227), .ZN(n3230) );
  XNOR2_X1 U3221 ( .A(n3230), .B(n3229), .ZN(n3231) );
  MUX2_X1 U3222 ( .A(n3231), .B(sram_weight_read_base_address[11]), .S(n3676), 
        .Z(n658) );
  AOI22_X1 U3223 ( .A1(n3314), .A2(n3232), .B1(n3312), .B2(
        MAC_weight_read_start_address[11]), .ZN(n3233) );
  OAI21_X1 U3224 ( .B1(n3316), .B2(n4021), .A(n3233), .ZN(n595) );
  NOR2_X1 U3225 ( .A1(n3307), .A2(n3234), .ZN(n3237) );
  XNOR2_X1 U3226 ( .A(n3237), .B(n3236), .ZN(n3238) );
  MUX2_X1 U3227 ( .A(n3238), .B(sram_weight_read_base_address[10]), .S(n3676), 
        .Z(n659) );
  AOI22_X1 U3228 ( .A1(n3314), .A2(n3239), .B1(n3312), .B2(
        MAC_weight_read_start_address[10]), .ZN(n3240) );
  OAI21_X1 U3229 ( .B1(n3316), .B2(n4022), .A(n3240), .ZN(n596) );
  NOR2_X1 U3230 ( .A1(n3307), .A2(n3241), .ZN(n3244) );
  XNOR2_X1 U3231 ( .A(n3244), .B(n3243), .ZN(n3245) );
  MUX2_X1 U3232 ( .A(n3245), .B(sram_weight_read_base_address[9]), .S(n3676), 
        .Z(n660) );
  AOI22_X1 U3233 ( .A1(n3314), .A2(n3246), .B1(n3312), .B2(
        MAC_weight_read_start_address[9]), .ZN(n3247) );
  OAI21_X1 U3234 ( .B1(n3316), .B2(n4023), .A(n3247), .ZN(n597) );
  AOI22_X1 U3235 ( .A1(n3314), .A2(n3248), .B1(n3312), .B2(
        MAC_weight_read_start_address[8]), .ZN(n3249) );
  OAI21_X1 U3236 ( .B1(n3316), .B2(n4024), .A(n3249), .ZN(n598) );
  NAND2_X1 U3237 ( .A1(n3251), .A2(n3260), .ZN(n3252) );
  NOR2_X1 U3238 ( .A1(n3273), .A2(n3252), .ZN(n3255) );
  XNOR2_X1 U3239 ( .A(n3255), .B(n3254), .ZN(n3256) );
  MUX2_X1 U3240 ( .A(n3256), .B(sram_weight_read_base_address[7]), .S(n3676), 
        .Z(n662) );
  AOI22_X1 U3241 ( .A1(n3314), .A2(n3257), .B1(n3312), .B2(
        MAC_weight_read_start_address[7]), .ZN(n3258) );
  OAI21_X1 U3242 ( .B1(n3316), .B2(n4025), .A(n3258), .ZN(n599) );
  NOR2_X1 U3243 ( .A1(n3273), .A2(n3259), .ZN(n3262) );
  XNOR2_X1 U3244 ( .A(n3262), .B(n3261), .ZN(n3263) );
  MUX2_X1 U3245 ( .A(n3263), .B(sram_weight_read_base_address[6]), .S(n3676), 
        .Z(n663) );
  AOI22_X1 U3246 ( .A1(n3314), .A2(n3264), .B1(n3312), .B2(
        MAC_weight_read_start_address[6]), .ZN(n3265) );
  OAI21_X1 U3247 ( .B1(n3316), .B2(n4026), .A(n3265), .ZN(n600) );
  NOR2_X1 U3248 ( .A1(n3273), .A2(n3274), .ZN(n3269) );
  XNOR2_X1 U3249 ( .A(n3269), .B(n3268), .ZN(n3270) );
  MUX2_X1 U3250 ( .A(n3270), .B(sram_weight_read_base_address[5]), .S(n3676), 
        .Z(n664) );
  AOI22_X1 U3251 ( .A1(n3314), .A2(n3271), .B1(n3312), .B2(
        MAC_weight_read_start_address[5]), .ZN(n3272) );
  OAI21_X1 U3252 ( .B1(n3316), .B2(n4027), .A(n3272), .ZN(n601) );
  XOR2_X1 U3253 ( .A(n3274), .B(n3273), .Z(n3275) );
  MUX2_X1 U3254 ( .A(n3275), .B(sram_weight_read_base_address[4]), .S(n3676), 
        .Z(n665) );
  AOI22_X1 U3255 ( .A1(n3314), .A2(n3276), .B1(n3312), .B2(
        MAC_weight_read_start_address[4]), .ZN(n3277) );
  OAI21_X1 U3256 ( .B1(n3316), .B2(n4028), .A(n3277), .ZN(n602) );
  NAND2_X1 U3257 ( .A1(n3287), .A2(n3285), .ZN(n3280) );
  XOR2_X1 U3258 ( .A(n3281), .B(n3280), .Z(n3282) );
  MUX2_X1 U3259 ( .A(n3282), .B(sram_weight_read_base_address[3]), .S(n3676), 
        .Z(n666) );
  AOI22_X1 U3260 ( .A1(n3314), .A2(n3283), .B1(n3312), .B2(
        MAC_weight_read_start_address[3]), .ZN(n3284) );
  OAI21_X1 U3261 ( .B1(n3316), .B2(n4029), .A(n3284), .ZN(n603) );
  XNOR2_X1 U3262 ( .A(n3287), .B(n3286), .ZN(n3288) );
  MUX2_X1 U3263 ( .A(n3288), .B(sram_weight_read_base_address[2]), .S(n3676), 
        .Z(n667) );
  AOI22_X1 U3264 ( .A1(n3314), .A2(n3289), .B1(n3312), .B2(
        MAC_weight_read_start_address[2]), .ZN(n3290) );
  OAI21_X1 U3265 ( .B1(n3316), .B2(n4030), .A(n3290), .ZN(n604) );
  XNOR2_X1 U3266 ( .A(n3296), .B(n3292), .ZN(n3293) );
  MUX2_X1 U3267 ( .A(n3293), .B(sram_weight_read_base_address[1]), .S(n3676), 
        .Z(n668) );
  AOI22_X1 U3268 ( .A1(n3314), .A2(n3294), .B1(n3312), .B2(
        MAC_weight_read_start_address[1]), .ZN(n3295) );
  OAI21_X1 U3269 ( .B1(n3316), .B2(n4031), .A(n3295), .ZN(n605) );
  MUX2_X1 U3270 ( .A(n3297), .B(sram_weight_read_base_address[0]), .S(n3676), 
        .Z(n669) );
  INV_X1 U3271 ( .A(n3314), .ZN(n3298) );
  OAI222_X1 U3272 ( .A1(n4013), .A2(n3299), .B1(n3990), .B2(n3316), .C1(n3298), 
        .C2(dut__tb__sram_weight_read_address[0]), .ZN(n606) );
  INV_X1 U3273 ( .A(n3300), .ZN(n3303) );
  AOI22_X1 U3274 ( .A1(n3301), .A2(dut__tb__sram_weight_read_address[0]), .B1(
        n3641), .B2(MAC_weight_read_start_address[0]), .ZN(n3302) );
  OAI21_X1 U3275 ( .B1(n3303), .B2(dut__tb__sram_weight_read_address[0]), .A(
        n3302), .ZN(n591) );
  NOR2_X1 U3276 ( .A1(n3304), .A2(n3041), .ZN(n3305) );
  NAND2_X1 U3277 ( .A1(n3306), .A2(n3305), .ZN(n3308) );
  NOR2_X1 U3278 ( .A1(n3308), .A2(n3307), .ZN(n3310) );
  XNOR2_X1 U3279 ( .A(n3310), .B(n3309), .ZN(n3311) );
  MUX2_X1 U3280 ( .A(n3311), .B(sram_weight_read_base_address[15]), .S(n3676), 
        .Z(n706) );
  AOI22_X1 U3281 ( .A1(n3314), .A2(n3313), .B1(n3312), .B2(
        MAC_weight_read_start_address[15]), .ZN(n3315) );
  OAI21_X1 U3282 ( .B1(n3316), .B2(n4032), .A(n3315), .ZN(n705) );
  NOR2_X1 U3283 ( .A1(n3853), .A2(n3833), .ZN(n3332) );
  NOR2_X1 U3284 ( .A1(n3834), .A2(n3835), .ZN(n3331) );
  NOR2_X1 U3285 ( .A1(n3863), .A2(n3333), .ZN(n3330) );
  XOR2_X1 U3286 ( .A(n3317), .B(intadd_12_n1), .Z(n3318) );
  XNOR2_X1 U3287 ( .A(intadd_0_n1), .B(intadd_13_n1), .ZN(n3319) );
  NAND2_X1 U3288 ( .A1(n3318), .A2(n3319), .ZN(n3323) );
  INV_X1 U3289 ( .A(n3319), .ZN(n3320) );
  NAND2_X1 U3290 ( .A1(n3321), .A2(n3320), .ZN(n3322) );
  NAND2_X1 U3291 ( .A1(n3323), .A2(n3322), .ZN(n3329) );
  NOR2_X1 U3292 ( .A1(n3829), .A2(n3852), .ZN(n3339) );
  NOR2_X1 U3293 ( .A1(n3846), .A2(n3850), .ZN(n3338) );
  NOR2_X1 U3294 ( .A1(n3861), .A2(n3410), .ZN(n3337) );
  NOR2_X1 U3295 ( .A1(n3449), .A2(n3858), .ZN(n3866) );
  NOR2_X1 U3296 ( .A1(n3409), .A2(n3862), .ZN(n3865) );
  NOR2_X1 U3297 ( .A1(n3851), .A2(n3845), .ZN(n3864) );
  XOR2_X1 U3298 ( .A(n3325), .B(n3324), .Z(n3327) );
  NAND2_X1 U3299 ( .A1(tb__dut__sram_weight_read_data[15]), .A2(
        tb__dut__sram_weight_read_data[16]), .ZN(n3326) );
  XNOR2_X1 U3300 ( .A(n3327), .B(n3326), .ZN(n3328) );
  XNOR2_X1 U3301 ( .A(n3329), .B(n3328), .ZN(n3394) );
  FA_X1 U3302 ( .A(n3332), .B(n3331), .CI(n3330), .CO(n3317), .S(n3346) );
  NOR2_X1 U3303 ( .A1(n3860), .A2(n3415), .ZN(n3402) );
  INV_X1 U3304 ( .A(n3402), .ZN(n3336) );
  NOR2_X1 U3305 ( .A1(n3859), .A2(n3409), .ZN(n3403) );
  INV_X1 U3306 ( .A(n3403), .ZN(n3335) );
  NOR2_X1 U3307 ( .A1(n3565), .A2(n3333), .ZN(n3405) );
  OAI21_X1 U3308 ( .B1(n3403), .B2(n3402), .A(n3405), .ZN(n3334) );
  OAI21_X1 U3309 ( .B1(n3336), .B2(n3335), .A(n3334), .ZN(n3345) );
  FA_X1 U3310 ( .A(n3339), .B(n3338), .CI(n3337), .CO(n3325), .S(n3344) );
  NOR2_X1 U3311 ( .A1(n3859), .A2(n3415), .ZN(n3838) );
  NOR2_X1 U3312 ( .A1(n3860), .A2(n3414), .ZN(n3837) );
  AND2_X1 U3313 ( .A1(tb__dut__sram_weight_read_data[16]), .A2(
        tb__dut__sram_weight_read_data[14]), .ZN(n3836) );
  XNOR2_X1 U3314 ( .A(n3341), .B(n3340), .ZN(n3358) );
  NAND2_X1 U3315 ( .A1(tb__dut__sram_weight_read_data[1]), .A2(
        tb__dut__sram_weight_read_data[29]), .ZN(n3343) );
  NAND2_X1 U3316 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[30]), .ZN(
        n3342) );
  AOI21_X1 U3317 ( .B1(n3343), .B2(n3342), .A(n3389), .ZN(n3353) );
  NOR2_X1 U3318 ( .A1(n3834), .A2(n3858), .ZN(n3401) );
  NOR2_X1 U3319 ( .A1(n3449), .A2(n3862), .ZN(n3400) );
  NOR2_X1 U3320 ( .A1(n3863), .A2(n3410), .ZN(n3399) );
  NOR2_X1 U3321 ( .A1(n3853), .A2(n3851), .ZN(n3841) );
  NOR2_X1 U3322 ( .A1(n3861), .A2(n3828), .ZN(n3840) );
  NOR2_X1 U3323 ( .A1(n3835), .A2(n3833), .ZN(n3839) );
  INV_X1 U3324 ( .A(n3432), .ZN(n3349) );
  FA_X1 U3325 ( .A(n3346), .B(n3345), .CI(n3344), .CO(n3341), .S(n3433) );
  OAI21_X1 U3326 ( .B1(intadd_12_SUM_2_), .B2(n3432), .A(n3433), .ZN(n3347) );
  OAI21_X1 U3327 ( .B1(n3349), .B2(n3348), .A(n3347), .ZN(n3350) );
  XOR2_X1 U3328 ( .A(intadd_3_n1), .B(n3350), .Z(n3356) );
  FA_X1 U3329 ( .A(n3353), .B(n3352), .CI(n3351), .CO(n3354), .S(n3432) );
  XNOR2_X1 U3330 ( .A(n3354), .B(intadd_4_n1), .ZN(n3355) );
  XNOR2_X1 U3331 ( .A(n3356), .B(n3355), .ZN(n3357) );
  XNOR2_X1 U3332 ( .A(n3358), .B(n3357), .ZN(n3392) );
  NAND2_X1 U3333 ( .A1(tb__dut__sram_weight_read_data[4]), .A2(
        tb__dut__sram_weight_read_data[27]), .ZN(n3360) );
  NAND2_X1 U3334 ( .A1(tb__dut__sram_weight_read_data[31]), .A2(n3484), .ZN(
        n3359) );
  XOR2_X1 U3335 ( .A(n3360), .B(n3359), .Z(n3364) );
  NAND2_X1 U3336 ( .A1(tb__dut__sram_weight_read_data[11]), .A2(
        tb__dut__sram_weight_read_data[20]), .ZN(n3362) );
  NAND2_X1 U3337 ( .A1(tb__dut__sram_weight_read_data[13]), .A2(
        tb__dut__sram_weight_read_data[18]), .ZN(n3361) );
  XOR2_X1 U3338 ( .A(n3362), .B(n3361), .Z(n3363) );
  XOR2_X1 U3339 ( .A(n3364), .B(n3363), .Z(n3372) );
  NAND2_X1 U3340 ( .A1(tb__dut__sram_weight_read_data[5]), .A2(
        tb__dut__sram_weight_read_data[26]), .ZN(n3366) );
  NAND2_X1 U3341 ( .A1(tb__dut__sram_weight_read_data[30]), .A2(n3490), .ZN(
        n3365) );
  XOR2_X1 U3342 ( .A(n3366), .B(n3365), .Z(n3370) );
  NAND2_X1 U3343 ( .A1(tb__dut__sram_weight_read_data[8]), .A2(
        tb__dut__sram_weight_read_data[23]), .ZN(n3368) );
  NAND2_X1 U3344 ( .A1(tb__dut__sram_weight_read_data[12]), .A2(
        tb__dut__sram_weight_read_data[19]), .ZN(n3367) );
  XOR2_X1 U3345 ( .A(n3368), .B(n3367), .Z(n3369) );
  XNOR2_X1 U3346 ( .A(n3370), .B(n3369), .ZN(n3371) );
  XNOR2_X1 U3347 ( .A(n3372), .B(n3371), .ZN(n3388) );
  NAND2_X1 U3348 ( .A1(tb__dut__sram_weight_read_data[9]), .A2(
        tb__dut__sram_weight_read_data[22]), .ZN(n3374) );
  NAND2_X1 U3349 ( .A1(tb__dut__sram_weight_read_data[28]), .A2(
        tb__dut__sram_weight_read_data[3]), .ZN(n3373) );
  XOR2_X1 U3350 ( .A(n3374), .B(n3373), .Z(n3378) );
  NAND2_X1 U3351 ( .A1(tb__dut__sram_weight_read_data[6]), .A2(
        tb__dut__sram_weight_read_data[25]), .ZN(n3376) );
  NAND2_X1 U3352 ( .A1(tb__dut__sram_weight_read_data[10]), .A2(
        tb__dut__sram_weight_read_data[21]), .ZN(n3375) );
  XOR2_X1 U3353 ( .A(n3376), .B(n3375), .Z(n3377) );
  XNOR2_X1 U3354 ( .A(n3378), .B(n3377), .ZN(n3386) );
  NOR2_X1 U3355 ( .A1(n3846), .A2(n3852), .ZN(n3398) );
  NOR2_X1 U3356 ( .A1(n3850), .A2(n3845), .ZN(n3397) );
  NOR2_X1 U3357 ( .A1(n3857), .A2(n3829), .ZN(n3396) );
  INV_X1 U3358 ( .A(tb__dut__sram_weight_read_data[1]), .ZN(n3566) );
  NAND2_X1 U3359 ( .A1(tb__dut__sram_weight_read_data[0]), .A2(
        tb__dut__sram_weight_read_data[29]), .ZN(n3826) );
  NOR3_X1 U3360 ( .A1(n3566), .A2(n3414), .A3(n3826), .ZN(n3843) );
  NOR2_X1 U3361 ( .A1(n3857), .A2(n3828), .ZN(n3842) );
  NAND2_X1 U3362 ( .A1(tb__dut__sram_weight_read_data[29]), .A2(
        tb__dut__sram_weight_read_data[2]), .ZN(n3380) );
  NAND2_X1 U3363 ( .A1(tb__dut__sram_weight_read_data[14]), .A2(
        tb__dut__sram_weight_read_data[17]), .ZN(n3379) );
  XOR2_X1 U3364 ( .A(n3380), .B(n3379), .Z(n3381) );
  XOR2_X1 U3365 ( .A(n3382), .B(n3381), .Z(n3384) );
  NAND2_X1 U3366 ( .A1(tb__dut__sram_weight_read_data[7]), .A2(
        tb__dut__sram_weight_read_data[24]), .ZN(n3383) );
  XNOR2_X1 U3367 ( .A(n3384), .B(n3383), .ZN(n3385) );
  XNOR2_X1 U3368 ( .A(n3386), .B(n3385), .ZN(n3387) );
  XOR2_X1 U3369 ( .A(n3388), .B(n3387), .Z(n3390) );
  XNOR2_X1 U3370 ( .A(n3390), .B(n3389), .ZN(n3391) );
  XNOR2_X1 U3371 ( .A(n3392), .B(n3391), .ZN(n3393) );
  XNOR2_X1 U3372 ( .A(n3394), .B(n3393), .ZN(n3395) );
  MUX2_X1 U3373 ( .A(n3395), .B(MAC_weight_max_addr[15]), .S(n709), .Z(n529)
         );
  FA_X1 U3374 ( .A(n3398), .B(n3397), .CI(n3396), .CO(n3844), .S(n3436) );
  INV_X1 U3375 ( .A(n3436), .ZN(n3408) );
  FA_X1 U3376 ( .A(n3401), .B(n3400), .CI(n3399), .CO(n3352), .S(n3437) );
  XNOR2_X1 U3377 ( .A(n3403), .B(n3402), .ZN(n3404) );
  XNOR2_X1 U3378 ( .A(n3405), .B(n3404), .ZN(n3435) );
  OAI21_X1 U3379 ( .B1(n3437), .B2(n3436), .A(n3435), .ZN(n3406) );
  OAI21_X1 U3380 ( .B1(n3408), .B2(n3407), .A(n3406), .ZN(intadd_13_B_2_) );
  NOR3_X1 U3381 ( .A1(n3479), .A2(n3409), .A3(n3415), .ZN(intadd_13_B_0_) );
  NOR3_X1 U3382 ( .A1(n3479), .A2(n3409), .A3(n3449), .ZN(intadd_4_A_1_) );
  NOR2_X1 U3383 ( .A1(n3860), .A2(n3409), .ZN(n3422) );
  INV_X1 U3384 ( .A(n3422), .ZN(n3413) );
  NOR2_X1 U3385 ( .A1(n3859), .A2(n3449), .ZN(n3423) );
  INV_X1 U3386 ( .A(n3423), .ZN(n3412) );
  NOR2_X1 U3387 ( .A1(n3565), .A2(n3410), .ZN(n3425) );
  OAI21_X1 U3388 ( .B1(n3423), .B2(n3422), .A(n3425), .ZN(n3411) );
  OAI21_X1 U3389 ( .B1(n3413), .B2(n3412), .A(n3411), .ZN(intadd_12_A_1_) );
  NOR3_X1 U3390 ( .A1(n3479), .A2(n3415), .A3(n3414), .ZN(intadd_12_B_1_) );
  NOR2_X1 U3391 ( .A1(n3565), .A2(n3828), .ZN(n3445) );
  NOR2_X1 U3392 ( .A1(n3859), .A2(n3834), .ZN(n3443) );
  NOR2_X1 U3393 ( .A1(n3860), .A2(n3449), .ZN(n3442) );
  AOI22_X1 U3394 ( .A1(n3445), .A2(n3416), .B1(n3443), .B2(n3442), .ZN(n3427)
         );
  NAND2_X1 U3395 ( .A1(tb__dut__sram_weight_read_data[0]), .A2(
        tb__dut__sram_weight_read_data[28]), .ZN(n3418) );
  NAND2_X1 U3396 ( .A1(tb__dut__sram_weight_read_data[1]), .A2(
        tb__dut__sram_weight_read_data[27]), .ZN(n3417) );
  AOI21_X1 U3397 ( .B1(n3418), .B2(n3417), .A(intadd_12_B_1_), .ZN(n3426) );
  NOR2_X1 U3398 ( .A1(n3853), .A2(n3852), .ZN(n3441) );
  NOR2_X1 U3399 ( .A1(n3850), .A2(n3835), .ZN(n3440) );
  NOR2_X1 U3400 ( .A1(n3861), .A2(n3846), .ZN(n3439) );
  NOR2_X1 U3401 ( .A1(n3426), .A2(n3428), .ZN(n3421) );
  OAI22_X1 U3402 ( .A1(n3427), .A2(n3421), .B1(n3420), .B2(n3419), .ZN(
        intadd_8_B_2_) );
  XNOR2_X1 U3403 ( .A(n3423), .B(n3422), .ZN(n3424) );
  XNOR2_X1 U3404 ( .A(n3425), .B(n3424), .ZN(intadd_4_B_2_) );
  NOR2_X1 U3405 ( .A1(n3565), .A2(n3829), .ZN(intadd_4_CI) );
  HA_X1 U3406 ( .A(n3427), .B(n3426), .S(n3429) );
  XNOR2_X1 U3407 ( .A(n3429), .B(n3428), .ZN(intadd_3_A_2_) );
  NAND2_X1 U3408 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[27]), .ZN(
        n3431) );
  NAND2_X1 U3409 ( .A1(tb__dut__sram_weight_read_data[1]), .A2(
        tb__dut__sram_weight_read_data[26]), .ZN(n3430) );
  AOI21_X1 U3410 ( .B1(n3431), .B2(n3430), .A(intadd_13_B_0_), .ZN(
        intadd_3_A_1_) );
  XNOR2_X1 U3411 ( .A(n3433), .B(n3432), .ZN(n3434) );
  XNOR2_X1 U3412 ( .A(n3434), .B(intadd_12_SUM_2_), .ZN(intadd_3_B_4_) );
  XNOR2_X1 U3413 ( .A(n3436), .B(n3435), .ZN(n3438) );
  XNOR2_X1 U3414 ( .A(n3438), .B(n3437), .ZN(intadd_3_B_3_) );
  FA_X1 U3415 ( .A(n3441), .B(n3440), .CI(n3439), .CO(n3428), .S(n3453) );
  XNOR2_X1 U3416 ( .A(n3443), .B(n3442), .ZN(n3444) );
  XNOR2_X1 U3417 ( .A(n3445), .B(n3444), .ZN(n3452) );
  OAI21_X1 U3418 ( .B1(intadd_8_SUM_0_), .B2(n3453), .A(n3452), .ZN(n3446) );
  OAI21_X1 U3419 ( .B1(n3448), .B2(n3447), .A(n3446), .ZN(intadd_3_B_2_) );
  NOR3_X1 U3420 ( .A1(n3479), .A2(n3834), .A3(n3449), .ZN(intadd_0_A_1_) );
  NOR2_X1 U3421 ( .A1(n3858), .A2(n3852), .ZN(intadd_0_A_0_) );
  NAND2_X1 U3422 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[25]), .ZN(
        n3451) );
  NAND2_X1 U3423 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[24]), .ZN(
        n3450) );
  AOI21_X1 U3424 ( .B1(n3451), .B2(n3450), .A(intadd_0_A_1_), .ZN(
        intadd_2_A_1_) );
  XNOR2_X1 U3425 ( .A(n3453), .B(n3452), .ZN(n3454) );
  XNOR2_X1 U3426 ( .A(n3454), .B(intadd_8_SUM_0_), .ZN(intadd_2_B_3_) );
  NOR2_X1 U3427 ( .A1(n3845), .A2(n3565), .ZN(intadd_2_CI) );
  NOR3_X1 U3428 ( .A1(n3479), .A2(n3833), .A3(n3834), .ZN(n3466) );
  NOR2_X1 U3429 ( .A1(n3857), .A2(n3835), .ZN(n3460) );
  NOR2_X1 U3430 ( .A1(n3861), .A2(n3853), .ZN(n3459) );
  AOI22_X1 U3431 ( .A1(n3466), .A2(n3455), .B1(n3460), .B2(n3459), .ZN(n3531)
         );
  NAND2_X1 U3432 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[26]), .ZN(
        n3457) );
  NAND2_X1 U3433 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[25]), .ZN(
        n3456) );
  AOI21_X1 U3434 ( .B1(n3457), .B2(n3456), .A(intadd_4_A_1_), .ZN(n3527) );
  HA_X1 U3435 ( .A(n3531), .B(n3527), .S(n3458) );
  XNOR2_X1 U3436 ( .A(n3458), .B(intadd_4_SUM_0_), .ZN(intadd_5_A_1_) );
  XNOR2_X1 U3437 ( .A(n3460), .B(n3459), .ZN(n3461) );
  XNOR2_X1 U3438 ( .A(n3466), .B(n3461), .ZN(intadd_5_A_0_) );
  NOR2_X1 U3439 ( .A1(n3565), .A2(n3853), .ZN(n3477) );
  NOR2_X1 U3440 ( .A1(n3859), .A2(n3852), .ZN(n3476) );
  NOR2_X1 U3441 ( .A1(n3860), .A2(n3850), .ZN(n3475) );
  AOI22_X1 U3442 ( .A1(n3477), .A2(n3462), .B1(n3476), .B2(n3475), .ZN(n3470)
         );
  NOR2_X1 U3443 ( .A1(n3861), .A2(n3835), .ZN(n3469) );
  NOR3_X1 U3444 ( .A1(n3479), .A2(n3833), .A3(n3851), .ZN(n3472) );
  OAI21_X1 U3445 ( .B1(n3463), .B2(n3469), .A(n3472), .ZN(n3464) );
  OAI21_X1 U3446 ( .B1(n3470), .B2(n3465), .A(n3464), .ZN(intadd_7_B_2_) );
  NAND2_X1 U3447 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[24]), .ZN(
        n3468) );
  NAND2_X1 U3448 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[23]), .ZN(
        n3467) );
  AOI21_X1 U3449 ( .B1(n3468), .B2(n3467), .A(n3466), .ZN(intadd_7_B_1_) );
  HA_X1 U3450 ( .A(n3469), .B(n3472), .S(n3471) );
  XNOR2_X1 U3451 ( .A(n3471), .B(n3470), .ZN(intadd_1_A_2_) );
  NAND2_X1 U3452 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[23]), .ZN(
        n3474) );
  NAND2_X1 U3453 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[22]), .ZN(
        n3473) );
  AOI21_X1 U3454 ( .B1(n3474), .B2(n3473), .A(n3472), .ZN(intadd_1_A_1_) );
  XNOR2_X1 U3455 ( .A(n3476), .B(n3475), .ZN(n3478) );
  XNOR2_X1 U3456 ( .A(n3478), .B(n3477), .ZN(intadd_11_A_1_) );
  NOR3_X1 U3457 ( .A1(n3479), .A2(n3852), .A3(n3850), .ZN(intadd_11_A_0_) );
  NOR2_X1 U3458 ( .A1(n3861), .A2(n3859), .ZN(intadd_6_A_0_) );
  NOR2_X1 U3459 ( .A1(n3862), .A2(n3565), .ZN(intadd_9_CI) );
  NAND2_X1 U3460 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[21]), .ZN(
        n3481) );
  NAND2_X1 U3461 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[20]), .ZN(
        n3480) );
  AOI21_X1 U3462 ( .B1(n3481), .B2(n3480), .A(intadd_11_A_0_), .ZN(
        intadd_10_B_1_) );
  NOR3_X1 U3463 ( .A1(n3482), .A2(n3566), .A3(n3857), .ZN(intadd_10_B_0_) );
  AND2_X1 U3464 ( .A1(tb__dut__sram_weight_read_data[1]), .A2(
        tb__dut__sram_weight_read_data[2]), .ZN(n3483) );
  NAND2_X1 U3465 ( .A1(n3496), .A2(n3483), .ZN(n3494) );
  NAND2_X1 U3466 ( .A1(tb__dut__sram_weight_read_data[16]), .A2(
        tb__dut__sram_weight_read_data[3]), .ZN(n3487) );
  NAND2_X1 U3467 ( .A1(tb__dut__sram_weight_read_data[17]), .A2(
        tb__dut__sram_weight_read_data[2]), .ZN(n3488) );
  AOI21_X1 U3468 ( .B1(n3494), .B2(n3487), .A(n3488), .ZN(intadd_10_CI) );
  NAND2_X1 U3469 ( .A1(n3507), .A2(n3508), .ZN(n3505) );
  NAND2_X1 U3470 ( .A1(n3484), .A2(tb__dut__sram_weight_read_data[19]), .ZN(
        n3486) );
  NAND2_X1 U3471 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[18]), .ZN(
        n3485) );
  AOI21_X1 U3472 ( .B1(n3486), .B2(n3485), .A(intadd_10_B_0_), .ZN(n3557) );
  XOR2_X1 U3473 ( .A(n3488), .B(n3487), .Z(n3489) );
  XNOR2_X1 U3474 ( .A(n3494), .B(n3489), .ZN(n3556) );
  NAND2_X1 U3475 ( .A1(n3490), .A2(tb__dut__sram_weight_read_data[17]), .ZN(
        n3492) );
  NAND2_X1 U3476 ( .A1(tb__dut__sram_weight_read_data[2]), .A2(
        tb__dut__sram_weight_read_data[16]), .ZN(n3491) );
  NAND2_X1 U3477 ( .A1(n3492), .A2(n3491), .ZN(n3493) );
  NAND2_X1 U3478 ( .A1(n3494), .A2(n3493), .ZN(n3562) );
  NAND2_X1 U3479 ( .A1(n3496), .A2(n3495), .ZN(n3568) );
  NAND2_X1 U3480 ( .A1(n3562), .A2(n3568), .ZN(n3497) );
  NAND2_X1 U3481 ( .A1(n3497), .A2(n3561), .ZN(n3501) );
  INV_X1 U3482 ( .A(n3562), .ZN(n3499) );
  INV_X1 U3483 ( .A(n3568), .ZN(n3498) );
  NAND2_X1 U3484 ( .A1(n3499), .A2(n3498), .ZN(n3500) );
  NAND2_X1 U3485 ( .A1(n3501), .A2(n3500), .ZN(n3558) );
  AOI222_X2 U3486 ( .A1(n3557), .A2(n3556), .B1(n3557), .B2(n3558), .C1(n3556), 
        .C2(n3558), .ZN(n3502) );
  AOI21_X1 U3487 ( .B1(intadd_10_SUM_0_), .B2(intadd_9_SUM_0_), .A(n3553), 
        .ZN(n3504) );
  NOR2_X1 U3488 ( .A1(intadd_10_SUM_0_), .A2(intadd_9_SUM_0_), .ZN(n3503) );
  NOR2_X1 U3489 ( .A1(n3504), .A2(n3503), .ZN(n3550) );
  NAND2_X1 U3490 ( .A1(n3505), .A2(n3550), .ZN(n3506) );
  OAI21_X1 U3491 ( .B1(n3508), .B2(n3507), .A(n3506), .ZN(n3548) );
  NAND2_X1 U3492 ( .A1(intadd_10_n2), .A2(n3548), .ZN(n3511) );
  NAND2_X1 U3493 ( .A1(intadd_10_n2), .A2(intadd_9_SUM_2_), .ZN(n3510) );
  NAND2_X1 U3494 ( .A1(intadd_9_SUM_2_), .A2(n3548), .ZN(n3509) );
  NAND3_X1 U3495 ( .A1(n3511), .A2(n3510), .A3(n3509), .ZN(n3545) );
  INV_X1 U3496 ( .A(n3545), .ZN(n3513) );
  NOR2_X1 U3497 ( .A1(n3860), .A2(n3857), .ZN(intadd_6_B_0_) );
  NOR2_X1 U3498 ( .A1(n3858), .A2(n3565), .ZN(intadd_6_CI) );
  NAND2_X1 U3499 ( .A1(n3517), .A2(n3518), .ZN(n3515) );
  NAND2_X1 U3500 ( .A1(n3515), .A2(intadd_11_n1), .ZN(n3516) );
  OAI21_X1 U3501 ( .B1(n3518), .B2(n3517), .A(n3516), .ZN(intadd_1_B_4_) );
  INV_X1 U3502 ( .A(intadd_1_n1), .ZN(n3520) );
  NOR2_X1 U3503 ( .A1(n3565), .A2(n3846), .ZN(n3532) );
  NOR2_X1 U3504 ( .A1(n3860), .A2(n3833), .ZN(n3534) );
  NOR2_X1 U3505 ( .A1(n3859), .A2(n3851), .ZN(n3533) );
  XNOR2_X1 U3506 ( .A(n3534), .B(n3533), .ZN(n3522) );
  XNOR2_X1 U3507 ( .A(n3532), .B(n3522), .ZN(intadd_5_B_0_) );
  NAND2_X1 U3508 ( .A1(n3525), .A2(n3526), .ZN(n3523) );
  NAND2_X1 U3509 ( .A1(n3523), .A2(intadd_2_n1), .ZN(n3524) );
  OAI21_X1 U3510 ( .B1(n3526), .B2(n3525), .A(n3524), .ZN(intadd_0_B_5_) );
  OAI21_X1 U3511 ( .B1(intadd_4_SUM_0_), .B2(n3528), .A(n3527), .ZN(n3529) );
  OAI21_X1 U3512 ( .B1(n3531), .B2(n3530), .A(n3529), .ZN(intadd_0_B_2_) );
  OAI21_X1 U3513 ( .B1(n3534), .B2(n3533), .A(n3532), .ZN(n3535) );
  OAI21_X1 U3514 ( .B1(n3537), .B2(n3536), .A(n3535), .ZN(intadd_0_B_1_) );
  NOR2_X1 U3515 ( .A1(n3850), .A2(n3862), .ZN(intadd_0_B_0_) );
  NOR2_X1 U3516 ( .A1(n3845), .A2(n3863), .ZN(intadd_0_CI) );
  MUX2_X1 U3517 ( .A(intadd_0_SUM_5_), .B(MAC_weight_max_addr[14]), .S(n709), 
        .Z(n528) );
  XNOR2_X1 U3518 ( .A(intadd_0_SUM_4_), .B(intadd_2_n1), .ZN(n3538) );
  XNOR2_X1 U3519 ( .A(intadd_5_n1), .B(n3538), .ZN(n3539) );
  MUX2_X1 U3520 ( .A(n3539), .B(MAC_weight_max_addr[13]), .S(n709), .Z(n527)
         );
  MUX2_X1 U3521 ( .A(intadd_5_SUM_3_), .B(MAC_weight_max_addr[12]), .S(n709), 
        .Z(n526) );
  XNOR2_X1 U3522 ( .A(intadd_5_SUM_2_), .B(intadd_7_n1), .ZN(n3540) );
  XNOR2_X1 U3523 ( .A(intadd_1_n1), .B(n3540), .ZN(n3541) );
  MUX2_X1 U3524 ( .A(n3541), .B(MAC_weight_max_addr[11]), .S(n709), .Z(n525)
         );
  MUX2_X1 U3525 ( .A(intadd_1_SUM_4_), .B(MAC_weight_max_addr[10]), .S(n709), 
        .Z(n524) );
  XNOR2_X1 U3526 ( .A(intadd_1_SUM_3_), .B(intadd_11_n1), .ZN(n3542) );
  XNOR2_X1 U3527 ( .A(intadd_6_n1), .B(n3542), .ZN(n3543) );
  MUX2_X1 U3528 ( .A(n3543), .B(MAC_weight_max_addr[9]), .S(n709), .Z(n523) );
  MUX2_X1 U3529 ( .A(intadd_6_SUM_3_), .B(MAC_weight_max_addr[8]), .S(n709), 
        .Z(n522) );
  XNOR2_X1 U3530 ( .A(intadd_6_SUM_2_), .B(intadd_9_n1), .ZN(n3544) );
  XNOR2_X1 U3531 ( .A(n3545), .B(n3544), .ZN(n3546) );
  MUX2_X1 U3532 ( .A(n3546), .B(MAC_weight_max_addr[7]), .S(n709), .Z(n521) );
  XOR2_X1 U3533 ( .A(intadd_9_SUM_2_), .B(intadd_10_n2), .Z(n3547) );
  XOR2_X1 U3534 ( .A(n3548), .B(n3547), .Z(n3549) );
  MUX2_X1 U3535 ( .A(n3549), .B(MAC_weight_max_addr[6]), .S(n709), .Z(n520) );
  XNOR2_X1 U3536 ( .A(intadd_10_SUM_1_), .B(intadd_9_SUM_1_), .ZN(n3551) );
  XNOR2_X1 U3537 ( .A(n3551), .B(n3550), .ZN(n3552) );
  MUX2_X1 U3538 ( .A(n3552), .B(MAC_weight_max_addr[5]), .S(n709), .Z(n519) );
  XNOR2_X1 U3539 ( .A(intadd_9_SUM_0_), .B(n3553), .ZN(n3554) );
  XNOR2_X1 U3540 ( .A(n3554), .B(intadd_10_SUM_0_), .ZN(n3555) );
  MUX2_X1 U3541 ( .A(n3555), .B(MAC_weight_max_addr[4]), .S(n709), .Z(n518) );
  XNOR2_X1 U3542 ( .A(n3557), .B(n3556), .ZN(n3559) );
  XNOR2_X1 U3543 ( .A(n3559), .B(n3558), .ZN(n3560) );
  MUX2_X1 U3544 ( .A(n3560), .B(MAC_weight_max_addr[3]), .S(n709), .Z(n517) );
  XNOR2_X1 U3545 ( .A(n3568), .B(n3561), .ZN(n3563) );
  XNOR2_X1 U3546 ( .A(n3563), .B(n3562), .ZN(n3564) );
  MUX2_X1 U3547 ( .A(n3564), .B(MAC_weight_max_addr[2]), .S(n709), .Z(n516) );
  INV_X1 U3548 ( .A(tb__dut__sram_weight_read_data[0]), .ZN(n3567) );
  OAI22_X1 U3549 ( .A1(n3863), .A2(n3567), .B1(n3566), .B2(n3565), .ZN(n3569)
         );
  NAND3_X1 U3550 ( .A1(n3569), .A2(n3868), .A3(n3568), .ZN(n3570) );
  OAI21_X1 U3551 ( .B1(n3868), .B2(n4033), .A(n3570), .ZN(n515) );
  NAND3_X1 U3552 ( .A1(n3868), .A2(tb__dut__sram_weight_read_data[16]), .A3(
        tb__dut__sram_weight_read_data[0]), .ZN(n3571) );
  OAI21_X1 U3553 ( .B1(n3868), .B2(n4034), .A(n3571), .ZN(n514) );
  MUX2_X1 U3554 ( .A(tb__dut__sram_input_read_data[31]), .B(input_num_rows[15]), .S(n709), .Z(n497) );
  MUX2_X1 U3555 ( .A(tb__dut__sram_input_read_data[30]), .B(input_num_rows[14]), .S(n709), .Z(n496) );
  MUX2_X1 U3556 ( .A(tb__dut__sram_input_read_data[29]), .B(input_num_rows[13]), .S(n709), .Z(n495) );
  MUX2_X1 U3557 ( .A(tb__dut__sram_input_read_data[28]), .B(input_num_rows[12]), .S(n709), .Z(n494) );
  MUX2_X1 U3558 ( .A(tb__dut__sram_input_read_data[27]), .B(input_num_rows[11]), .S(n709), .Z(n493) );
  MUX2_X1 U3559 ( .A(tb__dut__sram_input_read_data[26]), .B(input_num_rows[10]), .S(n709), .Z(n492) );
  MUX2_X1 U3560 ( .A(tb__dut__sram_input_read_data[25]), .B(input_num_rows[9]), 
        .S(n709), .Z(n491) );
  MUX2_X1 U3561 ( .A(tb__dut__sram_input_read_data[24]), .B(input_num_rows[8]), 
        .S(n709), .Z(n490) );
  MUX2_X1 U3562 ( .A(tb__dut__sram_input_read_data[23]), .B(input_num_rows[7]), 
        .S(n709), .Z(n489) );
  MUX2_X1 U3563 ( .A(tb__dut__sram_input_read_data[22]), .B(input_num_rows[6]), 
        .S(n709), .Z(n488) );
  MUX2_X1 U3564 ( .A(tb__dut__sram_input_read_data[21]), .B(input_num_rows[5]), 
        .S(n709), .Z(n487) );
  MUX2_X1 U3565 ( .A(tb__dut__sram_input_read_data[20]), .B(input_num_rows[4]), 
        .S(n709), .Z(n486) );
  MUX2_X1 U3566 ( .A(tb__dut__sram_input_read_data[19]), .B(input_num_rows[3]), 
        .S(n709), .Z(n485) );
  MUX2_X1 U3567 ( .A(tb__dut__sram_input_read_data[18]), .B(input_num_rows[2]), 
        .S(n709), .Z(n484) );
  MUX2_X1 U3568 ( .A(tb__dut__sram_input_read_data[17]), .B(input_num_rows[1]), 
        .S(n709), .Z(n483) );
  MUX2_X1 U3569 ( .A(tb__dut__sram_input_read_data[16]), .B(input_num_rows[0]), 
        .S(n709), .Z(n530) );
  NAND2_X1 U3570 ( .A1(n449), .A2(n3973), .ZN(n3573) );
  NAND2_X1 U3571 ( .A1(n3573), .A2(n3572), .ZN(n3574) );
  INV_X1 U3572 ( .A(n3574), .ZN(n3612) );
  NAND2_X1 U3573 ( .A1(n3612), .A2(n3630), .ZN(n3613) );
  OAI22_X1 U3574 ( .A1(n3895), .A2(n3613), .B1(n3612), .B2(n4005), .ZN(n703)
         );
  OAI22_X1 U3575 ( .A1(n3896), .A2(n3613), .B1(n3612), .B2(n4006), .ZN(n687)
         );
  OAI22_X1 U3576 ( .A1(n3888), .A2(n3613), .B1(n3612), .B2(n3999), .ZN(n688)
         );
  OAI22_X1 U3577 ( .A1(n3886), .A2(n3613), .B1(n3612), .B2(n4000), .ZN(n689)
         );
  OAI22_X1 U3578 ( .A1(n3899), .A2(n3613), .B1(n3612), .B2(n3997), .ZN(n690)
         );
  OAI22_X1 U3579 ( .A1(n3892), .A2(n3613), .B1(n3612), .B2(n4007), .ZN(n692)
         );
  OAI22_X1 U3580 ( .A1(n3893), .A2(n3613), .B1(n3612), .B2(n4001), .ZN(n694)
         );
  OAI22_X1 U3581 ( .A1(n3894), .A2(n3613), .B1(n3612), .B2(n4002), .ZN(n696)
         );
  OAI22_X1 U3582 ( .A1(n3887), .A2(n3613), .B1(n3612), .B2(n4003), .ZN(n698)
         );
  AOI21_X1 U3583 ( .B1(n3574), .B2(MAC_input_read_start_address[0]), .A(n3795), 
        .ZN(n3575) );
  OAI21_X1 U3584 ( .B1(n3613), .B2(n3984), .A(n3575), .ZN(n701) );
  NAND2_X1 U3585 ( .A1(n3576), .A2(n3973), .ZN(n3577) );
  AND2_X1 U3586 ( .A1(n3630), .A2(n3577), .ZN(n3619) );
  INV_X1 U3587 ( .A(n3619), .ZN(n3608) );
  AOI22_X1 U3588 ( .A1(n3619), .A2(dut__tb__sram_input_read_address[0]), .B1(
        n3641), .B2(MAC_input_read_start_address[0]), .ZN(n3578) );
  OAI21_X1 U3589 ( .B1(dut__tb__sram_input_read_address[0]), .B2(n3634), .A(
        n3578), .ZN(n575) );
  OAI22_X1 U3590 ( .A1(n3897), .A2(n3613), .B1(n3612), .B2(n4008), .ZN(n700)
         );
  AOI21_X1 U3591 ( .B1(n3630), .B2(n3984), .A(n3619), .ZN(n3584) );
  INV_X1 U3592 ( .A(n3634), .ZN(n3639) );
  NAND3_X1 U3593 ( .A1(n3639), .A2(dut__tb__sram_input_read_address[0]), .A3(
        n3897), .ZN(n3580) );
  NAND2_X1 U3594 ( .A1(n3641), .A2(MAC_input_read_start_address[1]), .ZN(n3579) );
  OAI211_X1 U3595 ( .C1(n3584), .C2(n3897), .A(n3580), .B(n3579), .ZN(n574) );
  OAI22_X1 U3596 ( .A1(n3898), .A2(n3613), .B1(n3612), .B2(n4009), .ZN(n699)
         );
  OAI21_X1 U3597 ( .B1(n3984), .B2(dut__tb__sram_input_read_address[2]), .A(
        dut__tb__sram_input_read_address[1]), .ZN(n3581) );
  OAI211_X1 U3598 ( .C1(dut__tb__sram_input_read_address[2]), .C2(
        dut__tb__sram_input_read_address[1]), .A(n3639), .B(n3581), .ZN(n3583)
         );
  NAND2_X1 U3599 ( .A1(n3641), .A2(MAC_input_read_start_address[2]), .ZN(n3582) );
  OAI211_X1 U3600 ( .C1(n3584), .C2(n3898), .A(n3583), .B(n3582), .ZN(n573) );
  NAND3_X1 U3601 ( .A1(dut__tb__sram_input_read_address[2]), .A2(
        dut__tb__sram_input_read_address[0]), .A3(
        dut__tb__sram_input_read_address[1]), .ZN(n3593) );
  INV_X1 U3602 ( .A(n3593), .ZN(n3585) );
  OAI21_X1 U3603 ( .B1(n3585), .B2(n3623), .A(n3608), .ZN(n3588) );
  AOI22_X1 U3604 ( .A1(n3588), .A2(dut__tb__sram_input_read_address[3]), .B1(
        n3641), .B2(MAC_input_read_start_address[3]), .ZN(n3587) );
  NAND3_X1 U3605 ( .A1(n3639), .A2(n3585), .A3(n3887), .ZN(n3586) );
  NAND2_X1 U3606 ( .A1(n3587), .A2(n3586), .ZN(n572) );
  OAI22_X1 U3607 ( .A1(n3900), .A2(n3613), .B1(n3612), .B2(n3998), .ZN(n697)
         );
  AOI21_X1 U3608 ( .B1(n3630), .B2(n3887), .A(n3588), .ZN(n3591) );
  NOR4_X1 U3609 ( .A1(n3634), .A2(dut__tb__sram_input_read_address[4]), .A3(
        n3593), .A4(n3887), .ZN(n3589) );
  AOI21_X1 U3610 ( .B1(n3641), .B2(MAC_input_read_start_address[4]), .A(n3589), 
        .ZN(n3590) );
  OAI21_X1 U3611 ( .B1(n3591), .B2(n3900), .A(n3590), .ZN(n571) );
  NAND2_X1 U3612 ( .A1(dut__tb__sram_input_read_address[3]), .A2(
        dut__tb__sram_input_read_address[4]), .ZN(n3592) );
  NOR2_X1 U3613 ( .A1(n3593), .A2(n3592), .ZN(n3600) );
  OAI21_X1 U3614 ( .B1(n3600), .B2(n3623), .A(n3608), .ZN(n3596) );
  AOI22_X1 U3615 ( .A1(n3596), .A2(dut__tb__sram_input_read_address[5]), .B1(
        n3641), .B2(MAC_input_read_start_address[5]), .ZN(n3595) );
  NAND3_X1 U3616 ( .A1(n3639), .A2(n3600), .A3(n3894), .ZN(n3594) );
  NAND2_X1 U3617 ( .A1(n3595), .A2(n3594), .ZN(n570) );
  OAI22_X1 U3618 ( .A1(n3890), .A2(n3613), .B1(n3612), .B2(n4010), .ZN(n695)
         );
  AOI21_X1 U3619 ( .B1(n3630), .B2(n3894), .A(n3596), .ZN(n3599) );
  NAND4_X1 U3620 ( .A1(n3639), .A2(n3600), .A3(
        dut__tb__sram_input_read_address[5]), .A4(n3890), .ZN(n3598) );
  NAND2_X1 U3621 ( .A1(n3641), .A2(MAC_input_read_start_address[6]), .ZN(n3597) );
  OAI211_X1 U3622 ( .C1(n3599), .C2(n3890), .A(n3598), .B(n3597), .ZN(n569) );
  OAI21_X1 U3623 ( .B1(n3607), .B2(n3623), .A(n3608), .ZN(n3603) );
  AOI22_X1 U3624 ( .A1(n3603), .A2(dut__tb__sram_input_read_address[7]), .B1(
        n3641), .B2(MAC_input_read_start_address[7]), .ZN(n3602) );
  NAND3_X1 U3625 ( .A1(n3639), .A2(n3607), .A3(n3893), .ZN(n3601) );
  NAND2_X1 U3626 ( .A1(n3602), .A2(n3601), .ZN(n568) );
  OAI22_X1 U3627 ( .A1(n3891), .A2(n3613), .B1(n3612), .B2(n4011), .ZN(n693)
         );
  AOI21_X1 U3628 ( .B1(n3630), .B2(n3893), .A(n3603), .ZN(n3606) );
  NAND4_X1 U3629 ( .A1(n3639), .A2(n3607), .A3(
        dut__tb__sram_input_read_address[7]), .A4(n3891), .ZN(n3605) );
  NAND2_X1 U3630 ( .A1(n3641), .A2(MAC_input_read_start_address[8]), .ZN(n3604) );
  OAI211_X1 U3631 ( .C1(n3606), .C2(n3891), .A(n3605), .B(n3604), .ZN(n567) );
  OAI21_X1 U3632 ( .B1(n3618), .B2(n3623), .A(n3608), .ZN(n3614) );
  NAND3_X1 U3633 ( .A1(n3639), .A2(n3618), .A3(n3892), .ZN(n3610) );
  NAND2_X1 U3634 ( .A1(n3641), .A2(MAC_input_read_start_address[9]), .ZN(n3609) );
  OAI211_X1 U3635 ( .C1(n3611), .C2(n3892), .A(n3610), .B(n3609), .ZN(n566) );
  OAI22_X1 U3636 ( .A1(n3889), .A2(n3613), .B1(n3612), .B2(n4012), .ZN(n691)
         );
  AOI21_X1 U3637 ( .B1(n3630), .B2(n3892), .A(n3614), .ZN(n3617) );
  NAND4_X1 U3638 ( .A1(n3639), .A2(n3618), .A3(
        dut__tb__sram_input_read_address[9]), .A4(n3889), .ZN(n3616) );
  NAND2_X1 U3639 ( .A1(n3641), .A2(MAC_input_read_start_address[10]), .ZN(
        n3615) );
  OAI211_X1 U3640 ( .C1(n3617), .C2(n3889), .A(n3616), .B(n3615), .ZN(n565) );
  NAND3_X1 U3641 ( .A1(n3618), .A2(dut__tb__sram_input_read_address[9]), .A3(
        dut__tb__sram_input_read_address[10]), .ZN(n3624) );
  AOI21_X1 U3642 ( .B1(n3630), .B2(n3624), .A(n3619), .ZN(n3622) );
  NOR3_X1 U3643 ( .A1(n3634), .A2(n3624), .A3(
        dut__tb__sram_input_read_address[11]), .ZN(n3620) );
  AOI21_X1 U3644 ( .B1(n3641), .B2(MAC_input_read_start_address[11]), .A(n3620), .ZN(n3621) );
  OAI21_X1 U3645 ( .B1(n3622), .B2(n3899), .A(n3621), .ZN(n564) );
  OAI21_X1 U3646 ( .B1(dut__tb__sram_input_read_address[11]), .B2(n3623), .A(
        n3622), .ZN(n3629) );
  INV_X1 U3647 ( .A(n3629), .ZN(n3628) );
  INV_X1 U3648 ( .A(n3624), .ZN(n3625) );
  NAND3_X1 U3649 ( .A1(n3639), .A2(n3625), .A3(
        dut__tb__sram_input_read_address[11]), .ZN(n3631) );
  AOI22_X1 U3650 ( .A1(n3626), .A2(n3886), .B1(n3641), .B2(
        MAC_input_read_start_address[12]), .ZN(n3627) );
  OAI21_X1 U3651 ( .B1(n3628), .B2(n3886), .A(n3627), .ZN(n563) );
  AOI21_X1 U3652 ( .B1(n3630), .B2(n3886), .A(n3629), .ZN(n3633) );
  NOR2_X1 U3653 ( .A1(n3631), .A2(n3886), .ZN(n3640) );
  AOI22_X1 U3654 ( .A1(n3640), .A2(n3888), .B1(n3641), .B2(
        MAC_input_read_start_address[13]), .ZN(n3632) );
  OAI21_X1 U3655 ( .B1(n3633), .B2(n3888), .A(n3632), .ZN(n576) );
  OAI21_X1 U3656 ( .B1(dut__tb__sram_input_read_address[13]), .B2(n3634), .A(
        n3633), .ZN(n3638) );
  NAND3_X1 U3657 ( .A1(n3640), .A2(dut__tb__sram_input_read_address[13]), .A3(
        n3896), .ZN(n3636) );
  NAND2_X1 U3658 ( .A1(n3641), .A2(MAC_input_read_start_address[14]), .ZN(
        n3635) );
  OAI211_X1 U3659 ( .C1(n3637), .C2(n3896), .A(n3636), .B(n3635), .ZN(n686) );
  AOI21_X1 U3660 ( .B1(n3639), .B2(n3896), .A(n3638), .ZN(n3644) );
  NAND4_X1 U3661 ( .A1(n3640), .A2(dut__tb__sram_input_read_address[13]), .A3(
        dut__tb__sram_input_read_address[14]), .A4(n3895), .ZN(n3643) );
  NAND2_X1 U3662 ( .A1(n3641), .A2(MAC_input_read_start_address[15]), .ZN(
        n3642) );
  OAI211_X1 U3663 ( .C1(n3644), .C2(n3895), .A(n3643), .B(n3642), .ZN(n702) );
  MUX2_X1 U3664 ( .A(n3645), .B(dut__tb__sram_result_write_data[0]), .S(n3817), 
        .Z(n451) );
  MUX2_X1 U3665 ( .A(dut__tb__sram_result_write_data[0]), .B(
        dut__tb__sram_scratchpad_write_data[0]), .S(n710), .Z(n562) );
  MUX2_X1 U3666 ( .A(n3647), .B(dut__tb__sram_result_write_data[1]), .S(n3817), 
        .Z(n482) );
  MUX2_X1 U3667 ( .A(dut__tb__sram_result_write_data[1]), .B(
        dut__tb__sram_scratchpad_write_data[1]), .S(n710), .Z(n561) );
  MUX2_X1 U3668 ( .A(n3648), .B(dut__tb__sram_result_write_data[2]), .S(n3817), 
        .Z(n481) );
  MUX2_X1 U3669 ( .A(dut__tb__sram_result_write_data[2]), .B(
        dut__tb__sram_scratchpad_write_data[2]), .S(n710), .Z(n560) );
  MUX2_X1 U3670 ( .A(n3649), .B(dut__tb__sram_result_write_data[3]), .S(n3817), 
        .Z(n480) );
  MUX2_X1 U3671 ( .A(dut__tb__sram_result_write_data[3]), .B(
        dut__tb__sram_scratchpad_write_data[3]), .S(n710), .Z(n559) );
  MUX2_X1 U3672 ( .A(n3650), .B(dut__tb__sram_result_write_data[4]), .S(n3817), 
        .Z(n479) );
  MUX2_X1 U3673 ( .A(dut__tb__sram_result_write_data[4]), .B(
        dut__tb__sram_scratchpad_write_data[4]), .S(n710), .Z(n558) );
  MUX2_X1 U3674 ( .A(n3651), .B(dut__tb__sram_result_write_data[5]), .S(n3817), 
        .Z(n478) );
  MUX2_X1 U3675 ( .A(dut__tb__sram_result_write_data[5]), .B(
        dut__tb__sram_scratchpad_write_data[5]), .S(n710), .Z(n557) );
  MUX2_X1 U3676 ( .A(n3652), .B(dut__tb__sram_result_write_data[6]), .S(n3798), 
        .Z(n477) );
  MUX2_X1 U3677 ( .A(dut__tb__sram_result_write_data[6]), .B(
        dut__tb__sram_scratchpad_write_data[6]), .S(n710), .Z(n556) );
  MUX2_X1 U3678 ( .A(n3653), .B(dut__tb__sram_result_write_data[7]), .S(n3798), 
        .Z(n476) );
  MUX2_X1 U3679 ( .A(dut__tb__sram_result_write_data[7]), .B(
        dut__tb__sram_scratchpad_write_data[7]), .S(n710), .Z(n555) );
  MUX2_X1 U3680 ( .A(n3654), .B(dut__tb__sram_result_write_data[8]), .S(n3798), 
        .Z(n475) );
  MUX2_X1 U3681 ( .A(dut__tb__sram_result_write_data[8]), .B(
        dut__tb__sram_scratchpad_write_data[8]), .S(n710), .Z(n554) );
  MUX2_X1 U3682 ( .A(n3655), .B(dut__tb__sram_result_write_data[9]), .S(n3798), 
        .Z(n474) );
  MUX2_X1 U3683 ( .A(dut__tb__sram_result_write_data[9]), .B(
        dut__tb__sram_scratchpad_write_data[9]), .S(n710), .Z(n553) );
  MUX2_X1 U3684 ( .A(n3656), .B(dut__tb__sram_result_write_data[10]), .S(n3817), .Z(n473) );
  MUX2_X1 U3685 ( .A(dut__tb__sram_result_write_data[10]), .B(
        dut__tb__sram_scratchpad_write_data[10]), .S(n710), .Z(n552) );
  MUX2_X1 U3686 ( .A(n3657), .B(dut__tb__sram_result_write_data[11]), .S(n3817), .Z(n472) );
  MUX2_X1 U3687 ( .A(dut__tb__sram_result_write_data[11]), .B(
        dut__tb__sram_scratchpad_write_data[11]), .S(n710), .Z(n551) );
  MUX2_X1 U3688 ( .A(n3658), .B(dut__tb__sram_result_write_data[12]), .S(n3817), .Z(n471) );
  MUX2_X1 U3689 ( .A(dut__tb__sram_result_write_data[12]), .B(
        dut__tb__sram_scratchpad_write_data[12]), .S(n710), .Z(n550) );
  MUX2_X1 U3690 ( .A(n3659), .B(dut__tb__sram_result_write_data[13]), .S(n3817), .Z(n470) );
  MUX2_X1 U3691 ( .A(dut__tb__sram_result_write_data[13]), .B(
        dut__tb__sram_scratchpad_write_data[13]), .S(n710), .Z(n549) );
  MUX2_X1 U3692 ( .A(n3660), .B(dut__tb__sram_result_write_data[14]), .S(n3817), .Z(n469) );
  MUX2_X1 U3693 ( .A(dut__tb__sram_result_write_data[14]), .B(
        dut__tb__sram_scratchpad_write_data[14]), .S(n710), .Z(n548) );
  MUX2_X1 U3694 ( .A(n3661), .B(dut__tb__sram_result_write_data[15]), .S(n3817), .Z(n468) );
  MUX2_X1 U3695 ( .A(dut__tb__sram_result_write_data[15]), .B(
        dut__tb__sram_scratchpad_write_data[15]), .S(n710), .Z(n547) );
  MUX2_X1 U3696 ( .A(n3662), .B(dut__tb__sram_result_write_data[16]), .S(n3817), .Z(n467) );
  MUX2_X1 U3697 ( .A(dut__tb__sram_result_write_data[16]), .B(
        dut__tb__sram_scratchpad_write_data[16]), .S(n710), .Z(n546) );
  MUX2_X1 U3698 ( .A(n3663), .B(dut__tb__sram_result_write_data[17]), .S(n3817), .Z(n466) );
  MUX2_X1 U3699 ( .A(dut__tb__sram_result_write_data[17]), .B(
        dut__tb__sram_scratchpad_write_data[17]), .S(n710), .Z(n545) );
  MUX2_X1 U3700 ( .A(n3664), .B(dut__tb__sram_result_write_data[18]), .S(n3817), .Z(n465) );
  MUX2_X1 U3701 ( .A(dut__tb__sram_result_write_data[18]), .B(
        dut__tb__sram_scratchpad_write_data[18]), .S(n710), .Z(n544) );
  MUX2_X1 U3702 ( .A(n3665), .B(dut__tb__sram_result_write_data[19]), .S(n3817), .Z(n464) );
  MUX2_X1 U3703 ( .A(dut__tb__sram_result_write_data[19]), .B(
        dut__tb__sram_scratchpad_write_data[19]), .S(n710), .Z(n543) );
  MUX2_X1 U3704 ( .A(n3666), .B(dut__tb__sram_result_write_data[20]), .S(n3817), .Z(n463) );
  MUX2_X1 U3705 ( .A(dut__tb__sram_result_write_data[20]), .B(
        dut__tb__sram_scratchpad_write_data[20]), .S(n710), .Z(n542) );
  MUX2_X1 U3706 ( .A(n3667), .B(dut__tb__sram_result_write_data[21]), .S(n3817), .Z(n462) );
  MUX2_X1 U3707 ( .A(dut__tb__sram_result_write_data[21]), .B(
        dut__tb__sram_scratchpad_write_data[21]), .S(n710), .Z(n541) );
  MUX2_X1 U3708 ( .A(n3668), .B(dut__tb__sram_result_write_data[22]), .S(n3817), .Z(n461) );
  MUX2_X1 U3709 ( .A(dut__tb__sram_result_write_data[22]), .B(
        dut__tb__sram_scratchpad_write_data[22]), .S(n710), .Z(n540) );
  MUX2_X1 U3710 ( .A(n3669), .B(dut__tb__sram_result_write_data[23]), .S(n3817), .Z(n460) );
  MUX2_X1 U3711 ( .A(dut__tb__sram_result_write_data[23]), .B(
        dut__tb__sram_scratchpad_write_data[23]), .S(n710), .Z(n539) );
  MUX2_X1 U3712 ( .A(n3670), .B(dut__tb__sram_result_write_data[24]), .S(n3817), .Z(n459) );
  MUX2_X1 U3713 ( .A(dut__tb__sram_result_write_data[24]), .B(
        dut__tb__sram_scratchpad_write_data[24]), .S(n710), .Z(n538) );
  MUX2_X1 U3714 ( .A(n3671), .B(dut__tb__sram_result_write_data[25]), .S(n3817), .Z(n458) );
  MUX2_X1 U3715 ( .A(dut__tb__sram_result_write_data[25]), .B(
        dut__tb__sram_scratchpad_write_data[25]), .S(n710), .Z(n537) );
  MUX2_X1 U3716 ( .A(n3672), .B(dut__tb__sram_result_write_data[26]), .S(n3817), .Z(n457) );
  MUX2_X1 U3717 ( .A(dut__tb__sram_result_write_data[26]), .B(
        dut__tb__sram_scratchpad_write_data[26]), .S(n710), .Z(n536) );
  MUX2_X1 U3718 ( .A(n3673), .B(dut__tb__sram_result_write_data[27]), .S(n3817), .Z(n456) );
  MUX2_X1 U3719 ( .A(dut__tb__sram_result_write_data[27]), .B(
        dut__tb__sram_scratchpad_write_data[27]), .S(n710), .Z(n535) );
  MUX2_X1 U3720 ( .A(n3674), .B(dut__tb__sram_result_write_data[28]), .S(n3798), .Z(n455) );
  MUX2_X1 U3721 ( .A(dut__tb__sram_result_write_data[28]), .B(
        dut__tb__sram_scratchpad_write_data[28]), .S(n710), .Z(n534) );
  MUX2_X1 U3722 ( .A(n3675), .B(dut__tb__sram_result_write_data[29]), .S(n3798), .Z(n454) );
  MUX2_X1 U3723 ( .A(dut__tb__sram_result_write_data[29]), .B(
        dut__tb__sram_scratchpad_write_data[29]), .S(n710), .Z(n533) );
  MUX2_X1 U3724 ( .A(dut__tb__sram_result_write_data[30]), .B(
        dut__tb__sram_scratchpad_write_data[30]), .S(n710), .Z(n532) );
  MUX2_X1 U3725 ( .A(dut__tb__sram_result_write_data[31]), .B(
        dut__tb__sram_scratchpad_write_data[31]), .S(n710), .Z(n531) );
  OAI22_X1 U3726 ( .A1(n3815), .A2(n4004), .B1(n3814), .B2(
        dut__tb__sram_result_write_address[0]), .ZN(n654) );
  MUX2_X1 U3727 ( .A(n3817), .B(n3819), .S(
        dut__tb__sram_result_write_address[0]), .Z(n3677) );
  OAI21_X1 U3728 ( .B1(sram_result_write_start_address[0]), .B2(n449), .A(
        n3677), .ZN(n685) );
  NAND2_X1 U3729 ( .A1(n3881), .A2(sram_result_write_start_address[0]), .ZN(
        n3691) );
  OAI21_X1 U3730 ( .B1(sram_result_write_start_address[0]), .B2(n3881), .A(
        n3691), .ZN(n3678) );
  MUX2_X1 U3731 ( .A(n3678), .B(dut__tb__sram_scratchpad_write_address[0]), 
        .S(n710), .Z(n638) );
  NAND2_X1 U3732 ( .A1(n3881), .A2(n3917), .ZN(n3679) );
  NAND2_X1 U3733 ( .A1(dut__tb__sram_result_write_address[1]), .A2(
        dut__tb__sram_result_write_address[0]), .ZN(n3684) );
  NAND2_X1 U3734 ( .A1(n3679), .A2(n3684), .ZN(n3681) );
  OAI22_X1 U3735 ( .A1(n3815), .A2(n3919), .B1(n3814), .B2(n3681), .ZN(n653)
         );
  NOR2_X1 U3736 ( .A1(sram_result_write_start_address[0]), .A2(
        sram_result_write_start_address[1]), .ZN(n3686) );
  AOI21_X1 U3737 ( .B1(sram_result_write_start_address[1]), .B2(
        sram_result_write_start_address[0]), .A(n3686), .ZN(n3680) );
  OAI222_X1 U3738 ( .A1(n3817), .A2(n3681), .B1(n3917), .B2(n3819), .C1(n449), 
        .C2(n3680), .ZN(n684) );
  XNOR2_X1 U3739 ( .A(n3917), .B(sram_result_write_start_address[1]), .ZN(
        n3682) );
  XNOR2_X1 U3740 ( .A(n3682), .B(n3691), .ZN(n3683) );
  MUX2_X1 U3741 ( .A(n3683), .B(dut__tb__sram_scratchpad_write_address[1]), 
        .S(n710), .Z(n637) );
  INV_X1 U3742 ( .A(n3684), .ZN(n3685) );
  NAND2_X1 U3743 ( .A1(n3685), .A2(dut__tb__sram_result_write_address[2]), 
        .ZN(n3695) );
  OAI21_X1 U3744 ( .B1(n3685), .B2(dut__tb__sram_result_write_address[2]), .A(
        n3695), .ZN(n3690) );
  OAI22_X1 U3745 ( .A1(n3815), .A2(n3924), .B1(n3814), .B2(n3690), .ZN(n652)
         );
  INV_X1 U3746 ( .A(n3686), .ZN(n3688) );
  NAND2_X1 U3747 ( .A1(n3686), .A2(n3924), .ZN(n3698) );
  INV_X1 U3748 ( .A(n3698), .ZN(n3687) );
  AOI21_X1 U3749 ( .B1(sram_result_write_start_address[2]), .B2(n3688), .A(
        n3687), .ZN(n3689) );
  OAI222_X1 U3750 ( .A1(n3817), .A2(n3690), .B1(n3920), .B2(n3819), .C1(n449), 
        .C2(n3689), .ZN(n683) );
  AOI21_X1 U3751 ( .B1(dut__tb__sram_result_write_address[1]), .B2(n3919), .A(
        n3691), .ZN(n3692) );
  AOI21_X1 U3752 ( .B1(sram_result_write_start_address[1]), .B2(n3917), .A(
        n3692), .ZN(n3701) );
  XNOR2_X1 U3753 ( .A(dut__tb__sram_result_write_address[2]), .B(n3924), .ZN(
        n3693) );
  XNOR2_X1 U3754 ( .A(n3701), .B(n3693), .ZN(n3694) );
  MUX2_X1 U3755 ( .A(n3694), .B(dut__tb__sram_scratchpad_write_address[2]), 
        .S(n710), .Z(n636) );
  INV_X1 U3756 ( .A(n3695), .ZN(n3696) );
  NAND2_X1 U3757 ( .A1(n3696), .A2(dut__tb__sram_result_write_address[3]), 
        .ZN(n3705) );
  OAI21_X1 U3758 ( .B1(n3696), .B2(dut__tb__sram_result_write_address[3]), .A(
        n3705), .ZN(n3700) );
  OAI22_X1 U3759 ( .A1(n3815), .A2(n3929), .B1(n3814), .B2(n3700), .ZN(n651)
         );
  OR2_X1 U3760 ( .A1(n3698), .A2(sram_result_write_start_address[3]), .ZN(
        n3707) );
  INV_X1 U3761 ( .A(n3707), .ZN(n3697) );
  AOI21_X1 U3762 ( .B1(sram_result_write_start_address[3]), .B2(n3698), .A(
        n3697), .ZN(n3699) );
  OAI222_X1 U3763 ( .A1(n3817), .A2(n3700), .B1(n3921), .B2(n3819), .C1(n449), 
        .C2(n3699), .ZN(n682) );
  OAI21_X1 U3764 ( .B1(dut__tb__sram_result_write_address[2]), .B2(n3924), .A(
        n3701), .ZN(n3702) );
  OAI21_X1 U3765 ( .B1(sram_result_write_start_address[2]), .B2(n3920), .A(
        n3702), .ZN(n3711) );
  XNOR2_X1 U3766 ( .A(n3711), .B(n3703), .ZN(n3704) );
  MUX2_X1 U3767 ( .A(n3704), .B(dut__tb__sram_scratchpad_write_address[3]), 
        .S(n710), .Z(n635) );
  INV_X1 U3768 ( .A(n3705), .ZN(n3706) );
  OAI21_X1 U3769 ( .B1(n3706), .B2(dut__tb__sram_result_write_address[4]), .A(
        n3714), .ZN(n3709) );
  OAI22_X1 U3770 ( .A1(n3815), .A2(n3938), .B1(n3814), .B2(n3709), .ZN(n650)
         );
  NOR2_X1 U3771 ( .A1(n3707), .A2(sram_result_write_start_address[4]), .ZN(
        n3716) );
  AOI21_X1 U3772 ( .B1(sram_result_write_start_address[4]), .B2(n3707), .A(
        n3716), .ZN(n3708) );
  OAI222_X1 U3773 ( .A1(n3817), .A2(n3709), .B1(n3922), .B2(n3819), .C1(n449), 
        .C2(n3708), .ZN(n681) );
  NOR2_X1 U3774 ( .A1(n3921), .A2(sram_result_write_start_address[3]), .ZN(
        n3710) );
  OAI22_X1 U3775 ( .A1(n3711), .A2(n3710), .B1(
        dut__tb__sram_result_write_address[3]), .B2(n3929), .ZN(n3721) );
  XNOR2_X1 U3776 ( .A(dut__tb__sram_result_write_address[4]), .B(
        sram_result_write_start_address[4]), .ZN(n3712) );
  XNOR2_X1 U3777 ( .A(n3721), .B(n3712), .ZN(n3713) );
  MUX2_X1 U3778 ( .A(n3713), .B(dut__tb__sram_scratchpad_write_address[4]), 
        .S(n710), .Z(n634) );
  INV_X1 U3779 ( .A(n3714), .ZN(n3715) );
  OAI21_X1 U3780 ( .B1(n3715), .B2(dut__tb__sram_result_write_address[5]), .A(
        n3724), .ZN(n3719) );
  OAI22_X1 U3781 ( .A1(n3815), .A2(n3947), .B1(n3814), .B2(n3719), .ZN(n649)
         );
  NAND2_X1 U3782 ( .A1(n3716), .A2(n3947), .ZN(n3727) );
  OAI21_X1 U3783 ( .B1(n3716), .B2(n3947), .A(n3727), .ZN(n3717) );
  AOI22_X1 U3784 ( .A1(n3717), .A2(n3795), .B1(
        dut__tb__sram_result_write_address[5]), .B2(n3794), .ZN(n3718) );
  OAI21_X1 U3785 ( .B1(n3798), .B2(n3719), .A(n3718), .ZN(n680) );
  NOR2_X1 U3786 ( .A1(n3938), .A2(dut__tb__sram_result_write_address[4]), .ZN(
        n3720) );
  OAI22_X1 U3787 ( .A1(n3721), .A2(n3720), .B1(
        sram_result_write_start_address[4]), .B2(n3922), .ZN(n3731) );
  XNOR2_X1 U3788 ( .A(dut__tb__sram_result_write_address[5]), .B(n3947), .ZN(
        n3722) );
  XNOR2_X1 U3789 ( .A(n3731), .B(n3722), .ZN(n3723) );
  MUX2_X1 U3790 ( .A(n3723), .B(dut__tb__sram_scratchpad_write_address[5]), 
        .S(n710), .Z(n633) );
  NAND2_X1 U3791 ( .A1(n3725), .A2(dut__tb__sram_result_write_address[6]), 
        .ZN(n3734) );
  OAI21_X1 U3792 ( .B1(n3725), .B2(dut__tb__sram_result_write_address[6]), .A(
        n3734), .ZN(n3729) );
  OAI22_X1 U3793 ( .A1(n3815), .A2(n3949), .B1(n3814), .B2(n3729), .ZN(n648)
         );
  OR2_X1 U3794 ( .A1(n3727), .A2(sram_result_write_start_address[6]), .ZN(
        n3737) );
  INV_X1 U3795 ( .A(n3737), .ZN(n3726) );
  AOI21_X1 U3796 ( .B1(sram_result_write_start_address[6]), .B2(n3727), .A(
        n3726), .ZN(n3728) );
  OAI222_X1 U3797 ( .A1(n3817), .A2(n3729), .B1(n3936), .B2(n3819), .C1(n449), 
        .C2(n3728), .ZN(n679) );
  NOR2_X1 U3798 ( .A1(n3930), .A2(sram_result_write_start_address[5]), .ZN(
        n3730) );
  OAI22_X1 U3799 ( .A1(n3731), .A2(n3730), .B1(
        dut__tb__sram_result_write_address[5]), .B2(n3947), .ZN(n3741) );
  XNOR2_X1 U3800 ( .A(dut__tb__sram_result_write_address[6]), .B(
        sram_result_write_start_address[6]), .ZN(n3732) );
  XNOR2_X1 U3801 ( .A(n3741), .B(n3732), .ZN(n3733) );
  MUX2_X1 U3802 ( .A(n3733), .B(dut__tb__sram_scratchpad_write_address[6]), 
        .S(n710), .Z(n632) );
  INV_X1 U3803 ( .A(n3734), .ZN(n3735) );
  OAI21_X1 U3804 ( .B1(n3735), .B2(dut__tb__sram_result_write_address[7]), .A(
        n3744), .ZN(n3739) );
  OAI22_X1 U3805 ( .A1(n3815), .A2(n3950), .B1(n3814), .B2(n3739), .ZN(n647)
         );
  OR2_X1 U3806 ( .A1(n3737), .A2(sram_result_write_start_address[7]), .ZN(
        n3746) );
  INV_X1 U3807 ( .A(n3746), .ZN(n3736) );
  AOI21_X1 U3808 ( .B1(sram_result_write_start_address[7]), .B2(n3737), .A(
        n3736), .ZN(n3738) );
  OAI222_X1 U3809 ( .A1(n3817), .A2(n3739), .B1(n3943), .B2(n3819), .C1(n449), 
        .C2(n3738), .ZN(n678) );
  NOR2_X1 U3810 ( .A1(n3949), .A2(dut__tb__sram_result_write_address[6]), .ZN(
        n3740) );
  OAI22_X1 U3811 ( .A1(n3741), .A2(n3740), .B1(
        sram_result_write_start_address[6]), .B2(n3936), .ZN(n3750) );
  XNOR2_X1 U3812 ( .A(n3750), .B(n3742), .ZN(n3743) );
  MUX2_X1 U3813 ( .A(n3743), .B(dut__tb__sram_scratchpad_write_address[7]), 
        .S(n710), .Z(n631) );
  NAND2_X1 U3814 ( .A1(n3744), .A2(n3948), .ZN(n3745) );
  NAND2_X1 U3815 ( .A1(n3753), .A2(n3745), .ZN(n3748) );
  OAI22_X1 U3816 ( .A1(n3815), .A2(n3953), .B1(n3814), .B2(n3748), .ZN(n646)
         );
  NOR2_X1 U3817 ( .A1(n3746), .A2(sram_result_write_start_address[8]), .ZN(
        n3755) );
  AOI21_X1 U3818 ( .B1(sram_result_write_start_address[8]), .B2(n3746), .A(
        n3755), .ZN(n3747) );
  OAI222_X1 U3819 ( .A1(n3817), .A2(n3748), .B1(n3948), .B2(n3819), .C1(n449), 
        .C2(n3747), .ZN(n677) );
  NOR2_X1 U3820 ( .A1(n3943), .A2(sram_result_write_start_address[7]), .ZN(
        n3749) );
  OAI22_X1 U3821 ( .A1(n3750), .A2(n3749), .B1(
        dut__tb__sram_result_write_address[7]), .B2(n3950), .ZN(n3760) );
  XNOR2_X1 U3822 ( .A(dut__tb__sram_result_write_address[8]), .B(
        sram_result_write_start_address[8]), .ZN(n3751) );
  XNOR2_X1 U3823 ( .A(n3760), .B(n3751), .ZN(n3752) );
  MUX2_X1 U3824 ( .A(n3752), .B(dut__tb__sram_scratchpad_write_address[8]), 
        .S(n710), .Z(n630) );
  NAND2_X1 U3825 ( .A1(n3754), .A2(dut__tb__sram_result_write_address[9]), 
        .ZN(n3763) );
  OAI21_X1 U3826 ( .B1(n3754), .B2(dut__tb__sram_result_write_address[9]), .A(
        n3763), .ZN(n3758) );
  OAI22_X1 U3827 ( .A1(n3815), .A2(n3958), .B1(n3814), .B2(n3758), .ZN(n645)
         );
  NAND2_X1 U3828 ( .A1(n3755), .A2(n3958), .ZN(n3765) );
  OAI21_X1 U3829 ( .B1(n3755), .B2(n3958), .A(n3765), .ZN(n3756) );
  AOI22_X1 U3830 ( .A1(n3756), .A2(n3795), .B1(
        dut__tb__sram_result_write_address[9]), .B2(n3794), .ZN(n3757) );
  OAI21_X1 U3831 ( .B1(n3758), .B2(n3817), .A(n3757), .ZN(n676) );
  NOR2_X1 U3832 ( .A1(n3953), .A2(dut__tb__sram_result_write_address[8]), .ZN(
        n3759) );
  OAI22_X1 U3833 ( .A1(n3760), .A2(n3759), .B1(
        sram_result_write_start_address[8]), .B2(n3948), .ZN(n3769) );
  XNOR2_X1 U3834 ( .A(dut__tb__sram_result_write_address[9]), .B(n3958), .ZN(
        n3761) );
  XNOR2_X1 U3835 ( .A(n3769), .B(n3761), .ZN(n3762) );
  MUX2_X1 U3836 ( .A(n3762), .B(dut__tb__sram_scratchpad_write_address[9]), 
        .S(n710), .Z(n629) );
  INV_X1 U3837 ( .A(n3763), .ZN(n3764) );
  OAI21_X1 U3838 ( .B1(n3764), .B2(dut__tb__sram_result_write_address[10]), 
        .A(n3772), .ZN(n3767) );
  OAI22_X1 U3839 ( .A1(n3815), .A2(n3961), .B1(n3814), .B2(n3767), .ZN(n644)
         );
  NOR2_X1 U3840 ( .A1(n3765), .A2(sram_result_write_start_address[10]), .ZN(
        n3774) );
  AOI21_X1 U3841 ( .B1(sram_result_write_start_address[10]), .B2(n3765), .A(
        n3774), .ZN(n3766) );
  OAI222_X1 U3842 ( .A1(n3817), .A2(n3767), .B1(n3952), .B2(n3819), .C1(n449), 
        .C2(n3766), .ZN(n675) );
  NOR2_X1 U3843 ( .A1(n3951), .A2(sram_result_write_start_address[9]), .ZN(
        n3768) );
  OAI22_X1 U3844 ( .A1(n3769), .A2(n3768), .B1(
        dut__tb__sram_result_write_address[9]), .B2(n3958), .ZN(n3779) );
  XNOR2_X1 U3845 ( .A(dut__tb__sram_result_write_address[10]), .B(
        sram_result_write_start_address[10]), .ZN(n3770) );
  XNOR2_X1 U3846 ( .A(n3779), .B(n3770), .ZN(n3771) );
  MUX2_X1 U3847 ( .A(n3771), .B(dut__tb__sram_scratchpad_write_address[10]), 
        .S(n710), .Z(n628) );
  NAND2_X1 U3848 ( .A1(n3773), .A2(dut__tb__sram_result_write_address[11]), 
        .ZN(n3782) );
  OAI21_X1 U3849 ( .B1(n3773), .B2(dut__tb__sram_result_write_address[11]), 
        .A(n3782), .ZN(n3777) );
  OAI22_X1 U3850 ( .A1(n3815), .A2(n3978), .B1(n3814), .B2(n3777), .ZN(n643)
         );
  NAND2_X1 U3851 ( .A1(n3774), .A2(n3978), .ZN(n3784) );
  OAI21_X1 U3852 ( .B1(n3774), .B2(n3978), .A(n3784), .ZN(n3775) );
  AOI22_X1 U3853 ( .A1(n3775), .A2(n3795), .B1(
        dut__tb__sram_result_write_address[11]), .B2(n3794), .ZN(n3776) );
  OAI21_X1 U3854 ( .B1(n3777), .B2(n3817), .A(n3776), .ZN(n674) );
  NOR2_X1 U3855 ( .A1(n3961), .A2(dut__tb__sram_result_write_address[10]), 
        .ZN(n3778) );
  OAI22_X1 U3856 ( .A1(n3779), .A2(n3778), .B1(
        sram_result_write_start_address[10]), .B2(n3952), .ZN(n3788) );
  XNOR2_X1 U3857 ( .A(n3788), .B(n3780), .ZN(n3781) );
  MUX2_X1 U3858 ( .A(n3781), .B(dut__tb__sram_scratchpad_write_address[11]), 
        .S(n710), .Z(n627) );
  INV_X1 U3859 ( .A(n3782), .ZN(n3783) );
  OAI21_X1 U3860 ( .B1(n3783), .B2(dut__tb__sram_result_write_address[12]), 
        .A(n3791), .ZN(n3786) );
  OAI22_X1 U3861 ( .A1(n3815), .A2(n3981), .B1(n3814), .B2(n3786), .ZN(n642)
         );
  NOR2_X1 U3862 ( .A1(n3784), .A2(sram_result_write_start_address[12]), .ZN(
        n3793) );
  AOI21_X1 U3863 ( .B1(sram_result_write_start_address[12]), .B2(n3784), .A(
        n3793), .ZN(n3785) );
  OAI222_X1 U3864 ( .A1(n3817), .A2(n3786), .B1(n3955), .B2(n3819), .C1(n449), 
        .C2(n3785), .ZN(n673) );
  NOR2_X1 U3865 ( .A1(n3956), .A2(sram_result_write_start_address[11]), .ZN(
        n3787) );
  OAI22_X1 U3866 ( .A1(n3788), .A2(n3787), .B1(
        dut__tb__sram_result_write_address[11]), .B2(n3978), .ZN(n3801) );
  XNOR2_X1 U3867 ( .A(dut__tb__sram_result_write_address[12]), .B(
        sram_result_write_start_address[12]), .ZN(n3789) );
  XNOR2_X1 U3868 ( .A(n3801), .B(n3789), .ZN(n3790) );
  MUX2_X1 U3869 ( .A(n3790), .B(dut__tb__sram_scratchpad_write_address[12]), 
        .S(n710), .Z(n626) );
  INV_X1 U3870 ( .A(n3791), .ZN(n3792) );
  OAI21_X1 U3871 ( .B1(n3792), .B2(dut__tb__sram_result_write_address[13]), 
        .A(n3804), .ZN(n3799) );
  OAI22_X1 U3872 ( .A1(n3815), .A2(n3983), .B1(n3814), .B2(n3799), .ZN(n641)
         );
  NAND2_X1 U3873 ( .A1(n3793), .A2(n3983), .ZN(n3806) );
  OAI21_X1 U3874 ( .B1(n3793), .B2(n3983), .A(n3806), .ZN(n3796) );
  AOI22_X1 U3875 ( .A1(n3796), .A2(n3795), .B1(
        dut__tb__sram_result_write_address[13]), .B2(n3794), .ZN(n3797) );
  OAI21_X1 U3876 ( .B1(n3799), .B2(n3798), .A(n3797), .ZN(n672) );
  NOR2_X1 U3877 ( .A1(n3981), .A2(dut__tb__sram_result_write_address[12]), 
        .ZN(n3800) );
  OAI22_X1 U3878 ( .A1(n3801), .A2(n3800), .B1(
        sram_result_write_start_address[12]), .B2(n3955), .ZN(n3810) );
  XNOR2_X1 U3879 ( .A(n3810), .B(n3802), .ZN(n3803) );
  MUX2_X1 U3880 ( .A(n3803), .B(dut__tb__sram_scratchpad_write_address[13]), 
        .S(n710), .Z(n625) );
  NAND2_X1 U3881 ( .A1(n3805), .A2(dut__tb__sram_result_write_address[14]), 
        .ZN(n3813) );
  OAI21_X1 U3882 ( .B1(n3805), .B2(dut__tb__sram_result_write_address[14]), 
        .A(n3813), .ZN(n3808) );
  OAI22_X1 U3883 ( .A1(n3815), .A2(n3985), .B1(n3814), .B2(n3808), .ZN(n640)
         );
  NOR2_X1 U3884 ( .A1(n3806), .A2(sram_result_write_start_address[14]), .ZN(
        n3816) );
  AOI21_X1 U3885 ( .B1(sram_result_write_start_address[14]), .B2(n3806), .A(
        n3816), .ZN(n3807) );
  OAI222_X1 U3886 ( .A1(n3817), .A2(n3808), .B1(n3980), .B2(n3819), .C1(n449), 
        .C2(n3807), .ZN(n671) );
  NOR2_X1 U3887 ( .A1(n3959), .A2(sram_result_write_start_address[13]), .ZN(
        n3809) );
  OAI22_X1 U3888 ( .A1(n3810), .A2(n3809), .B1(
        dut__tb__sram_result_write_address[13]), .B2(n3983), .ZN(n3822) );
  XNOR2_X1 U3889 ( .A(dut__tb__sram_result_write_address[14]), .B(
        sram_result_write_start_address[14]), .ZN(n3811) );
  XNOR2_X1 U3890 ( .A(n3822), .B(n3811), .ZN(n3812) );
  MUX2_X1 U3891 ( .A(n3812), .B(dut__tb__sram_scratchpad_write_address[14]), 
        .S(n710), .Z(n624) );
  OAI22_X1 U3892 ( .A1(n3815), .A2(n3987), .B1(n3814), .B2(n3818), .ZN(n639)
         );
  XNOR2_X1 U3893 ( .A(n3816), .B(sram_result_write_start_address[15]), .ZN(
        n3820) );
  OAI222_X1 U3894 ( .A1(n3820), .A2(n449), .B1(n3986), .B2(n3819), .C1(n3818), 
        .C2(n3817), .ZN(n670) );
  NOR2_X1 U3895 ( .A1(n3985), .A2(dut__tb__sram_result_write_address[14]), 
        .ZN(n3821) );
  OAI22_X1 U3896 ( .A1(n3822), .A2(n3821), .B1(
        sram_result_write_start_address[14]), .B2(n3980), .ZN(n3824) );
  XNOR2_X1 U3897 ( .A(dut__tb__sram_result_write_address[15]), .B(n3987), .ZN(
        n3823) );
  XNOR2_X1 U3898 ( .A(n3824), .B(n3823), .ZN(n3825) );
  MUX2_X1 U3899 ( .A(n3825), .B(dut__tb__sram_scratchpad_write_address[15]), 
        .S(n710), .Z(n623) );
  NOR2_X1 U3900 ( .A1(n3875), .A2(n710), .ZN(N117) );
  NAND2_X1 U3901 ( .A1(tb__dut__sram_weight_read_data[1]), .A2(
        tb__dut__sram_weight_read_data[28]), .ZN(n3827) );
  AOI21_X1 U3902 ( .B1(n3827), .B2(n3826), .A(n3843), .ZN(intadd_13_A_1_) );
  NOR2_X1 U3903 ( .A1(n3857), .A2(n3846), .ZN(intadd_13_A_0_) );
  NOR2_X1 U3904 ( .A1(n3845), .A2(n3852), .ZN(intadd_13_CI) );
  NOR2_X1 U3905 ( .A1(n3858), .A2(n3833), .ZN(intadd_12_A_0_) );
  NOR2_X1 U3906 ( .A1(n3834), .A2(n3862), .ZN(intadd_12_B_0_) );
  NOR2_X1 U3907 ( .A1(n3863), .A2(n3828), .ZN(intadd_12_CI) );
  NOR2_X1 U3908 ( .A1(n3851), .A2(n3858), .ZN(intadd_8_A_0_) );
  NOR2_X1 U3909 ( .A1(n3833), .A2(n3862), .ZN(intadd_8_B_0_) );
  NOR2_X1 U3910 ( .A1(n3863), .A2(n3829), .ZN(intadd_8_CI) );
  NOR2_X1 U3911 ( .A1(n3853), .A2(n3850), .ZN(n3832) );
  NOR2_X1 U3912 ( .A1(n3851), .A2(n3835), .ZN(n3831) );
  NOR2_X1 U3913 ( .A1(n3861), .A2(n3829), .ZN(n3830) );
  FA_X1 U3914 ( .A(n3832), .B(n3831), .CI(n3830), .CO(intadd_13_B_1_), .S(
        intadd_8_B_1_) );
  NOR2_X1 U3915 ( .A1(n3859), .A2(n3833), .ZN(intadd_4_A_0_) );
  NOR2_X1 U3916 ( .A1(n3860), .A2(n3834), .ZN(intadd_4_B_0_) );
  NOR2_X1 U3917 ( .A1(n3857), .A2(n3845), .ZN(intadd_4_B_1_) );
  NOR2_X1 U3918 ( .A1(n3835), .A2(n3852), .ZN(intadd_3_A_0_) );
  NOR2_X1 U3919 ( .A1(n3850), .A2(n3858), .ZN(intadd_3_B_0_) );
  NOR2_X1 U3920 ( .A1(n3857), .A2(n3853), .ZN(intadd_3_CI) );
  FA_X1 U3921 ( .A(n3838), .B(n3837), .CI(n3836), .CO(n3340), .S(
        intadd_12_A_2_) );
  FA_X1 U3922 ( .A(n3841), .B(n3840), .CI(n3839), .CO(n3351), .S(intadd_8_A_2_) );
  FA_X1 U3923 ( .A(n3844), .B(n3843), .CI(n3842), .CO(n3382), .S(
        intadd_13_A_2_) );
  NOR2_X1 U3924 ( .A1(n3861), .A2(n3845), .ZN(n3849) );
  NOR2_X1 U3925 ( .A1(n3851), .A2(n3862), .ZN(n3848) );
  NOR2_X1 U3926 ( .A1(n3863), .A2(n3846), .ZN(n3847) );
  FA_X1 U3927 ( .A(n3849), .B(n3848), .CI(n3847), .CO(intadd_3_B_1_), .S(
        intadd_2_A_2_) );
  NOR2_X1 U3928 ( .A1(n3859), .A2(n3850), .ZN(intadd_2_A_0_) );
  NOR2_X1 U3929 ( .A1(n3860), .A2(n3851), .ZN(intadd_2_B_0_) );
  NOR2_X1 U3930 ( .A1(n3858), .A2(n3857), .ZN(n3856) );
  NOR2_X1 U3931 ( .A1(n3852), .A2(n3862), .ZN(n3855) );
  NOR2_X1 U3932 ( .A1(n3863), .A2(n3853), .ZN(n3854) );
  FA_X1 U3933 ( .A(n3856), .B(n3855), .CI(n3854), .CO(intadd_2_B_1_), .S(
        intadd_7_A_1_) );
  NOR2_X1 U3934 ( .A1(n3862), .A2(n3857), .ZN(intadd_7_CI) );
  NOR2_X1 U3935 ( .A1(n3861), .A2(n3862), .ZN(intadd_11_B_0_) );
  NOR2_X1 U3936 ( .A1(n3863), .A2(n3858), .ZN(intadd_11_CI) );
  NOR2_X1 U3937 ( .A1(n3863), .A2(n3859), .ZN(intadd_9_A_0_) );
  NOR2_X1 U3938 ( .A1(n3861), .A2(n3860), .ZN(intadd_9_B_0_) );
  NOR2_X1 U3939 ( .A1(n3863), .A2(n3862), .ZN(intadd_9_B_1_) );
  FA_X1 U3940 ( .A(n3866), .B(n3865), .CI(n3864), .CO(n3324), .S(
        intadd_12_B_2_) );
  OAI211_X1 U3941 ( .C1(n3957), .C2(n3883), .A(current_state[0]), .B(n3879), 
        .ZN(n3867) );
  NOR3_X1 U3942 ( .A1(n3867), .A2(MAC_current_state[0]), .A3(
        MAC_current_state[1]), .ZN(n3869) );
  NOR3_X1 U3943 ( .A1(n3870), .A2(n3869), .A3(n3868), .ZN(n3874) );
  OAI211_X1 U3944 ( .C1(n3872), .C2(n3946), .A(n3871), .B(n3882), .ZN(n3873)
         );
  OAI211_X1 U3945 ( .C1(MAC_calculation_done), .C2(n3875), .A(n3874), .B(n3873), .ZN(MAC_next_state[0]) );
  DFF_X2 MAC_sram_weight_read_data_reg_15_ ( .D(
        tb__dut__sram_weight_read_data[15]), .CK(clk), .Q(
        MAC_sram_weight_read_data[15]) );
  DFF_X2 MAC_sram_weight_read_data_reg_16_ ( .D(
        tb__dut__sram_weight_read_data[16]), .CK(clk), .Q(
        MAC_sram_weight_read_data[16]) );
  DFF_X2 MAC_sram_weight_read_data_reg_0_ ( .D(
        tb__dut__sram_weight_read_data[0]), .CK(clk), .Q(
        MAC_sram_weight_read_data[0]), .QN(n952) );
  OR2_X4 U1203 ( .A1(n1037), .A2(n1034), .ZN(n2176) );
  INV_X4 U1309 ( .A(n3623), .ZN(n3630) );
endmodule

