void setup(){
  size(1000,1000);
  pincel1 a=new pincel1(450,550,500,600,10,20);
  pincel1 b=new pincel1(250,350,400,500,10,10);
  pincel1 c=new pincel1(550,750,700,800,20,10);
}
class pincel1{
    float xi,yi,tamx,tamy;
    float xf,yf,a,b;
    float m=(yf-yi)/(xf-xi);
    float x=xi,y=yi;
    
   pincel1(float xi,float yi,float xf,float yf,float tamx, float tamy){
     x=xi;
     y=yi;
      float m=(yf-yi)/(xf-xi);
     /* for(float i=-(tamy/2.0);i<=(tamy/2.0);i++){
        for(float j=-(tamx/2.0);j<=(tamx/2.0);j++){
      point(xi+j,yi+i);
      }
      }
    }*/
    
    if(m<=1){
   b=xi;
   a=xf;
 }
 if(m>1){
   b=yi;
   a=yf;
 }
 for(float i=b;i<=a;i++){
  
 if(m<=1&&y<=yf){
   y=y+(m);
   x++;
   for(float k=-(tamy/2.0);k<=(tamy/2.0);k++){
        for(float j=-(tamx/2.0);j<=(tamx/2.0);j++){
      point(x+j,height-(y+k));
      }
      }
 }
 if(m>1&&x<=xf){
   x=x+(1.0/m);
   y++;
   for(float k=-(tamy/2.0);k<=(tamy/2.0);k++){
        for(float j=-(tamx/2.0);j<=(tamx/2.0);j++){
      point(x+j,height-(y+k));
      }
      }
   }
 }
   
}
}

void draw(){

}
