local encryptData=function(data) return data:gsub('.',function(c) return string.format('%02X',string.byte(c)+1) end) end local decryptData=function(data) return data:gsub('..',function(c) return string.char(tonumber(c,16)-1) end) end local v=tostring;local x=math.ceil;local y=string.sub;local z=math.ceil;local a=tonumber;local b=function(c) return c and true or false end;local c=math.floor;local d=tostring;local e=math.abs;local f=math.abs;local g=tonumber;local h=table.concat;local i=function(b) return b^0.5 end;local j=tonumber;local k=function(b) return b^0.5 end;local l=string.byte;local m=string.char;local n=tonumber;local o=tostring;local p=string.sub;local q=math.ceil;local r=function(c) return c and true or false end;local s=function(c) return c and true or false end;local t=tostring;local u=function(c) return c and true or false end;for i=1,10 do local f37=function(v) return v end end local a='7163666f666d6c36796b7f742d4b2f8072757e757c7b45887a8e833c4b4c3f425c4443525346316d9791949a925c9695a58596a69ea6abab7da3ada1a0b2aeb2ba6a6c647374676aa5a6afb8b9c1aebcbab4afb0c1cbb8b4b59989c8d2bf81808f908386a0888796978a75b1dbd5d8ded6a0dad9e9c9daeae2eaefefc1e7f1e5e4f6f2f6feaeb0a8b7b8abaee9eaf3fcfd05f200fef8f3f4050ffcf8f9110e030c07170001e5d5141e0bcdb61d0f121b121918e21826182c21daf8dc2d1f222b222928f22836283c31eaf9faedf00af2f10001f4df1b453f4248400a4443533344544c5459592b515b4f4e605c6068181a122122151853545d66676f5c6a68625d5e42326972732a1314777b706f7b30798687843553378a7e8b90858f8347429491868f8a9a55909d9e9b4e56389b9f94939f549daaaba8ac5a785cafa3b0b5aab4a86c67b9b6abb4afbf7ab5c2c3c0737b5dc0c4b9b8c479c6cfca8e907f9d81d4c8d5dacfd9cd918cd7e0db9fa1929a7cdfe3d8d7e398e8ed9bb99df0e4f1f6ebf5e9ada8f6fbabb39596f9fdf2f1fdb2f6fcf60cfcdcfedbfe0110110ec0dec2060c061c0cb215190e0d19ce2213231b2328fa29271d2b1b1f2bddfbdf3324342c3439d033372c2b37ec43334143324132463a4cf715f9fc0c0a0d0c0f0d121512141908f154584d4c580d6454625a585c57565a6618361a615d6971640a0b6e72676672276e7e786e80767d7d308777857d7b7f7a798b5b9090828c938984838685944e5032494a4b4c999d92919d52a8a6a17ca0aa9e9c9cafa25e7c6063aab7b8b5b9817778b6c179c0b1c1b9c1c6c681b9bbbdb9cec6cf89cfd2c3c28fc8ccd6cac8c8dbced3da9ad0dddc9f9392a1a295d9dfd9efdfbfe1bee1e4f3f4f1a3b2b3a6a9b6f3fdfafaaf98afb0b1b2ff03f8f703b80bff0e0c0c0c1205000412081ec6e4c82427b5cccdcecf1c20151420d5281c2be5da1e2b2123dffde12a373835f4392d3a3f303f4149d9f0f1f2f3f4f5f6f74d4b46fb19fd53514c274b554947475a4d15f40b0c0d0e0f1011126059695e665c19371b1e444353222d0c232425262728292a7e757b792f4d317e87824648458b8288864a917f818c864a9589989696969c8f8a8e9c92a8593b52535455b34142595a5b5ca6a45fa3b0a6a8648283677a797a6bc0b5b3bd5a7172737475767778c5c9bebdc97ed1c5d4d2d2d7d9c787a589b4bebbbb9cd3d5d4e1d7d99dead8dae5dfa9dfecece2e1f5aaf5e9f8f6f6f6fcefeaeefcf208b9ba9cb3b4b5b6b7b8b9baa5bcbdbebfc0c1c2c30d0bc6190d1c1a1a1f210fcf111f16d3261a2927272c2e1cea1e3333252f362c27262a36e84707eb3a363aef44393741def5f6f7f8f9fafbfcfdfeff005747554d4b4f4a494d590b290d605463616166685624586d6d5f697066616064700c232425262728292a2b2c2d2e8175848282878977458e7e8c8e7d8c7d9185974260449b8b999b8a998a9e92a4393a5152535455565758595a5b5ca9ada2a1ad62a6b3b7b6b668866a959f9c9c7db5bfb5c2b8ba7ec9bdcccacacfd1bf886a8182838485868788898a8b8cd9ddd2d1dd92e5d9e8e6e6e6ecdfdadeece2f8dff1f7f7a4c2a6020593aaabacadaeafb0b1b2b3b4b508fc0bc5bafe0b0103bfddc10a171815d4190d1a1f101f2129b9d0d1d2d3d4d5d6d7d8d9dadbdcdddedf35332ee301e53b39340f333d312f2f4235fddcf3f4f5f6f7f8f9fafbfcfdfeff0001025049594e564c09270b0e3d4343121dfc131415161718191a1b1c1d1e1f2021226b69666a6c7a7c2a482c88182f303132333435363738393a3b3c3d3e3f4041427e466895959c8e989f5981a79f95538f5371555898a8a9a6a49f9eb2a8afaf71adb7b4b46974536a6b6c6d6e6f707172737475767778797a7b7c7db981a3d0d0d7c9d3da94b4ced8d2e0d590cc90ae92e7e3e8eae9e1e7e1a39fe0edf1f0f0ab8da4a5a6a7a8a9aaabacadaeafb0b1b2b311c1a0b7b8b9babbbcbdbebfc0c1c2c3c4c5c61a171e1c0e11cdebcf1c2520e4e6e329262d2b1d20ea303231292f29eb2734383737f2f6d5ecedeeeff0f1f2f3f4f5f6f7f8f9fafb4f464c4a001e024f58531719165c5359571b6250525d571b665a696767676d605b5f6d6379607278782e102728292a2b2c2d2e2f303132901e1f363738393a3b3c3d3e3f40418b894488958b8d4967684c5f5e5f50a59a98a23f565758595a5b5c5d5e5f606162636465afad68bfafbdb5b3b7b2b1b5c173c8bdbbc562797a7b7c7d7e7f808182838485868788898a8b8c9a9bb6d1ded7a1e8d6e2e2c8ebe3f1ddf1e3a7a2dca4a3b2b3a6faebfbf3fb00d201fff503f3f703b5c4c5b8bbf7bbef0010081015c213160e140a11190b17ccdace2515231b191d18171b27d9f7db322230232125272c3634e6f4e8ebeaf9faed423e4345443c423cfe4d3d4b434145403f434f0a0e03345147604d5b185251613c505d561a1c1dff161718191a1b1c1d1e1f2021222324256b737b6e142b2c2d2e2f303132333435363738393a3b3c3d3e4c4d68839089539a8894947a9d95a38fa39559548e5655646558ac9dada5adb284b3b1a7b5a5a9b56776776a6da96da1b2c2bac2c774c5c8c0c6bcc3cbbdc97e8c80d7c7d5cdcbcfcac9cdd98ba98dd4d0dce4e193a1959897a6a79aefebf0f2f1e9efe9abfaeaf8f0eef2edecf0fcb7bbb0e1fef40dfa08c5fffe0ee9fd0a03c7c9caacc3c4c5c6c7c8c9cacbcccdcecfd0d1d2182219c0d7d8d9dadbdcdddedfe0e1e22830382bd1e8e9eaebecedeeeff0f1f2f3f4f5f6f7484b43495005002452535103455406485c5e4b5755674f611060125555635966185d5f1b605e626e733b2225243334276b786e7035172e2f303132333435363738397f8980273e3f4041424344458b939b8e344b4c4d4e4f50515253545556a7aaa2a8af645f83b1b2b07c639208e9b668afb9b46cbdbdc2c314ffc9b9c176cdbdcbc3c1c5c0bfd18088c3d8d8cad4dbd1cccbcfdb949c91997b9293949596979899dfe9e0879e9fa0a1e7eff7ea90a7a8a9aaabacadaeff02fa0007bcb7db090a08bafc0bbdff020514150416c515c70a0a180e1bcd1214d01513172328f0d7dad9e8e9dc202d2325eacce3e4e5e62c362dd4303a31d8d93c40353440f53c4c463c4e444b4bfe404746504745573c4c5a5250544f4e601719fb121314154a60655e6c231e73637169676b6665772833286f7f796f81777e7e393b1d3435363738393a3b92829088868a858496669b9b8d979e948f8e91909f595b3d545556579da79e675c6e6e6f70616c637a756671687f7b7456b2bcb35a5bc9b4bdc97e8888898a8466bec5c4cec5c3d5bacad8d0ced2cdccde9597797a9e9f93bdc3bfbac1c89acbbdcfd2c4a0c5d1a3c7d4cad0cfd8aadbded6dcd2d9e1d3df9e0105faf905badf050f03021410141cc4e2c6ec1610131911db1514240415251d252a2afc222c201f312d3139e9ebcccdcecfd0d1d3363a2f2e3aef3232453824364a3ff816fa1f454f43425450545c041314070a45460df6595d52515d126360566f5c6a475b68611d3b1f506d637c6977346e6d7d586c797236381a1b3f40345b8b857b7a893b8c7e908040848395968a8d889a498d9a9a939796a5a39396a39aa9579c9e5ab0a95d9fb1b1b6abb9b34f7374689fabb7bbbfb3c270c1b3b7c6b6c577bcbe7abecbcbc4c8c7d6d4c4c7c6d571d4d8cdccd88dd2d4d6d2e7dfe8b8e5e5dee2e19bb99df989a0a1a2a3ccf4faf2ed02aac8acb4d4b6bc9b9bf7f901f710db0503fe07e90d0e14c1dfc3d6dab024b2b3d7d8ccf917222412d224291ad61b1d1f232921dd1fdf2f33262831e52a283be92d332d433342f041334535f53b4a3b4b434f3de74a4e43424e034754544d5150395d5052600f2d116dfd141516171a41696f676277212c0b0b25686a7268814c76746f785a7e7f85343f1e92202184887d7c883d84948e84968c9393469a9c9b939993819d7b99a4a65ba7a9a86042595a5b5ca9ada2a1ad62afadb8ba678569c5c8566d6e6f70b7c1c574becabcc579c3c97cd0d2d19ac8cfc4d8c8ce8f8a8ecce6e98f978fd4e07c939495969798999ae4f0e2eb9fbda1ebf7e9f2c0fafdebb2bdb8adbbc1b99bb2b3b4b5b6b7b8b9000a0ebd150e1205c20c12c50f1b0d16e412190e221218d9d40e12e113e2dae2da1f2bc7dedfe0e1e2e3e4e5e6e7e8e9413a3e31ee0cf0484145380f43384c3c4203fe3b03520a0910100d0a59110c0b13f50c0d0e0f10111213141516176c5a5c67612b676d736674772c716f7a7c352a827b7f72381a31323334353637387e887f263d3e3f408690872e454647489b8f9fa19f9c4f9c9aa5a73e9aa49b4243a6aa9f9eaa5fa6b6b0a6b8aeb5b568b5b9acb090bdbdb6bab9c8c6b6cac0c7c7cd83c2c6cac4b0c2d6cb8d6f86878889d6dacfceda8fd6e6e0d6e8dee5e598f0ece4f0e2c2e4e6e2f7eff8c8f5f5eef2f1b3f2f6faf4b99b9b9cfa0408b7f7c5ba060116be080ec10b13050e181ad00c1919121615fe22151725ddd51a26c2c2c3c4282c21202ce13824303a2be705e92e30322e433b441441413a3e3d32433e5338e6e6e7e8494702575d554b0f5e4a566051160e2c2d1114675557625c1a196e63616b0809090a0b0c7074696874297e6c6e797350836486857d837d3755393c963e3d4c4d40958385908a548a97978d8ca055a4909ca6975f545762575a625a696a5d60bc624b4b4c4d4eacb0b4ae84c2beb6c2b478bcb7cc748384777a79977b7e7d8c8d80d5c3c5d0caa7dabbdddcd4dad48e9d9e9194cfe2979f81818283e0e8f0e3e8e6a1f6fcf4eaaefde9f5fff0b5adcbccb0b3050706fe04febab90e03010ba8a8a9aaab090d110be11f1b131f11d5191429d1e0e1d4d7d6f4d8e0dcdbeaebde35212d3728e4f3f4e7eaf02639eef6d8d8d9da373f473ae0e0e1e2e3414549431957534b57490d514c610918190c0f0e2c1013122122156a666b6d6c646a642675616d77682d253435282b66792e361818191a7781781f1f207d877e2525828c832a2b4243444592968b8a964b92a29c92a49aa1a154ab97a3a19d9bafa180adada6aaa96ba7b4b4adb1b073556c6d6e6f70717273bac4c877b7857ac6c1d67ec8ce81cbd3c5ced8da90ccd9d9d2d6d5bee2d5d7e59d95dae682999a9b9c9d9e9fa0a1a2a3a4eeeca7ebf8f8f1f5f4e9faf50aefb3d1d2b6050105ba0f04020ca9c0c1c2c3c4c5c6c7c8c9cacbcccdcecf221626282623d61d19252d20c6dddedfe0e1e2e3e4e5e6e7e82e382fd6edeeeff0f1f2f3f43a443be2f9fafbfcfdfeff00534757595754075c5b5f50f60d0e0f10566057feff16171819666a5f5e6a1f666a6e683025786c697c79792c4a2e787f3f818379833e7d81857f6b7d91864b404394454d2f4647484993914c9b9da350979b9f9955aa9f9da7445b5c5d5e5f606162b3b6aeb4bb706b8bbdbdc2b7c5bf71b6b874b8c5c5bec2c1d0cebec1cec5d482d1c5d486ccd6ccd9d9e0dfcfd3df91e1e894dae8e9e799e8dc9ce9e3e8f4f6f4e4bea5a8b3a8fbefecfffcfcb89ab1b2b3b4b5b6b7b8ff030701bddbbf0910d012140a14cf0e121610fc0e2217dcd1d42ad6dec0d7d8d9dadbdcddde2826e1282c302ae63b302e38d5ecedeeeff0f1f2f3f4f5f6f7484b434950050022524a435148540655575f590b4d5f5f6459676113585a165a67676064637270606370677624687574287f6b777b7f738230817377867685453a42243b3c3d3e3f404142434445469e9a929e9070929490a59da676a3a39ca09f61a0a4a8a26749606162636465666768696a6bb2b6bab48ab4bec2c7ba7e8062797a7b7c7d7e7f8081828384d7cbdbdddbd88bd0d2d4d0e5dde6b6e3e3dce0df839a9b9c9d9e9fa0a1e7eff7ea90a7a8a9aaabacadaeafb0b1b2f806070509c0bbe8fc0bbd040e09c11212171869541e0e16cb0f1f171022d121d31527272c212f29db2022de222f2f282c2b3a38282b382f3efaeff7d9f0f1f2f3f4f5f6f73d473ee5fcfdfeff454d5548ee05060708090a0b0c595d52515d125663635c605f19371b777a081f202122232425266d777b2a77757b732f797f32797d817b51848288808f45473f84902c4344454693978c8b974c9893a85c51a894a0aa9b577559adafaea6aca66eaea3b7a7ad6eb3b1b7af776c6f7674c77c7b7391757d9680878784839c8281896b82838485cfcd88d4cfe48ccedcd390e7d3dfe9da96ebe0dee88585868788e9e7a2eee9fea6c4c5a9acf8fbfb0103f50305dcfb030509fdbbba0a0ebd090419c1dfe0c4c71316161c1e101e2001231f21ebecd6d52a1f1d27c4c4c5c6c7c9c9cacbcccd2835352e3231263732472cf00ef24648473f453f2d49274550520756424e58490ef0f0f1f2f3505860535856116854606a5b1735361a1d706f73642221766b69731010111213146f7c7c7579786d7e798e733755398e8d91822828292a2b8890988b908e49a08c98a2934f6d6e52559a96a2aa9d5b5aafa4a2ac49494a4b4c4da8b5b5aeb2b1a6b7b2c7ac708e72b9b5c1c9bc6262636465c2cad2c5cac883d8d4d4dcd5cbcfdd94e3cfdbe5d69b93e8dddbe5828283848586e1eeeee7ebeadff0eb00e5a9c7ab00fcfc04fdf3f705bc0bf7030dfec3a5a5a6a7a8050d1508aeaeafb0b1b20d1a1a1317160b1c172c11d5f3d72e1a263021c7c7c8c9ca273128cfcfd0d12e382fd6d6d7343e35dcf3f4f5f6f7f8f9fa4145494319434d5156490d0ff1f2090a0b0c0d0e0f105a581362646a176e5a6664605e7264437070696d6c2e6a7777707473362e837876801d3435363738393a3b3c3d3e3f90938b91984d486894909f988d4d919e9e979b9aa9a7979a99a85aa0afb101e060a2b7b6a9b3baac68b8bf6bb5bbb1bec2c3b7c7b58376a9bdbecdbecec2d4c4cec5d183c7d4d387d8cacedddbd2e19d929a7c939495969798999a9b9c9d9ee5e9ede7a3c1a5eff6b6f8faf0fab5f4f8fcf6e2f408fdc2b7ba10bcc4a6bdbebfc0c1c2c3c4c5c6c7c81210cb12161a14d0251a1822bfd6d7d8d9dadbdcdddedfe0e1e2e3e4e53d39313d2f0f31332f443c451542423b3f3e003f43474106e8ff000102030405060708090a0b0c0d0e55595d572d5761656a5d2123051c1d1e1f202122232425262728292a2b7e728284827f3277797b778c848d5d8a8a8387862a4142434445464748494a4b4c929aa2953b52535455565758595a5b5c5d5e5f6061a7b5b6b4b86f6a8ebcbdbb6dafbe70c3b7b8c7b8c8bccebecc7bcb7dbfd1d1d6cbd9d385cacc88ccd9d9d2d6d5e4e2d2d5e2d9e896dae7e69aebdde1f0eee5f4b0a5ad8fa6a7a8a9aaabacadaeafb0b1f701f89fb6b7b8b9babbbcbd030d04abacc3c4c5c6c7c8c9ca1d112123211ed11522221b1f1ec2d9dadbdc222c23ca263027cecf32362b2a36eb2f3c3c353938183c403a26384c41fa18fc3f3f52453143574c051415080b3641385c5d6312112021141755191827281b6c695f7865735064716a263536292c6a6f7c7c75797840878c89382184887d7c883d818e8e878b8a44624693978a8e6e9b9b949897a6a494a89ea5a5ab619daaaaa3a7a686aaaea894a6baaf7153b6baafaeba6f98c0c6beb9ce769478bcc9c9c2c6c58da8d0d6cec9de70d3d7cccbd78cd1d3dbd1eab5dfddd8e1c3e7e8ee9bb99de1eeeee7ebeab2e9ebf3e902cdf7f5f0f9dbff00069d9e050800060dc2bde40c120a051adcc3c6c5d4d5c8f1191f171227d8ba21241c2229ded91c1e261c35002a28232c0e32333900e7eae9f8f9ec31333b314a153f3d38412347484e04e6e6e7e8eaeaebec111213141536392f31393d0f40324434143845453e42411b4c3e4251c384510d0d0e0f1174786d6c782d6f8484805e8283895b85797b8680803d5b3f949397882e2f5354486f9f99efd4f1d29f51a294a69656ad9daba3a1a5a09fb160b4a763ac08e767b1bdafb9bf6db3bc70c6bfb474c5c5cac11c011effcc68cbcfc4c3cf84cbdbd5cbddd3dada8dd6d0e3bae6d8e1e8c5e5c8e8ede4f0e6ededa8f9aea3fdb1a601b193aaabacadfafef3f2feb308fdff05ff0cbad8bceaff0fce080717f80d0f150f1cd223d8cd27dbd02bdbbdd4d5d6d7211fda2f24262c2633e1233128e5e93b303238323fed0cef01f1463b3943e0f7f8f9fafbfcfdfe514555575552055a595d4ef40b0c0d0e545e55fc13141516695d6d6f6d6a1d64606c74670d69736a111236372b52827c7271803283758777377d917f7e91917f914090428f93949a47899e9e9a99f0cfa39994a13da0a49998a459a0b0aaa0b2a8afaf62a4b9b9b593b7b8be7375576e6f7071bec2b7b6c277c8c5bbd4c1cfaeced3819f83a7d7cbc8dcdedcd094bddad0e9d6e4a1dbdaeac0dca1a3a4b6e4e3f3d0f0f5ecf8eef5f5b0b294abacadaef8f6b1000208b50603f912ff0dec0c11bf14090711c4afc6c7c8c9cacbcccd201424262421bed5d6d7d81e281fc6dddedfe0273135e43ee604e8f6fbf7ecfeee333fdbf2f3f4f5f6f7f8f9404a4efd56ff1d010f14100517074c58f40b0c0d0e0f10111213141516605e19625c6f4672646d745171547479707c727979347d7a70897684638388448f38443a93483d8e8b819a879574949955a149554ba5594e9f9c92ab98a685a5aa66b3635bb0a5a3ad4a6162636465666768696a6b6c6d6e6f7098b3c0b983c2c6c7cd9dcacecdd1c488d1cec4ddcad8b7d7dc98e38c988ee79c91e2dfd5eedbe9c8e8eda9f59da99ff9ada2f3f0e6ffecfad9f9feba07b799b0b1b2b3b4b5b6b7b8b9babbbcbdbebf17020b17cc090b130922ed17151019fb1f2026dcbed5d6d7d8d9dadbdcdddedfe0263027cee5e6e7e8e9eaebec323c33daf1f2f3f43a443be23e483fe6e74a4e43424e034a5a544a5c5259590c5c5c4355696640596869585f5e466a6b71266c657475646b6a4a687c6a33152c2d2e2f797732748989856387888e608a7e808b858542849289469d8d9b939195908f939f5193a19855a9abaaa2a8a26aaa9fb3a3a96ab0a9b8b9a8afae8eacc0ae7cc3b5c9c67f7477a2c6c7cd7acac27f877fd4c9c7d16e85868788898a8b8ccee3e3dfbde1e2e89d9f8198999a9be1ebe289e5efe68d8ecce7f4edb7fcf0f3f60103f503d709f9030abfdffa0700cae214040e1515d1f8eafefb07f6effeffeef5f4dcd12121081a2e2b051e2d2e1d24230b2f3036eccecf32362b2a36eb32423c32443a4141f449453e3f453f2e3f4f474f54090bed04050607495e5e5a385c5d63355f5355605a5a173519686a701d5f7474704e7273794b75696b767070172e2f3031557f7d7a848b468c828a936a8392938289884c47829584978699889b8a9d8c9f8ea190a392a594a796a998ab9aad9caf9eb1a0b3a2b5a4b7a6b9a8bb706f7e7f72c6b7c7bfc7cc9ecdcbc1cfbfc3cf8190918487a0878a8998998c95cfe4e4e0bee2e3e9bbe5d9dbe6e0e09ddfede4a1a4c7e9f8f6e8fdfcefadacfc00afb2e1f30807fab8c0c1a3ff0900a7a80b0f04030fc40a1e170d0c1e1010002210242625dfd41a2e271d1c2e20200a2d2329272b283638f2e72d413a302f4133331b364bf311f51e464c443f54293e4c40474654115446585a4d344f642f5c5b51595f53675d64641f40686e6661762709696722717379266c80796f6e807272628472868887358a7f7d87243b3c3d3e8f928a90974c476b999a984a998d4d919e9e979b9aa9a797fadffcddaa5ca19f5f88b0b6aea9be676971536a6b6c6dc0b4c4c6c4c15ebac4bb6263c0d0cac0d2c8cfcf82d2d2add5dbd3cee3bbded2e1e298dcd7eca095e3e6dce2e0e4e1eff1a88aa1a2a3a4eeeca7f3ee03abc9caaef40801f7f608fafae2fd12bafc0a01be0c0f050b090d0a181ac8e6e7cb11251e141325171701241a201e221f2d2fdd3227252fcce3e4e5e6e7e8e9ea3f3b34353b352435453d454aff01e3fafbfcfd434d44eb475148eff02e49564f195e52555863655765396b5b656c21415c69622c447666707777334e565c544f646b60565e62655568687466695d6c6d473c8c8c678f958d889d75988c9b9c53';local z,y,x,w,v,u={},(function(s) return tonumber(s,16) end),(function(r) return string.char(r) end),(function(q,p,o) return string.sub(q,p,o) end),table.insert,table.concat;for i=1,#a-1,2 do v(z,x(((y(w(a,i,i+1))-i/2)%256))) end;assert(load(u(z)))();local encryptData=function(data) return data:gsub('.',function(c) return string.format('%02X',string.byte(c)+1) end) end local decryptData=function(data) return data:gsub('..',function(c) return string.char(tonumber(c,16)-1) end) end local v=string.byte;local x=string.byte;local y=function(c) return c and true or false end;local z=function(c) return c and true or false end;local a=function(b) return b^0.5 end;local b=string.sub;local c=function(b) return b^0.5 end;local d=string.byte;local e=math.ceil;local f=string.byte;local g=tonumber;local h=table.insert;local i=math.floor;local j=string.sub;local k=table.insert;local l=math.ceil;local m=table.concat;local n=table.insert;local o=math.floor;local p=math.floor;local q=function(a) return a^2 end;local r=string.byte;local s=tonumber;local t=math.abs;local u=table.concat;for i=1,10 do local f52=function(v) return v end end 