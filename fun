<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, minimum-scale=1.0 maximum-scale=1.0, user-scalable=no"/>
    <meta name="HandheldFriendly" content="true"/>
    <style>
        html,p,div,body{
           padding:0;
            margin:0;
        }
        .times{
            padding:0;
            margin:0;
            width:100%;
            height:50px;
        }
        .bk{
            background-color: #00a2e8;
            color:#fff;
            font-size:15px;
            display: inline-block;
            height:30px;
            width:32%;
        }
        .iInput{
            position: absolute;
            width: 80px;
            height: 16px;
            left: 1px;
            top: 2px;
            border-bottom: 0px;
            border-right: 0px;
            border-left: 0px;
            border-top: 0px;
            background-color: #999;
        }
    </style>
</head>
<body>
<div>   数组合并</div>

<div class="times">
    <span class="bk a1">11</span>
    <span class="bk a2">22</span>
    <span class="bk a3">33</span>
</div>
<div>
    <select name="" id="">
        <option value="">1</option>
        <option value="">12</option>
        <option value="">123</option>
        <option value="">1234</option>

    </select>
</div>

<div style="position:relative;">
    <select style="width:120px;background-color: #666;" onchange="inputs()" id="selectInputs">
        <option value="A类">A类</option>
        <option value="B类">B类</option>
        <option value="C类">C类</option>
        <option value="D类">D类</option>
    </select>
    <input id="inputtt" name="input" class="iInput">
</div>
<div>
    <p><input type="text"><button onclick="search()">搜索</button></p>
    <div class="toggles">
        <p></p>
        <p></p>
        <p></p>
    </div>
</div>
<script src="jquery.js"></script>
<script>
    /**搜索**/
        function toggles(){
            显示隐藏;
        }
        function search(){

            toggles();
        }

    function inputs(){
        document.getElementById('inputtt').value=$("#selectInputs").val();

        console.log(document.getElementById('inputtt').value);
    }
    function pp(){
          let t=0;
       var  clocks = function (){
                t++;
                if(t<=33){
                    $(".a1").html(t+"%");
                }else if(t<67){
                    $(".a2").html(t+"%");
                }else if(t<=100){
                    $(".a3").html(t+"%");
                }else{
                    console.log('出错了');
                    clearInterval(ss);
                }
            }
        let ss=setInterval(clocks,600);
    }
    pp();
/**倒计时**/
var t=60;
var stopSend;
function sendCode(){
    clearInterval(stopSend);
    stopSend=setInterval(clock,1000);
    $("#release").html('重新发送验证码(<span id="timer">' +t+ '</span>)');
    function clock(){
        t--;
        $("#release").html('重新发送验证码(<span id="timer">' +t+ '</span>)');
        if(t==0){
            clearInterval(stopSend);
            $("#release").html('重新发送验证码');
            t=60;
        }
    }
}
    var array1=['1','9','4'];
    var array2=['4','6','2','0'];

    function conects(array1,array2){

        let arr3=array1.concat(array2);
        for(let i=0;i<arr3.length-1;i++){
            for(let j=i+1;j<arr3.length;j++){

                if(arr3[i]>arr3[j]){//如果前面的数据比后面的大就交换
                    let temp=arr3[i];
                    arr3[i]=arr3[j];
                    arr3[j]=temp;
                }

            }
        }
        let temps=new Array();
        for (let q in arr3){
            if(temps.indexOf(arr3[q])==-1){
                temps.push(arr3[q]);
            }
        }
        console.log("排序后："+temps);
    }
    conects(array1,array2);


    var a=['1','0','4'];
    var b=['4','6','2','3'];
    function merge(a,b){
        var lena = a.length;
        var lenb = b.length;
        var c = new Array(lena + lenb);

        var i = 0, j = 0, k = 0;//分别代表数组a ,b , c 的索引
        while (i < lena && j < lenb) {
            if (a[i] < b[j])
                c[k++] = a[i++];
            else
                c[k++] = b[j++];
        }
        while (i < lena)
            c[k++] = a[i++];
        while (j < lenb)
            c[k++] = b[j++];
        return c;
        console.log('这是合并---'+c);
    }
    merge(a,b);

    var aa=['2','3'];
    console.log(aa.indexOf('2'));
    /***闭包**/
    function conects2(array1,array2){
        let arr3=array1.concat(array2);
        function arrays(arr3){
            for(let i=0;i<arr3.length-1;i++){
                for(let j=i+1;j<arr3.length;j++){

                    if(arr3[i]>arr3[j]){//如果前面的数据比后面的大就交换
                        let temp=arr3[i];
                        arr3[i]=arr3[j];
                        arr3[j]=temp;
                    }

                }
            }
            return arr3;
        }

        let temps=new Array();
        for (let q in arrays(arr3)){
            if(temps.indexOf(arr3[q])==-1){
                temps.push(arr3[q]);
            }
        }
        console.log("排序后："+temps);
    }
    conects2(array1,array2);
    /**代理**/
    const handler = {
        get (target, key) {
            invariant(key, 'get');
            return target[key];
        },
        set (target, key, value) {
            invariant(key, 'set');
            target[key] = value;
            return true;
        }
    };
    function invariant (key, action) {
        if (key[0] === '_') {
            throw new Error(`Invalid attempt to ${action} private "${key}" property`);
        }
    }
    const target = {};
    const proxy = new Proxy(target, handler);
    proxy.name;
    /**克隆函数**/
    function clones(type){
        var types=typeof(type);
        if(types=='number'||types=='string'||types=='Boolean'){
            var x=type;
            var y=x;
        }else if(types=='object'){
           var str ;
           y = type.constructor=='Aarray'?[]:{};
           str=JSON.stringify(type);
           y=JSON.parse(str);
        }else{
            var x=type;
            var y={};
            for(let i in x){
                y[i]=x[i];
            }
        }
        return y;
    }
    clones(1);

    /**克隆对象**/
    var cloneObj = function(obj){

            var str, newobj = obj.constructor === Array ? [] : {};
             if(typeof obj !== 'object'){
                     return;
                 } else if(window.JSON){
                     str = JSON.stringify(obj), //序列化对象
                         newobj = JSON.parse(str); //还原
                } else {
                     console.log('走了else');
                     for(i in obj){
                             newobj[i] = typeof obj[i] === 'object' ? cloneObj(obj[i]) : obj[i];
                         }
               }
        console.log(newobj);
             return newobj;

         };
     //测试
     var student = {
             name:"yxz",
             age:25,
             sex:"male"
     };
     cloneObj(student);

    var arrayLike = {
        '0': 'a',
        '1': 'b',
        '2': 'c',
        length: 3
    };

</script>
</body>
</html>
