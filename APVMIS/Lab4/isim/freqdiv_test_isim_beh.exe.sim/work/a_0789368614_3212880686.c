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
static const char *ng0 = "C:/Users/Frostjaw/bsuir-14-15-labs/APVMIS/Lab4/freqdiv.vhd";



static void work_a_0789368614_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB8;

LAB9:
LAB3:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1608U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = (t0 + 1488U);
    t5 = *((char **)t1);
    t12 = *((int *)t5);
    t3 = (t6 == t12);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 2912);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1608U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 == 0);
    if (t7 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2992);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1608U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t12 = (t6 + 1);
    t1 = (t0 + 1608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t12;
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2992);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2992);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB10:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1608U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 0;
    goto LAB11;

}


extern void work_a_0789368614_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0789368614_3212880686_p_0};
	xsi_register_didat("work_a_0789368614_3212880686", "isim/freqdiv_test_isim_beh.exe.sim/work/a_0789368614_3212880686.didat");
	xsi_register_executes(pe);
}
