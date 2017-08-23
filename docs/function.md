# VDS 函数说明

<table width="95%" border="1" cellpadding="2" cellspacing="1" style="table-layout:fixed;">
   <tr>
      <td>MySQL函数</td>
      <td>MySQL语法</td>
      <td>描述</td>
      <td>vds是否支持</td>
      <td>语义差别</td>
   </tr>
   <tr>
      <td>ABS()</td>
      <td>ABS(X)</td>
      <td>返回绝对值</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>ACOS()</td>
      <td>ACOS(X)</td>
      <td>返回X的反余弦值，即余弦值为X的值。如果X不在-1到1范围内，则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>ADDDATE()</td>
      <td>ADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)</td>
      <td>"将时间值（间隔）添加到日期值，当用第二个参数的INTERVAL形式调用时，ADDDATE()与DATE_ADD()相同</td>
   </tr>
   <tr>
      <td>"</td>
      <td>否</td>
      <td>Function "ADDDATE" not found</td>
   </tr>
   <tr>
      <td>ADDTIME()</td>
      <td>ADDTIME(expr1,expr2)</td>
      <td>添加时间，将expr2添加到expr1并返回结果。 expr1是时间或日期时间表达式，expr2是时间表达式。</td>
      <td>否</td>
      <td> Function "ADDTIME" not found</td>
   </tr>
   <tr>
      <td>AES_DECRYPT()</td>
      <td>AES_DECRYPT(crypt_str,key_str[,init_vector])</td>
      <td>该功能使用官方AES（高级加密标准）算法解密数据</td>
      <td>否</td>
      <td>" Function ""AES_DECRYPT"" not found</td>
   </tr>
   <tr>
      <td>vds支持DECRYPT，语法为DECRYPT ( algorithmString , keyBytes , dataBytes )，使用密钥解密数据。支持的算法是AES。块大小为16字节。此方法返回字节。</td>
   </tr>
   <tr>
      <td>例如：CALL TRIM(CHAR(0) FROM UTF8TOSTRING(</td>
   </tr>
   <tr>
      <td>    DECRYPT('AES', '00', '3fabb4de8f1ee2e97d7793bab2db1116')))</td>
   </tr>
   <tr>
      <td>"</td>
   </tr>
   <tr>
      <td>AES_ENCRYPT()</td>
      <td>AES_ENCRYPT(str,key_str[,init_vector])</td>
      <td>使用AES加密</td>
      <td>否</td>
      <td> Function "AES_ENCRYPT" not found</td>
   </tr>
   <tr>
      <td>AND, &&</td>
      <td>AND, &&</td>
      <td>逻辑与。如果所有操作数均为非零，则评估为1，如果一个或多个操作数为0，则返回0，否则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>ANY_VALUE()</td>
      <td>ANY_VALUE(arg)</td>
      <td>在启用ONLY_FULL_GROUP_BY SQL模式时，对于GROUP BY查询，当MySQL拒绝您认为由MySQL无法确定的原因而有效的查询时，此函数很有用。函数返回值和类型与其参数的返回值和类型相同，但是对于ONLY_FULL_GROUP_BY SQL模式，不检查函数结果。</td>
      <td>否</td>
      <td>Function "ANY_VALUE" not found</td>
   </tr>
   <tr>
      <td>Area() (deprecated 5.7.6)</td>
      <td>Area(poly)</td>
      <td>ST_Area（）和Area（）是同义词</td>
      <td>否</td>
      <td>Function "AREA" not found</td>
   </tr>
   <tr>
      <td>AsBinary(), AsWKB() (deprecated 5.7.6)</td>
      <td>AsBinary(g), AsWKB(g)</td>
      <td>ST_AsBinary（），ST_AsWKB（），AsBinary（）和AsWKB（）是同义词</td>
      <td>否</td>
      <td>Function "ASBINARY" not found</td>
   </tr>
   <tr>
      <td>ASCII()</td>
      <td>ASCII(str)</td>
      <td>返回字符串str最左侧字符的数值。如果str是空字符串，则返回0。如果str为NULL，则返回NULL。 ASCII（）适用于8位字符。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>ASIN()</td>
      <td>ASIN(X)</td>
      <td>返回X的反正弦，即sine为X的值。如果X不在-1到1范围内，则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>=</td>
      <td>=</td>
      <td>在UPDATE语句中分配一个值（作为SET语句的一部分，或作为SET子句的一部分）</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>:=</td>
      <td>:=</td>
      <td>分配一个值</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>AsText(), AsWKT() (deprecated 5.7.6)</td>
      <td>AsText(g), AsWKT(g)</td>
      <td>ST_AsText（），ST_AsWKT（），AsText（）和AsWKT（）是同义词。</td>
      <td>否</td>
      <td>Function "ASTEXT" not found</td>
   </tr>
   <tr>
      <td>ASYMMETRIC_DECRYPT()</td>
      <td>ASYMMETRIC_DECRYPT(algorithm, crypt_str, key_str)</td>
      <td>使用给定的算法和密钥字符串解密加密的字符串，并将生成的明文返回为二进制字符串。如果解密失败，结果为NULL。</td>
      <td>否</td>
      <td> Function "ASYMMETRIC_DECRYPT()" not found</td>
   </tr>
   <tr>
      <td>ASYMMETRIC_DERIVE()</td>
      <td>ASYMMETRIC_DERIVE(pub_key_str, priv_key_str)</td>
      <td>使用一方的私钥和另一方的公钥导出对称密钥，并将生成的密钥作为二进制字符串返回。如果密钥导出失败，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ASYMMETRIC_DERIVE()" not found</td>
   </tr>
   <tr>
      <td>ASYMMETRIC_ENCRYPT()</td>
      <td>ASYMMETRIC_ENCRYPT(algorithm, str, key_str)</td>
      <td>使用给定的算法和密钥字符串加密字符串，并将生成的密文作为二进制字符串返回。如果加密失败，结果为NULL。</td>
      <td>否</td>
      <td>Function "ASYMMETRIC_ENCRYPT()" not found</td>
   </tr>
   <tr>
      <td>ASYMMETRIC_SIGN()</td>
      <td>ASYMMETRIC_SIGN(algorithm, digest_str, priv_key_str, digest_type)</td>
      <td>使用私钥字符串标记摘要字符串，并将签名作为二进制字符串返回。如果签名失败，结果为NULL。 digest_str是摘要字符串。它可以通过调用CREATE_DIGEST（）生成。 digest_type表示用于生成摘要字符串的摘要算法。</td>
      <td>否</td>
      <td>Function "ASYMMETRIC_SIGN()" not found</td>
   </tr>
   <tr>
      <td>ASYMMETRIC_VERIFY()</td>
      <td>ASYMMETRIC_VERIFY(algorithm, digest_str, sig_str, pub_key_str, digest_type)</td>
      <td>验证签名字符串是否匹配摘要字符串，并返回1或0以指示验证是成功还是失败。</td>
      <td>否</td>
      <td>Function "ASYMMETRIC_VERIFY()" not found</td>
   </tr>
   <tr>
      <td>ATAN()</td>
      <td>ATAN(X)</td>
      <td>返回X的反正切值</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>ATAN2(), ATAN()</td>
      <td>ATAN(Y,X), ATAN2(Y,X)</td>
      <td>返回两个变量X和Y的反正切</td>
      <td>是</td>
      <td>vds支持ATAN2(Y,X)，但不支持ATAN(Y,X)</td>
   </tr>
   <tr>
      <td>AVG()</td>
      <td>AVG([DISTINCT] expr)</td>
      <td>返回expr的平均值。 DISTINCT选项可用于返回expr的不同值的平均值。 如果没有匹配的行，AVG（）返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>BENCHMARK()</td>
      <td>BENCHMARK(count,expr)</td>
      <td>ENCHMARK（）函数执行表达式expr反复计数次数。它可能用于时间MySQL处理表达式的速度。结果值始终为0。</td>
      <td>否</td>
      <td>Function "BENCHMARK" not found</td>
   </tr>
   <tr>
      <td>BETWEEN ... AND ...</td>
      <td>expr BETWEEN min AND max</td>
      <td>如果expr大于或等于min，expr小于或等于max，则BETWEEN返回1，否则返回0.这相当于表达式（min <= expr AND expr <= max），如果所有参数为的相同类型。否则类型转换根据第12.2节“表达式评估中的类型转换”中描述的规则进行，但适用于所有三个参数。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>BIN()</td>
      <td>BIN(N)</td>
      <td>返回N的二进制值的字符串表示，其中N是longlong（BIGINT）数。这相当于CONV（N，10,2）。如果N为NULL，则返回NULL。</td>
      <td>否</td>
      <td>Function "BIN" not found</td>
   </tr>
   <tr>
      <td>BINARY</td>
      <td>BINARY expr</td>
      <td>BINARY运算符将表达式转换为二进制字符串。 BINARY的常见用途是强制字符串比较逐字节而不是逐字符，实际上是区分大小写的。 BINARY运算符也使比较中的尾随空格显着。</td>
      <td>否</td>
      <td>vds中没有这个运算符，vds只是把它当作一种类型</td>
   </tr>
   <tr>
      <td>BIT_AND()</td>
      <td>BIT_AND(expr)</td>
      <td>返回expr中所有位的按位AND。以64位（BIGINT）精度进行计算。 如果没有匹配的行，BIT_AND（）返回一个中性值（所有位设置为1）。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>BIT_COUNT()</td>
      <td>BIT_COUNT(N)</td>
      <td>返回在参数N中设置为无符号64位整数的位数，如果参数为NULL，则返回NULL。</td>
      <td>否</td>
      <td>Function "BIT_COUNT" not found</td>
   </tr>
   <tr>
      <td>BIT_LENGTH()</td>
      <td>BIT_LENGTH(str)</td>
      <td>以字节数返回字符串str的长度</td>
      <td>是</td>
      <td>MySQL中一个字符是8位，vds返回类型为long。对于BLOB，CLOB，BYTES和JAVA_OBJECT，使用精度。每个字符需要16位。</td>
   </tr>
   <tr>
      <td>BIT_OR()</td>
      <td>BIT_OR(expr)</td>
      <td>返回expr中所有位的按位OR。以64位（BIGINT）精度进行计算。 如果没有匹配的行，BIT_OR（）返回一个中性值（所有位设置为0）</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>BIT_XOR()</td>
      <td>BIT_XOR(expr)</td>
      <td>返回expr中所有位的按位XOR。以64位（BIGINT）精度进行计算。 如果没有匹配的行，BIT_XOR（）返回一个中性值（所有位设置为0）。</td>
      <td>否</td>
      <td>"Function ""BIT_XOR"" not found</td>
   </tr>
   <tr>
      <td>vds中类似的函数为BITXOR，语法为BITXOR(long, long)，按为异或，返回类型为long。"</td>
   </tr>
   <tr>
      <td>&</td>
      <td>&</td>
      <td>按位AND</td>
      <td>否</td>
      <td>vds中类似的函数有BITAND</td>
   </tr>
   <tr>
      <td>~</td>
      <td>~</td>
      <td>反转所有位。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>|</td>
      <td>|</td>
      <td>按位OR</td>
      <td>否</td>
      <td>vds中类似的函数有BITOR</td>
   </tr>
   <tr>
      <td>^</td>
      <td>^</td>
      <td>按位XOR</td>
      <td>否</td>
      <td>vds中类似的函数有BITXOR</td>
   </tr>
   <tr>
      <td>Buffer() (deprecated 5.7.6)</td>
      <td>Buffer(g, d[, strategy1[, strategy2[, strategy3]]])</td>
      <td>ST_Buffer（）和Buffer（）是同义词</td>
      <td>否</td>
      <td>Function "BUFFER" not found</td>
   </tr>
   <tr>
      <td>CASE</td>
      <td>"CASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN result ...] [ELSE result] END</td>
   </tr>
   <tr>
      <td></td>
   </tr>
   <tr>
      <td>CASE WHEN [condition] THEN result [WHEN [condition] THEN result ...] [ELSE result] END"</td>
      <td>第一个CASE语法返回第一个值= compare_value比较为true的结果。第二个语法返回第一个条件为true的结果。如果没有比较或条件为真，返回ELSE后的结果，如果没有ELSE部分则为NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CAST()</td>
      <td>CAST(expr AS type)</td>
      <td>CAST（）函数使用任何类型的表达式，并生成与CONVERT（）类似的指定类型的结果值。</td>
      <td>是</td>
      <td>vds中将数字转换为二进制数时，字节数与精度相匹配。将字符串转换为二进制时，它是十六进制编码（每个字节两个字符）;通过首先将十六进制字符串转换为二进制，可以将十六进制字符串转换为数字如果无法进行直接转换，则首先将该值转换为字符串。</td>
   </tr>
   <tr>
      <td>CEIL()</td>
      <td>CEIL(X)</td>
      <td>返回不小于X的最小整数值。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CEILING()</td>
      <td>CEILING(X)</td>
      <td>返回不小于参数的最小整数值</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>Centroid() (deprecated 5.7.6)</td>
      <td>Centroid(mpoly)</td>
      <td>ST_Centroid（）和Centroid（）是同义词</td>
      <td>否</td>
      <td>Function "CENTROID" not found</td>
   </tr>
   <tr>
      <td>CHAR()</td>
      <td>CHAR(N,... [USING charset_name])</td>
      <td>CHAR（）将每个参数N解释为整数，并返回由这些整数的代码值给出的字符组成的字符串。 NULL值被跳过。</td>
      <td>是</td>
      <td>vds中返回表示ASCII值的字符。只返回一个字符串。</td>
   </tr>
   <tr>
      <td>CHAR_LENGTH()</td>
      <td>CHAR_LENGTH(str)</td>
      <td>返回字符串str的长度，以字符为单位。多字节字符计为单个字符。这意味着对于包含五个2字节字符的字符串，LENGTH（）返回10，而CHAR_LENGTH（）返回5。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CHARACTER_LENGTH()</td>
      <td>CHARACTER_LENGTH(str)</td>
      <td>同CHAR_LENGTH()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CHARSET()</td>
      <td>CHARSET(str)</td>
      <td>返回字符串参数的字符集</td>
      <td>否</td>
      <td> Function "CHARSET" not found</td>
   </tr>
   <tr>
      <td>COALESCE()</td>
      <td>COALESCE(value,...)</td>
      <td>返回列表中的第一个非NULL值，如果没有非NULL值则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>COERCIBILITY()</td>
      <td>COERCIBILITY(str)</td>
      <td>返回字符串参数的排序规则可靠性值</td>
      <td>否</td>
      <td>Function "COERCIBILITY" not found </td>
   </tr>
   <tr>
      <td>COLLATION()</td>
      <td>COLLATION(str)</td>
      <td>返回字符串参数的排序规则</td>
      <td>否</td>
      <td>Function "COLLATION" not found</td>
   </tr>
   <tr>
      <td>COMPRESS()</td>
      <td>COMPRESS(string_to_compress)</td>
      <td>压缩一个字符串，并将结果作为二进制字符串返回。该函数需要使用诸如zlib之类的压缩库编译MySQL。否则返回值始终为NULL。压缩字符串可以使用UNCOMPRESS（）解压缩。</td>
      <td>是</td>
      <td>具有奇数个字符的十六进制字符串不能压缩</td>
   </tr>
   <tr>
      <td>CONCAT()</td>
      <td>CONCAT(str1,str2,...)</td>
      <td>返回由连接参数产生的字符串。可能有一个或多个参数。如果所有参数都是非二进制字符串，则结果是一个非二进制字符串。如果参数包含任何二进制字符串，则结果为二进制字符串。数值参数转换为等效的非二进制字符串形式。</td>
      <td>是</td>
      <td>当参数中有null，MySQL返回的是null，vds则返回串联的字符串</td>
   </tr>
   <tr>
      <td>CONCAT_WS()</td>
      <td>CONCAT_WS(separator,str1,str2,...)</td>
      <td>CONCAT_WS（）代表Concatenate With Separator，是CONCAT（）的一种特殊形式。第一个参数是其余参数的分隔符。在要连接的字符串之间添加分隔符。分隔符可以是一个字符串，其余参数也可以。如果分隔符为NULL，则结果为NULL。</td>
      <td>是</td>
      <td>vds中当分隔符为null时，返回结果并不为null</td>
   </tr>
   <tr>
      <td>CONNECTION_ID()</td>
      <td>CONNECTION_ID()</td>
      <td>返回连接的连接ID（线程ID）。每个连接的ID在当前连接的客户端集中是唯一的。</td>
      <td>否</td>
      <td>Function "CONNECTION_ID" not found</td>
   </tr>
   <tr>
      <td>Contains() (deprecated 5.7.6)</td>
      <td>Contains(g1, g2)</td>
      <td>MBRContains（）和Contains（）是同义词。</td>
      <td>否</td>
      <td> Function "CONTAINS" not found</td>
   </tr>
   <tr>
      <td>CONV()</td>
      <td>CONV(N,from_base,to_base)</td>
      <td>转换不同数字的数字，返回数字N的字符串表示形式，从基础from_base转换为基础to_base。如果任何参数为NULL，则返回NULL。参数N被解释为整数，但可以被指定为整数或字符串。</td>
      <td>否</td>
      <td>Function "CONV" not found</td>
   </tr>
   <tr>
      <td>CONVERT()</td>
      <td>CONVERT(expr,type), CONVERT(expr USING transcoding_name)</td>
      <td>CONVERT（）函数接受任何类型的表达式，并产生指定类型的结果值。</td>
      <td>是</td>
      <td>"vds不支持CONVERT(expr USING transcoding_name，例如：CONVERT('abc' USING utf8);vds的语法为</td>
   </tr>
   <tr>
      <td>CONVERT ( value , dataType )</td>
   </tr>
   <tr>
      <td>"</td>
   </tr>
   <tr>
      <td>CONVERT_TZ()</td>
      <td>CONVERT_TZ(dt,from_tz,to_tz)</td>
      <td>从一个时区转换到另一个时区</td>
      <td>否</td>
      <td>Function "CONVERT_TZ" not found</td>
   </tr>
   <tr>
      <td>ConvexHull() (deprecated 5.7.6)</td>
      <td>ConvexHull(g)</td>
      <td>ST_ConvexHull（）和ConvexHull（）是同义词。</td>
      <td>否</td>
      <td>Function "CONVEXHULL" not found</td>
   </tr>
   <tr>
      <td>COS()</td>
      <td>COS(X)</td>
      <td>返回X的余弦</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>COT()</td>
      <td>COT(X)</td>
      <td>返回X的余切</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>COUNT()</td>
      <td>COUNT(expr)</td>
      <td>返回由SELECT语句检索的行中expr的非NULL值的个数的计数。结果是一个BIGINT值。 如果没有匹配的行，则COUNT（）返回0。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>COUNT(DISTINCT)</td>
      <td>COUNT(DISTINCT expr,[expr...])</td>
      <td>返回具有不同非NULL expr值的行数的计数。 如果没有匹配的行，则COUNT（DISTINCT）返回0。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CRC32()</td>
      <td>CRC32(expr)</td>
      <td>计算循环冗余校验值并返回32位无符号值。如果参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "CRC32" not found</td>
   </tr>
   <tr>
      <td>CREATE_ASYMMETRIC_PRIV_KEY()</td>
      <td>CREATE_ASYMMETRIC_PRIV_KEY(algorithm, {key_len|dh_secret})</td>
      <td>使用给定的算法和密钥长度或DH密钥创建私钥，并将密钥作为PEM格式的二进制字符串返回。如果密钥生成失败，结果为NULL。</td>
      <td>否</td>
      <td>Function "CREATE_ASYMMETRIC_PRIV_KEY" not found</td>
   </tr>
   <tr>
      <td>CREATE_ASYMMETRIC_PUB_KEY()</td>
      <td>CREATE_ASYMMETRIC_PUB_KEY(algorithm, priv_key_str)</td>
      <td>使用给定的算法从给定的私钥中导出公钥，并将该密钥作为PEM格式的二进制字符串返回。如果密钥导出失败，则结果为NULL。</td>
      <td>否</td>
      <td> Function "CREATE_ASYMMETRIC_PUB_KEY" not found</td>
   </tr>
   <tr>
      <td>CREATE_DH_PARAMETERS()</td>
      <td>CREATE_DH_PARAMETERS(key_len)</td>
      <td>创建用于生成DH私钥/公钥对的共享密钥，并返回可传递给CREATE_ASYMMETRIC_PRIV_KEY（）的二进制字符串。如果秘密生成失败，则结果为空。</td>
      <td>否</td>
      <td>Function "CREATE_DH_PARAMETERS" not found</td>
   </tr>
   <tr>
      <td>CREATE_DIGEST()</td>
      <td>CREATE_DIGEST(digest_type, str)</td>
      <td>使用给定的摘要类型从给定的字符串创建摘要，并将摘要作为二进制字符串返回。如果摘要生成失败，结果为NULL。</td>
      <td>否</td>
      <td> Function "CREATE_DIGEST" not found</td>
   </tr>
   <tr>
      <td>Crosses() (deprecated 5.7.6)</td>
      <td>Crosses(g1, g2)</td>
      <td>ST_Crosses（）和Crosses（）是同义词</td>
      <td>否</td>
      <td>Function "CROSSES" not found</td>
   </tr>
   <tr>
      <td>CURDATE()</td>
      <td>CURDATE()</td>
      <td>返回当前日期</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CURRENT_DATE(), CURRENT_DATE</td>
      <td>CURRENT_DATE, CURRENT_DATE()</td>
      <td>同CURDATE()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CURRENT_TIME(), CURRENT_TIME</td>
      <td>CURRENT_TIME, CURRENT_TIME([fsp])</td>
      <td>同CURTIME()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP</td>
      <td>CURRENT_TIMESTAMP, CURRENT_TIMESTAMP([fsp])</td>
      <td>同NOW()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>CURRENT_USER(), CURRENT_USER</td>
      <td>CURRENT_USER, CURRENT_USER()</td>
      <td>返回服务器用于验证当前客户端的MySQL帐户的用户名和主机名组合。此帐户确定您的访问权限。返回值是utf8字符集中的字符串。</td>
      <td>是</td>
      <td>vds只返回此会话的当前用户的名称</td>
   </tr>
   <tr>
      <td>CURTIME()</td>
      <td>CURTIME([fsp])</td>
      <td>返回当前时间</td>
      <td>是</td>
      <td>vds不支持当成数字使用，例如SELECT CURTIME()+0;这条语句vds不支持。</td>
   </tr>
   <tr>
      <td>DATABASE()</td>
      <td>DATABASE()</td>
      <td>以utf8字符集中的字符串形式返回默认（当前）数据库名称。如果没有默认数据库，DATABASE（）返回NULL。在存储的例程中，默认数据库是例程与之关联的数据库，它不一定与调用上下文中默认的数据库相同。</td>
      <td>是</td>
      <td>vds返回的是实际的物理库</td>
   </tr>
   <tr>
      <td>DATE()</td>
      <td>DATE(expr)</td>
      <td>提取日期或日期时间表达式的日期部分</td>
      <td>否</td>
      <td>Function "DATE" not found</td>
   </tr>
   <tr>
      <td>DATE_ADD()</td>
      <td>DATE_ADD(date,INTERVAL expr unit)</td>
      <td>date参数指定开始日期或datetime值。 expr是一个表达式，指定从开始日期添加或减去的间隔值。 expr是一个字符串;它可以以 '-' 间隔开始。 unit是一个关键字，表示应该解释表达式的单位。</td>
      <td>否</td>
      <td>Function "DATE_ADD" not found</td>
   </tr>
   <tr>
      <td>DATE_FORMAT()</td>
      <td>DATE_FORMAT(date,format)</td>
      <td>根据格式字符串格式化日期值。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>DATE_SUB()</td>
      <td>DATE_SUB(date,INTERVAL expr unit)</td>
      <td>日期减去时间值（间隔）</td>
      <td>否</td>
      <td>Function "DATE_SUB" not found</td>
   </tr>
   <tr>
      <td>DATEDIFF()</td>
      <td>DATEDIFF(expr1,expr2)</td>
      <td>返回expr1 - expr2表示为从一个日期到另一个日期的值</td>
      <td>是</td>
      <td>vds的语法为{ DATEDIFF | TIMESTAMPDIFF } (unitString, aTimestamp, bTimestamp)，返回两个时间戳之间的交叉单位边界数。返回类型为long。字符串表示单位。支持与EXTRACT功能相同的单元。</td>
   </tr>
   <tr>
      <td>DAY()</td>
      <td>DAY(date)</td>
      <td>同 DAYOFMONTH()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>DAYNAME()</td>
      <td>DAYNAME(date)</td>
      <td>返回日期的工作日名称</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>DAYOFMONTH()</td>
      <td>DAYOFMONTH(date)</td>
      <td>返回值为一个月的那一日，范围为1到31</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>DAYOFWEEK()</td>
      <td>DAYOFWEEK(date)</td>
      <td>返回参数的工作日索引，（1 =星期日，2 =星期一，...，7 =星期六）。这些索引值对应于ODBC标准。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>DAYOFYEAR()</td>
      <td>DAYOFYEAR(date)</td>
      <td>返回值为一年的哪一日，范围为1到366</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>DECODE() (deprecated 5.7.2)</td>
      <td>DECODE(crypt_str,pass_str)</td>
      <td>DECODE（）使用pass_str作为密码解密加密的字符串crypt_str。 crypt_str应该是从ENCODE（）返回的字符串。</td>
      <td>是</td>
      <td>"vds中语法为DECODE(value,whenValue,thenValue)，返回第一个匹配值。 NULL被认为与NULL匹配。如果没有找到匹配，则返回NULL或最后一个参数（如果参数为偶数）。例如：CALL DECODE(RAND()>0.5, 0, 'Red', 1, 'Black');</td>
   </tr>
   <tr>
      <td></td>
   </tr>
   <tr>
      <td>"</td>
   </tr>
   <tr>
      <td>DEFAULT()</td>
      <td>DEFAULT(col_name)</td>
      <td>返回表列的默认值。如果列没有默认值，则会出现错误</td>
      <td>否</td>
      <td>Function "DEFAULT" not found</td>
   </tr>
   <tr>
      <td>DEGREES()</td>
      <td>DEGREES(X)</td>
      <td>返回参数X的角度，X为弧度</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>DES_DECRYPT() (deprecated 5.7.6)</td>
      <td>DES_DECRYPT(crypt_str[,key_str])</td>
      <td>解密使用DES_ENCRYPT（）加密的字符串。如果发生错误，此函数返回NULL</td>
      <td>否</td>
      <td>Function "DES_DECRYPT" not found</td>
   </tr>
   <tr>
      <td>DES_ENCRYPT() (deprecated 5.7.6)</td>
      <td>DES_ENCRYPT(str[,{key_num|key_str}])</td>
      <td>使用三重DES算法使用给定的密钥加密字符串。</td>
      <td>否</td>
      <td>Function "DES_ENCRYPT" not found</td>
   </tr>
   <tr>
      <td>Dimension() (deprecated 5.7.6)</td>
      <td>Dimension(g)</td>
      <td>ST_Dimension（）和Dimension（）是同义词。</td>
      <td>否</td>
      <td>Function "DIMENSION" not found</td>
   </tr>
   <tr>
      <td>Disjoint() (deprecated 5.7.6)</td>
      <td>Disjoint(g1, g2)</td>
      <td>MBRDisjoint（）和Disjoint（）是同义词</td>
      <td>否</td>
      <td>Function "DISJOINT" not found</td>
   </tr>
   <tr>
      <td>Distance() (deprecated 5.7.6)</td>
      <td>Distance(g1, g2)</td>
      <td>ST_Distance（）和Distance（）是同义词</td>
      <td>否</td>
      <td>Function "DISTANCE" not found</td>
   </tr>
   <tr>
      <td>DIV</td>
      <td>DIV</td>
      <td>整数除法，从分区中丢弃会产生小数点右侧的小数部分</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>/</td>
      <td>/</td>
      <td>除法运算符</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>ELT()</td>
      <td>ELT(N,str1,str2,str3,...)</td>
      <td>ELT（）返回字符串列表的第N个元素：如果N = 1，则为str1，如果N = 2则为str2，依此类推。如果N小于1或大于参数数量，则返回NULL。 ELT（）是FIELD（）的补码。</td>
      <td>否</td>
      <td>Function "ELT" not found</td>
   </tr>
   <tr>
      <td>ENCODE() (deprecated 5.7.2)</td>
      <td>ENCODE(str,pass_str)</td>
      <td>ENCODE（）使用pass_str作为密码加密str。结果是与str相同长度的二进制字符串。要解密结果，请使用DECODE（）。</td>
      <td>否</td>
      <td>Function "ENCODE" not found</td>
   </tr>
   <tr>
      <td>ENCRYPT() (deprecated 5.7.6)</td>
      <td>ENCRYPT(str[,salt])</td>
      <td>使用Unix crypt（）系统调用加密str并返回一个二进制字符串。 salt参数必须是至少包含两个字符的字符串，否则结果将为NULL。如果没有给出盐参数，则使用随机值。</td>
      <td>是</td>
      <td>"vds中的语法为ENCRYPT(algorithmString , keyBytes , dataBytes)，</td>
   </tr>
   <tr>
      <td>使用密钥加密数据。支持的算法是AES。块大小为16字节。此方法返回字节。</td>
   </tr>
   <tr>
      <td>例如：CALL ENCRYPT('AES', '00', STRINGTOUTF8('Test'))</td>
   </tr>
   <tr>
      <td></td>
   </tr>
   <tr>
      <td></td>
   </tr>
   <tr>
      <td>"</td>
   </tr>
   <tr>
      <td>EndPoint() (deprecated 5.7.6)</td>
      <td>EndPoint(ls)</td>
      <td>ST_EndPoint（）和EndPoint（）是同义词</td>
      <td>否</td>
      <td>Function "ENDPOINT" not found</td>
   </tr>
   <tr>
      <td>Envelope() (deprecated 5.7.6)</td>
      <td>Envelope(g)</td>
      <td>ST_Envelope（）和Envelope（）是同义词</td>
      <td>否</td>
      <td>Function "ENVELOPE" not found</td>
   </tr>
   <tr>
      <td>=</td>
      <td>=</td>
      <td>等于运算符</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td><=></td>
      <td><=></td>
      <td>此运算符执行等式比较，如=运算符，但如果两个操作数都为NULL，则返回1而不是NULL，如果一个操作数为NULL，则返回0，而不是NULL。 <=>运算符等同于标准SQL IS NOT DISTINCT FROM运算符。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>Equals() (deprecated 5.7.6)</td>
      <td>Equals(g1, g2)</td>
      <td>MBREquals（）和Equals（）是同义词</td>
      <td>否</td>
      <td>Function "EQUALS" not found</td>
   </tr>
   <tr>
      <td>EXP()</td>
      <td>EXP(X)</td>
      <td>返回提升为X的幂的e（自然对数的基数）的值。该函数的反向是LOG（）（仅使用单个参数）或LN（）。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>EXPORT_SET()</td>
      <td>EXPORT_SET(bits,on,off[,separator[,number_of_bits]])</td>
      <td>返回一个字符串，使得对于值位中设置的每个位，您将获得一个字符串，并且对于值中没有设置的每个位，都会得到一个关闭字符串。从右到左（从低位到高位）检查位中的位。字符串从左到右添加到结果中，由分隔符字符串分隔（默认为逗号字符）。所检查的位数由number_of_bits给出，如果未指定，它的默认值为64。如果大于64，则number_of_bits将被静默地剪切为64。它被视为无符号整数，因此-1的值与64有效地相同。</td>
      <td>否</td>
      <td>Function "EXPORT_SET" not found</td>
   </tr>
   <tr>
      <td>ExteriorRing() (deprecated 5.7.6)</td>
      <td>ExteriorRing(poly)</td>
      <td>ST_ExteriorRing（）和OutsideRing（）是同义词。</td>
      <td>否</td>
      <td>Function "EXTERIORRING" not found</td>
   </tr>
   <tr>
      <td>EXTRACT()</td>
      <td>EXTRACT(unit FROM date)</td>
      <td>EXTRACT（）函数使用与DATE_ADD（）或DATE_SUB（）相同类型的单位说明符，但从日期中提取部分，而不是执行日期算术。</td>
      <td>是</td>
      <td>vds某些unit参数不支持，vds的语法为EXTRACT ( { YEAR | YY | MONTH | MM | WEEK | DAY | DD | DAY_OF_YEAR| DOY | HOUR | HH | MINUTE | MI | SECOND | SS | MILLISECOND | MS }FROM timestamp )，例如DAY_MINUT就不支持。</td>
   </tr>
   <tr>
      <td>ExtractValue()</td>
      <td>ExtractValue(xml_frag, xpath_expr)</td>
      <td>ExtractValue（）接收两个字符串参数，XML标记xml_frag的片段和XPath表达式xpath_expr（也称为定位器）;它返回作为由XPath表达式匹配的元素的子元素的第一个文本节点的文本（CDATA）。</td>
      <td>否</td>
      <td>Function "EXTRACTVALUE" not found</td>
   </tr>
   <tr>
      <td>FIELD()</td>
      <td>FIELD(str,str1,str2,str3,...)</td>
      <td>返回str1，str2，str3，...列表中的str的索引（position）。如果没有找到str，则返回0。</td>
      <td>否</td>
      <td>Function "FIELD" not found</td>
   </tr>
   <tr>
      <td>FIND_IN_SET()</td>
      <td>FIND_IN_SET(str,strlist)</td>
      <td>如果字符串str在由N个子字符串组成的字符串列表strlist中，则返回1到N范围内的值。字符串列表是由字符串分隔的子字符串组成的字符串。如果第一个参数是常量字符串，第二个参数是SET类型的列，则FIND_IN_SET（）函数被优化以使用位运算。如果str不在strlist中，或者如果strlist是空字符串，则返回0。如果任一参数为NULL，则返回NULL。如果第一个参数包含逗号（，）字符，则此函数无法正常工作。</td>
      <td>否</td>
      <td>Function "FIND_IN_SET" not found</td>
   </tr>
   <tr>
      <td>FLOOR()</td>
      <td>FLOOR(X)</td>
      <td>返回不大于X的最大整数值。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>FORMAT()</td>
      <td>FORMAT(X,D)</td>
      <td>将数字X格式化，如“＃，###，###。##”，舍入到D小数位，并将结果作为字符串返回。</td>
      <td>否</td>
      <td> Function "FORMAT" not found</td>
   </tr>
   <tr>
      <td>FOUND_ROWS()</td>
      <td>FOUND_ROWS()</td>
      <td>ELECT语句可能包含LIMIT子句来限制服务器返回给客户端的行数。在某些情况下，最好知道语句返回的行数不得超过LIMIT，但不会再次运行该语句。要获取此行计数，请在SELECT语句中包含一个SQL_CALC_FOUND_ROWS选项，然后再调用FOUND_ROWS（）</td>
      <td>否</td>
      <td> Function "FOUND_ROWS" not found</td>
   </tr>
   <tr>
      <td>FROM_BASE64()</td>
      <td>FROM_BASE64(str)</td>
      <td>使用TO_BASE64（）使用的base-64编码规则编码的字符串，并将解码的结果作为二进制字符串返回。如果参数为NULL或不是有效的base-64字符串，则结果为NULL。有关编码和解码规则的详细信息，请参阅TO_BASE64（）的说明。</td>
      <td>否</td>
      <td>Function "TO_BASE64" not found</td>
   </tr>
   <tr>
      <td>FROM_DAYS()</td>
      <td>FROM_DAYS(N)</td>
      <td>将天数转换成日期</td>
      <td>否</td>
      <td>Function "FROM_DAYS" not found</td>
   </tr>
   <tr>
      <td>FROM_UNIXTIME()</td>
      <td>FROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)</td>
      <td>根据函数是否在字符串或数字上下文中使用，将unix_timestamp参数的表示形式返回为“YYYY-MM-DD HH：MM：SS”或YYYYMMDDHHMMSS格式的值。该值以当前时区表示。</td>
      <td>否</td>
      <td>FROM_UNIXTIME" not found</td>
   </tr>
   <tr>
      <td>GeomCollFromText(),GeometryCollectionFromText() (deprecated 5.7.6)</td>
      <td>GeomCollFromText(wkt[, srid]), GeometryCollectionFromText(wkt[, srid])</td>
      <td>ST_GeomCollFromText（），ST_GeometryCollectionFromText（），ST_GeomCollFromTxt（），GeomCollFromText（）和GeometryCollectionFromText（）是同义词</td>
      <td>否</td>
      <td>Function "GEOMCOLLFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>GeomCollFromWKB(), GeometryCollectionFromWKB()(deprecated 5.7.6)</td>
      <td>GeomCollFromWKB(wkb[, srid]), GeometryCollectionFromWKB(wkb[, srid])</td>
      <td>ST_GeomCollFromWKB（），ST_GeometryCollectionFromWKB（），GeomCollFromWKB（）和GeometryCollectionFromWKB（）是同义词</td>
      <td>否</td>
      <td>Function "GEOMCOLLFROMWKB" not found</td>
   </tr>
   <tr>
      <td>GeometryCollection()</td>
      <td>GeometryCollection(g1, g2, ...)</td>
      <td>构造一个几何集合</td>
      <td>否</td>
      <td>Function "GEOMETRYCOLLECTION" not found</td>
   </tr>
   <tr>
      <td>GeometryN() (deprecated 5.7.6)</td>
      <td>GeometryN(gc, N)</td>
      <td>ST_GeometryN（）和GeometryN（）是同义词。有</td>
      <td>否</td>
      <td>Function "GEOMETRYN" not found</td>
   </tr>
   <tr>
      <td>GeometryType() (deprecated 5.7.6)</td>
      <td>GeometryType(g)</td>
      <td>ST_GeometryType（）和GeometryType（）是同义词。</td>
      <td>否</td>
      <td>Function "GEOMETRYTYPE" not found</td>
   </tr>
   <tr>
      <td>GeomFromText(), GeometryFromText() (deprecated 5.7.6)</td>
      <td>GeomFromText(wkt[, srid]), GeometryFromText(wkt[, srid])</td>
      <td>ST_GeometryFromText（），GeomFromText（）和GeometryFromText（）是同义词。</td>
      <td>否</td>
      <td>Function "GEOMFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>GeomFromWKB(), GeometryFromWKB() (deprecated 5.7.6)</td>
      <td>GeomFromWKB(wkb[, srid]), GeometryFromWKB(wkb[, srid])</td>
      <td>ST_GeomFromWKB（），ST_GeometryFromWKB（），GeomFromWKB（）和GeometryFromWKB（）是同义词</td>
      <td>否</td>
      <td>Function "GEOMFROMWKB" not found;</td>
   </tr>
   <tr>
      <td>GET_FORMAT()</td>
      <td>GET_FORMAT({DATE|TIME|DATETIME}, {'EUR'|'USA'|'JIS'|'ISO'|'INTERNAL'})</td>
      <td>返回格式字符串。</td>
      <td>否</td>
      <td>Function "GET_FORMAT" not found</td>
   </tr>
   <tr>
      <td>GET_LOCK()</td>
      <td>GET_LOCK(str,timeout)</td>
      <td>尝试使用字符串str给出的名称获取锁，使用超时秒的超时。负超时值意味着无限超时。锁是独家的。在一个会议期间，其他会话不能获得同一个名字的锁。</td>
      <td>否</td>
      <td> "GET_LOCK" not found;</td>
   </tr>
   <tr>
      <td>GLength() (deprecated 5.7.6)</td>
      <td>GLength(ls)</td>
      <td>GLength（）是非标准名称。它对应于OpenGIS ST_Length（）函数。 （有一个现有的SQL函数Length（）来计算字符串值的长度。）</td>
      <td>否</td>
      <td>Function "GLENGTH" not found</td>
   </tr>
   <tr>
      <td>></td>
      <td>></td>
      <td>大于</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>>=</td>
      <td>>=</td>
      <td>大于等于</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>GREATEST()</td>
      <td>GREATEST(value1,value2,...)</td>
      <td>使用两个或多个参数返回最大值（最大值）参数。使用与LEAST（）相同的规则比较参数。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>GROUP_CONCAT()</td>
      <td>"GROUP_CONCAT(expr)</td>
   </tr>
   <tr>
      <td>GROUP_CONCAT([DISTINCT] expr [,expr ...]</td>
   </tr>
   <tr>
      <td>             [ORDER BY {unsigned_integer | col_name | expr}</td>
   </tr>
   <tr>
      <td>                 [ASC | DESC] [,col_name ...]]</td>
   </tr>
   <tr>
      <td>             [SEPARATOR str_val])"</td>
      <td>此函数返回一个字符串结果，并从组中连接非空值。如果没有非NULL值，则返回NULL。</td>
      <td>是</td>
      <td>"VDS的语法为GROUP_CONCAT ( [ DISTINCT ] string[ ORDER BY { expression [ ASC | DESC ] } [,...] ][ SEPARATOR expression ] )</td>
   </tr>
   <tr>
      <td>vds不支持这样的查询：SELECT name,GROUP_CONCAT(name) FROM T2 GROUP BY name;</td>
   </tr>
   <tr>
      <td>"</td>
   </tr>
   <tr>
      <td>GTID_SUBSET()</td>
      <td>GTID_SUBSET(subset,set)</td>
      <td>给定两组全局事务ID子集和集合，如果子集中的所有GTID也都在集合中，则返回true。否则返回false。</td>
      <td>否</td>
      <td> Function "GTID_SUBSET" not found</td>
   </tr>
   <tr>
      <td>GTID_SUBTRACT()</td>
      <td>GTID_SUBTRACT(set,subset)</td>
      <td>给定两组全局事务ID子集和集合，仅返回集合中不在子集中的那些GTID。</td>
      <td>否</td>
      <td>Function "GTID_SUBTRACT" not found</td>
   </tr>
   <tr>
      <td>HEX()</td>
      <td>HEX(str), HEX(N)</td>
      <td>对于字符串参数str，HEX（）返回str的十六进制字符串表示形式，str中的每个字符的每个字节都将转换为两个十六进制数字。 （多字节字符因此变为两位数以上）。该操作的反向由UNHEX（）函数执行。</td>
      <td>否</td>
      <td>Function "HEX" not found</td>
   </tr>
   <tr>
      <td>HOUR()</td>
      <td>HOUR(time)</td>
      <td>返回时间。时间值返回值的范围是0到23。但是，TIME值的范围实际上要大得多，所以HOUR可以返回大于23的值。</td>
      <td>是</td>
      <td>vds只支持日期格式，例如'2017-07-21 10:05:03'，不支持'10:05:03'</td>
   </tr>
   <tr>
      <td>IF()</td>
      <td>IF(expr1,expr2,expr3)</td>
      <td>如果expr1为TRUE（expr1 <> 0，expr1 <> NULL），IF（）返回expr2。否则返回expr3。</td>
      <td>否</td>
      <td> Function "IF" not found</td>
   </tr>
   <tr>
      <td>IFNULL()</td>
      <td>IFNULL(expr1,expr2)</td>
      <td>如果expr1不为NULL，则IFNULL（）返回expr1;否则返回expr2。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>IN()</td>
      <td>expr IN (value,...)</td>
      <td>如果expr等于IN列表中的任何值，则返回1，否则返回0.如果所有值都是常量，则根据expr的类型和排序进行评估。然后使用二进制搜索完成对该项目的搜索。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>INET_ATON()</td>
      <td>INET_ATON(expr)</td>
      <td>给定一个IPv4网络地址作为字符串的四边形表示形式，返回一个以网络字节顺序（big endian）表示地址数值的整数。如果INET_ATON（）不理解其参数，则返回NULL。</td>
      <td>否</td>
      <td>Function "INET_ATON" not found</td>
   </tr>
   <tr>
      <td>INET_NTOA()</td>
      <td>INET_NTOA(expr)</td>
      <td>给定网络字节顺序的数字IPv4网络地址，将连接字符集中的地址的虚拟四字符串表示形式返回为非二进制字符串。如果INET_NTOA（）不理解其参数，则返回NULL。</td>
      <td>否</td>
      <td>Function "INET_NTOA" not found</td>
   </tr>
   <tr>
      <td>INET6_ATON()</td>
      <td>INET6_ATON(expr)</td>
      <td>给定一个IPv6或IPv4网络地址作为字符串，返回一个二进制字符串，以网络字节顺序（大端）表示地址的数值。因为数字格式的IPv6地址需要比最大整数类型更多的字节，所以该函数返回的表示形式具有VARBINARY数据类型：用于IPv6地址的VARBINARY（16）和IPv4地址的VARBINARY（4）。如果参数不是有效的地址，INET6_ATON（）返回NULL。</td>
      <td>否</td>
      <td>Function "INET6_ATON" not found</td>
   </tr>
   <tr>
      <td>INET6_NTOA()</td>
      <td>INET6_NTOA(expr)</td>
      <td>给定以数字形式表示的IPv6或IPv4网络地址作为二进制字符串，将连接字符集中的地址的字符串表示形式作为非二进制字符串返回。如果参数不是有效的地址，INET6_NTOA（）返回NULL。</td>
      <td>否</td>
      <td>Function "INET6_NTOA" not found</td>
   </tr>
   <tr>
      <td>INSERT()</td>
      <td>INSERT(str,pos,len,newstr)</td>
      <td>返回字符串str，子字符串从位置pos开始，len字符长由字符串newstr替换。如果pos不在字符串长度内，则返回原始字符串。如果len不在字符串的其余部分的长度内，则替换位置pos中的其余字符串。如果任何参数为NULL，则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>INSTR()</td>
      <td>INSTR(str,substr)</td>
      <td>返回string str中第一个substring substr的位置。这与LOCATE（）的双参数形式相同，只是参数的顺序相反。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>InteriorRingN() (deprecated 5.7.6)</td>
      <td>InteriorRingN(poly, N)</td>
      <td>ST_InteriorRingN（）和InteriorRingN（）是同义词。</td>
      <td>否</td>
      <td>Function "INTERIORRINGN" not found</td>
   </tr>
   <tr>
      <td>Intersects() (deprecated 5.7.6)</td>
      <td>Intersects(g1, g2)</td>
      <td>MBRIntersects（）和Intersects（）是同义词。</td>
      <td>否</td>
      <td>Function "MBRINTERSECTS" not found</td>
   </tr>
   <tr>
      <td>INTERVAL()</td>
      <td>INTERVAL(N,N1,N2,N3,...)</td>
      <td>如果N <N1，则返回0，如果N <N2等则返回1，如果N为NULL则返回-1。所有参数被视为整数。要求该功能的N1 <N2 <N3 <... <Nn正常工作。这是因为使用二进制搜索（非常快）。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>IS</td>
      <td>IS boolean_value</td>
      <td>根据布尔值测试值，其中boolean_value可以为TRUE，FALSE或UNKNOWN。</td>
      <td>是</td>
      <td>vds没有UNKNOWN</td>
   </tr>
   <tr>
      <td>IS_FREE_LOCK()</td>
      <td>IS_FREE_LOCK(str)</td>
      <td>检查名为str的锁是否可以自由使用（即未锁定）。如果锁是空的（没有人使用锁），则返回1，如果使用锁定则返回0，如果发生错误则返回NULL（如不正确的参数）。</td>
      <td>否</td>
      <td> Function "IS_FREE_LOCK" not found</td>
   </tr>
   <tr>
      <td>IS_IPV4()</td>
      <td>IS_IPV4(expr)</td>
      <td>如果参数是指定为字符串的有效IPv4地址，则返回1，否则返回0。</td>
      <td>否</td>
      <td> Function "IS_IPV4" not found</td>
   </tr>
   <tr>
      <td>IS_IPV4_COMPAT()</td>
      <td>IS_IPV4_COMPAT(expr)</td>
      <td>此函数将以数字形式表示的IPv6地址作为INET6_ATON（）返回的二进制字符串。如果参数是有效的IPv4兼容IPv6地址，则返回1，否则返回0。 IPv4兼容地址的格式为:: </td>
      <td>否</td>
      <td>Function "IS_IPV4_COMPAT" not found</td>
   </tr>
   <tr>
      <td>IS_IPV4_MAPPED()</td>
      <td>IS_IPV4_MAPPED(expr)</td>
      <td>此函数将以数字形式表示的IPv6地址作为INET6_ATON（）返回的二进制字符串。如果参数是有效的IPv4映射IPv6地址，则返回1，否则返回0。 IPv4映射地址的格式为:: ffff：ipv4_address</td>
      <td>否</td>
      <td>Function "IS_IPV4_COMPAT" not found</td>
   </tr>
   <tr>
      <td>IS_IPV6()</td>
      <td>IS_IPV6(expr)</td>
      <td>如果参数是指定为字符串的有效IPv6地址，则返回1，否则返回0。此功能不会将IPv4地址视为有效的IPv6地址。</td>
      <td>否</td>
      <td>Function "IS_IPV6" not found</td>
   </tr>
   <tr>
      <td>IS NOT</td>
      <td>IS NOT boolean_value</td>
      <td>根据布尔值测试值，其中boolean_value可以为TRUE，FALSE或UNKNOWN。</td>
      <td>是</td>
      <td>vds没有UNKNOWN</td>
   </tr>
   <tr>
      <td>IS NOT NULL</td>
      <td>IS NOT NULL</td>
      <td>测试值是否不为NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>IS NULL</td>
      <td>ISNULL(expr)</td>
      <td>如果expr为NULL，则ISNULL（）返回1，否则返回0。</td>
      <td>是</td>
      <td>vds是两个参数,mysql是一个参数，例如mysql中为SELECT ISNULL(null);vds中为SELECT ISNULL(1，null);</td>
   </tr>
   <tr>
      <td>IS_USED_LOCK()</td>
      <td>IS_USED_LOCK(str)</td>
      <td>检查名为str的锁是否正在使用（即锁定）。如果是这样，它返回持有该锁的客户端会话的连接标识符。否则返回NULL。</td>
      <td>否</td>
      <td> Function "IS_USED_LOCK" not found</td>
   </tr>
   <tr>
      <td>IsClosed() (deprecated 5.7.6)</td>
      <td>IsClosed(ls)</td>
      <td>ST_IsClosed（）和IsClosed（）是同义词</td>
      <td>否</td>
      <td>Function "ISCLOSED" not found</td>
   </tr>
   <tr>
      <td>IsEmpty() (deprecated 5.7.6)</td>
      <td>IsEmpty(g)</td>
      <td>ST_IsEmpty（）和IsEmpty（）是同义词</td>
      <td>否</td>
      <td>Function "ISEMPTY" not found</td>
   </tr>
   <tr>
      <td>ISNULL()</td>
      <td>IS NULL</td>
      <td>测试值是否为NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>IsSimple() (deprecated 5.7.6)</td>
      <td>IsSimple(g)</td>
      <td>ST_IsSimple（）和IsSimple（）是同义词</td>
      <td>否</td>
      <td>Function "ISSIMPLE" not found</td>
   </tr>
   <tr>
      <td>JSON_APPEND()</td>
      <td>JSON_APPEND(json_doc, path, val[, path, val] ...)</td>
      <td>将值附加到JSON文档中指定数组的末尾，并返回结果。此函数已重命名为MySQL 5.7.9中的JSON_ARRAY_APPEND（）。</td>
      <td>否</td>
      <td> Function "JSON_APPEND" not found</td>
   </tr>
   <tr>
      <td>JSON_ARRAY()</td>
      <td>JSON_ARRAY([val[, val] ...])</td>
      <td>评估（可能为空的）值列表，并返回包含这些值的JSON数组。</td>
      <td>否</td>
      <td>Function "JSON_ARRAY" not found</td>
   </tr>
   <tr>
      <td>JSON_ARRAY_APPEND()</td>
      <td>JSON_ARRAY_APPEND(json_doc, path, val[, path, val] ...)</td>
      <td>将值附加到JSON文档中指定数组的末尾，并返回结果。如果任何参数为NULL，则返回NULL。如果json_doc参数不是有效的JSON文档或任何路径参数不是有效的路径表达式或包含*或**通配符，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_ARRAY_APPEND" not found</td>
   </tr>
   <tr>
      <td>JSON_ARRAY_INSERT()</td>
      <td>JSON_ARRAY_INSERT(json_doc, path, val[, path, val] ...)</td>
      <td>更新JSON文档，插入文档中的数组并返回修改后的文档。如果任何参数为NULL，则返回NULL。如果json_doc参数不是有效的JSON文档或任何路径参数不是有效的路径表达式或包含*或**通配符或不以数组元素标识符结尾，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_ARRAY_INSERT" not found</td>
   </tr>
   <tr>
      <td>-></td>
      <td>column->path</td>
      <td>在MySQL 5.7.9及更高版本中， - >运算符用作JSON_EXTRACT（）函数的别名，当与两个参数一起使用时，左侧的列标识符和右侧的JSON路径（针对JSON文档进行评估）列值）。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>JSON_CONTAINS()</td>
      <td>JSON_CONTAINS(target, candidate[, path])</td>
      <td>通过返回1或0表示给定的候选JSON文档是否包含在目标JSON文档中，或者 - 如果提供了路径参数，则是否在目标中的特定路径上找到候选。如果任何参数为NULL，则返回NULL，否则路径参数不标识目标文档的一部分。如果目标或候选者不是有效的JSON文档，或路径参数不是有效的路径表达式或包含*或**通配符，则会发生错误</td>
      <td>否</td>
      <td> Function "JSON_CONTAINS" not found</td>
   </tr>
   <tr>
      <td>JSON_CONTAINS_PATH()</td>
      <td>JSON_CONTAINS_PATH(json_doc, one_or_all, path[, path] ...)</td>
      <td>返回0或1，以指示JSON文档是否包含给定路径或路径上的数据。如果任何参数为NULL，则返回NULL。如果json_doc参数不是有效的JSON文档，任何路径参数不是有效的路径表达式，或者one_or_all不是“一个”或“全部”，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_CONTAINS_PATH" not found</td>
   </tr>
   <tr>
      <td>JSON_DEPTH()</td>
      <td>JSON_DEPTH(json_doc)</td>
      <td>JSON文档的最大深度。空数组，空对象或标量值具有深度1.仅包含深度1的元素的非空数组或仅包含深度1的成员值的非空对象具有深度2.否则，JSON文档的深度大于2。</td>
      <td>否</td>
      <td>Function "JSON_DEPTH" not found</td>
   </tr>
   <tr>
      <td>JSON_EXTRACT()</td>
      <td>JSON_EXTRACT(json_doc, path[, path] ...)</td>
      <td>从JSON文档返回数据，从文档的与路径参数匹配的部分中选择。如果任何参数为NULL或没有路径找到文档中的值，则返回NULL。如果json_doc参数不是有效的JSON文档或任何路径参数不是有效的路径表达式，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_EXTRACT" not found</td>
   </tr>
   <tr>
      <td>->></td>
      <td>column->>path</td>
      <td>评估路径并取消引用结果后，从JSON列返回值;相当于JSON_UNQUOTE（JSON_EXTRACT（））。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>JSON_INSERT()</td>
      <td>JSON_INSERT(json_doc, path, val[, path, val] ...)</td>
      <td>将数据插入JSON文档并返回结果。如果任何参数为NULL，则返回NULL。如果json_doc参数不是有效的JSON文档或任何路径参数不是有效的路径表达式或包含*或**通配符，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_INSERT" not found</td>
   </tr>
   <tr>
      <td>JSON_KEYS()</td>
      <td>JSON_KEYS(json_doc[, path])</td>
      <td>返回JSON文档的键值数组</td>
      <td>否</td>
      <td>Function "JSON_KEYS" not found</td>
   </tr>
   <tr>
      <td>JSON_LENGTH()</td>
      <td>JSON_LENGTH(json_doc[, path])</td>
      <td>JSON文档中的元素数量</td>
      <td>否</td>
      <td>Function "JSON_LENGTH" not found</td>
   </tr>
   <tr>
      <td>JSON_MERGE()</td>
      <td>JSON_MERGE(json_doc, json_doc[, json_doc] ...)</td>
      <td>合并两个或多个JSON文档并返回合并结果。如果任何参数为NULL，则返回NULL。如果任何参数不是有效的JSON文档，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_MERGE" not found</td>
   </tr>
   <tr>
      <td>JSON_MERGE_PRESERVE()</td>
      <td>已经弃用</td>
      <td>合并JSON文档，保留重复的键</td>
      <td>否</td>
      <td>Function "JSON_MERGE_PRESERVE" not found</td>
   </tr>
   <tr>
      <td>JSON_OBJECT()</td>
      <td>JSON_OBJECT([key, val[, key, val] ...])</td>
      <td>评估一个（可能是空的）键值对列表，并返回一个包含这些对的JSON对象。如果任何键名称为NULL或参数数量为奇数，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_OBJECT" not found</td>
   </tr>
   <tr>
      <td>JSON_QUOTE()</td>
      <td>JSON_QUOTE(string)</td>
      <td>引用一个字符串作为JSON值，通过用双引号字符包装，并转义内部引号和其他字符，然后将结果作为utf8mb4字符串返回。如果参数为NULL，则返回NULL。</td>
      <td>否</td>
      <td> Function "JSON_QUOTE" not found</td>
   </tr>
   <tr>
      <td>JSON_REMOVE()</td>
      <td>JSON_REMOVE(json_doc, path[, path] ...)</td>
      <td>从JSON文档中删除数据并返回结果。如果任何参数为NULL，则返回NULL。如果json_doc参数不是有效的JSON文档或任何路径参数不是有效的路径表达式，或$或包含*或**通配符，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_REMOVE" not found</td>
   </tr>
   <tr>
      <td>JSON_REPLACE()</td>
      <td>JSON_REPLACE(json_doc, path, val[, path, val] ...)</td>
      <td>替换JSON文档中的现有值并返回结果。如果任何参数为NULL，则返回NULL。如果json_doc参数不是有效的JSON文档或任何路径参数不是有效的路径表达式或包含*或**通配符，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_REPLACE" not found</td>
   </tr>
   <tr>
      <td>JSON_SEARCH()</td>
      <td>JSON_SEARCH(json_doc, one_or_all, search_str[, escape_char[, path] ...])</td>
      <td>返回JSON文档中给定字符串的路径。如果任何json_doc，search_str或path参数为NULL，则返回NULL;文档中不存在路径;或search_str找不到。如果json_doc参数不是有效的JSON文档，任何路径参数不是有效的路径表达式，one_or_all不是“one”或“all”，或escape_char不是常量表达式，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_SEARCH" not found</td>
   </tr>
   <tr>
      <td>JSON_SET()</td>
      <td>JSON_SET(json_doc, path, val[, path, val] ...)</td>
      <td>插入或更新JSON文档中的数据并返回结果。如果任何参数为NULL，则返回NULL，如果给定，则返回路径未找到对象。如果json_doc参数不是有效的JSON文档或任何路径参数不是有效的路径表达式或包含*或**通配符，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_SET" not found</td>
   </tr>
   <tr>
      <td>JSON_TYPE()</td>
      <td>JSON_TYPE(json_val)</td>
      <td>返回一个表示JSON值类型的utf8mb4字符串。这可以是对象，数组或标量类型</td>
      <td>否</td>
      <td> Function "JSON_TYPE" not found</td>
   </tr>
   <tr>
      <td>JSON_UNQUOTE()</td>
      <td>JSON_UNQUOTE(json_val)</td>
      <td>取消引用JSON值，并将结果作为utf8mb4字符串返回。如果参数为NULL，则返回NULL。如果值以双引号开头和结尾但不是有效的JSON字符串文字，则会发生错误。</td>
      <td>否</td>
      <td>Function "JSON_UNQUOTE" not found</td>
   </tr>
   <tr>
      <td>JSON_VALID()</td>
      <td>JSON_VALID(val)</td>
      <td>返回0或1以指示值是否为有效的JSON。如果参数为NULL，则返回NULL。</td>
      <td>否</td>
      <td>Function "JSON_VALID" not found</td>
   </tr>
   <tr>
      <td>LAST_DAY</td>
      <td>LAST_DAY(date)</td>
      <td>获取日期或日期时间值，并返回月份最后一天的相应值。如果参数无效，则返回NULL。</td>
      <td>否</td>
      <td>Function "LAST_DAY" not found</td>
   </tr>
   <tr>
      <td>LAST_INSERT_ID()</td>
      <td>LAST_INSERT_ID(), LAST_INSERT_ID(expr)</td>
      <td>没有参数，LAST_INSERT_ID（）返回一个BIGINT UNSIGNED（64位）值，表示作为最近执行的INSERT语句的结果，AUTO_INCREMENT列成功插入的第一个自动生成的值。如果没有成功插入行，LAST_INSERT_ID（）的值保持不变。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>LCASE()</td>
      <td>LCASE(str)</td>
      <td>同 LOWER()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>LEAST()</td>
      <td>LEAST(value1,value2,...)</td>
      <td>使用两个或多个参数返回最小（最小值）的参数</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>LEFT()</td>
      <td>LEFT(str,len)</td>
      <td>从字符串str返回最左边的len字符，如果任何参数为NULL，则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td><<</td>
      <td><<</td>
      <td>向左移动。 结果是一个无符号的64位整数。该值被截断为64位。特别地，如果移位计数大于或等于无符号64位数的宽度，则结果为零。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>LENGTH()</td>
      <td>LENGTH(str)</td>
      <td>返回字符串str的长度，以字节为单位。多字节字符计数为多个字节。这意味着对于包含五个2字节字符的字符串，LENGTH（）返回10，而CHAR_LENGTH（）返回5。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td><</td>
      <td><</td>
      <td>小于运算符</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td><=</td>
      <td><=</td>
      <td>小于等于运算符</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>LIKE</td>
      <td>expr LIKE pat [ESCAPE 'escape_char']</td>
      <td>使用SQL模式进行模式匹配。返回1（TRUE）或0（FALSE）。如果expr或pat为NULL，则结果为NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>LineFromText(), LineStringFromText() (deprecated 5.7.6)</td>
      <td>LineFromText(wkt[, srid]), LineStringFromText(wkt[, srid])</td>
      <td>ST_LineFromText（），ST_LineStringFromText（），LineFromText（）和LineStringFromText（）是同义词。</td>
      <td>否</td>
      <td>Function "LINEFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>LineFromWKB(), LineStringFromWKB() (deprecated 5.7.6)</td>
      <td>LineFromWKB(wkb[, srid]), LineStringFromWKB(wkb[, srid])</td>
      <td>ST_LineFromWKB（），ST_LineStringFromWKB（），LineFromWKB（）和LineStringFromWKB（）是同义词</td>
      <td>否</td>
      <td>Function "LINEFROMWKB" not found</td>
   </tr>
   <tr>
      <td>LineString()</td>
      <td>LineString(pt1, pt2, ...)</td>
      <td>从多个Point或WKB Point参数构造一个LineString值。如果参数数小于2，返回值为NULL。</td>
      <td>否</td>
      <td> Function "LINESTRING" not found</td>
   </tr>
   <tr>
      <td>LN()</td>
      <td>LN(X)</td>
      <td>返回X的自然对数;也就是X的基本对数。如果X小于或等于0.0E0，则该函数返回NULL，并且（从MySQL 5.7.4开始）会报告“Invalid argument for对数”。</td>
      <td>是</td>
      <td>vds不允许X为负数</td>
   </tr>
   <tr>
      <td>LOAD_FILE()</td>
      <td>LOAD_FILE(file_name)</td>
      <td>读取文件并以文本形式返回文件内容。要使用此功能，文件必须位于服务器主机上，则必须指定文件的完整路径名，并且必须具有FILE权限。该文件必须是可读的，其大小小于max_allowed_pa​​cket个字节。如果将secure_file_priv系统变量设置为非空目录名称，则要加载的文件必须位于该目录中。</td>
      <td>否</td>
      <td> Function "LOAD_FILE" not found</td>
   </tr>
   <tr>
      <td>LOCALTIME(), LOCALTIME</td>
      <td>LOCALTIME(), LOCALTIME</td>
      <td> 同NOW()</td>
      <td>否</td>
      <td> Function "LOCALTIME" not found</td>
   </tr>
   <tr>
      <td>LOCALTIMESTAMP, LOCALTIMESTAMP()</td>
      <td>LOCALTIMESTAMP, LOCALTIMESTAMP()</td>
      <td> 同NOW()</td>
      <td>否</td>
      <td> Function "LOCALTIMESTAMP" not found</td>
   </tr>
   <tr>
      <td>LOCATE()</td>
      <td>LOCATE(substr,str), LOCATE(substr,str,pos)</td>
      <td>第一个语法返回string str中第一个substring substr的位置。第二个语法返回字符串str中第一次出现substring substr的位置，从位置pos开始。如果substr不在str中，则返回0。如果substr或str为NULL，则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>LOG()</td>
      <td>LOG(X), LOG(B,X)</td>
      <td>如果使用一个参数调用，则该函数返回X的自然对数。如果X小于或等于0.0E0，则该函数返回NULL，并且（从MySQL 5.7.4开始）会报告“无效对数参数”。</td>
      <td>是</td>
      <td>vds不支持LOG(B,X)，且不允许X为负数</td>
   </tr>
   <tr>
      <td>LOG10()</td>
      <td>LOG10(X)</td>
      <td>返回X的基10对数。如果X小于或等于0.0E0，则该函数返回NULL，并且（从MySQL 5.7.4开始）会报告“无效对数参数”。</td>
      <td>是</td>
      <td>vds不允许X为负数</td>
   </tr>
   <tr>
      <td>LOG2()</td>
      <td>LOG2(X)</td>
      <td>返回X的基2对数。如果X小于或等于0.0E0，则该函数返回NULL，并且（从MySQL 5.7.4开始）会报告“无效对数参数”。</td>
      <td>否</td>
      <td>Function "LOG2" not found</td>
   </tr>
   <tr>
      <td>LOWER()</td>
      <td>LOWER(str)</td>
      <td>根据当前的字符集映射，返回字符串str，所有字符都改为小写。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>LPAD()</td>
      <td>LPAD(str,len,padstr)</td>
      <td>返回字符串str，用字符串padstr左键填充长度为len个字符。如果str长于len，则返回值将缩短为len个字符。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>LTRIM()</td>
      <td>LTRIM(str)</td>
      <td>返回字符串str，并删除前导空格。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>MAKE_SET()</td>
      <td>MAKE_SET(bits,str1,str2,...)</td>
      <td>返回设置值（包含由字符分隔的字符串的字符串），该字符串由具有位设置的相应位的字符串组成。 str1对应于位0，str2对应于位1，依此类推。 str1，str2，...中的NULL值不会附加到结果中。</td>
      <td>否</td>
      <td>Function "MAKE_SET" not found</td>
   </tr>
   <tr>
      <td>MAKEDATE()</td>
      <td>MAKEDATE(year,dayofyear)</td>
      <td>返回一个日期，给定年份和日期值。 dayofyear必须大于0否则结果为NULL。</td>
      <td>否</td>
      <td>Function "MAKEDATE" not found</td>
   </tr>
   <tr>
      <td>MAKETIME()</td>
      <td>MAKETIME(hour,minute,second)</td>
      <td>返回从小时，分钟和第二个参数计算的时间值。</td>
      <td>否</td>
      <td>Function "MAKETIME" not found</td>
   </tr>
   <tr>
      <td>MASTER_POS_WAIT()</td>
      <td>MASTER_POS_WAIT(log_name,log_pos[,timeout][,channel])</td>
      <td>此功能对于主/从同步的控制很有用。它将阻塞，直到从站读取并将所有更新应用到主日志中的指定位置。返回值是从站必须等待进入指定位置的日志事件数。如果从属SQL线程未启动，从机主信息未初始化，参数不正确或发生错误，则该函数返回NULL。如果超时超时，则返回-1。如果从机SQL线程在MASTER_POS_WAIT（）正在等待时停止，则该函数返回NULL。如果从站超过指定位置，则该函数立即返回。</td>
      <td>否</td>
      <td>Function "MASTER_POS_WAIT" not found</td>
   </tr>
   <tr>
      <td>MATCH</td>
      <td>MATCH (col1,col2,...) AGAINST (expr [search_modifier])</td>
      <td>执行全文搜索</td>
      <td>否</td>
      <td> Function "MATCH" not found </td>
   </tr>
   <tr>
      <td>MAX()</td>
      <td>MAX([DISTINCT] expr)</td>
      <td>返回expr的最大值。 MAX（）可以取一个字符串参数;在这种情况下，它返回最大字符串值。可以使用DISTINCT关键字来查找expr的不同值的最大值，但是这会产生与省略DISTINCT相同的结果。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>MBRContains()</td>
      <td>MBRContains(g1, g2)</td>
      <td>返回1或0，以指示g1的最小边界矩形是否包含g2的最小边界矩形。这测试与MBRWithin（）相反的关系。</td>
      <td>否</td>
      <td>Function "MBRCONTAINS" not found</td>
   </tr>
   <tr>
      <td>MBRCoveredBy()</td>
      <td>MBRCoveredBy(g1, g2)</td>
      <td>返回1或0，以指示g1的最小边界矩形是否被g2的最小边界矩形覆盖。这测试与MBRCovers（）相反的关系。</td>
      <td>否</td>
      <td> Function "MBRCOVEREDBY" not found</td>
   </tr>
   <tr>
      <td>MBRCovers()</td>
      <td>MBRCovers(g1, g2)</td>
      <td>返回1或0，以指示g1的最小边界矩形是否涵盖g2的最小边界矩形。这测试与MBRCoveredBy（）相反的关系。请参阅MBRCoveredBy（）的说明。</td>
      <td>否</td>
      <td>"Function ""MBRCONTAINS"" not found</td>
   </tr>
   <tr>
      <td>"</td>
   </tr>
   <tr>
      <td>MBRDisjoint()</td>
      <td>MBRDisjoint(g1, g2)</td>
      <td>返回1或0以指示两个几何g1和g2的最小边界矩形是否不相交（不相交）。与Disjoint（）同义</td>
      <td>否</td>
      <td>Function "MBRDISJOINT" not found</td>
   </tr>
   <tr>
      <td>MBREqual() (deprecated 5.7.6)</td>
      <td>MBREqual(g1, g2)</td>
      <td>返回1或0，以指示两个几何g1和g2的最小边界矩形是否相同。 从MySQL 5.7.6起，MBREqual（）已被弃用，将在未来的MySQL版本中被删除。请改用MBREquals（）。</td>
      <td>否</td>
      <td>Function "MBREQUAL" not found</td>
   </tr>
   <tr>
      <td>MBREquals()</td>
      <td>MBREquals(g1, g2)</td>
      <td>返回1或0，以指示两个几何g1和g2的最小边界矩形是否相同。 MBREquals（），MBREqual（）和Equals（）是同义词。</td>
      <td>否</td>
      <td>Function "MBREQUALS" not found</td>
   </tr>
   <tr>
      <td>MBRIntersects()</td>
      <td>MBRIntersects(g1, g2)</td>
      <td>返回1或0，以指示两个几何g1和g2的最小边界矩形是否相交。 MBRIntersects（）和Intersects（）是同义词。</td>
      <td>否</td>
      <td> Function "MBRINTERSECTS" not found</td>
   </tr>
   <tr>
      <td>MBROverlaps()</td>
      <td>MBROverlaps(g1, g2)</td>
      <td>如果两个几何相交并且其相交导致相同尺寸的几何形状但不等于给定的几何形状之一，则空间上的两个几何空间重叠。 该函数返回1或0以指示两个几何形状g1和g2的最小边界矩形是否重叠。 MBROverlaps（）和Overlaps（）是同义词。</td>
      <td>否</td>
      <td>Function "MBROVERLAPS" not found </td>
   </tr>
   <tr>
      <td>MBRTouches()</td>
      <td>MBRTouches(g1, g2)</td>
      <td>如果它们的内部不相交，则两个空间的空间接触，但其中一个几何的边界与另一个的边界或内部相交。 该函数返回1或0，以指示两个几何g1和g2的最小边界矩形是否接触。</td>
      <td>否</td>
      <td> Function "MBRTOUCHES" not found</td>
   </tr>
   <tr>
      <td>MBRWithin()</td>
      <td>MBRWithin(g1, g2)</td>
      <td>返回1或0，以指示g1的最小边界矩形是否在g2的最小边界矩形内。这测试与MBRContains（）相反的关系。</td>
      <td>否</td>
      <td>Function "MBRWITHIN" not found</td>
   </tr>
   <tr>
      <td>MD5()</td>
      <td>MD5(str)</td>
      <td>计算字符串的MD5 128位校验和。该值作为32位十六进制数字的字符串返回，如果参数为NULL，则返回NULL。返回值例如可以用作散列键。</td>
      <td>否</td>
      <td>Function "MD5" not found</td>
   </tr>
   <tr>
      <td>MICROSECOND()</td>
      <td>MICROSECOND(expr)</td>
      <td>从time或datetime表达式expr返回微秒，取值范围为0〜999999。</td>
      <td>否</td>
      <td>Function "MICROSECOND" not found</td>
   </tr>
   <tr>
      <td>MID()</td>
      <td>MID(str,pos,len)</td>
      <td>从指定的位置返回一个子串，同SUBSTRING(str,pos,len)</td>
      <td>否</td>
      <td>Function "MID" not found</td>
   </tr>
   <tr>
      <td>MIN()</td>
      <td>MIN([DISTINCT] expr)</td>
      <td>返回expr的最小值。 MIN（）可能需要一个字符串参数;在这种情况下，它返回最小字符串值。可以使用DISTINCT关键字来查找expr的不同值的最小值，但是这会产生与省略DISTINCT相同的结果。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>-</td>
      <td>-</td>
      <td>减号运算符</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>MINUTE()</td>
      <td>MINUTE(time)</td>
      <td>返回时间的分钟，范围为0到59。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>MLineFromText(), MultiLineStringFromText()(deprecated 5.7.6)</td>
      <td>MLineFromText(wkt[, srid]), MultiLineStringFromText(wkt[, srid])</td>
      <td>ST_MLineFromText（），ST_MultiLineStringFromText（），MLineFromText（）和MultiLineStringFromText（）是同义词。</td>
      <td>否</td>
      <td>Function "MLINEFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>MLineFromWKB(), MultiLineStringFromWKB()(deprecated 5.7.6</td>
      <td>MLineFromWKB(wkb[, srid]), MultiLineStringFromWKB(wkb[, srid])</td>
      <td>ST_MLineFromWKB（），ST_MultiLineStringFromWKB（），MLineFromWKB（）和MultiLineStringFromWKB（）是同义词</td>
      <td>否</td>
      <td>Function "MLINEFROMWKB" not found</td>
   </tr>
   <tr>
      <td>MOD()</td>
      <td>MOD(N,M), N % M, N MOD M</td>
      <td>模数运算。返回N的余数除以M.</td>
      <td>是</td>
      <td>vds不支持N MOD M</td>
   </tr>
   <tr>
      <td>%, MOD</td>
      <td>N % M, N MOD M</td>
      <td>模数运算。返回N的余数除以M.</td>
      <td>是</td>
      <td>vds不支持N MOD M</td>
   </tr>
   <tr>
      <td>MONTH()</td>
      <td>MONTH(date)</td>
      <td>返回日期的月份，1月至12月的范围为1到12，或0为0个零月份的“0000-00-00”或“2008-00-00”之类的日期</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>MONTHNAME()</td>
      <td>MONTHNAME(date)</td>
      <td>返回日期的月份的全名</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>MPointFromText(), MultiPointFromText()(deprecated 5.7.6)</td>
      <td>MPointFromText(wkt[, srid]), MultiPointFromText(wkt[, srid])</td>
      <td>ST_MPointFromText（），ST_MultiPointFromText（），MPointFromText（）和MultiPointFromText（）是同义词。</td>
      <td>否</td>
      <td>Function "MPOINTFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>MPointFromWKB(), MultiPointFromWKB() (deprecated 5.7.6)</td>
      <td>MPointFromWKB(wkb[, srid]), MultiPointFromWKB(wkb[, srid])</td>
      <td>ST_MPointFromWKB（），ST_MultiPointFromWKB（），MPointFromWKB（）和MultiPointFromWKB（）是同义词</td>
      <td>否</td>
      <td>Function "MPOINTFROMWKB" not found</td>
   </tr>
   <tr>
      <td>MPolyFromText(), MultiPolygonFromText()(deprecated 5.7.6)</td>
      <td>MPolyFromText(wkt[, srid]), MultiPolygonFromText(wkt[, srid])</td>
      <td>ST_MPolyFromText（），ST_MultiPolygonFromText（），MPolyFromText（）和MultiPolygonFromText（）是同义词。</td>
      <td>否</td>
      <td>Function "MPOLYFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>MPolyFromWKB(), MultiPolygonFromWKB()(deprecated 5.7.6)</td>
      <td>MPolyFromWKB(wkb[, srid]), MultiPolygonFromWKB(wkb[, srid])</td>
      <td>ST_MPolyFromWKB（），ST_MultiPolygonFromWKB（），MPolyFromWKB（）和MultiPolygonFromWKB（）是同义词</td>
      <td>否</td>
      <td>Function "MPOLYFROMWKB" not found</td>
   </tr>
   <tr>
      <td>MultiLineString()</td>
      <td>MultiLineString(ls1, ls2, ...)</td>
      <td>使用LineString或WKB LineString参数构造MultiLineString值。</td>
      <td>否</td>
      <td>Function "MULTILINESTRING" not found</td>
   </tr>
   <tr>
      <td>MultiPoint()</td>
      <td>MultiPoint(pt1, pt2, ...)</td>
      <td>使用Point或WKB Point参数构造MultiPoint值。</td>
      <td>否</td>
      <td>Function "MULTIPOINT" not found</td>
   </tr>
   <tr>
      <td>MultiPolygon()</td>
      <td>MultiPolygon(poly1, poly2, ...)</td>
      <td>从一组Polygon或WKB多边形参数构造一个MultiPolygon值。</td>
      <td>否</td>
      <td>Function "MULTIPOLYGON" not found</td>
   </tr>
   <tr>
      <td>NAME_CONST()</td>
      <td>NAME_CONST(name,value)</td>
      <td>返回给定值。当用于生成结果集列时，NAME_CONST（）使列具有给定的名称。参数应该是常量。</td>
      <td>否</td>
      <td> Function "NAME_CONST" not found</td>
   </tr>
   <tr>
      <td>NOT, !</td>
      <td>NOT, !</td>
      <td>逻辑不，如果操作数为0，则计算为1，如果操作数不为0，则为0，NOT NULL返回NULL。</td>
      <td>是</td>
      <td>vds不支持 `!`</td>
   </tr>
   <tr>
      <td>NOT BETWEEN ... AND ...</td>
      <td>expr NOT BETWEEN min AND max</td>
      <td></td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>!=, <></td>
      <td><>, !=</td>
      <td>不等于</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>NOT IN()</td>
      <td>expr NOT IN (value,...)</td>
      <td></td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>NOT LIKE</td>
      <td>expr NOT LIKE pat [ESCAPE 'escape_char']</td>
      <td></td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>NOT REGEXP</td>
      <td>expr NOT REGEXP pat</td>
      <td>REGEXP的否定</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>NOW()</td>
      <td>NOW([fsp])</td>
      <td>根据该函数是否在字符串或数字上下文中使用，将当前日期和时间作为“YYYY-MM-DD HH：MM：SS”或YYYYMMDDHHMMSS格式的值返回。该值以当前时区表示。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>NULLIF()</td>
      <td>NULLIF(expr1,expr2)</td>
      <td>如果expr1 = expr2为true，则返回NULL，否则返回expr1。这与CASE WHEN相同expr1 = expr2 THEN NULL ELSE expr1 END。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>NumGeometries() (deprecated 5.7.6)</td>
      <td>NumGeometries(gc)</td>
      <td>T_NumGeometries（）和NumGeometries（）是同义词</td>
      <td>否</td>
      <td>Function "NUMGEOMETRIES" not found</td>
   </tr>
   <tr>
      <td>NumInteriorRings() (deprecated 5.7.6)</td>
      <td>NumInteriorRings(poly)</td>
      <td>ST_NumInteriorRings（）和NumInteriorRings（）是同义词</td>
      <td>否</td>
      <td>Function "NUMINTERIORRINGS" not found</td>
   </tr>
   <tr>
      <td>NumPoints() (deprecated 5.7.6)</td>
      <td>NumPoints(ls)</td>
      <td>ST_NumPoints（）和NumPoints（）是同义词。</td>
      <td>否</td>
      <td>Function "NUMPOINTS" not found</td>
   </tr>
   <tr>
      <td>OCT()</td>
      <td>OCT(N)</td>
      <td>"返回N的八进制值的字符串表示，其中N是longlong（BIGINT）数字。这相当于CONV（N，10,8）。如果N为NULL，则返回NULL。</td>
   </tr>
   <tr>
      <td>翻译此页面 "</td>
      <td>否</td>
      <td>Function "OCT" not found</td>
   </tr>
   <tr>
      <td>OCTET_LENGTH()</td>
      <td>OCTET_LENGTH(str)</td>
      <td>同LENGTH()</td>
      <td>是</td>
      <td>VDS中返回字符串中的字节数。返回类型是long。对于BLOB，CLOB，BYTES和JAVA_OBJECT，使用精度。每个字符需要2个字节。</td>
   </tr>
   <tr>
      <td>OLD_PASSWORD() (deprecated 5.7.5)</td>
      <td>OLD_PASSWORD(str)</td>
      <td>在MySQL 4.1中更改PASSWORD（）的实现时，添加了OLD_PASSWORD（），以提高安全性。 OLD_PASSWORD（）以字符串的形式返回4.1之前执行的PASSWORD（）的值，并且允许您为需要连接到MySQL服务器的4.1之前的客户端重置密码，而不会将其锁定。使用4.1之前的散列方法的密码比使用本地密码散列方法的密码安全性更低。在MySQL 5.7.5中删除了对4.1之前的密码的支持，OLD_PASSWORD（）也是如此。</td>
      <td>否</td>
      <td>Function "OLD_PASSWORD" not found</td>
   </tr>
   <tr>
      <td>||, OR</td>
      <td>OR, ||</td>
      <td>逻辑或。当两个操作数都为非NULL时，如果任何操作数非零，则结果为1，否则为0。使用NULL操作数时，如果另一个操作数不为零，则结果为1，否则为NULL。如果两个操作数都为NULL，则结果为NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>ORD()</td>
      <td>ORD(str)</td>
      <td>"如果字符串str的最左边的字符是多字节字符，则返回该字符的代码，使用以下公式从其组成字节的数值计算：</td>
   </tr>
   <tr>
      <td> (1st byte code)</td>
   </tr>
   <tr>
      <td>+ (2nd byte code * 256)</td>
   </tr>
   <tr>
      <td>+ (3rd byte code * 2562) …</td>
   </tr>
   <tr>
      <td>如果最左边的字符不是多字节字符，则ORD（）返回与ASCII（）函数相同的值。"</td>
      <td>否</td>
      <td>Function "ORD" not found</td>
   </tr>
   <tr>
      <td>Overlaps() (deprecated 5.7.6)</td>
      <td>Overlaps(g1, g2)</td>
      <td>MBROverlaps（）和Overlaps（）是同义词</td>
      <td>否</td>
      <td>Function "OVERLAPS" not found</td>
   </tr>
   <tr>
      <td>PASSWORD() (deprecated 5.7.6)</td>
      <td>PASSWORD(str)</td>
      <td>返回从明文密码str计算出的散列密码字符串。返回值是连接字符集中的一个非二进制字符串，如果参数为NULL，则返回NULL。此功能是服务器使用的算法的SQL接口，用于加密MySQL密码以存储在mysql.user授权表中。</td>
      <td>否</td>
      <td> Function "PASSWORD" not found</td>
   </tr>
   <tr>
      <td>PERIOD_ADD()</td>
      <td>PERIOD_ADD(P,N)</td>
      <td>将N个月添加到期间P（格式为YYMM或YYYYMM）。返回格式为YYYYMM的值。请注意，期间参数P不是日期值。</td>
      <td>否</td>
      <td> Function "PERIOD_ADD" not found</td>
   </tr>
   <tr>
      <td>PERIOD_DIFF()</td>
      <td>PERIOD_DIFF(P1,P2)</td>
      <td>返回周期P1和P2之间的月数。 P1和P2的格式应为YYMM或YYYYMM。请注意，参数P1和P2不是日期值。</td>
      <td>否</td>
      <td>Function "PERIOD_DIFF" not found</td>
   </tr>
   <tr>
      <td>PI()</td>
      <td>PI()</td>
      <td>返回π（pi）的值。显示的默认小数位数为7，但MySQL内部使用完整的双精度值。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>+</td>
      <td>+</td>
      <td>加法运算符</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>Point()</td>
      <td>Point(x, y)</td>
      <td>使用其坐标构造点。</td>
      <td>否</td>
      <td> Function "POINT" not found</td>
   </tr>
   <tr>
      <td>PointFromText() (deprecated 5.7.6)</td>
      <td>PointFromText(wkt[, srid])</td>
      <td>ST_PointFromText（）和PointFromText（）是同义词</td>
      <td>否</td>
      <td>Function "ST_POINTFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>PointFromWKB() (deprecated 5.7.6)</td>
      <td>PointFromWKB(wkb[, srid])</td>
      <td>ST_PointFromWKB（）和PointFromWKB（）是同义词。</td>
      <td>否</td>
      <td>Function "POINTFROMWKB" not found</td>
   </tr>
   <tr>
      <td>PointN() (deprecated 5.7.6)</td>
      <td>PointN(ls, N)</td>
      <td>ST_PointN（）和PointN（）是同义词</td>
      <td>否</td>
      <td>Function "POINTN" not found</td>
   </tr>
   <tr>
      <td>PolyFromText(), PolygonFromText() (deprecated 5.7.6)</td>
      <td>PolyFromText(wkt[, srid]), PolygonFromText(wkt[, srid])</td>
      <td></td>
      <td>否</td>
      <td> Function "POLYGONFROMTEXT" not found </td>
   </tr>
   <tr>
      <td>PolyFromWKB(), PolygonFromWKB() (deprecated 5.7.6)</td>
      <td>PolyFromWKB(wkb[, srid]), PolygonFromWKB(wkb[, srid])</td>
      <td>ST_PolyFromWKB（），ST_PolygonFromWKB（），PolyFromWKB（）和PolygonFromWKB（）是同义词</td>
      <td>否</td>
      <td>Function "POLYFROMWKB" not found</td>
   </tr>
   <tr>
      <td>Polygon()</td>
      <td>Polygon(ls1, ls2, ...)</td>
      <td>从多个LineString或WKB LineString参数构造一个Polygon值。如果任何参数不表示LinearRing（也就是说，不是一个闭合且简单的LineString），则返回值为NULL。</td>
      <td>否</td>
      <td>Function "POLYGON" not found</td>
   </tr>
   <tr>
      <td>POSITION()</td>
      <td>POSITION(substr IN str)</td>
      <td>同LOCATE()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>POW()</td>
      <td>POW(X,Y)</td>
      <td>将X的值返回到Y的幂。</td>
      <td>否</td>
      <td> Function "POW" not found</td>
   </tr>
   <tr>
      <td>POWER()</td>
      <td>POWER(X,Y)</td>
      <td>同POW()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>PROCEDURE ANALYSE() (deprecated 5.7.18)</td>
      <td>ANALYSE([max_elements[,max_memory]])</td>
      <td>NALYZE（）检查查询的结果，并返回结果分析，为每列提供最佳数据类型，这可能有助于减少表大小。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>QUARTER()</td>
      <td>QUARTER(date)</td>
      <td>返回日期的一年中的四分之一，取值范围为1到4。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>QUOTE()</td>
      <td>QUOTE(str)</td>
      <td>引用一个字符串来产生可以在SQL语句中用作正确转义的数据值的结果。字符串由单引号和每个反斜杠（\），单引号（'），ASCII NUL和Control + Z的实例返回。如果参数为NULL，则返回值为单词“NULL”，而不包含单引号。</td>
      <td>否</td>
      <td>Function "QUOTE" not found</td>
   </tr>
   <tr>
      <td>RADIANS()</td>
      <td>RADIANS(X)</td>
      <td>返回参数X，从度转换为弧度。 （注意，π弧度等于180度。）</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>RAND()</td>
      <td>RAND([N])</td>
      <td>返回0 <= v <1.0范围内的随机浮点值v。为了获得范围i <= R <j的随机整数R，使用表达式FLOOR（i + RAND（）*（j-i））。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>RANDOM_BYTES()</td>
      <td>RANDOM_BYTES(len)</td>
      <td>此函数返回使用SSL库（OpenSSL或yaSSL）的随机数生成器生成的len随机字节的二进制字符串。 len的允许值范围为1到1024。对于超出该范围的值，RANDOM_BYTES（）将生成警告并返回NULL。</td>
      <td>否</td>
      <td>Function "RANDOM_BYTES" not found</td>
   </tr>
   <tr>
      <td>REGEXP</td>
      <td>expr REGEXP pat</td>
      <td>模式匹配使用正则表达式</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>RELEASE_ALL_LOCKS()</td>
      <td>RELEASE_ALL_LOCKS()</td>
      <td>释放当前会话持有的所有命名锁，并返回释放的锁数（如果没有则为0） 此功能对于基于语句的复制是不安全的。</td>
      <td>否</td>
      <td>Function "RELEASE_ALL_LOCKS" not found</td>
   </tr>
   <tr>
      <td>RELEASE_LOCK()</td>
      <td>RELEASE_LOCK(str)</td>
      <td>释放使用GET_LOCK（）获取的字符串str命名的锁。如果锁被释放，则返回1，如果该线程没有建立锁定（在这种情况下锁定不被释放），则返回1，如果命名的锁不存在则返回NULL。如果通过调用GET_LOCK（）而不是获得锁定，或者以前已经释放该锁，则该锁不存在。</td>
      <td>否</td>
      <td>Function "RELEASE_LOCK()" not found</td>
   </tr>
   <tr>
      <td>REPEAT()</td>
      <td>REPEAT(str,count)</td>
      <td>返回由字符串str重复的计数次数组成的字符串。如果count小于1，则返回一个空字符串。如果str或count为NULL，则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>REPLACE()</td>
      <td>REPLACE(str,from_str,to_str)</td>
      <td>返回字符串str，所有出现的字符串from_str由字符串to_str替换。 REPLACE（）在搜索from_str时执行区分大小写匹配。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>REVERSE()</td>
      <td>REVERSE(str)</td>
      <td>返回字符串str与字符顺序颠倒。</td>
      <td>否</td>
      <td>Function "REVERSE" not found</td>
   </tr>
   <tr>
      <td>RIGHT()</td>
      <td>RIGHT(str,len)</td>
      <td>从字符串str返回最右边的len字符，如果任何参数为NULL，则返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>>></td>
      <td>>></td>
      <td>向右移。 结果是一个无符号的64位整数。该值被截断为64位。特别地，如果移位计数大于或等于无符号64位数的宽度，则结果为零。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>RLIKE</td>
      <td>expr RLIKE pat</td>
      <td>同REGEXP</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>ROUND()</td>
      <td>ROUND(X), ROUND(X,D)</td>
      <td>将参数X舍入到D小数位。舍入算法取决于X的数据类型。如果未指定，D默认为0。 D可以为负，导致值X的小数点左侧的D数字变为零。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>ROW_COUNT()</td>
      <td>ROW_COUNT()</td>
      <td>已更新的行数</td>
      <td>否</td>
      <td>Function "ROW_COUNT" not found</td>
   </tr>
   <tr>
      <td>RPAD()</td>
      <td>RPAD(str,len,padstr)</td>
      <td>将字符串str，用字符串padstr右键填充长度为len个字符。如果str长于len，则返回值将缩短为len个字符。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>RTRIM()</td>
      <td>RTRIM(str)</td>
      <td>返回删除尾随空格的字符串str。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>SCHEMA()</td>
      <td>SCHEMA()</td>
      <td>同DATABASE()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>SEC_TO_TIME()</td>
      <td>SEC_TO_TIME(seconds)</td>
      <td>将秒数转换为“HH：MM：SS”格式</td>
      <td>否</td>
      <td> Function "SEC_TO_TIME" not found</td>
   </tr>
   <tr>
      <td>SECOND()</td>
      <td>SECOND(time)</td>
      <td>返回时间的秒，范围为0到59。</td>
      <td>是</td>
      <td>vds只支持日期格式，例如'2017-07-21 10:05:03'，不支持'10:05:03'</td>
   </tr>
   <tr>
      <td>SESSION_USER()</td>
      <td>SESSION_USER()</td>
      <td>同USER()</td>
      <td>否</td>
      <td>Function "SESSION_USER" not found</td>
   </tr>
   <tr>
      <td>SHA1(), SHA()</td>
      <td>SHA1(str), SHA(str)</td>
      <td>计算字符串的SHA-1 160位校验和，如RFC 3174（安全散列算法）中所述。该值返回为40个十六进制数字的字符串，如果参数为NULL，则返回NULL。SHA（）与SHA1（）同义。</td>
      <td>否</td>
      <td>Function "SHA" not found</td>
   </tr>
   <tr>
      <td>SHA2()</td>
      <td>SHA2(str, hash_length)</td>
      <td>计算SHA-2系列散列函数（SHA-224，SHA-256，SHA-384和SHA-512）。第一个参数是要散列的明文字符串。第二个参数表示结果的期望比特长度，该比特长度必须为224,256,384,512或0（相当于256）。如果任一参数为NULL或散列长度不是允许的值之一，返回值为NULL。否则，函数结果是包含所需位数的哈希值。</td>
      <td>否</td>
      <td> Function "SHA2" not found</td>
   </tr>
   <tr>
      <td>SIGN()</td>
      <td>SIGN(X)</td>
      <td>将参数的符号返回为-1,0或1，具体取决于X是否为负数，为正数。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>SIN()</td>
      <td>SIN(X)</td>
      <td>返回X的正弦，其中X以弧度表示</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>SLEEP()</td>
      <td>SLEEP(duration)</td>
      <td>睡眠（暂停）持续时间参数给定的秒数，然后返回0.持续时间可能有一小部分。如果参数为NULL或否定，则SLEEP（）会在严格SQL模式下产生警告或错误。当睡眠恢复正常（不中断）时，返回0：</td>
      <td>否</td>
      <td> Function "SLEEP" not found</td>
   </tr>
   <tr>
      <td>SOUNDEX()</td>
      <td>SOUNDEX(str)</td>
      <td>从str返回一个soundex字符串。声音几乎相同的两个字符串应该具有相同的soundex字符串。标准的soundex字符串长度为四个字符，但SOUNDEX（）函数返回任意长的字符串。您可以在结果上使用SUBSTRING（）获取一个标准的soundex字符串。 str中的所有非字母字符都被忽略。 A-Z范围外的所有国际字母字符都被视为元音。</td>
      <td>是</td>
      <td>"vds返回字符串长度只有4位，返回代表字符串声音的四个字符代码。例如：SELECT SOUNDEX('Quadratically');vds返回'Q363'，mysql返回'Q36324'</td>
   </tr>
   <tr>
      <td>"</td>
   </tr>
   <tr>
      <td>SOUNDS LIKE</td>
      <td>expr1 SOUNDS LIKE expr2</td>
      <td>这与SOUNDEX（expr1）= SOUNDEX（expr2）相同。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>SPACE()</td>
      <td>SPACE(N)</td>
      <td>返回由N个空格字符组成的字符串。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>SQRT()</td>
      <td>SQRT(X)</td>
      <td>返回非负数X的平方根。</td>
      <td>是</td>
      <td>mysql中X为负数返回null，vds不允许X为负数</td>
   </tr>
   <tr>
      <td>SRID() (deprecated 5.7.6)</td>
      <td>SRID(g)</td>
      <td>ST_SRID（）和SRID（）是同义词。</td>
      <td>否</td>
      <td>Function "SRID" not found</td>
   </tr>
   <tr>
      <td>ST_Area()</td>
      <td>ST_Area(poly)</td>
      <td>返回一个双精度数字，表示参数的面积，如在其空间参考系统中所测量的。对于维数为0或1的参数，结果为0。</td>
      <td>否</td>
      <td>Function "ST_AREA" not found </td>
   </tr>
   <tr>
      <td>ST_AsBinary(), ST_AsWKB()</td>
      <td>ST_AsBinary(g), ST_AsWKB(g)</td>
      <td>将内部几何格式的值转换为其WKB表示，并返回二进制结果。</td>
      <td>否</td>
      <td>Function "ST_ASBINARY" not found</td>
   </tr>
   <tr>
      <td>ST_AsGeoJSON()</td>
      <td>ST_AsGeoJSON(g [, max_dec_digits [, options]])</td>
      <td>从几何g生成GeoJSON对象。对象字符串具有连接字符集和排序规则。</td>
      <td>否</td>
      <td>Function "ST_ASGEOJSON" not found</td>
   </tr>
   <tr>
      <td>ST_AsText(), ST_AsWKT()</td>
      <td>ST_AsText(g), ST_AsWKT(g)</td>
      <td>将内部几何格式的值转换为其WKT表示形式，并返回字符串结果。</td>
      <td>否</td>
      <td>Function "ST_ASTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_Buffer()</td>
      <td>ST_Buffer(g, d[, strategy1[, strategy2[, strategy3]]])</td>
      <td>返回几何，表示距离几何值g的距离小于或等于d的所有点，如果任何参数为NULL，则返回NULL。因为ST_Buffer（）仅支持笛卡尔坐标系，所以geometry参数的SRID必须为0。如果任何几何参数不是语法格式良好的几何，则会发生ER_GIS_INVALID_DATA错误。</td>
      <td>否</td>
      <td>Function "ST_BUFFER" not found</td>
   </tr>
   <tr>
      <td>ST_Buffer_Strategy()</td>
      <td>ST_Buffer_Strategy(strategy[, points_per_circle])</td>
      <td>此函数返回与ST_Buffer（）一起使用的策略字节串，以影响缓冲区计算。如果任何参数为NULL，结果为NULL。如果任何参数无效，则会出现ER_WRONG_ARGUMENTS错误。</td>
      <td>否</td>
      <td> Function "ST_BUFFER_STRATEGY" not found</td>
   </tr>
   <tr>
      <td>ST_Centroid()</td>
      <td>ST_Centroid(mpoly)</td>
      <td>返回作为Point的MultiPolygon值mpoly的数学重心。结果不能保证在MultiPolygon上。</td>
      <td>否</td>
      <td>Function "ST_CENTROID" not found</td>
   </tr>
   <tr>
      <td>ST_Contains()</td>
      <td>ST_Contains(g1, g2)</td>
      <td>返回1或0以指示g1是否完全包含g2。这测试与ST_Within（）相反的关系。</td>
      <td>否</td>
      <td>Function "ST_CONTAINS" not found</td>
   </tr>
   <tr>
      <td>ST_ConvexHull()</td>
      <td>ST_ConvexHull(g)</td>
      <td>返回表示几何值g的凸包的几何。</td>
      <td>否</td>
      <td>Function "ST_CONVEXHULL" not found</td>
   </tr>
   <tr>
      <td>ST_Crosses()</td>
      <td>ST_Crosses(g1, g2)</td>
      <td>一个几何是否语义另一个相交</td>
      <td>否</td>
      <td>Function "ST_CROSSES" not found</td>
   </tr>
   <tr>
      <td>ST_Difference()</td>
      <td>ST_Difference(g1, g2)</td>
      <td>返回表示几何值g1和g2的点集差异的几何。</td>
      <td>否</td>
      <td>Function "ST_DIFFERENCE" not found</td>
   </tr>
   <tr>
      <td>ST_Dimension()</td>
      <td>ST_Dimension(g)</td>
      <td>返回几何值g的固有维度，如果参数为NULL，则返回NULL。</td>
      <td>否</td>
      <td>Function "ST_DIMENSION" not found</td>
   </tr>
   <tr>
      <td>ST_Disjoint()</td>
      <td>ST_Disjoint(g1, g2)</td>
      <td>返回1或0，以指示g1是否在空间上与（不相交）g2不相交。</td>
      <td>否</td>
      <td>Function "ST_DISJOINT" not found</td>
   </tr>
   <tr>
      <td>ST_Distance()</td>
      <td>ST_Distance(g1, g2)</td>
      <td>返回g1和g2之间的距离。如果任一参数为NULL或空几何，则返回值为NULL。 此函数通过返回两个几何参数的组件的所有组合之间的最短距离来处理几何集合。</td>
      <td>否</td>
      <td>Function "ST_DISTANCE" not found</td>
   </tr>
   <tr>
      <td>ST_Distance_Sphere()</td>
      <td>ST_Distance_Sphere(g1, g2 [, radius])</td>
      <td>返回球体上两点和/或多点之间的最小球面距离，以米为单位，如果任何几何参数为空，则返回NULL。</td>
      <td>否</td>
      <td>Function "ST_DISTANCE_SPHERE" not found</td>
   </tr>
   <tr>
      <td>ST_EndPoint()</td>
      <td>ST_EndPoint(ls)</td>
      <td>返回作为LineString值ls的端点的Point。</td>
      <td>否</td>
      <td>Function "ST_ENDPOINT" not found</td>
   </tr>
   <tr>
      <td>ST_Envelope()</td>
      <td>ST_Envelope(g)</td>
      <td>返回几何值g的最小边界矩形（MBR），如果参数为NULL，则返回NULL。</td>
      <td>否</td>
      <td>Function "ST_ENVELOPE" not found</td>
   </tr>
   <tr>
      <td>ST_Equals()</td>
      <td>ST_Equals(g1, g2)</td>
      <td>返回1或0以指示g1是否在空间上等于g2。</td>
      <td>否</td>
      <td>Function "ST_CROSSES" not found;</td>
   </tr>
   <tr>
      <td>ST_ExteriorRing()</td>
      <td>ST_ExteriorRing(poly)</td>
      <td>返回Polygon值poly的外部环作为LineString</td>
      <td>否</td>
      <td>Function "ST_EXTERIORRING" not found</td>
   </tr>
   <tr>
      <td>ST_GeoHash()</td>
      <td>ST_GeoHash(longitude, latitude, max_length), ST_GeoHash(point, max_length)</td>
      <td>返回连接字符集和排序规则中的geohash字符串。如果任何参数为NULL，结果为NULL。如果任何参数无效，则会发生错误。</td>
      <td>否</td>
      <td>Function "ST_GEOHASH" not found</td>
   </tr>
   <tr>
      <td>ST_GeomCollFromText(), ST_GeometryCollectionFromText(), ST_GeomCollFromTxt()</td>
      <td>ST_GeomCollFromText(wkt[, srid]), ST_GeometryCollectionFromText(wkt[, srid]), ST_GeomCollFromTxt(wkt[,srid])</td>
      <td>使用其WKT表示和SRID构造GeometryCollection值。 如果几何参数为NULL或不是语法格式正确的几何，或者SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_GEOMCOLLFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_GeomCollFromWKB(),ST_GeometryCollectionFromWKB()</td>
      <td>ST_GeomCollFromWKB(wkb[, srid]), ST_GeometryCollectionFromWKB(wkb[, srid])</td>
      <td>使用其WKB表示和SRID构造GeometryCollection值。 如果WKB或SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_GEOMCOLLFROMWKB" not found</td>
   </tr>
   <tr>
      <td>ST_GeometryN()</td>
      <td>ST_GeometryN(gc, N)</td>
      <td>返回GeometryCollection值gc中的第N个几何。几何编号从1开始。</td>
      <td>否</td>
      <td>Function "ST_GEOMETRYN" not found</td>
   </tr>
   <tr>
      <td>ST_GeometryType()</td>
      <td>ST_GeometryType(g)</td>
      <td>返回一个二进制字符串，表示几何实例g所属的几何类型的名称，如果参数为NULL，则返回NULL。该名称对应于可实例化的几何子类之一。</td>
      <td>否</td>
      <td>Function "ST_GEOMETRYTYPE" not found</td>
   </tr>
   <tr>
      <td>ST_GeomFromGeoJSON()</td>
      <td>ST_GeomFromGeoJSON(str [, options [, srid]])</td>
      <td>解析表示GeoJSON对象的字符串str并返回几何。 选项（如果给出）描述了如何处理包含坐标尺寸大于2的几何的GeoJSON文档。下表显示了允许的选项值。</td>
      <td>否</td>
      <td>Function "ST_GEOMFROMGEOJSON" not found</td>
   </tr>
   <tr>
      <td>ST_GeomFromText(), ST_GeometryFromText()</td>
      <td>ST_GeomFromText(wkt[, srid]), ST_GeometryFromText(wkt[, srid])</td>
      <td>使用其WKT表示和SRID构造任何类型的几何值。 如果几何参数为NULL或不是语法格式正确的几何，或者SRID参数为NULL，则结果为NULL</td>
      <td>否</td>
      <td>Function "ST_GEOMFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_GeomFromWKB(), ST_GeometryFromWKB()</td>
      <td>ST_GeomFromWKB(wkb[, srid]), ST_GeometryFromWKB(wkb[, srid])</td>
      <td>使用其WKB表示和SRID构造任何类型的几何值。 如果WKB或SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_GEOMFROMWKB" not found</td>
   </tr>
   <tr>
      <td>ST_InteriorRingN()</td>
      <td>ST_InteriorRingN(poly, N)</td>
      <td>作为LineString返回Polygon值poly的第N个内环。戒指以1开头编号。</td>
      <td>否</td>
      <td>Function "ST_INTERIORRINGN" not found</td>
   </tr>
   <tr>
      <td>ST_Intersection()</td>
      <td>ST_Intersection(g1, g2)</td>
      <td>返回表示几何值g1和g2的点集交集的几何。</td>
      <td>否</td>
      <td>Function "ST_INTERSECTION" not found</td>
   </tr>
   <tr>
      <td>ST_Intersects()</td>
      <td>ST_Intersects(g1, g2)</td>
      <td>返回1或0以指示g1是否在空间上与g2相交。</td>
      <td>否</td>
      <td>Function "ST_INTERSECTS" not found</td>
   </tr>
   <tr>
      <td>ST_IsClosed()</td>
      <td>ST_IsClosed(ls)</td>
      <td>对于LineString值ls，如果ls关闭（即其ST_StartPoint（）和ST_EndPoint（）值相同），ST_IsClosed（）返回1。</td>
      <td>否</td>
      <td>Function "ST_ISCLOSED" not found</td>
   </tr>
   <tr>
      <td>ST_IsEmpty()</td>
      <td>ST_IsEmpty(g)</td>
      <td>此函数是一个占位符，对于任何有效的几何值返回0，对于任何无效几何值返回1，如果参数为NULL，则返回NULL。MySQL不支持GIS EMPTY值，例如POINT EMPTY。</td>
      <td>否</td>
      <td>Function "ST_ISEMPTY" not found</td>
   </tr>
   <tr>
      <td>ST_IsSimple()</td>
      <td>ST_IsSimple(g)</td>
      <td>如果几何值g没有异常几何点，如自相交或自相切，则返回1。</td>
      <td>否</td>
      <td>Function "ST_ISSIMPLE" not found</td>
   </tr>
   <tr>
      <td>ST_IsValid()</td>
      <td>ST_IsValid(g)</td>
      <td>检查几何是否有效，按照OGC规范定义。如果参数是有效的几何字节字符串，并且几何有效，则ST_IsValid（）返回1，如果参数不是有效的几何字节字符串或不是几何有效，则返回0。如果参数为NULL，返回值为NULL。</td>
      <td>否</td>
      <td>Function "ST_ISVALID" not found</td>
   </tr>
   <tr>
      <td>ST_LatFromGeoHash()</td>
      <td>ST_LatFromGeoHash(geohash_str)</td>
      <td>从geohash字符串值返回纬度，作为范围[-90,90]中的DOUBLE值。如果任何参数为NULL，结果为NULL。如果参数无效，则会发生错误。</td>
      <td>否</td>
      <td>Function "ST_LATFROMGEOHASH" not found</td>
   </tr>
   <tr>
      <td>ST_Length()</td>
      <td>ST_Length(ls)</td>
      <td>返回一个双精度数字，表示相关空间参考中LineString或MultiLineString值ls的长度。 MultiLineString值的长度等于其元素的长度之和。</td>
      <td>否</td>
      <td>Function "ST_LENGTH" not found</td>
   </tr>
   <tr>
      <td>ST_LineFromText(), ST_LineStringFromText()</td>
      <td>ST_LineFromText(wkt[, srid]), ST_LineStringFromText(wkt[, srid])</td>
      <td>使用其WKT表示和SRID构造LineString值。 如果几何参数为NULL或不是语法格式正确的几何，或者SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_LINEFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_LineFromWKB(), ST_LineStringFromWKB()</td>
      <td>ST_LineFromWKB(wkb[, srid]), ST_LineStringFromWKB(wkb[, srid])</td>
      <td>使用其WKB表示和SRID构造LineString值。 如果WKB或SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_LINEFROMWKB" not found</td>
   </tr>
   <tr>
      <td>ST_LongFromGeoHash()</td>
      <td>ST_LongFromGeoHash(geohash_str)</td>
      <td>从geohash字符串值返回经度，作为[-180,180]范围内的DOUBLE值。如果任何参数为NULL，结果为NULL。如果参数无效，则会发生错误。</td>
      <td>否</td>
      <td>Function "ST_LONGFROMGEOHASH" not found</td>
   </tr>
   <tr>
      <td>ST_MakeEnvelope()</td>
      <td>ST_MakeEnvelope(pt1, pt2)</td>
      <td>返回形成围绕两点的信封的矩形，如Point，LineString或Polygon。如果任何参数为NULL，则返回值为NULL。</td>
      <td>否</td>
      <td>Function "ST_MAKEENVELOPE" not found</td>
   </tr>
   <tr>
      <td>ST_MLineFromText(),ST_MultiLineStringFromText()</td>
      <td>ST_MPointFromText(wkt[, srid]), ST_MultiPointFromText(wkt[, srid])</td>
      <td>使用其WKT表示和SRID构造多点值。 如果几何参数为NULL或不是语法格式正确的几何，或者SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_MLINEFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_MLineFromWKB(), ST_MultiLineStringFromWKB()</td>
      <td>ST_MLineFromWKB(wkb[, srid]), ST_MultiLineStringFromWKB(wkb[, srid])</td>
      <td>使用其WKB表示和SRID构造MultiLineString值。 如果WKB或SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_MLINEFROMWKB" not found</td>
   </tr>
   <tr>
      <td>ST_MPointFromText(), ST_MultiPointFromText()</td>
      <td>ST_MPointFromText(wkt[, srid]), ST_MultiPointFromText(wkt[, srid])</td>
      <td>使用其WKT表示和SRID构造多点值。 如果几何参数为NULL或不是语法格式正确的几何，或者SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_MPOINTFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_MPointFromWKB(), ST_MultiPointFromWKB()</td>
      <td>ST_MPointFromWKB(wkb[, srid]), ST_MultiPointFromWKB(wkb[, srid])</td>
      <td>使用其WKB表示和SRID构造MultiPoint值。 如果WKB或SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_MPOINTFROMWKB" not found</td>
   </tr>
   <tr>
      <td>ST_MPolyFromText(), ST_MultiPolygonFromText()</td>
      <td>ST_MPolyFromText(wkt[, srid]), ST_MultiPolygonFromText(wkt[, srid])</td>
      <td>使用其WKT表示和SRID构造MultiPolygon值。 如果几何参数为NULL或不是语法格式正确的几何，或者SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "MPOLYFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_MPolyFromWKB(), ST_MultiPolygonFromWKB()</td>
      <td>ST_MPolyFromWKB(wkb[, srid]), ST_MultiPolygonFromWKB(wkb[, srid])</td>
      <td>使用其WKB表示和SRID构造MultiPolygon值。 如果WKB或SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_MPOLYFROMWKB" not found</td>
   </tr>
   <tr>
      <td>ST_NumGeometries()</td>
      <td>ST_NumGeometries(gc)</td>
      <td>返回GeometryCollection值gc中的几何数。</td>
      <td>否</td>
      <td>Function "ST_NUMGEOMETRIES" not found</td>
   </tr>
   <tr>
      <td>ST_NumInteriorRing(), ST_NumInteriorRings()</td>
      <td>ST_NumInteriorRing(poly), ST_NumInteriorRings(poly)</td>
      <td>返回Polygon值poly中的内环数。</td>
      <td>否</td>
      <td>Function "ST_NUMINTERIORRINGS" not found</td>
   </tr>
   <tr>
      <td>ST_NumPoints()</td>
      <td>ST_NumPoints(ls)</td>
      <td>返回LineString值ls中Point对象的数量。</td>
      <td>否</td>
      <td>Function "ST_NUMPOINTS" not found</td>
   </tr>
   <tr>
      <td>ST_Overlaps()</td>
      <td>ST_Overlaps(g1, g2)</td>
      <td>如果两个几何相交并且其相交导致相同尺寸的几何形状但不等于给定的几何形状之一，则空间上的两个几何空间重叠</td>
      <td>否</td>
      <td>Function "ST_OVERLAPS" not found</td>
   </tr>
   <tr>
      <td>ST_PointFromGeoHash()</td>
      <td>ST_PointFromGeoHash(geohash_str, srid)</td>
      <td>给定一个geohash字符串值，返回包含解码的geohash值的POINT值。点的X和Y坐标分别是[-180,180]的范围内的经度和[-90,90]范围内的纬度。 srid值是一个无符号的32位整数。如果任何参数为NULL，结果为NULL。如果任何参数无效，则会发生错误。</td>
      <td>否</td>
      <td>Function "ST_POINTFROMGEOHASH" not found</td>
   </tr>
   <tr>
      <td>ST_PointFromText()</td>
      <td>ST_PointFromText(wkt[, srid])</td>
      <td>使用其WKT表示和SRID构造Point值。 如果几何参数为NULL或不是语法格式正确的几何，或者SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "POINTFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_PointFromWKB()</td>
      <td>ST_PointFromWKB(wkb[, srid])</td>
      <td>使用其WKB表示和SRID构造一个Point值。 如果WKB或SRID参数为NULL，则结果为NULL。点</td>
      <td>否</td>
      <td>Function "ST_POINTFROMWKB" not found</td>
   </tr>
   <tr>
      <td>ST_PointN()</td>
      <td>ST_PointN(ls, N)</td>
      <td>返回Linestring值ls中的第N个点。积分从1开始编号。</td>
      <td>否</td>
      <td>Function "ST_POINTN" not found</td>
   </tr>
   <tr>
      <td>ST_PolyFromText(), ST_PolygonFromText()</td>
      <td>ST_PolyFromText(wkt[, srid]), ST_PolygonFromText(wkt[, srid])</td>
      <td>使用其WKT表示和SRID构造多边形值。 如果几何参数为NULL或不是语法格式正确的几何，或者SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "POLYFROMTEXT" not found</td>
   </tr>
   <tr>
      <td>ST_PolyFromWKB(), ST_PolygonFromWKB()</td>
      <td>ST_PolyFromWKB(wkb[, srid]), ST_PolygonFromWKB(wkb[, srid])</td>
      <td>使用其WKB表示和SRID构造多边形值。 如果WKB或SRID参数为NULL，则结果为NULL。</td>
      <td>否</td>
      <td>Function "ST_POLYFROMWKB" not found</td>
   </tr>
   <tr>
      <td>ST_Simplify()</td>
      <td>ST_Simplify(g, max_distance)</td>
      <td>使用Douglas-Peucker算法简化几何，并返回相同类型的简化值。如果任何参数为NULL，则返回值为NULL。</td>
      <td>否</td>
      <td>Function "ST_SIMPLIFY" not found</td>
   </tr>
   <tr>
      <td>ST_SRID()</td>
      <td>ST_SRID(g)</td>
      <td>返回指示与几何值g相关联的空间参考系统ID的整数，如果参数为NULL，则返回NULL。</td>
      <td>否</td>
      <td>Function "ST_SRID" not found</td>
   </tr>
   <tr>
      <td>ST_StartPoint()</td>
      <td>ST_StartPoint(ls)</td>
      <td>返回作为LineString值ls的起点的Point。</td>
      <td>否</td>
      <td>Function "ST_STARTPOINT" not found</td>
   </tr>
   <tr>
      <td>ST_SymDifference()</td>
      <td>ST_SymDifference(g1, g2)</td>
      <td>返回表示几何值g1和g2的点集对称差的几何</td>
      <td>否</td>
      <td>Function "ST_SYMDIFFERENCE" not found</td>
   </tr>
   <tr>
      <td>ST_Touches()</td>
      <td>ST_Touches(g1, g2)</td>
      <td>如果它们的内部不相交，则两个空间的空间接触，但其中一个几何的边界与另一个的边界或内部相交。</td>
      <td>否</td>
      <td>Function "ST_TOUCHES" not found</td>
   </tr>
   <tr>
      <td>ST_Union()</td>
      <td>ST_Union(g1, g2)</td>
      <td>返回表示几何值g1和g2的点集合的几何。</td>
      <td>否</td>
      <td>Function "ST_UNION" not found</td>
   </tr>
   <tr>
      <td>ST_Validate()</td>
      <td>ST_Validate(g)</td>
      <td>根据OGC规范验证几何。 ST_Validate（）返回几何，如果它是一个有效的几何字节字符串，并且几何有效，如果参数不是有效的几何字节字符串或不是几何有效或为NULL，则返回NULL。</td>
      <td>否</td>
      <td> Function "ST_VALIDATE" not found</td>
   </tr>
   <tr>
      <td>ST_Within()</td>
      <td>ST_Within(g1, g2)</td>
      <td>返回1或0以指示g1是否在空间上在g2内。这测试与ST_Contains（）相反的关系。</td>
      <td>否</td>
      <td>Function "ST_WITHIN" not found</td>
   </tr>
   <tr>
      <td>ST_X()</td>
      <td>ST_X(p)</td>
      <td>将Point对象p的X坐标值作为双精度数返回。</td>
      <td>否</td>
      <td>Function "ST_X" not found</td>
   </tr>
   <tr>
      <td>ST_Y()</td>
      <td>ST_Y(p)</td>
      <td>将Point对象p的Y坐标值返回为双精度数。</td>
      <td>否</td>
      <td>Function "ST_Y" not found</td>
   </tr>
   <tr>
      <td>StartPoint() (deprecated 5.7.6)</td>
      <td>StartPoint(ls)</td>
      <td>ST_StartPoint（）和StartPoint（）是同义词。</td>
      <td>否</td>
      <td>Function "ST_STARTPOINT" not found</td>
   </tr>
   <tr>
      <td>STD()</td>
      <td>STD(expr)</td>
      <td>返回expr的总体标准偏差。 STD（）是作为MySQL扩展名提供的标准SQL函数STDDEV_POP（）的同义词。如果没有匹配的行，STD（）返回NULL。</td>
      <td>否</td>
      <td>Function "STD" not found</td>
   </tr>
   <tr>
      <td>STDDEV()</td>
      <td>STDDEV(expr)</td>
      <td>返回expr的总体标准偏差。 STDDEV（）是与Oracle兼容的标准SQL函数STDDEV_POP（）的同义词。 如果没有匹配的行，STDDEV（）返回NULL</td>
      <td>是</td>
      <td>vds计算的是样本标准差，同STDDEV_SAMP（）</td>
   </tr>
   <tr>
      <td>STDDEV_POP()</td>
      <td>STDDEV_POP(expr)</td>
      <td>返回expr的总体标准偏差（VAR_POP（）的平方根）。您也可以使用STD（）或STDDEV（），这是相当但不是标准的SQL。 如果没有匹配的行，STDDEV_POP（）返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>STDDEV_SAMP()</td>
      <td>STDDEV_SAMP(expr)</td>
      <td>返回expr的样本标准偏差（VAR_SAMP（）的平方根）。 如果没有匹配的行，STDDEV_SAMP（）返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>STR_TO_DATE()</td>
      <td>STR_TO_DATE(str,format)</td>
      <td>将字符串转换为日期</td>
      <td>否</td>
      <td>Function "STR_TO_DATE" not found</td>
   </tr>
   <tr>
      <td>STRCMP()</td>
      <td>STRCMP(expr1,expr2)</td>
      <td>如果字符串相同，则STRCMP（）返回0，如果第一个参数根据当前排序顺序小于第二个参数，则返回1，否则返回1。</td>
      <td>否</td>
      <td>Function "STRCMP" not found</td>
   </tr>
   <tr>
      <td>SUBDATE()</td>
      <td>SUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)</td>
      <td>当用第二个参数的INTERVAL形式调用时，SUBDATE（）与DATE_SUB（）相同</td>
      <td>否</td>
      <td>Function "SUBDATE" not found</td>
   </tr>
   <tr>
      <td>SUBSTR()</td>
      <td>SUBSTR(str,pos), SUBSTR(str FROM pos), SUBSTR(str,pos,len), SUBSTR(str FROM pos FOR len)</td>
      <td>同SUBSTRING()</td>
      <td>是</td>
      <td>vds中的语法为{ SUBSTRING | SUBSTR } ( string, startInt [, lengthInt ] )，vds不支持SUBSTR(str FROM pos), SUBSTR(str FROM pos FOR len)</td>
   </tr>
   <tr>
      <td>SUBSTRING()</td>
      <td>SUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len), SUBSTRING(str FROM pos FOR len)</td>
      <td>有len参数的表单从位置pos的字符串str返回一个子字符串。带有len参数的表单从字符串str返回一个长度为ls的字符串，从位置pos开始。使用FROM的表单是标准的SQL语法。也可以使用pos的负值。在这种情况下，子字符串的开头是从字符串末尾而不是开头的pos字符。这个函数的任何形式的pos都可以使用负值。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>SUBSTRING_INDEX()</td>
      <td>SUBSTRING_INDEX(str,delim,count)</td>
      <td>在分隔符delim的count出现之前返回字符串str中的子字符串。如果count为正数，则返回最终分隔符左边的所有内容（从左开始计数）。如果count为负，则返回最终分隔符右侧的所有内容（从右侧计数）。 SUBSTRING_INDEX（）在搜索delim时执行区分大小写匹配。</td>
      <td>否</td>
      <td>Function "SUBSTRING_INDEX" not found</td>
   </tr>
   <tr>
      <td>SUBTIME()</td>
      <td>SUBTIME(expr1,expr2)</td>
      <td>返回expr1 - expr2表示为与expr1格式相同的值。 expr1是时间或日期时间表达式，expr2是时间表达式。</td>
      <td>否</td>
      <td>Function "SUBTIME" not found</td>
   </tr>
   <tr>
      <td>SUM()</td>
      <td>SUM([DISTINCT] expr)</td>
      <td>返回expr的总和。如果返回集没有行，则SUM（）返回NULL。 DISTINCT关键字可以用于只求和expr的不同值。 如果没有匹配的行，SUM（）返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>SYSDATE()</td>
      <td>SYSDATE([fsp])</td>
      <td>根据该函数是否在字符串或数字上下文中使用，将当前日期和时间作为“YYYY-MM-DD HH：MM：SS”或YYYYMMDDHHMMSS格式的值返回</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>SYSTEM_USER()</td>
      <td>SYSTEM_USER()</td>
      <td>同USER()</td>
      <td>否</td>
      <td>Function "SYSTEM_USER" not found</td>
   </tr>
   <tr>
      <td>TAN()</td>
      <td>TAN(X)</td>
      <td>返回参数的正切,参数为弧度</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>TIME()</td>
      <td>TIME(expr)</td>
      <td>提取时间部分时间或datetime表达式expr并将其作为字符串返回。</td>
      <td>否</td>
      <td>Function "TIME" not found</td>
   </tr>
   <tr>
      <td>TIME_FORMAT()</td>
      <td>TIME_FORMAT(time,format)</td>
      <td>与DATE_FORMAT（）函数一样使用，但格式字符串可能只包含格式说明符，仅限于几小时，几分钟，秒和微秒。其他说明符产生NULL值或0</td>
      <td>否</td>
      <td>Function "TIME_FORMAT" not found </td>
   </tr>
   <tr>
      <td>TIME_TO_SEC()</td>
      <td>TIME_TO_SEC(time)</td>
      <td>返回时间参数，转换为秒。</td>
      <td>否</td>
      <td>Function "TIME_TO_SEC" not found</td>
   </tr>
   <tr>
      <td>TIMEDIFF()</td>
      <td>TIMEDIFF(expr1,expr2)</td>
      <td>返回表示为时间值的expr1 - expr2。 expr1和expr2是时间或日期和时间表达式，但两者必须是相同的类型。</td>
      <td>否</td>
      <td>Function "TIMEDIFF" not found</td>
   </tr>
   <tr>
      <td>*</td>
      <td>*</td>
      <td>乘法运算符</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>TIMESTAMP()</td>
      <td>TIMESTAMP(expr), TIMESTAMP(expr1,expr2)</td>
      <td>使用单个参数，该函数返回日期或datetime表达式expr作为datetime值。有两个参数，它将时间表达式expr2添加到date或datetime表达式expr1，并将结果作为datetime值返回。</td>
      <td>否</td>
      <td>Function "TIMESTAMP" not found</td>
   </tr>
   <tr>
      <td>TIMESTAMPADD()</td>
      <td>TIMESTAMPADD(unit,interval,datetime_expr)</td>
      <td>将整数表达式间隔添加到date或datetime表达式datetime_expr。间隔单位由单位参数给出，它应该是以下值之一：MICROSECOND（微秒），SECOND，MINUTE，HOUR，DAY，WEEK，MONTH，QUARTER或YEAR。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>TIMESTAMPDIFF()</td>
      <td>TIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)</td>
      <td>返回datetime_expr2 - datetime_expr1，其中datetime_expr1和datetime_expr2是date或datetime表达式。一个表达式可能是日期，而另一个表达式可能是日期时间;如果需要，日期值被视为具有时间部分“00：00：00”的日期时间。单位的合法值与TIMESTAMPADD（）函数说明中列出的值相同。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>TO_BASE64()</td>
      <td>TO_BASE64(str)</td>
      <td>将字符串参数转换为base-64编码形式，并将结果作为具有连接字符集和排序规则的字符串返回。如果参数不是字符串，则在转换发生之前将其转换为字符串。如果参数为NULL，则结果为NULL。 Base-64编码的字符串可以使用FROM_BASE64（）函数进行解码。</td>
      <td>否</td>
      <td>Function "TO_BASE64" not found</td>
   </tr>
   <tr>
      <td>TO_DAYS()</td>
      <td>TO_DAYS(date)</td>
      <td>根据给定日期，返回一天数（自0年以来的天数）</td>
      <td>否</td>
      <td>Function "TO_DAYS" not found</td>
   </tr>
   <tr>
      <td>TO_SECONDS()</td>
      <td>TO_SECONDS(expr)</td>
      <td>给定一个日期或datetime expr，返回自0年以来的秒数。如果expr不是有效的日期或datetime值，则返回NULL</td>
      <td>否</td>
      <td>Function "TO_SECONDS" not found</td>
   </tr>
   <tr>
      <td>Touches() (deprecated 5.7.6)</td>
      <td>Touches(g1, g2)</td>
      <td>ST_Touches（）和Touches（）是同义词</td>
      <td>否</td>
      <td>Function "TOUCHES" not found</td>
   </tr>
   <tr>
      <td>TRIM()</td>
      <td>TRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr FROM] str)</td>
      <td>返回所有remstr前缀或后缀被删除的字符串str。如果没有给出指定者BOTH，LEADING或TRAILING，则假设BOTH。 remstr是可选的，如果没有指定，则会删除空格。</td>
      <td>是</td>
      <td>vds的语法为TRIM ( [ { LEADING | TRAILING | BOTH } [ string ] FROM ] string )，从字符串中删除两端的所有前导空格，尾随空格或空格。其他字符也可以被删除。Vds中TRIM(TRAILING remstr FROM str)没有删除其他字符，例如：SELECT TRIM(TRAILING 'xyz' FROM 'barxxyz'),没有删除xyz</td>
   </tr>
   <tr>
      <td>TRUNCATE()</td>
      <td>TRUNCATE(X,D)</td>
      <td>回数字X，截断为D小数位。如果D为0，则结果没有小数点或小数部分。 D可以为负，导致值X的小数点左侧的D数字变为零。</td>
      <td>是</td>
      <td>"vds的语法为{ TRUNC | TRUNCATE } ( { {numeric, digitsInt} | timestamp | date | timestampString } ),vds中当截取的是数字时，返回一个double。当与时间戳一起使用时，将时间戳截断为日期（天）值。当与日期一起使用时，将日期截断为日期（天）减少时间部分。当使用时间戳作为字符串时，将时间戳截断为日期（天）值。</td>
   </tr>
   <tr>
      <td>"</td>
   </tr>
   <tr>
      <td>UCASE()</td>
      <td>UCASE(str)</td>
      <td>同UPPER()</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>-</td>
      <td>-</td>
      <td>更改参数的符号</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>UNCOMPRESS()</td>
      <td>UNCOMPRESS(string_to_uncompress)</td>
      <td>解压缩COMPRESS（）函数压缩的字符串。如果参数不是压缩值，则结果为NULL。该函数需要使用诸如zlib之类的压缩库编译MySQL。否则返回值始终为NULL。</td>
      <td>否</td>
      <td>Function "UNCOMPRESS" not found</td>
   </tr>
   <tr>
      <td>UNCOMPRESSED_LENGTH()</td>
      <td>UNCOMPRESSED_LENGTH(compressed_string)</td>
      <td>返回压缩字符串在压缩之前的长度。</td>
      <td>否</td>
      <td>Function "UNCOMPRESSED_LENGTH" not found</td>
   </tr>
   <tr>
      <td>UNHEX()</td>
      <td>UNHEX(str)</td>
      <td>对于字符串参数str，UNHEX（str）将参数中的每对字符解释为十六进制数，并将其转换为由数字表示的字节。返回值是二进制字符串。</td>
      <td>否</td>
      <td>Function "UNHEX" not found</td>
   </tr>
   <tr>
      <td>UNIX_TIMESTAMP()</td>
      <td>UNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)</td>
      <td>返回一个Unix时间戳</td>
      <td>否</td>
      <td>UNIX_TIMESTAMP not found</td>
   </tr>
   <tr>
      <td>UpdateXML()</td>
      <td>UpdateXML(xml_target, xpath_expr, new_xml)</td>
      <td>此函数将XML标记xml_target的给定片段的单个部分替换为新的XML片段new_xml，然后返回更改的XML。被替换的xml_target部分与用户提供的XPath表达式xpath_expr匹配。</td>
      <td>否</td>
      <td>Function "UPDATEXML" not found</td>
   </tr>
   <tr>
      <td>UPPER()</td>
      <td>UPPER(str)</td>
      <td>返回字符串str，其中所有字符根据当前字符集映射更改为大写。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>USER()</td>
      <td>USER()</td>
      <td>以utf8字符集中的字符串形式返回当前的MySQL用户名和主机名。</td>
      <td>是</td>
      <td>vds只返回此会话的当前用户的名称</td>
   </tr>
   <tr>
      <td>UTC_DATE()</td>
      <td>UTC_DATE, UTC_DATE()</td>
      <td>据该函数是否在字符串或数字上下文中使用，将当前UTC日期作为“YYYY-MM-DD”或YYYYMMDD格式的值返回。</td>
      <td>否</td>
      <td>Function "UTC_DATE" not found</td>
   </tr>
   <tr>
      <td>UTC_TIME()</td>
      <td>UTC_TIME, UTC_TIME([fsp])</td>
      <td>根据该函数是否在字符串或数字上下文中使用，将当前UTC时间作为“HH：MM：SS”或HHMMSS格式的值返回。</td>
      <td>否</td>
      <td>Function "UTC_TIME" not found</td>
   </tr>
   <tr>
      <td>UTC_TIMESTAMP()</td>
      <td>UTC_TIMESTAMP, UTC_TIMESTAMP([fsp])</td>
      <td>将当前UTC的日期和时间作为“YYYY-MM-DD HH：MM：SS”或YYYYMMDDHHMMSS格式的值返回，具体取决于该函数是在字符串还是数字上下文中使用。</td>
      <td>否</td>
      <td> Function "UTC_TIMESTAMP" not found </td>
   </tr>
   <tr>
      <td>UUID()</td>
      <td>UUID()</td>
      <td>返回通用唯一标识符（UUID）</td>
      <td>否</td>
      <td>Function "UUID" not found</td>
   </tr>
   <tr>
      <td>UUID_SHORT()</td>
      <td>UUID_SHORT()</td>
      <td>返回一个“短”通用标识符作为64位无符号整数。 UUID_SHORT（）返回的值与UUID（）函数返回的字符串格式的128位标识符不同，具有不同的唯一性属性。</td>
      <td>否</td>
      <td>Function "UUID_SHORT" not found</td>
   </tr>
   <tr>
      <td>VALIDATE_PASSWORD_STRENGTH()</td>
      <td>VALIDATE_PASSWORD_STRENGTH(str)</td>
      <td>给定一个表示明文密码的参数，该函数返回一个整数，表示密码有多强。返回值的范围为0（弱）到100（强）。VALIDATE_PASSWORD_STRENGTH（）的密码评估由validate_password插件完成。如果未安装该插件，则该函数始终返回0.</td>
      <td>否</td>
      <td>Function "VALIDATE_PASSWORD_STRENGTH" not found</td>
   </tr>
   <tr>
      <td>VALUES()</td>
      <td>VALUES(col_name)</td>
      <td>定义INSERT期间要使用的值</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>VAR_POP()</td>
      <td>VAR_POP(expr)</td>
      <td>返回expr的总体标准差。它将行视为整个群体，而不是样本，因此它的行数为分母。您也可以使用VARIANCE（），这是相当的但不是标准的SQL。 如果没有匹配的行，则VAR_POP（）返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>VAR_SAMP()</td>
      <td>VAR_SAMP(expr)</td>
      <td>返回expr的样本方差。也就是说，分母是行数减1。 如果没有匹配的行，则VAR_SAMP（）返回NULL。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>VARIANCE()</td>
      <td>VARIANCE(expr)</td>
      <td>返回expr的总体标准差。 VARIANCE（）是作为MySQL扩展提供的标准SQL函数VAR_POP（）的同义词。 如果没有匹配的行，则VARIANCE（）返回NULL。</td>
      <td>是</td>
      <td>vds是同VAR_SAMP（）</td>
   </tr>
   <tr>
      <td>VERSION()</td>
      <td>VERSION()</td>
      <td>返回一个表示MySQL服务器版本的字符串</td>
      <td>否</td>
      <td> Function "VERSION" not found</td>
   </tr>
   <tr>
      <td>WAIT_FOR_EXECUTED_GTID_SET()</td>
      <td>WAIT_FOR_EXECUTED_GTID_SET(gtid_set[, timeout])</td>
      <td>在MySQL 5.7.5中引入的WAIT_FOR_EXECUTED_GTID_SET（）类似于WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS（），因为它等待直到服务器执行了其全局事务标识符包含在gtid_set中的所有事务，或者直到超时秒过去，以先到者为准。与WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS（）不同，WAIT_FOR_EXECUTED_GTID_SET（）不考虑从站是否正在运行，如果未启用基于GTID的复制，则返回错误。</td>
      <td>否</td>
      <td>Function "WAIT_FOR_EXECUTED_GTID_SET" not found</td>
   </tr>
   <tr>
      <td>WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS()</td>
      <td>WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS(gtid_set[, timeout][,channel])</td>
      <td>等待给定的GTID在从机上执行。</td>
      <td>否</td>
      <td>Function "WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS" not found</td>
   </tr>
   <tr>
      <td>WEEK()</td>
      <td>WEEK(date[,mode])</td>
      <td>返回日期的周号</td>
      <td>是</td>
      <td>vds不支持[,mode]</td>
   </tr>
   <tr>
      <td>WEEKDAY()</td>
      <td>WEEKDAY(date)</td>
      <td>返回日期的工作日索引（0 =星期一，1 =星期二，... 6 =星期日）。</td>
      <td>否</td>
      <td>Function "WEEKDAY" not found</td>
   </tr>
   <tr>
      <td>WEEKOFYEAR()</td>
      <td>WEEKOFYEAR(date)</td>
      <td>将日期的日历周作为1到53之间的数字返回。WEEKOFYEAR（）是一个相当于WEEK（date，3）的兼容性函数。</td>
      <td>否</td>
      <td>Function "WEEKOFYEAR" not found</td>
   </tr>
   <tr>
      <td>WEIGHT_STRING()</td>
      <td>WEIGHT_STRING(str [AS {CHAR|BINARY}(N)] [LEVEL levels] [flags])</td>
      <td>该函数返回输入字符串的权重字符串。返回值是一个二进制字符串，表示字符串的比较和排序值</td>
      <td>否</td>
      <td>Function "WEIGHT_STRING" not found</td>
   </tr>
   <tr>
      <td>Within() (deprecated 5.7.6)</td>
      <td>Within(g1, g2)</td>
      <td>MBRWithin（）和Within（）是同义词</td>
      <td>否</td>
      <td>Function "WITHIN" not found</td>
   </tr>
   <tr>
      <td>X() (deprecated 5.7.6)</td>
      <td>X(p)</td>
      <td>ST_X（）和X（）是同义词。</td>
      <td>否</td>
      <td>Function "X" not found</td>
   </tr>
   <tr>
      <td>XOR</td>
      <td>XOR</td>
      <td>逻辑异或。如果任一操作数为NULL，则返回NULL。对于非NULL操作数，如果奇数操作数非零，则求值为1，否则返回0。</td>
      <td>否</td>
      <td></td>
   </tr>
   <tr>
      <td>Y() (deprecated 5.7.6)</td>
      <td>Y(p)</td>
      <td>ST_Y（）和Y（）是同义词</td>
      <td>否</td>
      <td>Function "Y" not found</td>
   </tr>
   <tr>
      <td>YEAR()</td>
      <td>YEAR(date)</td>
      <td>返回日期的年份，范围为1000到9999，或者为0表示“零”日期。</td>
      <td>是</td>
      <td>无</td>
   </tr>
   <tr>
      <td>YEARWEEK()</td>
      <td>YEARWEEK(date), YEARWEEK(date,mode)</td>
      <td>返回年份和周的日期。结果的年份可能与今年第一和最后一个星期的年份不同。</td>
      <td>否</td>
      <td>Function "YEARWEEK" not found</td>
   </tr>
</table>