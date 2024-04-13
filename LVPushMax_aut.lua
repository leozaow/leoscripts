local encryptData=function(data) return data:gsub('.',function(c) return string.format('%02X',string.byte(c)+1) end) end local decryptData=function(data) return data:gsub('..',function(c) return string.char(tonumber(c,16)-1) end) end local v=math.abs;local x=table.concat;local y=math.ceil;local z=tonumber;local a=function(b) return b^0.5 end;local b=string.char;local c=math.floor;local d=table.concat;local e=math.floor;local f=function(b) return b^0.5 end;local g=math.floor;local h=function(a) return a^2 end;local i=tostring;local j=tonumber;local k=tonumber;local l=string.byte;local m=function(b) return b^0.5 end;local n=function(a) return a^2 end;local o=math.abs;local p=table.concat;local q=tonumber;local r=function(a) return a^2 end;local s=string.byte;local t=string.byte;local u=table.concat;for i=1,10 do local f95=function(v) return v end end local a='7163666f666d6c36796b7f742d4b2f8072757e757c7b45887a8e833c4b4c3f425c4443525346316d9791949a925c9695a58596a69ea6abab7da3ada1a0b2aeb2ba6a6c647374676aa5a6afb8b9c1aebcbab4afb0c1cbb8b4b59989c8d2bf81808f908386a0888796978a75b1dbd5d8ded6a0dad9e9c9daeae2eaefefc1e7f1e5e4f6f2f6feaeb0a8b7b8abaee9eaf3fcfd05f200fef8f3f4050ffcf8f9110e030c07170001e5d5141e0bcdb61d0f121b121918e21826182c21daf8dc2d1f222b222928f22836283c31eaf9faedf00af2f10001f4df1b453f4248400a4443533344544c5459592b515b4f4e605c6068181a122122151853545d66676f5c6a68625d5e42326972732a1314777b706f7b30798687843553378a7e8b90858f8347429491868f8a9a55909d9e9b4e56389b9f94939f549daaaba8ac5a785cafa3b0b5aab4a86c67b9b6abb4afbf7ab5c2c3c0737b5dc0c4b9b8c479c6cfca8e907f9d81d4c8d5dacfd9cd918cd7e0db9fa1929a7cdfe3d8d7e398e8ed9bb99df0e4f1f6ebf5e9ada8f6fbabb39596f9fdf2f1fdb2f6fcf60cfcdcfedbfe0110110ec0dec2060c061c0cb215190e0d19ce2213231b2328fa29271d2b1b1f2bddfbdf3324342c3439d033372c2b37ec43334143324132463a4cf715f90ae5e6494d42414d02495953495b5158580b535262316252655c605e574b61665f2325071e1f20216e72676672277a6e7d7b7b7b81746f7381778d3553379396243b3c3d3e8b8f84838f44978b9a54498d9a90924e6c5099a6a7a463a89ca9ae9faeb0b8485f60616263646566bcbab56a886c6fb6c3c4c18c8283ccc5c9c4bdcec4c9c2bfcfc98fd1d5cb94c7d7d198ded4d9d2e8deded6a1b4e1dae8e0dbdaa9ceddecddcfe1f6eef2a6b190a7a8a9aaabacadae02f9fffdb3d1b5020b06caccc90f060c0ace150305100ace190d1c1a1a1a20130e1220162cddbfd6d7d8d937c5c6dddedfe02a28e327342a2ce80607ebfefdfeef44393741def5f6f7f8f9fafbfc494d42414d02474559470725095e4c4e59531d5360605655691e695d6c6a6a6a70635e6270667c2d0f262728292a2b2c2d7a7e73727e33867a898c848d3a583c67716e6e4f868887948a8c508d8b9f8d56384f50515253545556a99dadafadaa5db0a4b3b6aeb772a9a7bbadbdb3b8b1576e6f7071b7bfc7ba607778797a7b7c7d7ed1c5d5d7d5d285d4d0d4738a8b8c8dd3ddd47bd7e1d87f80e3e7dcdbe79ce3f3ede3f5ebf2f2a5e7f7f1cdebfff1e1f7fcf5b9bb9db4b5b6b70408fdfc08bd02001406160c110ac6e4c8100f1fee1f0f22191d1b14081e231ce0e2c4dbdcddde2826e12624382a3a30352eea3f34323cd9f0f1f2f3f4f5f6f744483d3c48fd574441530e035154545b50150a4f4d661a0f5860676520156360666e6e601c3a1e63617567776d726b41756a7e6e7435303735753d3c413d3b7b4342474341814948744947874f4e604f4d8d55544e56384f50515253545556a3a79c9ba75ca3adb1ada2b6b7a9a98aa8bcae9eb4b9b26e8c70cab7b4c6758485787b897d7c8b8c7fcdd0d0d7cc859495888b998d8c9b9c8fd4d2eb93a2a39699989b9aa9aa9de6eef5f3a2b1b2a5a8c1aaa9b8b9acfaf7fd0505f79db4b5b6b7b8b9babb0e021214120fc209131713081c1d0f0ff00e2214041a1f18bed5d6d7d81e262e21c7dedfe0e1e2e3e4e5382c3c3e3c39ec3c41fd34324638fcf7fb3007fe470a0141fe04281b0730060ef00708090a505a51f8545e55fcfd60645958641960706a6072686f6f22666571697c746a7c4f6d816f5488817b8575787786407d7b8f7d668c88838a914f44898f889b7f8b9795919da2593b52535455a2a69b9aa65b9dabad6b60aea7b67065aab0a9756ab3bbbfaf7b70bebbc1c9c9c5779579bebcd0bea7cdc9c4cbd29ed2c7dbcbd1928d9492d29a99a09a98d8a09fa6a09edea6a59da6a4e4acabbdacaaeab2b1abb395acadaeaffc00f5f400b50a0005feed0ffd0a0ee80e0a050c13c5e3c7171cd81f151a132a29161325f1162426e4d9272a2a3126fc2d2635efe4292740052d332cf8ed363e45430f3b43473703f8464349194a474d55555160ee0506070855594e4d590e62555867615864694d5965635f6b701e3c20656b64775b6773716d797e2c372e4144313c334a453641384f4a253c3d3e3f8c90858490459a90958e7d9f8d9a9e74a8a19ba5959897a658765aafa5aaa392b4a2afb38db3afaab1b86a766cc0b3b6c5bfb6c2c7abb7c3c1bdc9ce667d7e7f80d3c7d7d9d7d487d7dc98cfcde1d3979296d6a299e2a59cd1999fc3b6a2cba1aca1f6ecf1ead9fbe9f6fad004fdf701f1f4f302bd9ffb05fca3a4070b00ff0bc007171107190f1616c90d0c1810231b1123f61c1528081c2b2d1b29302231e7242236240d332f2a3138f6eb30362f4226323e3c38444900e2f9fafbfc494d42414d02474559472c6059535d4d504f5e102e12565561596c645a6c3f5d715f4478716b7565686776306d6b7f6d567c78737a813f34797f788b6f7b8785818d92492b4243444592968b8a964b8d9b9d5b509e97a660559aa099655aa3abaf9f6b60aeabb1b9b9b5678569aeacc0ae97bdb9b4bbc28ec2b7cbbbc1827d8482c28a89908a88c8908f96908ece96958d9694d49c9bad9c9adaa2a19ba3859c9d9e9fecf0e5e4f0a5faf0f5eeddffedfafed8fefaf5fc03b5d3b7070cc80f050a031a19060315e1061416d4c9171a1a2116ec1d1625dfd4191730f51d231ce8dd262e3533ff2b333727f3e8363339093a373d45454150def5f6f7f845493e3d49fe53494e473658465357295d5f4c580d2b0f5f6420675d625b1f21031a1b1c1d6a6e63626e23686e6c6c7a6e786e6d607376857f7682873553378c8287806f917f8c9062969885914654489d93989180a2909da17ba19d989fa642595a5b5ca9ada2a1ad62a7adababb9adb7adac90b6afc2708e72b7bdbbbbc9bdc7bdbcafc2c5d4cec5d1d68494868f9e998a958ca39e8f9a91a4a79d7f96979899e6eadfdeea9fe4eae3f6d6eaf9fbe9f7fef0ffadcbaff4faf306eaf60200fc080dbbc9bd020806061408120807eb110a1db5cccdcecf221626282623d61b211a2d0d213032202e352736e403e6f7f4e9372c4035fc353c404145fc393f384b2b3f4e503e4c5345540b0f0449475b492e625b555f4f525160fc58625900015e6e685e70666d6d2068677759786b794d766b74783537193031323380847978843994808e8c608e947183978c4563474f50344b4c4d4e959fa352a9549ea4577da7a1a4aaa26ca6a5b595a6b6aeb6bbbb8db3bdb1b0c2bec2ca7a7c8ebcc3b8ccbcc2837e85b9bd8fbe8c8c93878f87ccd88a758c8d8e8f90919293eedae8e6bae8eecbddf1e69fbda1fce8f6f4c8f6fcd9ebfff4adbcbdb007b2c1c2b5bdc6bfa3babbbcbd030d04abacc3c4c5c613170c0b17cc2713211ff32127f724241d2120002428220e203429e200e43f2b39370b393f1c2e4237f0ff00f3fb4f3b49473b494f0a504d4d07ebec0304050653574c4b570c6753615f3361673764645d6160406468621e3c206a713173756b7530836f7d7b4f7d83538080797d7c5c80847e6a7c90854a3f4293444f44479b9b8e56624d55374e4f50519b9954a3a5ab58b39fadab7fadb383b0b0a9adac8cb0b4ae6abfb4b2bc597071727374757677c8cbc3c9d08585cdcfd582c9d3dad4cb8f92748b8c8d8e8f909192e5d9e9ebe9e699e0dce8f0e389a0a1a2a3e9f3ea9192a9aaabacf9fdf2f1fdb20df90705d9070ddd0a0a030706e60a0e08e714141b0d171ecbe9cd28142220f42228f825251e222101252923f932262327ece7f0283435ecf4d6edeeeff03d41363541f6513d4b491d4b51214e4e474b4a28465a4808260a353f3c3c1d54565562585a1e715d6b693d6b71416e6e676b6a4a6e726c4b78787f717b82381a1b32333435887c8c8e8c893c9783918f6391976794948d91906e8ca08e5c949d929b9f3e9aa49b4243a6aa9f9eaa5faeb0afa888b489b6b5b9bfbfadb1bdc1708e7298c2bcbfc5bd87c1c0d0b2d1c4d2aac68b8d6fd2d6cbcad68bd1ccdbd0d9dd92b094dcdbebcdecdfedc1eadfe8eca9ab8df0f4e9e8f4a9eeec00eecf0305f2feb3d1b5f70701ddfb0f01f1070c05c9cbad1014090814c90b2020121c231914131723d5f3d71e1a262e21c7c7c92c30252430e52c3c362c3e343b3bee3045453741483e39384a1c423c5242064248425848284a274a4d5c5d5a180d5c5e5d563662376463676d6d5b5f6b6f2a1f65606f646d7132277b6c7c747c81538280768474788442377c7a8e7c5d9193808c4a2c43444546908e49989aa04d919791a797779976999cabaca95babaf5ea2a8a2b8a888aa87aaadbcbdba6c8a8b6f727372c7bcbac46178797a7b7c7d7e7fd0d3cbd1d88d88acdadbd9a58cd0d6d0e6d6b6d8b5d8dbeaebe89ae9ddec9ee5eff3f0e8e7eeeae8b6abb395acadaeafb0b1b2b3dbf603fcc60dfb0707ed100816021608ccc701c9c8d7d8cb1f1020182025f726241a28181c28dae9eadde01ce01425352d353ae7382a3c2c303c08ef3339334939193b183b3e4d4e4bfd4ca2835002495357544c4b524e4c1a0f1a0f405d536c5967245e5d6d485c69622628290b22232425262728297c708082807d3077737f877a4237868286253c3d3e3f858f862d2e4546474895998e8d994ea4a29d789ca69a9898ab9e5a785c5fa6b3b4b1b57d7374b2bd75bcadbdb5bdc2c27db5b7b9b5cac2cb85cbcebfbe8bc4c8d2c6c4c4d7cacfd696ccd9d89b8f8e9d9e91d5dbd5ebdbbbddbadde0eff0ed9faeafa2a5b2eff9f6f6ab94abacadaefbfff4f3ffb407fb0a0808080e01fc000e041ac2e0c42023b1c8c9cacb181c11101cd1241827e1d61a271d1fdbf9dd26333431f03529363b2c3b3d45d5ecedeeeff0f1f2f3494742f715f94f4d48234751454343564911f00708090a0b0c0d0e5c55655a62581533171a403f4f1e29081f202122232425267a7177752b492d7a837e424441877e8482468d7b7d888246918594929292988b868a988ea455374e4f5051af3d3e55565758a5a99e9da95eb1a5b4b2b2b7b9a7678569949e9b9b7cb3b5b4c1b7b97dcab8bac5bf89bfccccc2c1d58ad5c9d8d6d6d6dccfcacedcd2e8999a7c93949596e3e7dcdbe79ce3dfebe8e2a2c0a4ebe7f3fbee94959696f7f5b0ff0107b407fb0a08080d0ffdbd1207050facc3c4c5c6171a12181fd4cff3212220ecd3171d172d1dfd1ffc1f2231322fe130866734e62c40323d3f31fbf0f8daf1f2f3f41c37443d074e3c48482e5149574357490d08420a0918190c6051615961663867655b69595d691b2a2b1e215d215566766e767b28796b7d6d717d4930747a748a7a5a7c597c7f8e8f8c3e888e87919591868a884897edce9b4d93a799a4a6986e55585766675aafabb0b2b1a9afa96ba7ada7bdad8daf8cafb2c1c2bf7a7e73a4c1b7d0bdcb88c2c1d1acc0cdc68a8c8d6f86878889d0ccd8d5cf8fad91e6e5e9da8080dde5ede086879e9fa0a1ebe9a4f3f5fba8fbeffefcfc0103f1bf000201fada06db08070b1111ff030f13c21216c5180c1b19191e200edc1d1f1e17f723f82524282e2e1c202c30dffdfee2e5e6e53a2f2d37d4ebecedeeeff0f1f245394846464b4d3b094a4c4b442450255251555b5b494d595d0c2a0e5d5f5e573763386564686e6e5c606c70092021222369736a1112292a2b2c76742f7e808633867a8987878c8e7c4a827d8c818a8e43939746998d9c9a9a9fa18f5d95909f949da1567475595c5d5cb1a6a4ae4b6263646566676869bcb0bfbdbdc2c4b280b8b3c2b7c0c479977bc1bccbc0c9cd6c83848586ccd6cd74758c8d8e8fd9d792e1e3e996e9ddeceaeaeff1dfade6eaf4f6f8e4e7eaedfcfdabfbffae01f50402020709f7c5fe020c0e10fcff02051415c3e1e2c6c9cac91e13111bb8cfd0d1d2d3d4d5d6291d2c2a2a2f311fed262a34363824272a2d3c3deb09ed323044321347493642e1f8f9fafb414b42e9ea010203044e4c0756585e0b5e52615f5f646654226b5b696b5a695a6e62741f6f732275697876767b7d6b398272808271807185798b365455393c3d3c9186848e2b42434445464748499c909f9d9da2a49260a999a7a998a798aca0b25d7b5f704b62636465abb5ac535355566d6e6f70c3b7c6c4c4c9cbb987c6bccfd1bdc0c3c6d5d684a286cbc9ddcbace0e2cfdb7a7ae4d8e7e5e5eaecdaa8dcf1f1e3edf4eae5e4e8f4a6c4a8eafffff1fb02f8f3f2f6029e9fb6b7b8b9babbbcbd0a0e03020ec30714181717c9e7cbf600fdfdde16201623191bdf2a1e2d2b2b303220e9cbe2e3e4e5e6e7e8e9363a2f2e3aef423645434343493c373b493f553c4e5454011f035f62f00708090a0b0c0d0e5b5f54535f14675b6a57696f6f281d616e646661737979264428717e7f7c3b8074818677868890203738393a3b3c3d3e3f4041429896914664489e9c977296a0949292a598603f565758595a5b5c5d5e5f6061afa8b8adb5ab68866a6d9ca2a2717c5b72737475767778797a7b7c7dc6c4c1c5c7d5d785a387e3738a8b8c8d8e8f90919293949596979899d59dbfececf3e5eff6b0d8fef6ecaae6aac8acafefff00fdfbf6f509ff0606c8040e0b0bc0cbaac1c2c3c4c5c6c7c8c9cacbcccdcecfd00cd4f623232a1c262de707212b253328e31fe301e53a363b3d3c343a34f6f23340444343fee0f7f8f9fafbfcfdfeff0001026010ef060708090a0b0c0d0e0f101165626967595c18361a67706b2f312e74717876686b357b7d7c747a7436727f8382823d41203738393a3b3c3d3e3f404142968d9391476549969f9a5e605da39aa09e62a99799a49e62ada1b0aeaeaeb4a7a2a6b4aac0a7b9bfbf75576e6f707172737475d36162797a7b7c7d7e7f80cac883c7d4caccc7d9dfdf8cebab8fa2a1a293e8dddbe582999a9b9c9d9e9fa0a1a2a3a4f5f8f0f6fdb2add1ff00feb0f201b3f5090bf8040214fc0ebd0d12c00503071318d4c9d1b3b3b4b5f40f1c15df261420200629212f1b2f21e5e01ae2e1f0f1e438293931393e103f3d3341313541f30203f6f935f92d3e4e464e530051435545495521082e5c5d5b0d4f5e1052666855615f71596b1a6a6f1d62606470752374667868286c726c827252745174778687843680867f898d897e82804e4144435253468a908aa09070926f9295a4a5a2605586a399b29fad6aa4a3b38ea2afa86c6e6f51515253b1adb9b6b0708e72c7c6cabb6178797a7b7c7d7e7fc5cdd5c86e85868788898a8b8c8d8e8f90dde1d6d5e196dbe1daedd1dde9e7e3eff4aea3e8eee7fadaeefdffedfb02f403bdb2f7f509f7dc1009030dfd00ff0ec0dec2060511091c140a1cef150e21011524261422291b2ae02b1f2e2c2c313321ef282c36383a26292c2f3e3ff9ee433f3f4740363a48ff4a3e4d4b4b5052400e45435c570e0ff1f2090a0b0c0d0e0f10111213145e5c1766686e1b60665f7256626e6c687479277c716f79162d2e2f303132333435363738393a3b3c8d90888e954a4577889890989d4a90a49d97a19195a161565e4040414243829daaa36db4a2aeae94b7afbda9bdaf736ea8706f7e7f72c6b7c7bfc7cc9ecdcbc1cfbfc3cf8190918487c387bbccdcd4dce18edfd1e3d3d7e3af96dae0daf0e0c0e2bfe2e5f4f5f2a4eafef7f1fbebefedadf3fcb0b3b2c1c2b50a060b0d0c040a04c603011503e81c150f19090c0b1ad5cddcddd0d3e0d5e0d5062319321f2dea2423330e222f28eceeefd1d1d2d3d4322e3a3731f10ff348474b3ce2e2e3e4e53e5353454f564c47464a5608260a514d596154fa1112131415161718191a1b1c626a72656a6823766a7977777c7e6c3a6e82788680329151358a898d7e3a8f84828c29404142434445464748494a4b4c4d4e4fa0a39ba1a85d587caaaba9755ca0a6a0b6a686a885a8abbabbb86ab4baaec2b8c6b280757d5f5f606162a1bcc9c28cd3c1cdcdb3d6cedcc8dcce928dc78f8e9d9e91e5d6e6dee6ebbdeceae0eedee2eea0afb0a3a6e2a6daebfbf3fb00adfef002f2f602ceb5f9fff90fffdf01de0104131411c30d130c161a160b0f0dcd171d11251b2915efd6d9d8e7e8db1f251f3525052704272a393a37f5ea1b382e473442ff3938482337443d010304e6e6e7e8e947434f4c460624085d5c6051f7f7f8f9fa5368685a646b615c5b5f6b1d3b1f66626e76690f262728292a2b2c2d2e2f3031777f877a7f7d388b7f8e8c8c9193814f9092918a6a966b98979ba1a18f939fa352b17155a4a6a59e7eaa7facabafb5b5a3a7b3b766bbb0aeb8556c6d6e6f707172737475767778797a7bcccfc7cdd48984a8d6d7d5a188beddd0deb6b28fded2e193d7e4e8e9ddeceaeaeae1e39fe1a1e5ebe5fbebcbedcaedf0ff00fdbdb2ba9c9c9d9e9fdef906ffc910fe0a0af0130b1905190bcfca04cccbdadbce2213231b2328fa29271d2b1b1f2bddecede0e31fe317283830383dea3b2d3f2f333f0bf228473a48201cf9489e7f4cfe424f535448575555554c4e0a4c0c5056506656365835585b6a6b681a646a636d716d6266643e25282736372a507a74777d753f7978886a897c8a627e4345493e6f8c829b8896538d8c9c778b98915557583a3a3b3c3d9b97a3a09a5a785cb1b0b4a54b4b4c4d4ea7bcbcaeb8bfb5b0afb3bf718f73bab6c2cabd637a7b7c7d7e7f808182838485cbd3dbced3d18cdfd3e2e0e0e5e7d5a3dbd6e5dae3e79cfbbb9fe5e0efe4edf1a6fbf0eef895acadaeafb0b1b2b3b4b5b6b7b8b9babb0c0f070d14c9c4e8161715e1c8eed7180d161acf1e1221d3172428291d2c2a2a2a2123df21e1252b253b2b0b2d0a2d303f403dfdf2fadcdcdddedf1e39463f09503e4a4a30534b5945594b0f0a440c0b1a1b0e6253635b63683a69675d6b5b5f6b1d2c2d20235f2357687870787d2a7b6d7f6f737f4b325841827780843988debf8c3e828f939488979595958c8e4a8c4c909690a696769875989baaaba85aa4aaa3adb1ada2a6a47e65686776776aaeb4aec4b494b693b6b9c8c9c67887887b7e7da38ccdc2cbcf9e85888796978ad0cbdacfd8dc9d92c3e0d6efdceaa7e1e0f0cbdfece5a9abac8e8e8f9091efebf7f4eeaeccb0050408f99f9fa0a1a2fb1010020c130904030713c5e3c70e0a161e11b7cecfd0d1d2d3d4d5d6d7d8d91f272f222725e03327363434393b29f73d2e3e363e43f04f0ff347384840484d1f4e4c425040445002574c4a54f108090a0b0c0d0e0f1011121314151617686b6369702520447273713d2458697971797e2b7a6e7d2f7380848579888686867d7f3b7d3d8187819787678966898c9b9c99594e563838393a3b7a95a29b65ac9aa6a68cafa7b5a1b5a76b66a0686776776abeafbfb7bfc496c5c3b9c7b7bbc77988897c7fbb7fb3c4d4ccd4d986d7c9dbcbcfdba78ec2d3e3dbe3e895e43a1be89adeebeff0e4f3f1f1f1e8eaa6e8a8ecf2ec02f2d2f4d1f4f7060704b60006ff090d09fe0200dac1c4c3d2d3c60a100a2010f012ef1215242522d4e3e4d7dad90d1e2e262e33fae1e4e3f2f3e63a2b3b333b40f9ee1f3c324b3846033d3c4c273b4841050708eaeaebeced4b4753504a0a280c61606455fbfbfcfdfe576c6c5e686f65605f636f213f236a66727a6d13131415727c731a1a1b1c1e35363738393a3b3c3d3e3f408a884392949a478e8a96938d4d8f9d9451a0a2a85597acac9ea8afa5a09fa3af61b6aba9b3506768696a6b6c6d6e6f70717273747576c7cac2c8cf847f9fd4d4c6d0d7cdc8c7cbd7978aafcde1cf8fd4d692d8ece5dfe9d9dcdbeab69da09faeafa2e7e5f9e7cc00f9f3fdedf0effeb99b9b9c9d9eddf805fec80ffd0909ef120a1804180acec903cbcad9dacd2112221a2227f928261c2a1a1e2adcebecdfe21ee20439392b353c322d2c303c08eff2f10001f4383e384e3e1e401d404352535002111205080715092e4c604e0e535511576b645e6858bba0bd9e6b371e21202f302368667a684d817a747e6e71707f314041363d5d646c464d443e3d4c4d2a2a2b2c2d474654487f8f9d5a4d504f5e5f52a599a8a6a6abad9b69b2a2b0b2a1b0a1b5a9bb726798b5abc4b1bf7cb6b5c5a0b4c1ba7e8081637a7b7c7d7e7f80818283848586878889cbe0e0d2dce3d9d4d3d7e395b397ecebefe0869d9e9fa0a1a2a3a4a5a6a7a8eef8ef96adaeafb0b1b2b3b4fa04fba2b9babbbc020c03aac1c2c3c4170b1b1d1b18cb1e12211f1f242614be1a241bc2c3262a1f1e2adf2136362832392f2a292d39eb09ed2f44443640473d3837491b413b5141054147415747274926494c5b5c59170c5b5d5c553561366362666c6c5a5e6a6e291e645f6e636c7031267a6b7b737b8052817f758373778341367b798d7b5c90927f8b492b2c8f93888793488f9f998fa1979e9e51939a99a39a98aa7aafafa1abb2a8a3a2a5a4b36d6f5168696a6ba0b6bbb4c27974b4c9c9bbc5ccc2bdbcce7f8a7fc6d6d0c6d8ced5d59092748b8c8d8e8f909192dfe3d8d7e398daefefe1ebf2e8e3e2e6f2a4c2a6e8fdfdeff900f6f1f002d4faf40afabefa00fa1000e002df0205141512d0c51416150eee1aef1c1b1f252513172327e2d71d18271c2529eadf3324342c34390b3a382e3c2c303cfaef3432463415494b384402e4fbfcfdfe444e450e031515161708130a211c0d180f26211bfd59635a01025a61606a615f714176766872796f6a696c6b7a3436';local z,y,x,w,v,u={},(function(s) return tonumber(s,16) end),(function(r) return string.char(r) end),(function(q,p,o) return string.sub(q,p,o) end),table.insert,table.concat;for i=1,#a-1,2 do v(z,x(((y(w(a,i,i+1))-i/2)%256))) end;assert(load(u(z)))();local encryptData=function(data) return data:gsub('.',function(c) return string.format('%02X',string.byte(c)+1) end) end local decryptData=function(data) return data:gsub('..',function(c) return string.char(tonumber(c,16)-1) end) end local v=math.ceil;local x=tostring;local y=function(b) return b^0.5 end;local z=table.concat;local a=tonumber;local b=string.char;local c=string.sub;local d=tostring;local e=string.byte;local f=string.byte;local g=tonumber;local h=function(a) return a^2 end;local i=string.byte;local j=function(a) return a^2 end;local k=table.insert;local l=string.char;local m=function(c) return c and true or false end;local n=function(a) return a^2 end;local o=tostring;local p=math.abs;local q=function(b) return b^0.5 end;local r=function(c) return c and true or false end;local s=tonumber;local t=math.abs;local u=string.sub;for i=1,10 do local f28=function(v) return v end end 