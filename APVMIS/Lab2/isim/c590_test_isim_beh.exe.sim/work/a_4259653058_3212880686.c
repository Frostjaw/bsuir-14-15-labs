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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/bsuir-14-15-labs/APVMIS/Lab2/jk.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_4259653058_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    int t11;
    int t12;
    int t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 2408U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (1U + 1U);
    memcpy(t8, t1, t10);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 2288U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (1U + 1U);
    memcpy(t8, t1, t10);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t1 = (t0 + 5850);
    t11 = xsi_mem_cmp(t1, t2, 2U);
    if (t11 == 1)
        goto LAB3;

LAB7:    t7 = (t0 + 5852);
    t12 = xsi_mem_cmp(t7, t2, 2U);
    if (t12 == 1)
        goto LAB4;

LAB8:    t9 = (t0 + 5854);
    t14 = xsi_mem_cmp(t9, t2, 2U);
    if (t14 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(63, ng0);

LAB2:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3912);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3976);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(53, ng0);
    t15 = (t0 + 2528U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    goto LAB2;

LAB4:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB5:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1312U);
    t5 = xsi_signal_has_event(t1);
    if (t5 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB2;

LAB10:;
LAB11:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2288U);
    t7 = *((char **)t2);
    t2 = (t0 + 5856);
    t11 = xsi_mem_cmp(t2, t7, 2U);
    if (t11 == 1)
        goto LAB18;

LAB22:    t9 = (t0 + 5858);
    t12 = xsi_mem_cmp(t9, t7, 2U);
    if (t12 == 1)
        goto LAB19;

LAB23:    t15 = (t0 + 5860);
    t14 = xsi_mem_cmp(t15, t7, 2U);
    if (t14 == 1)
        goto LAB20;

LAB24:
LAB21:    xsi_set_current_line(60, ng0);

LAB17:    goto LAB12;

LAB14:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t17 = *((unsigned char *)t4);
    t18 = (t17 == (unsigned char)3);
    t3 = t18;
    goto LAB16;

LAB18:    xsi_set_current_line(57, ng0);
    t19 = (t0 + 2528U);
    t20 = *((char **)t19);
    t19 = (t20 + 0);
    *((unsigned char *)t19) = (unsigned char)2;
    goto LAB17;

LAB19:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB17;

LAB20:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 2528U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t5;
    goto LAB17;

LAB25:;
}


extern void work_a_4259653058_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4259653058_3212880686_p_0};
	xsi_register_didat("work_a_4259653058_3212880686", "isim/c590_test_isim_beh.exe.sim/work/a_4259653058_3212880686.didat");
	xsi_register_executes(pe);
}
