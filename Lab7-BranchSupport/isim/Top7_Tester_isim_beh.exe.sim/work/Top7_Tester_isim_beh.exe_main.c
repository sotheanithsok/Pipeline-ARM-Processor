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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003688636183_1733832700_init();
    work_m_00000000001480407545_2138213552_init();
    work_m_00000000000417928268_3361184447_init();
    work_m_00000000003757912229_1015268676_init();
    work_m_00000000000124112270_1661724263_init();
    work_m_00000000004013222299_4231019343_init();
    work_m_00000000001894472673_3717951388_init();
    work_m_00000000002522339258_2137181695_init();
    work_m_00000000003206217032_2461264495_init();
    work_m_00000000003216453096_1273460063_init();
    work_m_00000000000307080986_0520380230_init();
    work_m_00000000003318487601_0732070944_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003318487601_0732070944");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
