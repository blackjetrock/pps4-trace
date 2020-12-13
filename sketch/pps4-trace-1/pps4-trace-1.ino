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

#define NUM_SAMPLES  1000

uint16_t pa[NUM_SAMPLES];
uint16_t pb[NUM_SAMPLES];
uint16_t pc[NUM_SAMPLES];

// ROM data
#define ROM_SIZE 4096

uint8_t rom[ROM_SIZE];

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
int reset_threshold = 200;

void loop() {
  boolean donecap = false;
  
  int i;
  char c;
  int clkb = 0x80;
  int done = 0;
  int clk_count = 0;
  int last_clk = 0;  
  int po;

  int addr, data, clka, last_clkb = -1;
  int phase_count, rom_addr;
  
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
	  po_count = 0;

	  // reset has gone high, we wait for some clock
	  // cycles before capturing
	  clk_count = 0;
	  
	  while( !donecap )
	    {
	    pa[0] = PORT_A;
	    clkb = pa[0] & 0x80;
	    if( last_clk != clkb)
	      {
		clk_count++;

		if( clk_count > reset_threshold )
		  {
		    donecap = true;
		  }
	      }
	    last_clk = clkb;
	    
	    }
	  
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
	case '+':
	  reset_threshold +=100;
	  Serial.print("Reset threshold now ");
	  Serial.println(reset_threshold);
	  break;

	case '-':
	  reset_threshold -=100;
	  Serial.print("Reset threshold now ");
	  Serial.println(reset_threshold);
	  break;
	  
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

	case 'c':
	  // Captures and processes bursts continuously
	  // dumping ROM addresses and data out the serial port
	  //
	  // Capture
	  //
	  Serial.println("Capturing...");
	  done = false;
	  
	  while( !done )
	    {
	      if( Serial.available() )
		{
		  c = Serial.read();

		  if( c == 'x' )
		    {
		      done = true;
		    }
		}
	      
	      for(i=0;i<NUM_SAMPLES;i++)
		{
		  pa[i] = PORT_A;
		  pb[i] = PORT_B;
		  pc[i] = PORT_C;
		}
	      
	      // Process
	      for(i=0;i<NUM_SAMPLES;i++)
		{
		  addr = pb[i] >> 4;
		  data = (pa[i] & 0xF) | ((pa[i] & 0x700) >> 4) | ((pb[i] & 0x02)<<6);
		  clka = (pb[i] & 0x8) >> 3;
		  clkb = (pa[i] & 0x80) >> 7;
		  
		  addr ^= 0xfff;
		  data ^= 0xff;
		  
#if 0
		  Serial.print("A:");
		  Serial.print(addr, HEX);
		  Serial.print(" ");
		  Serial.print(data, HEX);
		  Serial.print(" ");
		  Serial.print(phase_count);
		  Serial.println();
#endif
		  
		  if ( last_clkb != clkb )
		    {
		      phase_count = 0;
		    }
		  else
		    {
		      phase_count++;
		    }
		  
		  if ( (clka == 1) && (clkb == 0) && (phase_count == 1) )
		    {
		      // ROM value
		      // Dump address
#if 0		      
		      Serial.print(rom_addr,HEX);
		      Serial.print(":");
		      Serial.println(data, HEX);
#else
		      // Store in ROM image
		      rom[rom_addr] = data;		      
#endif
		    }
		  
		  if ( (clka == 0) && (clkb == 0) && (phase_count == 1) )
		    {
		      rom_addr = addr;
		    }
		  
		  last_clkb = clkb;
		}
	    }
	  Serial.println("Stopped.");
	  break;
	  
	case 'r':
	  // Dump ROM
	  for(i=0; i<ROM_SIZE;i++)
	    {
	      Serial.print(rom[i],HEX);
	      Serial.print(" ");

	      if( (i%16) == 15 )
		{
		  Serial.println("");
		}
	    }
	  Serial.println("");
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
