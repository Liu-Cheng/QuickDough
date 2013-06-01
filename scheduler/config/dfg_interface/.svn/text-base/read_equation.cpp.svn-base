#include <fstream>
#include <iostream>
#include <math.h>

using namespace std;

void read_equation ()
{
  char str[32];
  extern int matrix_rank;
  extern double fft_size;
  extern int conv_size;
  extern int conv_halfsize;
  extern int aes_num;
  extern int vd_size;
  extern int rand_exp;
  extern int rand_alpha;
  extern int rand_n1;
  extern int rand_seed;
  extern float rand_degree;
  extern int graph;
#define graph_mmm (1)
#define graph_fft (2)
#define graph_rand (3)
#define graph_conv (4)
#define graph_aes (5)
#define graph_vd (6)
  extern int arch;
#define arch_ring (1)
#define arch_dring (2)
#define arch_torus (3)
#define arch_torus2 (4)
#define arch_dtorus (5)
#define arch_dfull (6)
#define arch_rand (7)
  int pst;

  //Opens for reading the file
  ifstream input_file ( "input_equation.txt" );
  //Reads one string from the file
  input_file>> str;
  //Should output the equation
  cout<<endl << "the_input_is " << str <<endl;

  //Generate equation information from the input_file
  cout<<endl << "====================================================" <<endl;
  cout<<endl << "========== the input equation information ==========" <<endl;
  int power = 0;
  pst = 0;
  if ( str[pst] == 'm' && str[pst+1] == 'm' && str[pst+2] == 'm' ) {
	  graph = graph_mmm;
	  pst = pst+3;
  }
  else if ( str[pst] == 'f' && str[pst+1] == 'f' && str[pst+2] == 't' ) {
	  graph = graph_fft;
	  pst = pst+3;
  }
  else if ( str[pst] == 'c' && str[pst+1] == 'o' && str[pst+2] == 'n' && str[pst+3] == 'v' ) {
	  graph = graph_conv;
	  pst = pst+4;
  }
  else if ( str[pst] == 'a' && str[pst+1] == 'e' && str[pst+2] == 's' ) {
	  graph = graph_aes;
	  pst = pst+3;
  }
  else if ( str[pst] == 'v' && str[pst+1] == 'd' ) {
	  graph = graph_vd;
	  pst = pst+2;
  }
  else if ( str[pst] == 'r' && str[pst+1] == 'a' && str[pst+2] == 'n' && str[pst+3] == 'd' ) {
	  graph = graph_rand;
	  pst = pst+5;
  }
  if ( graph != 0 && graph != graph_rand ) {
	  while ( str[pst] >= '0' && str[pst] <= '9' ) {
		  if ( graph == graph_mmm ) matrix_rank = matrix_rank * 10 + ( str[pst] - 48 );
		  else if ( graph == graph_fft ) power = power * 10 + ( str[pst] - 48 );
		  else if ( graph == graph_conv ) conv_halfsize = conv_halfsize * 10 + ( str[pst] - 48 );
		  else if ( graph == graph_aes ) aes_num = aes_num * 10 + ( str[pst] - 48 );
		  else if ( graph == graph_vd ) vd_size = vd_size * 10 + ( str[pst] - 48 );
		  pst++;
	  }
  }
  if ( graph != 0 && graph == graph_rand ) {
	  while ( str[pst] >= '0' && str[pst] <= '9' ) {
		  rand_exp = rand_exp * 10 + ( str[pst] - 48 );
		  pst++;
	  }
	  if ( str[pst] == ',' || str[pst] == '-' ) pst++;
	  while ( str[pst] >= '0' && str[pst] <= '9' ) {
		  rand_alpha = rand_alpha * 10 + ( str[pst] - 48 );
		  pst++;
	  }
	  if ( str[pst] == ',' || str[pst] == '-' ) {
		  pst++;
		  if ( rand_alpha < 0 || rand_alpha > 100 ) {
			  graph = 0;
			  rand_exp = 0;
			  rand_alpha = 0;
		  }
	  }
  }
  if ( graph != 0 && graph == graph_rand ) {
	  while ( str[pst] >= '0' && str[pst] <= '9' ) {
		  rand_n1 = rand_n1 * 10 + ( str[pst] - 48 );
		  pst++;
	  }
	  if ( str[pst] == ',' || str[pst] == '-' ) pst++;
	  while ( str[pst] >= '0' && str[pst] <= '9' ) {
		  rand_seed = rand_seed * 10 + ( str[pst] - 48 );
		  pst++;
	  }
	  if ( str[pst] == ',' || str[pst] == '-' ) pst++;
	  while ( str[pst] >= '0' && str[pst] <= '9' ) {
		  rand_degree = rand_degree * 10 + ( str[pst] - 48 );
		  pst++;
	  }
	  rand_degree = rand_degree / 2;
  }
  if ( str[pst] == ',' || str[pst] == '-' ) pst++;
  if ( str[pst] == 'r' && str[pst+1] == 'i' && str[pst+2] == 'n' && str[pst+3] == 'g' && str[pst+4] == 0 ) {
	  arch = arch_ring;
	  pst = pst+4;
  }
  else if ( str[pst] == 'd' && str[pst+1] == 'r' && str[pst+2] == 'i' && str[pst+3] == 'n' && str[pst+4] == 'g' && str[pst+5] == 0 ) {
	  arch = arch_dring;
	  pst = pst+5;
  }
  else if ( str[pst] == 't' && str[pst+1] == 'o' && str[pst+2] == 'r' && str[pst+3] == 'u' && str[pst+4] == 's' && str[pst+5] == 0 ) {
	  arch = arch_torus;
	  pst = pst+5;
  }
  else if ( str[pst] == 't' && str[pst+1] == 'o' && str[pst+2] == 'r' && str[pst+3] == 'u' && str[pst+4] == 's' && str[pst+5] == '2' && str[pst+6] == 0 ) {
	  arch = arch_torus2;
	  pst = pst+6;
  }
  else if ( str[pst] == 'd' && str[pst+1] == 't' && str[pst+2] == 'o' && str[pst+3] == 'r' && str[pst+4] == 'u' && str[pst+5] == 's' && str[pst+6] == 0 ) {
	  arch = arch_dtorus;
	  pst = pst+6;
  }
  else if ( str[pst] == 'd' && str[pst+1] == 'f' && str[pst+2] == 'u' && str[pst+3] == 'l' && str[pst+4] == 'l' && str[pst+5] == 0 ) {
	  arch = arch_dfull;
	  pst = pst+5;
  }
  else if ( str[pst] == 'r' && str[pst+1] == 'a' && str[pst+2] == 'n' && str[pst+3] == 'd' && str[pst+4] == 0 ) {
	  arch = arch_rand;
	  pst = pst+4;
  }

  if ( graph == graph_mmm ) {
      cout<< "matrix_rank = " << matrix_rank <<endl;
  }
  else if ( graph == graph_fft ) {
	  fft_size = pow(2,(double)power);
      cout<< "fft_size = " << fft_size <<endl;
  }
  else if ( graph == graph_conv ) {
	  conv_size = conv_halfsize*2+1;
      cout<< "conv_size = " << conv_size <<endl;
  }
  else if ( graph == graph_aes ) {
      cout<< "aes_num = " << aes_num <<endl;
  }
  else if ( graph == graph_vd ) {
      cout<< "vd_size = " << vd_size <<endl;
  }
  else if ( graph == graph_rand ) {
      cout<< "rand_exp = " << rand_exp <<endl;
      cout<< "rand_alpha = " << rand_alpha <<endl;
      cout<< "rand_n1 = " << rand_n1 <<endl;
      cout<< "rand_seed = " << rand_seed <<endl;
      cout<< "rand_degree = " << rand_degree <<endl;
  }
  cout<<endl << "========== end of the input equation information ==========" <<endl;
  cout<<endl << "===========================================================" <<endl;


  //Creates an instance of ofstream, and opens input_equation.txt
  ofstream output_file ( "DFG.txt" );
  // Outputs to input_equation.txt through a_file
  output_file<<endl << "the_input_is " << str <<endl;
  output_file<<endl << "====================================================" <<endl;
  output_file<<endl << "========== the input equation information ==========" <<endl;
  if ( graph == graph_mmm ) {
	  output_file<< "matrix_rank = " << matrix_rank <<endl;
  }
  else if ( graph == graph_fft ) {
	  output_file<< "fft_size = " << fft_size <<endl;
  }
  else if ( graph == graph_conv ) {
	  output_file<< "conv_size = " << conv_size <<endl;
  }
  else if ( graph == graph_aes ) {
	  output_file<< "aes_num = " << aes_num <<endl;
  }
  else if ( graph == graph_vd ) {
	  output_file<< "vd_size = " << vd_size <<endl;
  }
  else if ( graph == graph_rand ) {
      output_file<< "rand_exp = " << rand_exp <<endl;
      output_file<< "rand_alpha = " << rand_alpha <<endl;
      output_file<< "rand_n1 = " << rand_n1 <<endl;
      output_file<< "rand_seed = " << rand_seed <<endl;
      output_file<< "rand_degree = " << rand_degree <<endl;
  }
  output_file<<endl << "========== end of the input equation information ==========" <<endl;
  output_file<<endl << "===========================================================" <<endl;
  // Close the file stream explicitly
  output_file.close();
  //cin.get();    // wait for a keypress
}
