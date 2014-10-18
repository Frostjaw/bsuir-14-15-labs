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
static unsigned int ng0[] = {0U, 0U};



static void Cont_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 2344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng0)));
    t3 = (t0 + 2728);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}


extern void simprims_ver_m_00000000000126354981_0818475687_1866072654_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1866072654", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1866072654.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_4104080929_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_4104080929", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_4104080929.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2197920977_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2197920977", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2197920977.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0413454526_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0413454526", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0413454526.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1815886129_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1815886129", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1815886129.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_4154029406_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_4154029406", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_4154029406.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2147985326_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2147985326", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2147985326.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0463662017_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0463662017", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0463662017.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1765176496_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1765176496", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1765176496.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_4069734623_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_4069734623", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_4069734623.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0310506352_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0310506352", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0310506352.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3474402037_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3474402037", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3474402037.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_1927104059_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_1927104059", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_1927104059.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_2940968894_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_2940968894", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_2940968894.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_3526924774_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_3526924774", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_3526924774.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_0263077987_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687_0263077987", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687_0263077987.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000126354981_0818475687_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_00000000000126354981_0818475687", "isim/FPGA_test_isim_par.exe.sim/simprims_ver/m_00000000000126354981_0818475687.didat");
	xsi_register_executes(pe);
}
