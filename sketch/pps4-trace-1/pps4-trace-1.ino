//
// Bus trace capture for Rockwell PPS4 processor
//

const int IDO1Pin = PB0;
const int IDO2Pin = PC13;
const int IDO3Pin = PC14;
const int IDO4Pin = PC15;

const int ID1Pin = PA0;
const int ID2Pin = PA1;
const int ID3Pin = PA2;
const int ID4Pin = PA3;
const int ID5Pin = PA8;
const int ID6Pin = PA9;
const int ID7Pin = PA10;
const int ID8Pin = PB1;    /* rewired */

const int IA1Pin  = PB4;
const int IA2Pin  = PB5;
const int IA3Pin  = PB6;
const int IA4Pin  = PB7;
const int IA5Pin  = PB8;
const int IA6Pin  = PB9;
const int IA7Pin  = PB10;
const int IA8Pin  = PB11;
const int IA9Pin  = PB12;
const int IA10Pin = PB13;
const int IA11Pin = PB14;
const int IA12Pin = PB15;

const int IWIOPin  = PA15;
const int ICLKAPin = PB3;
const int ICLKBPin = PA7;    /*  rewired */
const int POPin    = PA4;

#define PORT_A         (GPIOA->IDR)
#define PORT_B         (GPIOB->IDR)
#define PORT_C         (GPIOC->IDR)

#define NUM_SAMPLES  1900

uint16_t pa[NUM_SAMPLES];
uint16_t pb[NUM_SAMPLES];
uint16_t pc[NUM_SAMPLES];

void setup() {
  int i;
  
  // Set serial port up
  delay(500);
  Serial.begin(2000000);
  delay(500);

  Serial.println("PPS4 Tracer");
  delay(1000);
  Serial.println("PPS4 Tracer");
  delay(1000);
  Serial.println("PPS4 Tracer");
  delay(1000);
  Serial.println("PPS4 Tracer");
  delay(1000);

  pinMode(IDO1Pin, INPUT);
  pinMode(IDO2Pin, INPUT);
  pinMode(IDO3Pin, INPUT);
  pinMode(IDO4Pin, INPUT);

  pinMode(ID1Pin, INPUT);
  pinMode(ID2Pin, INPUT);
  pinMode(ID3Pin, INPUT);
  pinMode(ID4Pin, INPUT);
  pinMode(ID5Pin, INPUT);
  pinMode(ID6Pin, INPUT);
  pinMode(ID7Pin, INPUT);
  pinMode(ID8Pin, INPUT);

  pinMode(IA1Pin, INPUT);
  pinMode(IA2Pin, INPUT);
  pinMode(IA3Pin, INPUT);
  pinMode(IA4Pin, INPUT);
  pinMode(IA5Pin, INPUT);
  pinMode(IA6Pin, INPUT);
  pinMode(IA7Pin, INPUT);
  pinMode(IA8Pin, INPUT);
  pinMode(IA9Pin, INPUT);
  pinMode(IA10Pin, INPUT);
  pinMode(IA11Pin, INPUT);
  pinMode(IA12Pin, INPUT);

  pinMode(IWIOPin, INPUT);
  pinMode(ICLKAPin, INPUT);
  pinMode(ICLKBPin, INPUT);
  pinMode(POPin,    INPUT);
  
}
int last_po=0;
int po_count = 0;
 
void loop() {
  int i;
  char c;
  int clkb = 0x80;

  int po;
  
  // Capture at reset, if we see a rising edge on
  // PO pin

#if 1
  pa[0] = PORT_A;
  po = (pa[0] & 0x10) >> 4;

  if( (po == 1) && (last_po == 0) )
    {
      po_count++;
      if( po_count == 1 )
	{
	  for(i=0;i<NUM_SAMPLES;i++)
	    {
	      pa[i] = PORT_A;
	      pb[i] = PORT_B;
	      pc[i] = PORT_C;
	    }
	  
	  for(i=0;i<NUM_SAMPLES;i++)
	    {
	      //	  Serial.print(i);
	      Serial.print("A:");
	      Serial.print(pa[i], HEX);
	      Serial.print(" B:");
	      Serial.print(pb[i], HEX);
	      Serial.print(" C:");
	      Serial.println(pc[i], HEX);
	    }
	}
    }
  last_po = po;

#endif
  
  if( Serial.available() )
    {
      c = Serial.read();

      switch(c)
	{
	case 'p':
	  for(i=0;i<NUM_SAMPLES;i++)
	    {
	      //	  Serial.print(i);
	      Serial.print("A:");
	      Serial.print(pa[i], HEX);
	      Serial.print(" B:");
	      Serial.print(pb[i], HEX);
	      Serial.print(" C:");
	      Serial.println(pc[i], HEX);
	    }
	  break;
	  
	case ' ':
	  // Capture a burst
#if 0
	  for(i=0;i<NUM_SAMPLES;i++)
	    {
	      // Wait for clock edge
	      pa[i] = PORT_A;
	      
	      while( (pa[i] & 0x80) == clkb )
		{
		  pa[i] = PORT_A;
		}
	      
	      clkb = pa[i] & 0x80;

	      //pa[i] = PORT_A;
	      pb[i] = PORT_B;
	      pc[i] = PORT_C;
	      
	    }
#endif
#if 1
	  for(i=0;i<NUM_SAMPLES;i++)
	    {
	      pa[i] = PORT_A;
	      pb[i] = PORT_B;
	      pc[i] = PORT_C;
	    }
#endif
	  
	  
	  for(i=0;i<NUM_SAMPLES;i++)
	    {
	      Serial.print("A:");
	      Serial.print(pa[i], HEX);
	      Serial.print(" B:");
	      Serial.print(pb[i], HEX);
	      Serial.print(" C:");
	      Serial.println(pc[i], HEX);
	    }
	  
	  break;
	}
    }
  
}
