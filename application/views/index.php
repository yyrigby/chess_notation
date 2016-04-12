<!DOCTYPE html>
<html>
<head lang="en">
    <title>Game Notation</title>

    <!-- Libraries Js from PgnViewerJS -->
    <script src="assets/js/pgnvjs.js" type="text/javascript"></script>

    <!-- CSS used -->
    <link rel="stylesheet" href="assets/css/pgnvjs.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">

</head>
<body>
<div id="board" style="width: 500px"></div>
<script>
    $(document).ready(function() {
        var pgn = '[Event "WA K-12 Scholastic"]\
        [Site "Interlake High School"]\
        [Date "2016.04/16"]\
        [Round "1"]\
        [White "Jeffrey Kou"]\
        [Black "Alden Rigby"]\
        [Result "0-1"]\
        1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.Nf3 O-O 5.e4 d6 6.Be2 c5 7.d5 e6 8.dxe6 Bxe6 9.Bg5 Qa5 10.Qc2 Nxe4 11.O-O Nxc3 12.bxc3 Qxc3 13.Qxc3 Bxc3 14.Rad1 b5 15.cxb5 Bxa2 16.Rxd6 Re8 17.b6 axb6 18.Bh6 f6 19.Bb5 Re7 20.Rd7 Nxd7 21.Bxd7 Ra7 {I should have played Rxe7 winning a piece back.} 22.Bb5 Ra5 23.Be2 Re8 24.Bd3 c4 25.Rc1 Bb3 26.Bxc4+ Bxc4 27.Rxc3 g5 28.h3 Bd5 29.Rc7 Bxf3 30.gxf3 Re1+ 31.Kg2 Raa1 32.f4 gxf4 33.Bxf4 b5 34.Bd2 Reb1 35.Bc3 Rg1+ 36.Kh2 Rh1+ 37.Kg3 Rac1 38.Rc5 f5 39.h4 h5 40.Bb4 Rxc5 41.Bxc5 f4+ 42.Kxf4 Rxh4+ 43.Kg3 Rg4+ 44.Kh3 b4 45.Bd6 b3 46.Ba3 Ra4 47.Bc1 Ra2 48.Kh4 b2 49.Bxb2 Rxb2 50.Kxh5 Rxf2 { White resigned. } \
        ';
        var cfg = { position: '',
            pgn: pgn, locale: 'en', pieceStyle: 'merida' };
        var board = pgnEdit('board', cfg);
        
        $('#board').attr('style', "width: 80%");

        // automatically adds all comments after the selected move
        $('.afterComment').attr('checked', "checked");
        $('.commentRadio').hide();

    });
</script>
</body>
</html>