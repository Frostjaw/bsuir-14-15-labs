/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *VL_P_2533777724;
char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    simprims_ver_m_00000000000126354981_0818475687_init();
    simprims_ver_m_00000000000126354981_1080494567_init();
    simprims_ver_u_00000000000017755009_3216321564_init();
    simprims_ver_m_00000000003963788642_2501315080_init();
    simprims_ver_m_00000000002872589513_3118641787_init();
    simprims_ver_u_00000000002212670773_1323274903_init();
    simprims_ver_m_00000000001160127574_0897309690_init();
    simprims_ver_m_00000000003598591109_1145179157_init();
    simprims_ver_m_00000000003598591109_4181397769_init();
    simprims_ver_m_00000000003598591109_1554034063_init();
    simprims_ver_m_00000000003598591109_0303707576_init();
    simprims_ver_m_00000000003598591109_1673134505_init();
    simprims_ver_m_00000000003598591109_3256702861_init();
    simprims_ver_u_00000000001518412038_3351940313_init();
    simprims_ver_m_00000000002512495004_1111305660_init();
    simprims_ver_m_00000000002512495004_1715877197_init();
    simprims_ver_m_00000000002512495004_3745003551_init();
    simprims_ver_m_00000000002512495004_3489460828_init();
    simprims_ver_u_00000000001518412038_0211181436_init();
    simprims_ver_m_00000000000515035322_1168732245_init();
    simprims_ver_m_00000000000515035322_3793490390_init();
    simprims_ver_m_00000000000515035322_3157771637_init();
    simprims_ver_m_00000000000515035322_1851173178_init();
    simprims_ver_m_00000000001255213976_2021654676_init();
    simprims_ver_m_00000000001255213976_3226743947_init();
    simprims_ver_m_00000000003359274523_2662658903_2991022301_init();
    simprims_ver_m_00000000003359274523_2662658903_3431677768_init();
    simprims_ver_m_00000000003359274523_2662658903_3856641388_init();
    simprims_ver_m_00000000003359274523_2662658903_3827156827_init();
    simprims_ver_m_00000000003359274523_2662658903_4014047334_init();
    simprims_ver_m_00000000003359274523_2662658903_4001622609_init();
    simprims_ver_m_00000000003359274523_2662658903_3972355080_init();
    simprims_ver_m_00000000003359274523_2662658903_3686601776_init();
    simprims_ver_m_00000000003359274523_2662658903_3265668465_init();
    simprims_ver_m_00000000000648012491_3151998091_1588465802_init();
    simprims_ver_m_00000000000648012491_3151998091_2292814092_init();
    simprims_ver_m_00000000000648012491_3151998091_0789901477_init();
    simprims_ver_m_00000000000648012491_3151998091_0261569993_init();
    simprims_ver_m_00000000000648012491_3151998091_4275457004_init();
    simprims_ver_m_00000000000648012491_3151998091_2827807850_init();
    simprims_ver_m_00000000001065952397_1672080743_init();
    simprims_ver_m_00000000001867363923_1692233196_init();
    work_m_00000000001489826091_3812759234_init();
    ieee_p_2592010699_init();
    vl_p_2533777724_init();
    work_a_3779823739_2372691052_init();


    xsi_register_tops("work_a_3779823739_2372691052");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
