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

char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_3853510154_3212880686_init();
    work_a_0535745904_3212880686_init();
    work_a_4135244751_3212880686_init();
    work_a_0910767591_3212880686_init();
    work_a_2514307121_3212880686_init();
    work_a_3794517043_3212880686_init();
    work_a_1003314168_3212880686_init();
    work_a_3377696811_3212880686_init();
    work_a_3211257706_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1134531919_3212880686_init();
    work_a_4139637147_3212880686_init();
    work_a_0035804213_3212880686_init();
    work_a_0926090843_3212880686_init();
    work_a_4292839950_3212880686_init();
    work_a_1393907461_3212880686_init();
    work_a_0611751536_3212880686_init();
    work_a_2778799206_2372691052_init();


    xsi_register_tops("work_a_2778799206_2372691052");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
