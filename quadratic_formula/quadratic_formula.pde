void setup(){
  println(quadratic(1,2,1));
}

void draw(){
}

float [] quadratic(float a, float b, float c){
  float[] result=new float[5];
  result[0]=a;
  result[1]=b;
  result[2]=c;
  result[3]= (-b-sqrt(b*b-4*a*c))/2*a;
  result[4]= (-b+sqrt(b*b-4*a*c))/2*a;
  return result;
}
  







