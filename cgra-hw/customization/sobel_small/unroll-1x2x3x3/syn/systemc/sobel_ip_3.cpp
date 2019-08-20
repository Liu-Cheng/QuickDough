#include "sobel_ip.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void sobel_ip::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sub_in_address0\" :  \"" << sub_in_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sub_in_ce0\" :  \"" << sub_in_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"sub_in_q0\" :  \"" << sub_in_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sub_out_address0\" :  \"" << sub_out_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sub_out_ce0\" :  \"" << sub_out_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sub_out_we0\" :  \"" << sub_out_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sub_out_d0\" :  \"" << sub_out_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

