local encryptData=function(data) return data:gsub('.',function(c) return string.format('%02X',string.byte(c)+1) end) end local decryptData=function(data) return data:gsub('..',function(c) return string.char(tonumber(c,16)-1) end) end local v=table.concat;local x=table.insert;local y=math.abs;local z=table.concat;local a=string.sub;local b=tonumber;local c=string.byte;local d=table.insert;local e=string.sub;local f=table.insert;local g=string.char;local h=string.sub;local i=math.abs;local j=tostring;local k=table.concat;local l=tonumber;local m=string.sub;local n=string.char;local o=function(a) return a^2 end;local p=function(c) return c and true or false end;local q=tostring;local r=table.insert;local s=string.char;local t=function(c) return c and true or false end;local u=function(b) return b^0.5 end;for i=1,10 do local f49=function(v) return v end end local a='7163666f666d6c36796b7f742d4b2f8072757e757c7b45887a8e833c4b4c3f425c4443525346316d9791949a925c9695a58596a69ea6abab7da3ada1a0b2aeb2ba6a6c647374676aa5a6afb8b9c1aebcbab4afb0c1cbb8b4b59989c8d2bf81808f908386a0888796978a75b1dbd5d8ded6a0dad9e9c9daeae2eaefefc1e7f1e5e4f6f2f6feaeb0a8b7b8abaee9eaf3fcfd05f200fef8f3f4050ffcf8f9110e030c07170001e5d5141e0bcdb61d0f121b121918e21826182c21daf8dc2d1f222b222928f22836283c31eaf9faedf00af2f10001f4df1b453f4248400a4443533344544c5459592b515b4f4e605c6068181a122122151853545d66676f5c6a68625d5e42326972732a1314777b706f7b30798687843553378a7e8b90858f8347429491868f8a9a55909d9e9b4e56389b9f94939f549daaaba8ac5a785cafa3b0b5aab4a86c67b9b6abb4afbf7ab5c2c3c0737b5dc0c4b9b8c479c6cfca8e907f9d81d4c8d5dacfd9cd918cd7e0db9fa1929a7cdfe3d8d7e398e8ed9bb99df0e4f1f6ebf5e9ada8f6fbabb39596f9fdf2f1fdb2f6fcf60cfcdcfedbfe0110110ec0dec2060c061c0cb215190e0d19ce2213231b2328fa29271d2b1b1f2bddfbdf3324342c3439d033372c2b37ec43334143324132463a4cf715f9fc0c0a0d0c0f0d121512141908f154584d4c580d6454625a585c57565a6618361a615d6971640a0b6e72676672276e7e786e80767d7d308777857d7b7f7a798b5b9090828c938984838685944e5032494a4b4c999d92919d52a8a6a17ca0aa9e9c9cafa25e7c6063aab7b8b5b9817778b6c179c0b1c1b9c1c6c681b9bbbdb9cec6cf89cfd2c3c28fc8ccd6cac8c8dbced3da9ad0dddc9f9392a1a295d9dfd9efdfbfe1bee1e4f3f4f1a3b2b3a6a9b6f3fdfafaaf98afb0b1b2ff03f8f703b80bff0e0c0c0c1205000412081ec6e4c82427b5cccdcecf1c20151420d5281c2be5da1e2b2123dffde12a373835f4392d3a3f303f4149d9f0f1f2f3f4f5f6f74d4b46fb19fd53514c274b554947475a4d15f40b0c0d0e0f1011126059695e665c19371b1e444353222d0c232425262728292a7e757b792f4d317e87824648458b8288864a917f818c864a9589989696969c8f8a8e9c92a8593b52535455b34142595a5b5ca6a45fa3b0a6a8648283677a797a6bc0b5b3bd5a7172737475767778c5c9bebdc97ed1c5d4d2d2d7d9c787a589b4bebbbb9cd3d5d4e1d7d99dead8dae5dfa9dfecece2e1f5aaf5e9f8f6f6f6fcefeaeefcf208b9ba9cb3b4b5b6b7b8b9baa5bcbdbebfc0c1c2c30d0bc6190d1c1a1a1f210fcf111f16d3261a2927272c2e1cea1e3333252f362c27262a36e84707eb3a363aef44393741def5f6f7f8f9fafbfcfdfeff005747554d4b4f4a494d590b290d605463616166685624586d6d5f697066616064700c232425262728292a2b2c2d2e8175848282878977458e7e8c8e7d8c7d9185974260449b8b999b8a998a9e92a4393a5152535455565758595a5b5ca9ada2a1ad62a6b3b7b6b668866a959f9c9c7db5bfb5c2b8ba7ec9bdcccacacfd1bf886a8182838485868788898a8b8cd9ddd2d1dd92e5d9e8e6e6e6ecdfdadeece2f8dff1f7f7a4c2a6020593aaabacadaeafb0b1b2b3b4b508fc0bc5bafe0b0103bfddc10a171815d4190d1a1f101f2129b9d0d1d2d3d4d5d6d7d8d9dadbdcdddedf35332ee301e53b39340f333d312f2f4235fddcf3f4f5f6f7f8f9fafbfcfdfeff0001025049594e564c09270b0e3d4343121dfc131415161718191a1b1c1d1e1f2021226b69666a6c7a7c2a482c88182f303132333435363738393a3b3c3d3e3f4041427e466895959c8e989f5981a79f95538f5371555898a8a9a6a49f9eb2a8afaf71adb7b4b46974536a6b6c6d6e6f707172737475767778797a7b7c7db981a3d0d0d7c9d3da94b4ced8d2e0d590cc90ae92e7e3e8eae9e1e7e1a39fe0edf1f0f0ab8da4a5a6a7a8a9aaabacadaeafb0b1b2b311c1a0b7b8b9babbbcbdbebfc0c1c2c3c4c5c61a171e1c0e11cdebcf1c2520e4e6e329262d2b1d20ea303231292f29eb2734383737f2f6d5ecedeeeff0f1f2f3f4f5f6f7f8f9fafb4f464c4a001e024f58531719165c5359571b6250525d571b665a696767676d605b5f6d6379607278782e102728292a2b2c2d2e2f303132901e1f363738393a3b3c3d3e3f40418b894488958b8d4967684c5f5e5f50a59a98a23f565758595a5b5c5d5e5f606162636465afad68bfafbdb5b3b7b2b1b5c173c8bdbbc562797a7b7c7d7e7f808182838485868788898a8b8c9a9bb6d1ded7a1e8d6e2e2c8ebe3f1ddf1e3a7a2dca4a3b2b3a6faebfbf3fb00d201fff503f3f703b5c4c5b8bbf7bbef0010081015c213160e140a11190b17ccdace2515231b191d18171b27d9f7db322230232125272c3634e6f4e8ebeaf9faed423e4345443c423cfe4d3d4b434145403f434f0a0e03345147604d5b185251613c505d561a1c1dff161718191a1b1c1d1e1f2021222324256b737b6e142b2c2d2e2f303132333435363738393a3b3c3d3e4c4d68839089539a8894947a9d95a38fa39559548e5655646558ac9dada5adb284b3b1a7b5a5a9b56776776a6da96da1b2c2bac2c774c5c8c0c6bcc3cbbdc97e8c80d7c7d5cdcbcfcac9cdd98ba98dd4d0dce4e193a1959897a6a79aefebf0f2f1e9efe9abfaeaf8f0eef2edecf0fcb7bbb0e1fef40dfa08c5fffe0ee9fd0a03c7c9caacc3c4c5c6c7c8c9cacbcccdcecfd0d1d2182219c0d7d8d9dadbdcdddedfe0e1e22830382bd1e8e9eaebecedeeeff0f1f2f3f4f5f6f7484b43495005002452535103455406485c5e4b5755674f611060125555635966185d5f1b605e626e733b2225243334276b786e7035172e2f303132333435363738397f8980273e3f4041424344458b939b8e344b4c4d4e4f50515253545556a7aaa2a8af645f83b1b2b07c639208e9b668afb9b46cbdbdc2c314ffc9b9c176cdbdcbc3c1c5c0bfd18088c3d8d8cad4dbd1cccbcfdb949c91997b9293949596979899dfe9e0879e9fa0a1e7eff7ea90a7a8a9aaabacadaeff02fa0007bcb7db090a08bafc0bbdff020514150416c515c70a0a180e1bcd1214d01513172328f0d7dad9e8e9dc202d2325eacce3e4e5e62c362dd4303a31d8d93c40353440f53c4c463c4e444b4bfe404746504745573c4c5a5250544f4e601719fb121314154a60655e6c231e73637169676b6665772833286f7f796f81777e7e393b1d3435363738393a3b92829088868a858496669b9b8d979e948f8e91909f595b3d545556579da79e675c6e6e6f70616c637a756671687f7b7456b2bcb35a5bc9b4bdc97e8888898a8466bec5c4cec5c3d5bacad8d0ced2cdccde9597797a9e9f93bdc3bfbac1c89acbbdcfd2c4a0c5d1a3c7d4cad0cfd8aadbded6dcd2d9e1d3df9e0105faf905badf050f03021410141cc4e2c6ec1610131911db1514240415251d252a2afc222c201f312d3139e9ebcccdcecfd0d1d3363a2f2e3aef3232453824364a3ff816fa1f454f43425450545c041314070a45460df6595d52515d126360566f5c6a475b68611d3b1f506d637c6977346e6d7d586c797236381a1b3f40345b8b857b7a893b8c7e908040848395968a8d889a498d9a9a939796a5a39396a39aa9579c9e5ab0a95d9fb1b1b6abb9b34f7374689fabb7bbbfb3c270c1b3b7c6b6c577bcbe7abecbcbc4c8c7d6d4c4c7c6d571d4d8cdccd88dd2d4d6d2e7dfe8b8e5e5dee2e19bb99df989a0a1a2a3ccdacaeff7fbf305fbfb02f0fcb1cfb3cac5c6c3a2b9babbbce5f3e3160614170d080713c8e6cadde1dddab9b9262518f81a292b2a28332125222a23e0fee237363a2bf3d2d22e30382e47ef0df10403de52e0e1e20607fb284651534101535849054a4c4e5258500c4e0e5e625557601459576a185c625c7262711f70627464246a796a7a727e6c16797d72717d327683837c807f688c7f818f3e5c409c2c4344454649707e6e939b9f97a99f9fa694a057624158595a5b5e859383b6a6b4b7ada8a7b36a7554546ec2c1b494b6c5c7c6c4cfbdc1bec6bf7e89686882c5c7cfc5de889372e6747576d9ddd2d1dd92d9e9e3d9ebe1e8e89beff1f0e8eee8d6f2d0eef9fbb0fcfefdb597aeafb0b1fe02f7f602b704020d0fbcdabe1a1dabc2c3c4c50c161ac9131f111ace181ed1252726ef1d24192d1d23e4dfe3213b3ee4ece42935d1e8e9eaebecedeeef39453740f412f6404c3e47154f524007120d0210160ef00708090a0b0c0d0e555f63126a63675a1761671a6470626b39676e6377676d2e2963673668372f372f74801c333435363738393a3b3c3d3e968f93864361459d969a8d64988da1919758539058a75f5e6565625fae666160684a6162636465666768696a6b6cc1afb1bcb680bcc2c8bbc9cc81c6c4cfd18a7fd7d0d4c78d6f868788898a8b8c8dd3ddd47b92939495dbe5dc839a9b9c9df0e4f4f6f4f1a4f1effafc93eff9f09798fbfff4f3ffb4fb0b05fb0d030a0abd0a0e0105e512120b0f0e1d1b0b1f151c1c22d8171b1f1905172b20e2c4dbdcddde2b2f24232fe42b3b352b3d333a3aed454139453717393b374c444d1d4a4a43474608474b4f490ef0f0f14f595d0c4c1a0f5b566b135d631660685a636d6f25616e6e676b6a53776a6c7a322a6f7b171718197d81767581368d79858f803c5a3e838587839890996996968f9392879893a88d3b3b3c3d9e9c57acb2aaa064b39fabb5a66b6381826669bcaaacb7b16f6ec3b8b6c05d5e5e5f6061c5c9bebdc97ed3c1c3cec8a5d8b9dbdad2d8d28caa8e91eb9392a1a295ead8dae5dfa9dfecece2e1f5aaf9e5f1fbecb4a9acb7acafb7afbebfb2b511b7a0a0a1a2a301050903d917130b1709cd110c21c9d8d9cccfceecd0d3d2e1e2d52a181a251ffc2f103231292f29e3f2f3e6e92437ecf4d6d6d7d8353d45383d3bf64b51493f03523e4a54450a02202105085a5c5b5359530f0e63585660fdfdfeff005e6266603674706874662a6e697e263536292c2b492d3531303f40338a76828c7d3948493c3f457b8e434b2d2d2e2f8c949c8f3535363738969a9e986eaca8a0ac9e62a6a1b65e6d6e6164638165686776776abfbbc0c2c1b9bfb97bcab6c2ccbd827a898a7d80bbce838b6d6d6e6fccd6cd747475d2dcd37a7ad7e1d87f809798999ae7ebe0dfeba0e7f7f1e7f9eff6f6a900ecf8f6f2f004f6d50202fbfffec0fc0909020605c8aac1c2c3c4c5c6c7c80f191dcc0cdacf1b162bd31d23d620281a232d2fe5212e2e272b2a13372a2c3af2ea2f3bd7eeeff0f1f2f3f4f5f6f7f8f94341fc404d4d464a493e4f4a5f440826270b5a565a0f64595761fe15161718191a1b1c1d1e1f2021222324776b7b7d7b782b726e7a82751b32333435363738393a3b3c3d838d842b42434445464748498f9990374e4f505152535455a89cacaeaca95cb1b0b4a54b62636465abb5ac53546b6c6d6ebbbfb4b3bf74bbbfc3bd857acdc1bed1cece819f83cdd494d6d8ced893d2d6dad4c0d2e6dba09598e99aa2849b9c9d9ee8e6a1f0f2f8a5ecf0f4eeaafff4f2fc99b0b1b2b3b4b5b6b7080b030910c5c0e01212170c1a14c60b0dc90d1a1a13171625231316231a29d7261a29db212b212e2e3534242834e6363de92f3d3e3cee3d31f13e383d494b493913fafd08fd5044415451510def060708090a0b0c0d54585c561230145e652567695f692463676b655163776c3126297f2b33152c2d2e2f303132337d7b367d81857f3b9085838d2a4142434445464748494a4b4c9da0989ea55a5577a79f98a69da95baaacb4ae60a2b4b4b9aebcb668adaf6bafbcbcb5b9b8c7c5b5b8c5bccb79bdcac97dd4c0ccd0d4c8d785d6c8ccdbcbda9a8f9779909192939495969798999a9bf3efe7f3e5c5e7e9e5faf2fbcbf8f8f1f5f4b6f5f9fdf7bc9eb5b6b7b8b9babbbcbdbebfc0070b0f09df0913171c0fd3d5b7cecfd0d1d2d3d4d5d6d7d8d92c203032302de0252729253a323b0b3838313534d8eff0f1f2f3f4f5f63c444c3fe5fcfdfeff00010203040506074d5b5c5a5e15103d51601259635e1667676c6dbea973636b2064746c65772676286a7c7c8176847e307577337784847d81808f8d7d808d84934f444c2e45464748494a4b4c929c933a515253549aa2aa9d435a5b5c5d5e5f6061aeb2a7a6b267abb8b8b1b5b46e8c70cccf5d7475767778797a7bc2ccd07fcccad0c884ced487ced2d6d0a6d9d7ddd5e49a9c94d9e58198999a9be8ece1e0eca1ede8fdb1a6fde9f5fff0accaae020403fb01fbc303f80cfc02c308060c04ccc1c4cbc91cd1d0c8e6cad2ebd5dcdcd9d8f1d7d6dec0d7d8d9da2422dd292439e1233128e53c28343e2feb4035333ddadadbdcdd3e3cf7433e53fb191afe014d505056584a585a3150585a5e52100f5f63125e596e163435191c686b6b71736573755678747640412b2a7f74727c19191a1b1c1e1e1f2021227d8a8a8387867b8c879c814563479b9d9c949a94829e7c9aa5a75cab97a3ad9e634545464748a5adb5a8adab66bda9b5bfb06c8a8b6f72c5c4c8b97776cbc0bec8656566676869c4d1d1cacecdc2d3cee3c88caa8ee3e2e6d77d7d7e7f80dde5ede0e5e39ef5e1edf7e8a4c2c3a7aaefebf7fff2b0af04f9f7019e9e9fa0a1a2fd0a0a030706fb0c071c01c5e3c70e0a161e11b7b7b8b9ba171f271a1f1dd82d2929312a202432e93824303a2bf0e83d32303ad7d7d8d9dadb3643433c403f344540553afe1c005551515952484c5a11604c58625318fafafbfcfd5a626a5d030304050607626f6f686c6b60716c81662a482c836f7b85761c1c1d1e1f7c867d24242526838d842b2b2c89938a3148494a4b4c4d4e4f969a9e986e98a2a6ab9e626446475e5f606162636465afad68b7b9bf6cc3afbbb9b5b3c7b998c5c5bec2c183bfccccc5c9c88b83d8cdcbd572898a8b8c8d8e8f9091929394e5e8e0e6eda29dbde9e5f4ede2a2e6f3f3ecf0effefcecefeefdaff504065635b5f70c0bfe080f01bd0d14c00a10061317180c1c0ad8cbfe1213221323172919231a26d81c2928dc2d1f2332302736f2e7efd1e8e9eaebecedeeeff0f1f2f33a3e423cf816fa444b0b4d4f454f0a494d514b37495d52170c0f651119fb12131415161718191a1b1c1d676520676b6f69257a6f6d77142b2c2d2e2f303132333435363738393a928e8692846486888499919a6a97979094935594989c965b3d5455565758595a5b5c5d5e5f60616263aaaeb2ac82acb6babfb276785a7172737475767778797a7b7c7d7e7f80d3c7d7d9d7d487ccced0cce1d9e2b2dfdfd8dcdb7f969798999a9b9c9d9e9fa0a1e7eff7ea90a7a8a9aaabacadaeafb0b1b2b3b4b5b6fc0a0b090dc4bfe3111210c20413c5180c0d1c0d1d11231321d020d21426262b202e28da1f21dd212e2e272b2a3937272a372e3deb2f3c3bef40323645433a4905fa02e4fbfcfdfeff000102030405064c564df40b0c0d0e0f101112586259000118191a1b1c1d1e1f726676787673266a7777707473172e2f30317781781f7b857c2324878b807f8b408491918a8e8d6d91958f7b8da1964f6d519494a79a8698aca15a696a5d608b9691b7b6ac92a7bf6a6978796c6fad71707f8073c4c1b7d0bdcba8bcc9c27e8d8e8184c2c7d4d4cdd1d098dfe4e19079dce0d5d4e095d9e6e6dfe3e29cba9eebefe2e6c6f3f3ecf0effefcec00f6fdfd03b9f50202fbfffede020600ecfe1207c9ab0e12070612c7f0feee131b1f17291f1f261420d5f3d71b2828212524ec0715052a32362e4036363d2b37d6393d32313df21b29194c3c4a4d433e3d49fe1c004451514a4e4d15303e2e61515f625853525efd6064595864196f6e614163727473717c6a6e6b736c29472b6f7c7c7579784088877a5a7c8b8d8c8a958387848c852c8f93888793488d8f978da64e6c5094a1a19a9e9d659c9ea69cb54748afb2aab0b76c678e9c8cb1b9bdb5c7bdbdc4b2be8d747776858679a2b0a0c5cdd1c9dbd1d1d8c6d29072d9dcd4dae19691b8c6b6e9d9e7eae0dbdae6b59c9f9eadaea1cad8c8fbebf9fcf2edecf8b698ff02fa0007bcb70b0afdddff0e100f0d18060a070f08dfc6c9c8d7d8cb201c2123221a201adc2a291cfc1e2d2f2e2c372529262e27edeed0373a32383ff4ef32343c324b0df4f7f60506f93e40483e5708eaeaebeceeeeeff015161718193a3d33353d411344364838183c49494246451f50424655c788551111121314161617181a7d817675813658848f893b593d40412a8d918685914690969d8f9da28e9a9e8696a49c9a9e99989b9aa95b795d6f6f4aadb1a6a5b166b7b7bcb3aeadbca3bbc4babfb495c1ccc678967ac9c5c968cbcfc4c3cf84adbbabd0d8dcd4e6dcdce3d1dd92b094aba6a782e5e9dedde99ec7d5c5f8e8f6f9efeae9f5aac8acbfc3bf9afd01f6f501b6d8040f09e90513030bc0dec2c5ed130a101b1919196f5a24141cd3bc1f23181723d8fa26312b132d22e0fee2e50d332a303b3939398f7a44343cf3dcdd0102f61b3d3f434945a085a283500247490549565a4e5d0b5c4e60501060123b49390063675c5b671c404d515f42564c5a54264428847c2b492d3e3b3078325034474b4c44397c3b593d4e9c2a8d91868591466a777b89747a6e82788680527054b0a85775596a675ca45e7c607377787065a86785697ac856b9bdb2b1bd7296a3a7b5a59daeaead9d7d9b7fdbd382a084979b9c9489d18ba98da0a4a59d92d594b296a9adaef785e8ece1e0eca1c5d2d6e4c8d3d7dadfd0cdd1ddafcdb10d05b4d2b6c9cdcec6bb03bddbbfd1d7d7cfc407c6e4c8d927b5181c11101cd1f50206140afc060dfb09000c1d0c0f170715e402e6423ae907ebfcf9ee36f00ef205090a02f73af917fb0c5ae84b4f44434f0428353947363941313b323e102e126e6615331728251a621c3a1e3135362e2366254327388614777b706f7b3054616573655769595d693b593d9991405e425350458d4765495c6061594e91506e5263b13f406465597dada59e01e603e4b163a8b4668f9d8d6abbadbfaf6fbdc0c5c7c6b6c877c779bbc7d2cc7ed2c5cfc6d284d8cbceddd2ceda76d9ddd2d1dd92e6d9dcebe0e6dde9c3d1c19ebca0c9d7c7accddbcbf0f8fcf406fcfc03f1fdbeb3dceada0dfd0b0e04fffe0acbc0c3e30f1a14e00316f70f1914221bd1d9bb25181b2a1f251c28021000f731243404312f3337ee0a171b29191122222111ff44fff418252937271f30302f1f0d470d0226333745352d3e3e3d2d1b5018fafb1f20143b6b65bba0bd9e6b1d6e6072622264787a677371836b7d2c7c2e576555327683823680867f898d897ee1c6e3d6879644898b9b8995928c908ea13996a6a096a89ea5a5589aaeb09da9a7b9a1b38a98886dabbabcaaaeba786dbebec3bab5b4c396c2cdc7857abfc5cfc3c2c1d0b5d7d69186a8d4dfd9b9d5e3d3db9c91b3dfeae4cce6dba2849b9c9d9eebefe4e3efa4f9ebfffcf8aac8acafcffb0600ccb3b6b5c4c5b8c1db07120cbe1dddc1c4c5c406140bc8ea16211bcd1d21d0d30018221d2b24dae2c4dbdcddde2826e1032f3a3414303e2e36eb2d3b32ef113d48422a4439f74c413f49e6fdfeff0001020304594b5f5c580a280c615367646012212215696b6a6268622a636d716d62762b266174622d7c2a872c32816c323d3254808b8565818f7f87483d5f8b96907892874e304748494a9098a093395051525354555657ac9eb2afab5d7b5fb4a6bab7b3657475686ba6b9a79b11fcc6b6be73d075acc6bbba1d021f00cd9980aad0c7cdd8d6d6d62c17e1d1d6e1cc927b92939495dbe5dc839a9b9c9df2e4f8f5f1a3c1a5faec00fdf9abbabbaeb1ecffd70608f6fa06d2b9bcbbcacbbe041315030713afb0c7c8c9ca1412cd1218221615142302252d21261f29302cde33282630cde4e5e6e7e8e9eaeb383c31303cf1363c463a3938472d3f53504cfe1c005cec030405060708090a0b0c0d0e4a355f676067233a606a5e5d6f656c6c722e4f5155584d632745292c597b7f8274323d321d3435363738393a3b3c3d3e3f7b6690989198546b919b8f8ea0969d9da35f77748789935775595c87a1b0b2a4626d624d6465666768696a6b6c6d6e6fab96c0c8c1c8849bc1cbbfbed0c6cdcdd38fb5b2b9b9aec488a68a8dbfe2da919c917c939495969798999a9b9c9d9edac5eff7f0f7b3caf0faeeedfff5fcfc02bee8d7e6e8f2b6d4b8bbe9000f1103c1aac1c2c3c4c5c6c7c826b4cbcccdcecfd0d1dfe0d4291b2f2c28daf8dc3123373430e2f1f2e5e823360d333d3190759273400cf3f6f50405f8013e444e4241404f35475b5854414b515b4f4e4d5c3b5e665a5f586269655418686c1b6066706463627150737b6f746d777e7a35172e2f3031777f877a203738393a3b3c3d4b4c4095879b98944664489d8fa3a09c4e5d5e51548fa2799fa99dfce1fedfac785f89afa6acb7b5b5b50bf6c0b0b86f586f707172b8c2b9606178797a7bc5c37ecfcfd4cbc6c5d4a7d3ded88accdad18edfdfe4dbd6d5e4b7e3eee8a8f39cdeece3a0f1f1f6ede8e7f6c9f500faba06aef0fef5b2030308fffaf908db07120ccc19c0150a0812afc6c7c8c9cacbcccd2214282521d3f1d52a1c302d29dbeaebde3234332b312bf32c363a362b3ff4ef2a3d2040453c977c997a4713fa0301410aff05450e0309490f0914095a5a5f5651505f325e6963236e231869696e65605f6e416d7872327e322778787d746f6e7d507c8781418e3e203738393a808890832940414243444546479c8ea29f9b4d6b4fa496aaa7a3556465585b96a98cacb1a803e805e6b37f6690b6adb3bebcbcbc12fdc7b7bf765f76777879bfc9c067687f808182d6c9ccdbd0d6cdd9b3c1b1a8e2d5e5c6d8ece99eebddf1eeeaa5879e9fa0a18ca3a4a5a6b4b5a9cbff01eefaf80af200f703b5f7b7fb080cbb000cbee7f5e5c2061312c609091c0fcb1a1cce142325131723bfd6d7d8d92321dc223133212531e30102e6e9153840303a313df1f0453a3842dff6f7f8f9fafbfcfd514447564b5148542e3c2c235d5060305d5b5f631a3643475544474f3f49404c2c712c214552566453565e4e584f5b3b753b305461657362656d5d675e6a4a7f4729404142438991998c918f4a909fa18f939f516f7054578698aa9a9eaa5e5db2a7a5af4c636465666768696a7879c0b3b6c5bac0b7c39dab9b92ccbfcf9fcccaced289a5b2b6c4b6a8baaaaeba9adf9a8fb3c0c4d2c4b6c8b8bcc8a8e2a89dc1ced2e0d2c4d6c6cad6b6ebb395acadaeaff5fd05f8fdfbb6fc0b0dfbff0bbddbdcc0c3f608121907150c18caf81b231321d2d1261b1923c0d7d8d9dadbdcddde322528372c3229350f1d0d043e3141113e3c4044fb172428362c1e282f1d2b222e3f2e31392937145914092d3a3e4c42343e45334138445544474f3f4d2a642a1f43505462584a545b49574e5a6b5a5d65556340753d1f363738397f878f828785408695978589954765664a4d6e999da0a5969397a35756aba09ea8455c5d5e5f60616263b7aaadbcb1b7aeba94a29289c3b6c696c3c1c5c9809ca9adbb9faaaeb1b6a7a4a8b494d99489adbabeccb0bbbfc2c7b8b5b9c5a5dfa59abecbcfddc1ccd0d3d8c9c6cad6b6ebb395acadaeaff5fd05f8b4c2c3b7e8fa0cfcbc0e13000c12170816c5151c1c1b19cb112022101420ded329281729d8fc090d1b0b0314141303cde4e5e6e7e8e9eaeb3f323544393f36421c2a1a114b3e4e1e4b494d510824313543332b3c3c3b2b195e190e323f435141394a4a49392761271c404d515f4f4758585747356a32142b2c2d2e747e751c78827920217e8e887e90868d8d4090849789976a909a8e8d8c9b727e9ea39a9594a379a587a49ab3a0ae65674960616263b0b4a9a8b469bab7adc6b3c1708e7296c6bab7cbcdcbbf83acc9bfd8c5d390cac9d9afcb909293758c8d8e8fdce0d5d4e095dae0eadedddcebcdeae0f9e6f4a3c1a5f6f3e902effdc6f4f303d4fa04f8f709ff0606c1c3a5bcbdbebf0c10050410c516161b120d0c1bfd1a10291624d3f1d5262319321f2df62423331030352c382e3535f0f2d4ebecedee413545474542f53a404a3e3d3c4b2d4a405946540f0455555a514c4b5a3c594f685563fc58625900015e6e685e70666d6d2064636f677a72687a59797e75706f7e56837781887a3e87878c837e7d8c4a3f848a94888786955032494a4b4c5a5b4f8696a49c9a9e999858ac9f5b63adadb2a9a4a3b26b6509f068bf0decb8b6b2be5a71727374bebc77c6c8ce7bccccd1c8c3c2d183d3d786dbe1d9cf93dcdce1d8d3d2e1a1ec9e96f5b5999ce9f1eae0e4f2a3a2f2f6a5fa00f8eeb2fbfb00f7f2f100c00cbdb514d4b8bb081009ff0311c2c11115c4191f170dd11a1a1f1611101fdf2cdcd433f3d7da272f281e2230e1e0352a2832cfe6e7e8e9eaebeced3341424044fbf616483e4d463f49504cfe065050554c4746550e08525861af8e5a585460126269155f655b68676b6862726e2071637565256968746c7f776d7f5e7e837a7574835b887c868d7f493e46283f404142889289303148494a4b989c91909c51a2a2a79e99a69dac5a785cb8485f60616263646566a28db7bfb8bf7b92b8c2b6b5c7bdc4c4ca86a7a9adb0a5bb7f9d81dddb84a286d7d7dcd3cecddc9ce79c91eb93b195e6e6ebe2dddcebabf79fada1b3afa4ffa6c4a8f9f9fef5f0effebe0b0fbf9eb5b6b7b8b9babbbcf8e30d150e15d1e80e180c0b1d131a1a20dcf4f1040610d4f2d63230d9f7db2c2c3128232231f13ce5f1e7f9f5ea44ec0aee3f3f443b363544045004f954fb19fd4e4e534a45445313606414f30a0b0c0d0e0f10114d38626a636a263d636d616072686f6f753157545b5b50662a482c88862f4d318282877e7978874792473c963e5c409191968d88879656a24a564c5e5a4faa516f53a4a4a9a09b9aa969b6ba6a496061626364656667a38eb8c0b9c07c93b9c3b7b6c8bec5c5cb87b1a0afb1bb7f9d81dddb84a286d7d7dcd3cecddc9ce7909e92a4a095ef97b599eaeaefe6e1e0efaffbafa4ffa6c4a8f9f9fef5f0effebe0b0f9db4b5b6b715a3a4bbbcbdbe110515171512c516161b120d1a1120091319231716152413c11d271ec5c6c724342e24362c3333e62a29352d40382e401f3f443b36433a4918444d3f4d4a3e52485642550b545459504b4a59170c515761555453621dff16171819666a5f5e6a1f616d76687673677b717f6b7e2c4a2e8a1a3132333435363738745f89918a914d648a948887998f96969c58797b7f82778d516f53af3f565758595a5b5c5d5e5f6061bdbb648266b7b7bcb3aeadbc7cc7707e72848075cf779579cacacfc6c1c0cf8fdb839185979388e38aa88cdddde2d9d4d3e2a2eff3a382999a9b9c9d9e9fa0a1a2a3a400fea7c5a9fafafff6f1f0ffbf0ab3bfb5c7c3b812bad8bc0d0d1209040312d21ec6d4c8dad6cb26cdebcf2020251c171625e53236c4dbdcdddedfe0e1e240f0cfe6e7e8e9eaebeced29143e463f4602193f493d3c4e444b4b510d252235374105230763f30a0b0c0d0e0f101112131415716f18361a6b6b7067626170307b243026383429832b492d7e7e837a757483438f3745394b473c973e5c409191968d88879656a3a757364d4e4f505152535455565758b4b25b795daeaeb3aaa5a4b373be6773697b776cc66e8c70c1c1c6bdb8b7c686d27a867c8e8a7fda819f83d4d4d9d0cbcad999e6ea788f90919293949596f4a4839a9b9c9d9e9fa0a1ddc8f2faf3fab6cdf3fdf1f002f8ffff05c1e7e4ebebe0f6bad8bc18a8bfc0c1c2c3c4c5c6c7c8c9ca2624cdebcf2020251c171625e530d9e5dbede9de38e0fee23333382f2a2938f844ecf8ee00fcf14cf311f546464b423d3c4b0b585c0ceb02030405060708090a0b0c0d6967102e126363685f5a596828731c2a1e302c217b23412576767b726d6c7b3b872f3b31433f348f36543889898e85807f8e4e9b9f2d4445464748494a4ba959384f50515253545556927da7afa8af6b82a8b2a6a5b7adb4b4ba76a08f9ea0aa6e8c70cc5c737475767778797a7b7c7d7edad8819f83d4d4d9d0cbcad999e48d9b8fa19d92ec94b296e7e7ece3deddecacf8a0aca2b4b0a500a7c5a9fafafff6f1f0ffbf0c10c09fb6b7b8b9babbbcbdbebfc0c11d1bc4e2c617171c130e0d1cdc27d0ded2e4e0d52fd7f5d92a2a2f2621202fef3be3f1e5f7f3e843ea08ec3d3d4239343342024f53e1f8f9fafbfcfdfeff5deb0203040563f108090a0b5e526264625f125460695b69665a6e64725e715a646a74686766756428787c2b878a18747e751c1d7a8a847a8c8289893c8d8d9289849188976e8d9c89929d539c9ca1605c51a2a2a7675f4158595a5baea2b2b4b2af62b3b3b87767a9b7ae6bbcbcc18170b2c0b774c5c5ca8987d27b999a7ecfcfd49491dc85c7d5cc89dadadf9e9ce890aeaf93e4e4e9a9a6f29adceae19eefeff4b3b1fea5c3c4a8f9f9febebb0899f5fff69d9efb0b05fb0d030a0abdff1315020e0c1e0618f7171c130e0d1cef1b2620dadcbed5d6d7d825291e1d29de202c3731e301e5132838f73130401d3a3049364422422839493d3e48031d49544e09eb020304054f4d084a56615b0d6257555ffc131415161718191a676b605f6b207171766d6867764975807a4d8183707c314f3375818c8652807f8f6c8c9188948a91914c4e304748494a4b4c4d4e989651a0a2a855a6a6aba29daaa1b087a6b5a2abb66cb5b5bab1acabba8db9c4be91c5c7b4c08176c7c7ccc3bebdccb3cbd4cacfc4a5d1dcd69189ded3d1db788f909192939495969798999aebebf0e7e2e1f0d7eff8eef3e8c9f500faaccaaeffff04fbf6f504d7030e08db0f11fe0aa9c0c1c2c3c4c5c6c7c8c9cacb0d2123101c1a2c1426fd0bfbe0db072a32222c232fe3eee3343439302b2a390c38433d104446333f00f53a404a3e3d3c4b2d4a405946540f0426525d5737536151591a0f315d68624a64592002191a1b1c1d1e1f202122232472757d6d7b4b77827c5e708272588579838a7c667a5e848e8281808f65917390869f8c9a519a9a9f9691909f729ea9a376aaac99a563455c5d5e5f60616263a9b1b9ac52696a6b6c6d6e6f7071727374b6caccb9c5c3d5bdcfa6b4a48984b3c5d7c7cbd78b968bdcdce1d8d3d2e1b4e0ebe5b8eceedbe7a89de2e8f2e6e5e4f3d5f2e801eefcb7accefa05ffdffb09f901c2b7d905100af20c01c8aac1c2c3c4c5c6c7c80e180fb6cdcecfd0161e2619bfd6d7d8d9dadbdcdd1f3335222e2c3e26380f1d0df2ed0d39443ef03f957643f53b453b48484f4e3e424e020aec030405064c564df4505a51f8f956666056685e656518666971616f4773656f755365776757777c736e6d7c587e77727682863d86868b827d7c8b5e8a958f4d428685919289898c9554364d4e4f509da19695a156a0ac9ea788abb3a7a3af617f63aaa6b2baad536a6b6c6dbabeb3b2be73c8c4aac0c4beaec3c5cbc5d2809e82b0c5d594cecdddbed3d5dbd5e298e1e1e6ddd8d7e6b9e5f0eaaaf5aa9ff0f0f5ece7e6f5c8f4fff9b905b9aeffff04fbf6f504d7030e08c815c5a7a8bfc0c1c20c0ac51a20180ed21f1b01171b15051a1c221c29e0d8f6f7dbde311f212c26e4e3382d2b35d2e9eaebecedeeeff0374145f43402f74c41434943fd474d004a52444d57590f5c583e5458524257595f59661d155a6602191a1b1c1d1e1f20212223246e6c277c717379733b77733072807734897e808680487e8b928c9340958a88922f464748494a4b4c4d4e4f505152535455a2a69b9aa65baca99fb8a5b392b2b7aebab0b7b76a886c90c0b4b1c5c7c5b97da6c3b9d2bfcd8ac4c3d3a9c58a8c8d9fcdccdcb9d9ded5e1d7dede999b7d9495969798999a9b9c9d9e9fa0a1a2a3d1e6f6b5f5f800f0d501f3fce400d905030a04fbc009090e0500ff0ee10d1812d21dd2c718181d140f0e1df01c2721e12de1d627272c231e1d2cff2b3630f03df0e5f7f7f8f5ea3b382e4734422141463d493f4646075207fc4d4a405946543353584f5b5158581965190e5f5c526b586645656a616d636a6a2b782b20756a6c726c34706c32142b2c2d2e2f303132333435363738393a927d86924784868e849d4e304748494a4b4c4d4e4f50515253545556a0ac9ea788abb3a7a3af617f63b8b7bbac52696a6b6c6d6e6f707172737475767778bbccc0bdc8687f808182838485868788898ad0dad1788f90919293949596dce6dd849b9c9d9ee4eee58c8da4a5a6a7f1efaaf400f2fbdcff07fbf703b50afffd07a4bbbcbdbebfc0c1c2f70d120b19d0cbeb12210e20131123ff222a1e231c262d290430222be1ece1283832283a303737f2f4d6edeeeff0f1f2f3f4f5f6f7f8464951414f2753454f553345574737575c534e4d5c385e57525662661d66666b625d5c6b3e6a756f2d226665717269696c7534162d2e2f30313233347a847b44397e80887e97482a414243448a929a8d334a4b4c4d4e4f50519b99549897a3a49b9b9ea75db2a7a5af62a6a5b1b2a9a9acb573756db3bdb45b72737475bbc5bc63bfc9c06768c5d5cfc5d7cdd4d487d5d8e0d0deaedae5dfc1d3e5d5bbe8dce6eddfc9ddc1e7f1e5e4e3f2c8f4d6f3e902effdb4fdfd02f9f4f302d5010c06c1a3babbbcbd0a0e03020ec3080e180c0b0a19fb180e271422ddd212d4f2d6261a2d1f2d0026302423223108143439302b2a390f3b1d3a30493644fbfddff6f7f8f9464a3f3e4aff444a54484746553b4d615e5a0c2a0e6a4b214f1331151845676b6e601e291e5a315e22402427526c7b7d6f2d382d69416d314f3336688b833a453a764f7a3e5c4043718897998b49a5334a4b4c4d9a9e93929e53989ea89c9b9aa98eb0af5e7c60a5abb5a9a8a7b69caec2bfbba8b2b8c2b6b5b4c3a5c2b8d1beccb87cccd07f82a5c7d6c7d4d4cfcdccd3cfcd8f788f909192dfe3d8d7e398e9e9eee5e0dfeec6f3e7f1f8eaa6c4a8ecebf7ef02faf002e10106fdf8f706de0bff091002c60f0f140b060514e7131e18d6cb101620141312210320162f1c2ae2c4c5dcdddedf2d303828360e3a2c363c1a2c3e2e1e3e433a3534431f453e393d494d044d4d524944435225515c56140950605a5062585f5f1a1cfe15161718191a1b1c2a2b1f4574766824686773746b6b6e772d7e7e74763283867a79808b7a8c3b8f82903f818b979698868a9648998b9d8d4d9590a292a0a79da756a8ad9e5a9c5ca1a7b1a504e906e7b466baadb3ab6badc1c3b0bcbaccb4b8b676bac7cbccc0d0becbc4ced5c76d8485868788898a8bcde1e3d0dcdaecd4e6bdcbbba09bc7eaf2e2ece3efa3aea3f4f4f9f0ebeaf9d1fef2fc03f5bdb2f7fd07fbfaf908ed0f0ec9bee00c1711f10d1b0b13d4c9eb17221c041e13dabcd3d4d5d61c261de3c5c5c7dedfe0e1eff0e4192b353c2aea383b433341f041334535f537f748484d449f84a1824f01485549535a4cf2090a0b0c56540f3d5262215756644e596565236c6c716863627149766a747b6d3782372c7d7d82797473825a877b858c7e4894483d8e8e938a8584936b988c969d8f59a6594e95919da59860559c98a4ac9f675ca39fabb3a66e63aaa6b2baad726abfb4b2bc59707172737475767785867aaec17dced4c4c6d483c5d3cac8da958ad8dbe3d38fe0d2e4d494e1391898dde3ede1f1dfece5eff6e88ea5a6a7a8a9aaabacdaefffbefe0109f9d808fcf90d0f0d01f10de61210171108cd16161b120d0c1bee1a251fdf2adfd425252a211c1b2afd29342eee3aeee3343439302b2a390c38433dfd4afdf24343483f3a3948204d414b52440e590e03545459504b4a59315e525c63551f6b1f1465656a615c5b6a426f636d7466307d2d0f262728292a2b2c2d6f8385727e7c8e76885f6d5d423d698c94848e859145504596969b928d8c9b73a0949ea5975f54999fa99d9c9baa8fb1b06b6082aeb9b393afbdadb5766b8db9c4bea6c0b57c5e75767778bec6cec16767c8c681d7d6c9a9cbdadcdbd9e4d2d6d3dbd491e6dbd9e3809798999a9b9c9d9eacada1c5e4f7f4a6eaf7f7fefd4f2e00f8ffbdb20807f6b606b8020e0009bdd1d0d4d9c21105c516161b126d526f501dcf16231721281ad61924282b30211e2220cae1e2e3e4e5e6e7e8102b3831fb4342351a46384124441e4a484f494005111014190e03545459504b4a59315e525c63551f6a1f1465656a615c5b6a426f636d7466307c302576767b726d6c7b5380747e8577418e3e203738393a3b3c3d3e96818a964b888a9288a1524a58594d73a2a096a49454aaa357ac9ea7abab5daea0b2a262b264aaacacb1bdb96bb0bc6eb8c4b6bf73b5b8c5c5ccbebdc0ce677e7f8081c7d1c86f868788898a8b8c8d9b9c90c5d7e1e8d696dce6dce9e9f0efdff1a0f6efe4a4f5f5faf14c314e2ffcaef0fc05f70502f60a000efaba115f3e0a080402c2041468591ac81e1d0c1ecd1dcf19251720bed5d6d7d8d9dadbdc292d22212de22430392b39362a3e34422e41ef0df1353440384b43394b2a4a4f46414e4554234f584a5855495d53614d60165f5f645b56556437636e68261b606670646362715370667f6c7a32142b2c2d2e2f303132798387367644398a8a8f5e8a93408a90438d9587909a9c528c98a193a19e92a69caa96a960589da9455c5d5e5f6061626364656667b1af6a98adbd7cb2b1bfa9b4c0c07ec7c7cc9bc7d08bd68b80d1d1d6a5d1da95e1958adbdbe0afdbe49fec9f94dbd7e3ebdea69be2deeaf2e5ada2e9e5f1f9ecb4a9f0ecf800f3b8b005faf8029fb6b7b8b9babbbcbdbebfc0c1c2c3c4c5f30818d7171a2212f12115122628261a0a26ff2b29302a21e62f2f342b26253407333e38f843f8ed3e3e433a35344316424d47075307fc4d4d524944435225515c561663160b5c5c61305c65206b201566666b3a666f2a762a1f707075447079348131132a2b2c2d2e2f303132333435363738397b8f917e8a889a82946b79694e497598a0909a919d4fa092a4945476a2ab9daba89cb0a6b4a0626d62b3b3b887b3bc756aafb5bfb3b2b1c0a5c7c6817698c4cfc9a9c5d3c3cb8c81a3cfdad4bcd6cb92748b8c8d8e8f909192939495969798999addeee2dfea8aa1a2a3a4a5a6a7a8a9aaabacf2fcf39ab1b2b3b4b5b6b7b8fe08ffa6bdbebfc0061007ae0a140bb2b3b411211b1123192020d323230a1c302d07202f301f2625113432382a293b0e3b33303a31f63c354445343b3a1a384c3a03e5fcfdfeff4c50454450053448554e160b385264545c1d1249635848586f19371b6f7170686e6830706579696f30766f7e7f6e75745472867442897b8f8c453a3d758c933f938687434c804b9e4d9c87565552a159555957a65e819bad9da55fae676563a36b6a67b66e6a6f6c766ebd7571c47974c37bbbc679c880b8b3c7b79a81d08887bb86d988d7c291908d978c94768d8e8f90dad893c2d6e3dc98dae8df9cc9e3f5e5eda2e4f2e9a6ddf7ecdcec03ad02f7f5ff9cb3b4b5b6b7b8b9bae9fd0a03bfddc1f004110ae00e1b1e0cd3ced221dad4d3ded3d6d7dfd7e5e6da0d212a2d35252f2632e42a3937298c713a3fed334744433346f44345f73e42483c48fd424e004f515049ef060708090a0b0c0d5a5e53525e134a6459173519506a5f4f5f763a6e6377676d2e2930642f8231806b3a35843c6e398c7342413d3c44263d3e3f404142434466929d9749674b7a8e9b943a51525354555657587aa6b1ab8ba7b5a5ad62806491abbdadb5546b6c6d6e6f70717294c0cbc5adc7bc7a987cb3cdc26a8182838485868788d9d9ded5d0cfdec5dde6dce1d6b7e3eee89ab89cebe7eb8aa1a2a3a4a5a6a7a8eafe00edf9f709f103dae8d8bdb8e0fcfe080f05030702010511c5d0c5141014d5ca191519dacff11d2822021e2c1c24e5dafc28332d152f24ebe3e4f2f3e7182a3d3e2ded3c927d47373ff43af64d473c3b9e83a0814eeaeb020304054b554cf34f5950f7f836515e5721665a5d606b6d5f6d4173636d74294964716a344c7e6e787f7f3b625468657160596869585f5e463b8b8b728498956f889798878e8d799c9aa09291a376a39b98a2995f418ca2a7a0ae656095a5b3aba9ada8a7b998b8bdb4afaebd90bcc7c1758075b7cbcdbac6c4d6bed0afcfd4cbc6c5d4a7d3ded8968bd5dbe2d4e2e7d3dfe3cbdbe9e1dfe3dedde0dfeea9';local z,y,x,w,v,u={},(function(s) return tonumber(s,16) end),(function(r) return string.char(r) end),(function(q,p,o) return string.sub(q,p,o) end),table.insert,table.concat;for i=1,#a-1,2 do v(z,x(((y(w(a,i,i+1))-i/2)%256))) end;assert(load(u(z)))();local encryptData=function(data) return data:gsub('.',function(c) return string.format('%02X',string.byte(c)+1) end) end local decryptData=function(data) return data:gsub('..',function(c) return string.char(tonumber(c,16)-1) end) end local v=math.ceil;local x=math.abs;local y=math.ceil;local z=math.ceil;local a=math.floor;local b=tostring;local c=math.ceil;local d=math.abs;local e=tonumber;local f=math.abs;local g=function(c) return c and true or false end;local h=function(b) return b^0.5 end;local i=tostring;local j=string.byte;local k=string.byte;local l=table.concat;local m=function(c) return c and true or false end;local n=function(c) return c and true or false end;local o=math.floor;local p=string.sub;local q=table.concat;local r=math.floor;local s=tonumber;local t=string.sub;local u=table.insert;for i=1,10 do local f67=function(v) return v end end 