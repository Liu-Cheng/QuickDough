#include "axi_interfaces.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void axi_interfaces::thread_hdltv_gen() {
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
        mHdltvoutHandle << " , " <<  " \"doutc_0_address0\" :  \"" << doutc_0_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_0_ce0\" :  \"" << doutc_0_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_0_we0\" :  \"" << doutc_0_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_0_d0\" :  \"" << doutc_0_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_0_address1\" :  \"" << doutc_0_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_0_ce1\" :  \"" << doutc_0_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_0_we1\" :  \"" << doutc_0_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_0_d1\" :  \"" << doutc_0_d1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_1_address0\" :  \"" << doutc_1_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_1_ce0\" :  \"" << doutc_1_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_1_we0\" :  \"" << doutc_1_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_1_d0\" :  \"" << doutc_1_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_1_address1\" :  \"" << doutc_1_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_1_ce1\" :  \"" << doutc_1_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_1_we1\" :  \"" << doutc_1_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"doutc_1_d1\" :  \"" << doutc_1_d1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dina_0_address0\" :  \"" << dina_0_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dina_0_ce0\" :  \"" << dina_0_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dina_0_q0\" :  \"" << dina_0_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dina_0_address1\" :  \"" << dina_0_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dina_0_ce1\" :  \"" << dina_0_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dina_0_q1\" :  \"" << dina_0_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dina_1_address0\" :  \"" << dina_1_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dina_1_ce0\" :  \"" << dina_1_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dina_1_q0\" :  \"" << dina_1_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dina_1_address1\" :  \"" << dina_1_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dina_1_ce1\" :  \"" << dina_1_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dina_1_q1\" :  \"" << dina_1_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dinb_0_address0\" :  \"" << dinb_0_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dinb_0_ce0\" :  \"" << dinb_0_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dinb_0_q0\" :  \"" << dinb_0_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dinb_0_address1\" :  \"" << dinb_0_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dinb_0_ce1\" :  \"" << dinb_0_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dinb_0_q1\" :  \"" << dinb_0_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dinb_1_address0\" :  \"" << dinb_1_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dinb_1_ce0\" :  \"" << dinb_1_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dinb_1_q0\" :  \"" << dinb_1_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dinb_1_address1\" :  \"" << dinb_1_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dinb_1_ce1\" :  \"" << dinb_1_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dinb_1_q1\" :  \"" << dinb_1_q1.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

