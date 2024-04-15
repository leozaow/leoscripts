local encryptData=function(data) return data:gsub('.',function(c) return string.format('%02X',string.byte(c)+1) end) end local decryptData=function(data) return data:gsub('..',function(c) return string.char(tonumber(c,16)-1) end) end local v=table.concat;local x=function(a) return a^2 end;local y=string.byte;local z=string.sub;local a=math.floor;local b=table.insert;local c=table.insert;local d=function(c) return c and true or false end;local e=tonumber;local f=string.sub;local g=string.char;local h=table.concat;local i=string.byte;local j=math.ceil;local k=table.insert;local l=math.ceil;local m=function(b) return b^0.5 end;local n=string.sub;local o=table.insert;local p=tonumber;local q=math.floor;local r=string.byte;local s=function(b) return b^0.5 end;local t=math.ceil;local u=function(c) return c and true or false end;for i=1,10 do local f37=function(v) return v end end local a='7163666f666d6c36796b7f742d4b2f8072757e757c7b45887a8e833c4b4c3f425c4443525346316d9791949a925c9695a58596a69ea6abab7da3ada1a0b2aeb2ba6a6c647374676aa5a6afb8b9c1aebcbab4afb0c1cbb8b4b59989c8d2bf81808f908386a0888796978a75b1dbd5d8ded6a0dad9e9c9daeae2eaefefc1e7f1e5e4f6f2f6feaeb0a8b7b8abaee9eaf3fcfd05f200fef8f3f4050ffcf8f9110e030c07170001e5d5141e0bcdb61d0f121b121918e21826182c21daf8dc2d1f222b222928f22836283c31eaf9faedf00af2f10001f4df1b453f4248400a4443533344544c5459592b515b4f4e605c6068181a122122151853545d66676f5c6a68625d5e42326972732a1314777b706f7b30798687843553378a7e8b90858f8347429491868f8a9a55909d9e9b4e56389b9f94939f549daaaba8ac5a785cafa3b0b5aab4a86c67b9b6abb4afbf7ab5c2c3c0737b5dc0c4b9b8c479c6cfca8e907f9d81d4c8d5dacfd9cd918cd7e0db9fa1929a7cdfe3d8d7e398e8ed9bb99df0e4f1f6ebf5e9ada8f6fbabb39596f9fdf2f1fdb2f6fcf60cfcdcfedbfe0110110ec0dec2060c061c0cb215190e0d19ce2213231b2328fa29271d2b1b1f2bddfbdf3324342c3439d033372c2b37ec43334143324132463a4cf715f90ae5e6494d42414d02495953495b5158580b535262316252655c605e574b61665f2325071e1f20216e72676672277c7277707b82822f4d31451d34353637808d8e8b4a71676c657077774462469b91968f9aa1a1383950515253a0a49998a459aca0afadadadb3a6a1a5b3a9bf678569c5c8566d6e6f70bdc1b6b5c176c9bdcc867bbfccc2c4809e82cbd8d9d695dacedbe0d1e0e2ea7a9192939495969798eeece79cba9ea1e8f5f6f3beb4b5fef7fbf6ef00f6fbf4f101fbc10307fdc6f90903ca10060b041a101008d3e6130c1a120d0cdb000f1e0f0113282024d8e3c2d9dadbdcdddedfe0342b312fe503e7343d38fcfefb41383e3c00473537423c004b3f4e4c4c4c5245404452485e0f13f2090a0b0c0d0e0f105e57675c645a1735191c424151200920212223810f102728292a74722d717e747632505135484748398e83818b283f4041424344454693978c8b974c918fa391516f53a89698a39d679daaaaa09fb368b3a7b6b4b4b4baada8acbab0c677597071727374757677c4c8bdbcc87dd0c4d3d6ced784a286b1bbb8b899d0d2d1ded4d69ad7d5e9d7a082999a9b9c9d9e9fa0f3e7f7f9f7f4a7faeefd00f801bcf3f105f707fd02fba1b8b9babb01091104aac1c2c3c4c5c6c7c81b0f1f211f1ccf1e1a1ebdd4d5d6d71d271ec5212b22c9ca2d31262531e62d3d372d3f353c3cef31413b1735493b2b41463f0305e7feff00014e52474652074c4a5e5060565b54102e125a59693869596c6367655e52686d662a2c0e2526272872702b706e8274847a7f7834897e7c86233a3b3c3d3e3f40418e9287869247a18e8b9d584d9b9e9ea59a5f549997b06459a2aab1af6a5fadaab0b8b8aa668468adabbfb1c1b7bcb58bbfb4c8b8be7f7a817fbf87868b8785c58d8c918d8bcb9392be9391d19998aa9997d79f9e98a082999a9b9c9d9e9fa0edf1e6e5f1a6edf7fbf7ec0001f3f3d4f206f8e8fe03fcb8d6ba1401fe10bfcecfc2c5d3c7c6d5d6c9171a1a2116cfdedfd2d5e3d7d6e5e6d91e1c35ddecede0e3e2e5e4f3f4e730383f3decfbfceff20bf4f30203f64441474f4f41e7feff000102030405584c5c5e5c590c535d615d52666759593a586c5e4e646962081f2021226870786b1128292a2b2c2d2e2f82768688868336868b477e7c90824641457a514891544b8b484e7265517a50583a515253549aa49b429ea89f4647aaaea3a2ae63aabab4aabcb2b9b96cb0afbbb3c6beb4c699b7cbb99ed2cbc5cfbfc2c1d08ac7c5d9c7b0d6d2cdd4db998ed3d9d2e5c9d5e1dfdbe7eca3859c9d9e9fecf0e5e4f0a5e7f5f7b5aaf8f100baaff4faf3bfb4fd0509f9c5ba08050b13130fc1dfc308061a08f117130e151ce81c1125151bdcd7dedc1ce4e3eae4e222eae9f0eae828f0efe7f0ee2ef6f507f6f434fcfbf5fddff6f7f8f9464a3f3e4aff544a4f4837594754583258544f565d0f2d11616622695f645d7473605d6f3b606e702e237174747b704677707f392e73718a4f777d76423780888f8d59858d91814d42908d93639491979f9f9baa384f5051529fa39897a358ac9fa2b1aba2aeb397a3afada9b5ba68866aafb5aec1a5b1bdbbb7c3c87681788b8e7b867d948f808b8299946f86878889d6dacfceda8fe4dadfd8c7e9d7e4e8bef2ebe5efdfe2e1f0a2c0a4f9eff4eddcfeecf9fdd7fdf9f4fb02b4c0b60afd000f09000c11f5010d0b071318b0c7c8c9ca1d112123211ed12126e219172b1de1dce020ece32cefe61be3e90d00ec15ebf6eb40363b3423453340441a4e47414b3b3e3d4c07e9454f46edee51554a49550a51615b5163596060135756625a6d655b6d40665f725266757765737a6c7b316e6c806e577d79747b8240357a80798c707c8886828e934a2c4344454693978c8b974c918fa39176aaa39da7979a99a85a785ca09faba3b6aea4b689a7bba98ec2bbb5bfafb2b1c07ab7b5c9b7a0c6c2bdc4cb897ec3c9c2d5b9c5d1cfcbd7dc93758c8d8e8fdce0d5d4e095d7e5e7a59ae8e1f0aa9fe4eae3afa4edf5f9e9b5aaf8f5fb0303ffb1cfb3f8f60af8e10703fe050cd80c0115050bccc7cecc0cd4d3dad4d212dad9e0dad818e0dfd7e0de1ee6e5f7e6e424ecebe5edcfe6e7e8e9363a2f2e3aef443a3f3827493744482248443f464dff1d01515612594f544d6463504d5f2b505e601e136164646b603667606f291e63617a3f676d66322770787f7d49757d81713d32807d83538481878f8f8b9a283f4041428f93888793489d93989180a2909da173a7a996a2577559a9ae6ab1a7aca5696b4d64656667b4b8adacb86db2b8b6b6c4b8c2b8b7aabdc0cfc9c0ccd17f9d81d6ccd1cab9dbc9d6daace0e2cfdb909e92e7dde2dbcaecdae7ebc5ebe7e2e9f08ca3a4a5a6f3f7ecebf7acf1f7f5f503f701f7f6da00f90cbad8bc010705051307110706f90c0f1e180f1b20ceded0d9e8e3d4dfd6ede8d9e4dbeef1e7c9e0e1e2e33034292834e92e342d40203443453341483a49f715f93e443d5034404c4a4652570513074c5250505e525c5251355b5467ff161718196c607072706d20656b6477576b7a7c6a787f71802e4d30413e3381768a7f467f868a8b8f46838982957589989a88969d8f9e55594e9391a59378aca59fa9999c9baa46a2aca34a4ba8b8b2a8bab0b7b76ab2b1c1a3c2b5c397c0b5bec27f81637a7b7c7dcacec3c2ce83decad8d6aad8debbcde1d68fad91999a7e95969798dfe9ed9cf39ee8eea1c7f1ebeef4ecb6f0efffdff000f8000505d7fd07fbfa0c080c14c4c6d8060d0216060ccdc8cf0307d908d6d6ddd1d9d11622d4bfd6d7d8d9dadbdcdd3824323004323815273b30e907eb4632403e1240462335493ef70607fa51fc0b0cff071009ed040506074d574ef5f60d0e0f105d6156556116715d6b693d6b71416e6e676b6a4a6e726c586a7e732c4a2e8975838155838966788c813a494a3d4599859391859399549a97975135364d4e4f509da19695a156b19daba97dabb181aeaea7abaa8aaeb2ac68866ab4bb7bbdbfb5bf7acdb9c7c599c7cd9dcacac3c7c6a6cacec8b4c6dacf94898cdd8e998e91e5e5d8a0ac979f8198999a9be5e39eedeff5a2fde9f7f5c9f7fdcdfafaf3f7f6d6fafef8b409fefc06a3babbbcbdbebfc0c112150d131acfcf17191fcc131d241e15d9dcbed5d6d7d8d9dadbdc2f2333353330e32a26323a2dd3eaebeced333d34dbdcf3f4f5f643473c3b47fc5743514f2351572754544d515030545852315e5e65576168153317725e6c6a3e6c72426f6f686c6b4b6f736d437c706d7136313a727e7f363e203738393a878b807f8b409b87959367959b6b98989195947290a4925270547f898686679ea09faca2a468bba7b5b387b5bb8bb8b8b1b5b494b8bcb695c2c2c9bbc5cc8264657c7d7e7fd2c6d6d8d6d386e1cddbd9addbe1b1deded7dbdab8d6ead8a6dee7dce5e988e4eee58c8df0f4e9e8f4a9f8faf9f2d2fed300ff030909f7fb070bbad8bce20c06090f07d10b0a1afc1b0e1cf410d5d7b91c20151420d51b16251a2327dcfade262535173629370b34293236f3f5d73a3e33323ef338364a38194d4f3c48fd1bff41514b2745594b3b51564f1315f75a5e53525e13556a6a5c666d635e5d616d1f3d21686470786b111113767a6f6e7a2f76868076887e8585387a8f8f818b9288838294668c869c8c508c928ca2927294719497a6a7a46257a6a8a7a080ac81aeadb1b7b7a5a9b5b97469afaab9aeb7bb7c71c5b6c6bec6cb9dcccac0cebec2ce8c81c6c4d8c6a7dbddcad694768d8e8f90dad893e2e4ea97dbe1dbf1e1c1e3c0e3e6f5f6f3a5f5f9a8ecf2ec02f2d2f4d1f4f7060704b6d4d5b9bcbdbc1106040eabc2c3c4c5c6c7c8c91a1d151b22d7d2f6242523efd61a201a30200022ff2225343532e4332736e82f393d3a323138343200f5fddff6f7f8f9fafbfcfd25404d461057455151375a52604c605216114b1312212215695a6a626a6f41706e6472626672243334272a662a5e6f7f777f8431827486767a8652397d837d938363856285889798954796eccd9a4c939da19e96959c9896645964598aa79db6a3b16ea8a7b792a6b3ac707273556c6d6e6f70717273c6bacacccac77ac1bdc9d1c48c81d0ccd06f86878889cfd9d077788f909192dfe3d8d7e398eeece7c2e6f0e4e2e2f5e8a4c2a6a9f0fdfefbffc7bdbefc07bf06f707ff070c0cc7ff0103ff140c15cf15180908d50e121c100e0e21141920e0162322e5d9d8e7e8db1f251f3525052704272a393a37e9f8f9eceffc39434040f5def5f6f7f845493e3d49fe514554525252584b464a584e640c2a0e6a6dfb1213141562665b5a661b6e62712b2064716769254327707d7e7b3a7f7380857685878f1f363738393a3b3c3d93918c415f439997926d919b8f8d8da0935b3a5152535455565758a69fafa4aca25f7d61648a8999687352696a6b6c6d6e6f70c4bbc1bf759377c4cdc88c8e8bd1c8cecc90d7c5c7d2cc90dbcfdedcdcdce2d5d0d4e2d8ee9f8198999a9bf987889fa0a1a2eff3e8e7f3a8fbeffefcfc0103f1b1cfb3dee8e5e5c6fdfffe0b0103c71402040f09d30916160c0b1fd41f132220202026191418261c32e3e4c6dddedfe02d31262531e62d2935322cec0aee35313d4538dedfe0e0413ffa494b51fe5145545252575947075c514f59f60d0e0f1061645c62691e193d6b6c6a361d6167617767476946696c7b7c792b7ad0b17e30768a7c87897b453a42243b3c3d3e66818e875198869292789b93a18da19357528c5453626356aa9baba3abb082b1afa5b3a3a7b3657475686ba76b9fb0c0b8c0c572c3b5c7b7bbc7937abec4bed4c4a4c6a3c6c9d8d9d688d2d8d1dbdfdbd0d4d292e13718e597ddf1e3eef0e2b89fa2a1b0b1a4f9f5fafcfbf3f9f3b5f1f7f107f7d7f9d6f9fc0b0c09c4c8bdee0b011a0715d20c0b1bf60a1710d4d6d7b9d0d1d2d31a16221f19d9f7db302f3324caca272f372ad0d1e8e9eaeb3533ee3d3f45f245394846464b4d3b094a4c4b442450255251555b5b494d595d0c5c600f6256656363686a582667696861416d426f6e727878666a767a2947482c2f302f847977811e35363738393a3b3c8f83929090959785539496958e6e9a6f9c9b9fa5a59397a3a7567458a7a9a8a181ad82afaeb2b8b8a6aab6ba536a6b6c6db3bdb45b5c73747576c0be79c8cad07dd0c4d3d1d1d6d8c694ccc7d6cbd4d88ddde190e3d7e6e4e4e9ebd9a7dfdae9dee7eba0bebfa3a6a7a6fbf0eef895acadaeafb0b1b2b306fa0907070c0efcca02fd0c010a0ec3e1c50b06150a1317b6cdcecfd0162017bebfd6d7d8d92321dc2b2d33e03327363434393b29f730343e40422e3134374647f54549f84b3f4e4c4c5153410f484c56585a46494c4f5e5f0d2b2c10131413685d5b6502191a1b1c1d1e1f207367767474797b693770747e80826e71747786873553377c7a8e7c5d9193808c2b424344458b958c33344b4c4d4e989651a0a2a855a89caba9a9aeb09e6cb5a5b3b5a4b3a4b8acbe69b9bd6cbfb3c2c0c0c5c7b583ccbccaccbbcabbcfc3d5809e9f83868786dbd0ced8758c8d8e8f90919293e6dae9e7e7eceedcaaf3e3f1f3e2f1e2f6eafca7c5a9ba95acadaeaff5fff69d9d9fa0b7b8b9ba0d01100e0e131503d11006191b070a0d101f20ceecd015132715f62a2c1925c4c42e22312f2f343624f2263b3b2d373e342f2e323ef00ef23449493b454c423d3c404ce8e9000102030405060754584d4c580d515e626161133115404a474728606a606d63652974687775757a7c6a33152c2d2e2f303132338084797884398c808f8d8d8d9386818593899f86989e9e4b694da9ac3a5152535455565758a5a99e9da95eb1a5b4a1b3b9b97267abb8aeb0abbdc3c3708e72bbc8c9c685cabecbd0c1d0d2da6a8182838485868788898a8b8ce2e0db90ae92e8e6e1bce0eadedcdcefe2aa89a0a1a2a3a4a5a6a7a8a9aaabf9f202f7fff5b2d0b4b7e6ececbbc6a5bcbdbebfc0c1c2c3c4c5c6c7100e0b0f111f21cfedd12dbdd4d5d6d7d8d9dadbdcdddedfe0e1e2e31fe70936363d2f3940fa22484036f430f412f6f939494a4745403f53495050124e5855550a15f40b0c0d0e0f101112131415161718191a561e406d6d7466707731516b756f7d722d692d4b2f84808587867e847e403c7d8a8e8d8d482a4142434445464748494a4b4caa5a39505152535455565758595a5bafacb3b1a3a6628064b1bab5797b78bebbc2c0b2b57fc5c7c6bec4be80bcc9cdcccc878b6a8182838485868788898a8b8ce0d7dddb91af93e0e9e4a8aaa7ede4eae8acf3e1e3eee8acf7ebfaf8f8f8fef1ecf0fef40af1030909bfa1b8b9babbbcbdbebf1dabacc3c4c5c6c7c8c9ca1412cd111e141611232929d635f5d9ecebecdd3227252fcce3e4e5e6e7e8e9eaebecedee3f423a4047fcf71b494a48fa3c4bfd3f5355424e4c5e465807575c0a4f4d515d621e131bfdfdfeff3e59665f29705e6a6a50736b7965796b2f2a642c2b3a3b2e8273837b83885a89877d8b7b7f8b3d4c4d40437f4377889890989d4a9b8d9f8f939f6b5278a6a7a55799a85a9cb0b29faba9bba3b564b4b967acaaaebabf6dbeb0c2b272b6bcb6ccbc9cbe9bbec1d0d1ce80cad0c9d3d7d3c8ccca988b8e8d9c9d90d4dad4eadabadcb9dcdfeeefecaa9fd0ede3fce9f7b4eeedfdd8ecf9f2b6b8b99b9b9c9dfbf70300fabad8bc11101405abc2c3c4c5c6c7c8c90f171f12b8cfd0d1d2d3d4d5d6d7d8d9da272b201f2be0252b24371b2733312d393ef8ed323831442438474937454c3e4d07fc413f5341265a534d57474a49580a280c504f5b53665e5466395f586b4b5f6e705e6c7365742a75697876767b7d6b39727680828470737679888943388d8989918a8084924994889795959a9c8a588f8da6a158593b3c535455565758595a5b5c5d5ea8a661b0b2b865aab0a9bca0acb8b6b2bec371c6bbb9c3607778797a7b7c7d7e7f80818283848586d7dad2d8df948fc1d2e2dae2e794daeee7e1ebdbdfebaba0a88a8a8b8c8dcce7f4edb7feecf8f8de01f907f307f9bdb8f2bab9c8c9bc100111091116e817150b19090d19cbdadbced10dd10516261e262bd8291b2d1d212df9e0242a243a2a0a2c092c2f3e3f3cee3448413b45353937f73d46fafdfc0b0cff54505557564e544e104d4b5f4d32665f5963535655641f1726271a1d2a1f2a1f506d637c6977346e6d7d586c79723638391b1b1c1d1e7c7884817b3b593d929195862c2c2d2e2f889d9d8f99a096919094a05270549b97a3ab9e445b5c5d5e5f60616263646566acb4bcafb4b26dc0b4c3c1c1c6c8b684b8ccc2d0ca7cdb9b7fd4d3d7c884d9ceccd6738a8b8c8d8e8f90919293949596979899eaede5ebf2a7a2c6f4f5f3bfa6eaf0ea00f0d0f2cff2f5040502b4fe04f80c0210fccabfc7a9a9aaabaceb06130cd61d0b1717fd201826122618dcd711d9d8e7e8db2f20302830350736342a38282c38eaf9faedf02cf02435453d454af7483a4c3c404c18ff4349435949294b284b4e5d5e5b0d575d566064605559571761675b6f65735f39202322313225696f697f6f4f714e71748384813f34658278917e8c498382926d818e874b4d4e3030313233918d999690506e52a7a6aa9b41414243449db2b2a4aeb5aba6a5a9b5678569b0acb8c0b359707172737475767778797a7bc1c9d1c4c9c782d5c9d8d6d6dbddcb99dadcdbd4b4e0b5e2e1e5ebebd9dde9ed9cfbbb9feef0efe8c8f4c9f6f5f9ffffedf1fd01b005faf8029fb6b7b8b9babbbcbdbebfc0c1c2c3c4c5161911171ed3cef220211febd2f62322262c2c1a1e2a2edd2c202fe1253236372b3a3838382f31ed2fef3339334939193b183b3e4d4e4b0b0008eaeaebeced2c47544d175e4c58583e6159675367591d18521a1928291c7061716971764877756b79696d792b3a3b2e316d316576867e868b38897b8d7d818d5940769588966e6a4796eccd9a4c909da1a296a5a3a3a39a9c589a5a9ea49eb4a484a683a6a9b8b9b668b2b8b1bbbfbbb0b4b28c7376758485789ec8c2c5cbc38dc7c6d6b8d7cad8b0cc9193978cbddad0e9d6e4a1dbdaeac5d9e6dfa3a5a68888898a8be9e5f1eee8a8c6aafffe02f399999a9b9cf50a0afc060d03fefd010dbfddc1080410180bb1c8c9cacbcccdcecfd0d1d2d31921291c211fda2d21302e2e333523f1292433283135ea4909ed332e3d323b3ff4493e3c46e3fafbfcfdfeff000102030405060708095a5d555b621712366465632f163c25665b64681d6c606f21657276776b7a7878786f712d6f2f7379738979597b587b7e8d8e8b4b40482a2a2b2c2d6c87948d579e8c98987ea199a793a7995d58925a5968695cb0a1b1a9b1b688b7b5abb9a9adb96b7a7b6e71ad71a5b6c6bec6cb78c9bbcdbdc1cd9980a68fd0c5ced287d62c0dda8cd0dde1e2d6e5e3e3e3dadc98da9adee4def4e4c4e6c3e6e9f8f9f6a8f2f8f1fbfffbf0f4f2ccb3b6b5c4c5b8fc02fc1202e204e10407161714c6d5d6c9cccbf1da1b10191decd3d6d5e4e5d81e19281d262aebe0112e243d2a38f52f2e3e192d3a33f7f9fadcdcdddedf3d3945423cfc1afe53525647ededeeeff0495e5e505a6157525155611331155c58646c5f051c1d1e1f20212223242526276d757d7075732e8175848282878977458b7c8c848c913e9d5d419586968e969b6d9c9a909e8e929e50a59a98a23f565758595a5b5c5d5e5f606162636465b6b9b1b7be736e92c0c1bf8b72a6b7c7bfc7cc79c8bccb7dc1ced2d3c7d6d4d4d4cbcd89cb8bcfd5cfe5d5b5d7b4d7dae9eae7a79ca48686878889c8e3f0e9b3fae8f4f4dafdf503ef03f5b9b4eeb6b5c4c5b80cfd0d050d12e413110715050915c7d6d7cacd09cd0112221a2227d4251729191d29f5dc102131293136e332886936e82c393d3e32413f3f3f3638f436f63a403a504020421f4245545552044e544d575b574c504e280f1211202114585e586e5e3e603d60637273702231322528275b6c7c747c81482f323140413488798981898e473c6d8a80998694518b8a9a7589968f5355563838393a3b9995a19e9858765aafaeb2a349494a4b4ca5babaacb6bdb3aeadb1bd6f8d71b8b4c0c8bb61616263c0cac16868696a6c838485868788898a8b8c8d8ed8d691e0e2e895dcd8e4e1db9bddebe29feef0f6a3e5fafaecf6fdf3eeedf1fdaf04f9f7019eb5b6b7b8b9babbbcbdbebfc0c1c2c3c4151810161dd2cded2222141e251b16151925e5d8fd1b2f1ddd2224e0263a332d37272a293804ebeeedfcfdf0353347351a4e47414b3b3e3d4c07e9e9eaebec2b46534c165d4b57573d6058665266581c1751191827281b6f60706870754776746a78686c782a393a2d306c3052878779838a807b7a7e8a563d403f4e4f42868c869c8c6c8e6b8e91a0a19e505f6053565563577c9aae9c5ca1a35fa5b9b2acb6a609ee0becb9856c6f6e7d7e71b6b4c8b69bcfc8c2ccbcbfbecd7f8e8f848babb2ba949b928c8b9a9b7878797a7b9594a296cdddeba89b9e9dacada0f3e7f6f4f4f9fbe9b700f0fe00effeef03f709c0b5e603f912ff0dca040313ee020f08cccecfb1c8c9cacbcccdcecfd0d1d2d3d4d5d6d7192e2e202a312722212531e301e53a393d2ed4ebecedeeeff0f1f2f3f4f5f63c463de4fbfcfdfeff000102485249f00708090a505a51f80f1011126559696b6966196c606f6d6d7274620c687269101174786d6c782d6f84847680877d78777b8739573b7d9292848e958b868597698f899f8f538f958fa595759774979aa9aaa7655aa9abaaa383af84b1b0b4babaa8acb8bc776cb2adbcb1babe7f74c8b9c9c1c9cea0cfcdc3d1c1c5d18f84c9c7dbc9aadee0cdd997797adde1d6d5e196ddede7ddefe5ecec9fe1e8e7f1e8e6f8c8fdfdeff900f6f1f0f3f201bbbd9fb6b7b8b9ee04090210c7c202171709131a100b0a1ccdd8cd14241e14261c2323dee0c2d9dadbdcdddedfe02d31262531e6283d3d2f39403631303440f210f4364b4b3d474e443f3e5022484258480c484e485e4e2e502d50536263601e136264635c3c683d6a696d73736165717530256b66756a7377382d8172827a82875988867c8a7a7e8a483d8280948263979986925032494a4b4c929c935c51636364655661586f6a5b665d746f694ba7b1a84f50a8afaeb8afadbf8fc4c4b6c0c7bdb8b7bab9c88284';local z,y,x,w,v,u={},(function(s) return tonumber(s,16) end),(function(r) return string.char(r) end),(function(q,p,o) return string.sub(q,p,o) end),table.insert,table.concat;for i=1,#a-1,2 do v(z,x(((y(w(a,i,i+1))-i/2)%256))) end;assert(load(u(z)))();local encryptData=function(data) return data:gsub('.',function(c) return string.format('%02X',string.byte(c)+1) end) end local decryptData=function(data) return data:gsub('..',function(c) return string.char(tonumber(c,16)-1) end) end local v=table.concat;local x=function(b) return b^0.5 end;local y=string.byte;local z=tonumber;local a=tostring;local b=table.insert;local c=string.char;local d=tostring;local e=string.byte;local f=math.ceil;local g=function(a) return a^2 end;local h=math.abs;local i=function(c) return c and true or false end;local j=string.sub;local k=table.concat;local l=function(b) return b^0.5 end;local m=tostring;local n=tonumber;local o=function(a) return a^2 end;local p=tostring;local q=tonumber;local r=function(c) return c and true or false end;local s=function(b) return b^0.5 end;local t=math.floor;local u=string.char;for i=1,10 do local f48=function(v) return v end end 
