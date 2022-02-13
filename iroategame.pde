int scene=1;
int x;
int y;
int gamenn;
int i=0;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  textFont(createFont("SansSerif", 24, true));
}

void draw() {  
  
  if(i>5){
   scene=6; 
  gc();
  }

  if (scene==1) {//説明画面
    background(255, 255, 255);
    textSize(30);
    fill(255, 0, 255);
    text("色あてゲーム", 170, 90);
    fill(255, 0, 255);
    text("start:", 160, 400);
    fill(255, 0, 255);
    text("press space key", 160, 420);
    textSize(20);
    text("ルール:文字の色と対応した色の",70,290);
    text("コマンドキーを押すと正解！",90,310);
    if (key==' ') {
      scene=2;


      if (scene==2) {
        gamenn=int(random(1, 4));
      }

      if (gamenn==1) {
        gamenn1();
      }

      if (gamenn==2) {
        gamenn2();
      }

      if (gamenn==3) {
        gamenn3();
      }
    }
  }

  if (scene==3) {
    gamenn4();
  }

  if (scene==4) {
    seikai();
  }
 
}




void keyPressed() {


//コマンド選択処理
  if (gamenn==1) {
    if (key=='a'||key=='d') {
      scene=3;
    }
    if (key=='s') {
      scene=4;
    }
  }

  if (gamenn==2) {

    if (key=='a'||key=='s') {
      scene=3;
    }
    if (key=='d') {
      scene=4;
    }
  }

  if (gamenn==3) {

    if (key=='d'||key=='s') {
      scene=3;
    }
    if (key=='a') {
      scene=4;
    }
  }
  
    if (scene==3) {
    if (key==ENTER) {
      scene=1;
      i=0;
    }
  }
  
  if (scene==4) {
    if (key==' ') {
      scene=1;
      i+=1;
    }
  }
  
  if(scene==6){
    if(key==ENTER){
    scene=1;
    i=0;
    }
  }

}

//画面描写
void gamenn1() {
  background(255, 255, 255);
  textSize(50);
  fill(0, 255, 0);
  text("赤", 220, 240);
  textSize(30);
  fill(0);
  text("赤", 100, 390);
  textSize(30);
  fill(0);
  text("緑", 240, 390);
  textSize(30);
  fill(0);
  text("青", 380, 390);

  text("A", 100, 420);
  textSize(30);
  fill(0);
  text("S", 240, 420);
  textSize(30);
  fill(0);
  text("D", 380, 420);
}

void gamenn2() {
  background(255, 255, 255);
  textSize(50);
  fill(0, 0, 255);
  text("緑", 220, 240);

  textSize(30);
  fill(0);
  text("赤", 100, 390);
  textSize(30);
  fill(0);
  text("緑", 240, 390);
  textSize(30);
  fill(0);
  text("青", 380, 390);

  text("A", 100, 420);
  textSize(30);
  fill(0);
  text("S", 240, 420);
  textSize(30);
  fill(0);
  text("D", 380, 420);
}

void gamenn3() {
  background(255, 255, 255);
  textSize(50);
  fill(255, 0, 0);
  text("青", 220, 240);

  textSize(30);
  fill(0);
  text("赤", 100, 390);
  textSize(30);
  fill(0);
  text("緑", 240, 390);
  textSize(30);
  fill(0);
  text("青", 380, 390);

  text("A", 100, 420);
  textSize(30);
  fill(0);
  text("S", 240, 420);
  textSize(30);
  fill(0);
  text("D", 380, 420);
}

void gamenn4() {
  background(255, 255, 255);
  textSize(40);
  fill(255, 0, 0);
  text("GAME OVER", 200, 240);
  textSize(30);
  text("title:ENTER",200,290);
}

void seikai() {
  background(255);
  fill(255, 0, 0);
  textSize(30);
  text("正解", 230, 240);
  text("press space key",60,420);
}

void gc(){
  background(255);
  fill(0,0,255);
  textSize(30);
  text("GAME CLEAR",200,240);
  text("title:ENTER",100,420);

}
