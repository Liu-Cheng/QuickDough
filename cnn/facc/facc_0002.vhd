-- ------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 15.1
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2015 Altera Corporation.  All rights reserved.
-- Your use of  Altera  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Altera Program License Subscription Agreement,
-- Altera  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Altera and sold by
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from facc_0002
-- VHDL created on Wed Apr 20 11:16:46 2016


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity facc_0002 is
    port (
        x : in std_logic_vector(31 downto 0);  -- float32_m23
        n : in std_logic_vector(0 downto 0);  -- ufix1
        r : out std_logic_vector(31 downto 0);  -- float32_m23
        xo : out std_logic_vector(0 downto 0);  -- ufix1
        xu : out std_logic_vector(0 downto 0);  -- ufix1
        ao : out std_logic_vector(0 downto 0);  -- ufix1
        clk : in std_logic;
        areset : in std_logic
    );
end facc_0002;

architecture normal of facc_0002 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expLTLSBA_uid11_fpAccTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expGTMaxMSBX_uid13_fpAccTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal rShiftConstant_uid15_fpAccTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftValue_uid16_fpAccTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal rightShiftValue_uid16_fpAccTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal rightShiftValue_uid16_fpAccTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal rightShiftValue_uid16_fpAccTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal padConst_uid17_fpAccTest_q : STD_LOGIC_VECTOR (37 downto 0);
    signal accumulator_uid24_fpAccTest_a : STD_LOGIC_VECTOR (50 downto 0);
    signal accumulator_uid24_fpAccTest_b : STD_LOGIC_VECTOR (50 downto 0);
    signal accumulator_uid24_fpAccTest_i : STD_LOGIC_VECTOR (50 downto 0);
    signal accumulator_uid24_fpAccTest_o : STD_LOGIC_VECTOR (50 downto 0);
    signal accumulator_uid24_fpAccTest_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal accumulator_uid24_fpAccTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal accumulator_uid24_fpAccTest_q : STD_LOGIC_VECTOR (48 downto 0);
    signal accValuePositive_uid35_fpAccTest_a : STD_LOGIC_VECTOR (47 downto 0);
    signal accValuePositive_uid35_fpAccTest_b : STD_LOGIC_VECTOR (47 downto 0);
    signal accValuePositive_uid35_fpAccTest_o : STD_LOGIC_VECTOR (47 downto 0);
    signal accValuePositive_uid35_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal ShiftedOutComparator_uid38_fpAccTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal expRBias_uid41_fpAccTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal zeroExponent_uid42_fpAccTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal oRXOverflowFlagFeedback_uid52_fpAccTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal oRXOverflowFlagFeedback_uid52_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal oRXOverflowFlagFeedback_uid52_fpAccTest_q_i : STD_LOGIC_VECTOR (0 downto 0);
    signal oRXOverflowFlagFeedback_uid52_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oRXUnderflowFlagFeedback_uid56_fpAccTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal oRXUnderflowFlagFeedback_uid56_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal oRXUnderflowFlagFeedback_uid56_fpAccTest_q_i : STD_LOGIC_VECTOR (0 downto 0);
    signal oRXUnderflowFlagFeedback_uid56_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal muxAccOverflowFeedbackSignal_uid59_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal muxAccOverflowFeedbackSignal_uid59_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zs_uid64_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mO_uid67_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal zs_uid72_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid84_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid90_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal wIntCst_uid103_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage0Idx3Pad48_uid112_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx3Pad12_uid123_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage2Idx3Pad3_uid134_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal zeroOutCst_uid138_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_a : STD_LOGIC_VECTOR (9 downto 0);
    signal resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_b : STD_LOGIC_VECTOR (9 downto 0);
    signal resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_i : STD_LOGIC_VECTOR (9 downto 0);
    signal resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_o : STD_LOGIC_VECTOR (9 downto 0);
    signal resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist18_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_mem_reset0 : std_logic;
    signal redist15_mem_ia : STD_LOGIC_VECTOR (47 downto 0);
    signal redist15_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_mem_iq : STD_LOGIC_VECTOR (47 downto 0);
    signal redist15_mem_q : STD_LOGIC_VECTOR (47 downto 0);
    signal redist15_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist15_rdcnt_i : signal is true;
    signal redist15_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of redist15_sticky_ena_q : signal is true;
    signal extendedAlignedShiftedFrac_uid21_fpAccTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal muxXOverflowFeedbackSignal_uid51_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal muxXOverflowFeedbackSignal_uid51_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal muxXUnderflowFeedbackSignal_uid55_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal muxXUnderflowFeedbackSignal_uid55_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_n : STD_LOGIC_VECTOR (0 downto 0);
    signal onesComplementExtendedFrac_uid22_fpAccTest_a : STD_LOGIC_VECTOR (38 downto 0);
    signal onesComplementExtendedFrac_uid22_fpAccTest_b : STD_LOGIC_VECTOR (38 downto 0);
    signal onesComplementExtendedFrac_uid22_fpAccTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal accResOutOfExpRange_uid39_fpAccTest_a : STD_LOGIC_VECTOR (5 downto 0);
    signal accResOutOfExpRange_uid39_fpAccTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal accResOutOfExpRange_uid39_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid74_zeroCounter_uid37_fpAccTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid74_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid74_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid77_zeroCounter_uid37_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid77_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid80_zeroCounter_uid37_fpAccTest_a : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid80_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid80_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid83_zeroCounter_uid37_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid83_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid92_zeroCounter_uid37_fpAccTest_a : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid92_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid92_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid95_zeroCounter_uid37_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid95_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oFracX_uid10_fpAccTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist15_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid6_fpAccTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expX_uid6_fpAccTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal fracX_uid7_fpAccTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal fracX_uid7_fpAccTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal signX_uid8_fpAccTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal signX_uid8_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cmpLT_expX_expLTLSBA_uid12_fpAccTest_a : STD_LOGIC_VECTOR (10 downto 0);
    signal cmpLT_expX_expLTLSBA_uid12_fpAccTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal cmpLT_expX_expLTLSBA_uid12_fpAccTest_o : STD_LOGIC_VECTOR (10 downto 0);
    signal cmpLT_expX_expLTLSBA_uid12_fpAccTest_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal cmpLT_expX_expLTLSBA_uid12_fpAccTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_a : STD_LOGIC_VECTOR (10 downto 0);
    signal cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_o : STD_LOGIC_VECTOR (10 downto 0);
    signal cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStageSel5Dto4_uid114_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStageSel5Dto4_uid114_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel3Dto2_uid125_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStageSel3Dto2_uid125_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel1Dto0_uid136_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel1Dto0_uid136_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightPaddedIn_uid18_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal os_uid25_fpAccTest_q : STD_LOGIC_VECTOR (49 downto 0);
    signal posAccWoLeadingZeroBit_uid36_fpAccTest_in : STD_LOGIC_VECTOR (45 downto 0);
    signal posAccWoLeadingZeroBit_uid36_fpAccTest_b : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage1Idx1Rng4_uid153_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (43 downto 0);
    signal leftShiftStage1Idx1Rng4_uid153_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (43 downto 0);
    signal leftShiftStage1Idx2Rng8_uid156_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (39 downto 0);
    signal leftShiftStage1Idx2Rng8_uid156_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal leftShiftStage1Idx3Rng12_uid159_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (35 downto 0);
    signal leftShiftStage1Idx3Rng12_uid159_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal R_uid47_fpAccTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStageSel3Dto2_uid161_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel3Dto2_uid161_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel1Dto0_uid172_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel1Dto0_uid172_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0Idx1Rng16_uid144_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid144_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng32_uid147_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx2Rng32_uid147_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid79_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid79_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vStage_uid81_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal vStage_uid81_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid85_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid85_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal vStage_uid87_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal vStage_uid87_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid97_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid97_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng16_uid105_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx1Rng16_uid105_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage0Idx2Rng32_uid108_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx2Rng32_uid108_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx3Rng48_uid111_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx3Rng48_uid111_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osr_uid26_fpAccTest_in : STD_LOGIC_VECTOR (48 downto 0);
    signal osr_uid26_fpAccTest_b : STD_LOGIC_VECTOR (48 downto 0);
    signal rVStage_uid65_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (45 downto 0);
    signal rVStage_uid65_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal vStage_uid68_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal vStage_uid68_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1_uid154_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx2_uid157_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx3_uid160_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1_uid145_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx2_uid148_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal vCount_uid86_zeroCounter_uid37_fpAccTest_a : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid86_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid86_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid89_zeroCounter_uid37_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid89_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid98_zeroCounter_uid37_fpAccTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid98_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid98_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1_uid107_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx2_uid110_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx3_uid113_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal sum_uid27_fpAccTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal sum_uid27_fpAccTest_b : STD_LOGIC_VECTOR (47 downto 0);
    signal vCount_uid66_zeroCounter_uid37_fpAccTest_a : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid66_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid66_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid69_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid164_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage2Idx1Rng1_uid164_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage2Idx2Rng2_uid167_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage2Idx2Rng2_uid167_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage2Idx3Rng3_uid170_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (44 downto 0);
    signal leftShiftStage2Idx3Rng3_uid170_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (44 downto 0);
    signal rVStage_uid91_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid91_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal vStage_uid93_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal vStage_uid93_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal r_uid99_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal accumulatorSign_uid29_fpAccTest_in : STD_LOGIC_VECTOR (46 downto 0);
    signal accumulatorSign_uid29_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal accOverflowBitMSB_uid30_fpAccTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal accOverflowBitMSB_uid30_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal accValidRange_uid33_fpAccTest_in : STD_LOGIC_VECTOR (46 downto 0);
    signal accValidRange_uid33_fpAccTest_b : STD_LOGIC_VECTOR (46 downto 0);
    signal vStagei_uid71_zeroCounter_uid37_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid71_zeroCounter_uid37_fpAccTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1_uid165_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage2Idx2_uid168_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage2Idx3_uid171_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStageSel5Dto4_uid150_normalizationShifter_uid40_fpAccTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStageSel5Dto4_uid150_normalizationShifter_uid40_fpAccTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1Idx1Rng4_uid116_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage1Idx1Rng4_uid116_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (57 downto 0);
    signal rightShiftStage1Idx2Rng8_uid119_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage1Idx2Rng8_uid119_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (53 downto 0);
    signal rightShiftStage1Idx3Rng12_uid122_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage1Idx3Rng12_uid122_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (49 downto 0);
    signal accOverflow_uid32_fpAccTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal accOverflow_uid32_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal accOverflow_uid32_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal accOnesComplement_uid34_fpAccTest_a : STD_LOGIC_VECTOR (46 downto 0);
    signal accOnesComplement_uid34_fpAccTest_b : STD_LOGIC_VECTOR (46 downto 0);
    signal accOnesComplement_uid34_fpAccTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal rVStage_uid73_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid73_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vStage_uid75_zeroCounter_uid37_fpAccTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal vStage_uid75_zeroCounter_uid37_fpAccTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx1_uid118_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage1Idx2_uid121_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage1Idx3_uid124_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal oRAccOverflowFlagFeedback_uid60_fpAccTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal oRAccOverflowFlagFeedback_uid60_fpAccTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal oRAccOverflowFlagFeedback_uid60_fpAccTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracR_uid46_fpAccTest_in : STD_LOGIC_VECTOR (44 downto 0);
    signal fracR_uid46_fpAccTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx1Rng1_uid127_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx1Rng1_uid127_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage2Idx2Rng2_uid130_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx2Rng2_uid130_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (59 downto 0);
    signal rightShiftStage2Idx3Rng3_uid133_alignmentShifter_uid17_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx3Rng3_uid133_alignmentShifter_uid17_fpAccTest_b : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2Idx1_uid129_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx2_uid132_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx3_uid135_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal r_uid139_alignmentShifter_uid17_fpAccTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid139_alignmentShifter_uid17_fpAccTest_q : STD_LOGIC_VECTOR (61 downto 0);
    signal shiftedFracUpper_uid20_fpAccTest_in : STD_LOGIC_VECTOR (61 downto 0);
    signal shiftedFracUpper_uid20_fpAccTest_b : STD_LOGIC_VECTOR (37 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xIn(GPIN,3)@0

    -- signX_uid8_fpAccTest(BITSELECT,7)@0
    signX_uid8_fpAccTest_in <= STD_LOGIC_VECTOR(x);
    signX_uid8_fpAccTest_b <= signX_uid8_fpAccTest_in(31 downto 31);

    -- redist18(DELAY,193)
    redist18 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid8_fpAccTest_b, xout => redist18_q, clk => clk, aclr => areset );

    -- redist20(DELAY,195)
    redist20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => n, xout => redist20_q, clk => clk, aclr => areset );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- zeroOutCst_uid138_alignmentShifter_uid17_fpAccTest(CONSTANT,137)
    zeroOutCst_uid138_alignmentShifter_uid17_fpAccTest_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage2Idx3Pad3_uid134_alignmentShifter_uid17_fpAccTest(CONSTANT,133)
    rightShiftStage2Idx3Pad3_uid134_alignmentShifter_uid17_fpAccTest_q <= "000";

    -- rightShiftStage2Idx3Rng3_uid133_alignmentShifter_uid17_fpAccTest(BITSELECT,132)@1
    rightShiftStage2Idx3Rng3_uid133_alignmentShifter_uid17_fpAccTest_in <= rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q;
    rightShiftStage2Idx3Rng3_uid133_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage2Idx3Rng3_uid133_alignmentShifter_uid17_fpAccTest_in(61 downto 3);

    -- rightShiftStage2Idx3_uid135_alignmentShifter_uid17_fpAccTest(BITJOIN,134)@1
    rightShiftStage2Idx3_uid135_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage2Idx3Pad3_uid134_alignmentShifter_uid17_fpAccTest_q & rightShiftStage2Idx3Rng3_uid133_alignmentShifter_uid17_fpAccTest_b;

    -- zs_uid90_zeroCounter_uid37_fpAccTest(CONSTANT,89)
    zs_uid90_zeroCounter_uid37_fpAccTest_q <= "00";

    -- rightShiftStage2Idx2Rng2_uid130_alignmentShifter_uid17_fpAccTest(BITSELECT,129)@1
    rightShiftStage2Idx2Rng2_uid130_alignmentShifter_uid17_fpAccTest_in <= rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q;
    rightShiftStage2Idx2Rng2_uid130_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage2Idx2Rng2_uid130_alignmentShifter_uid17_fpAccTest_in(61 downto 2);

    -- rightShiftStage2Idx2_uid132_alignmentShifter_uid17_fpAccTest(BITJOIN,131)@1
    rightShiftStage2Idx2_uid132_alignmentShifter_uid17_fpAccTest_q <= zs_uid90_zeroCounter_uid37_fpAccTest_q & rightShiftStage2Idx2Rng2_uid130_alignmentShifter_uid17_fpAccTest_b;

    -- rightShiftStage2Idx1Rng1_uid127_alignmentShifter_uid17_fpAccTest(BITSELECT,126)@1
    rightShiftStage2Idx1Rng1_uid127_alignmentShifter_uid17_fpAccTest_in <= rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q;
    rightShiftStage2Idx1Rng1_uid127_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage2Idx1Rng1_uid127_alignmentShifter_uid17_fpAccTest_in(61 downto 1);

    -- rightShiftStage2Idx1_uid129_alignmentShifter_uid17_fpAccTest(BITJOIN,128)@1
    rightShiftStage2Idx1_uid129_alignmentShifter_uid17_fpAccTest_q <= GND_q & rightShiftStage2Idx1Rng1_uid127_alignmentShifter_uid17_fpAccTest_b;

    -- rightShiftStage1Idx3Pad12_uid123_alignmentShifter_uid17_fpAccTest(CONSTANT,122)
    rightShiftStage1Idx3Pad12_uid123_alignmentShifter_uid17_fpAccTest_q <= "000000000000";

    -- rightShiftStage1Idx3Rng12_uid122_alignmentShifter_uid17_fpAccTest(BITSELECT,121)@1
    rightShiftStage1Idx3Rng12_uid122_alignmentShifter_uid17_fpAccTest_in <= rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q;
    rightShiftStage1Idx3Rng12_uid122_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage1Idx3Rng12_uid122_alignmentShifter_uid17_fpAccTest_in(61 downto 12);

    -- rightShiftStage1Idx3_uid124_alignmentShifter_uid17_fpAccTest(BITJOIN,123)@1
    rightShiftStage1Idx3_uid124_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage1Idx3Pad12_uid123_alignmentShifter_uid17_fpAccTest_q & rightShiftStage1Idx3Rng12_uid122_alignmentShifter_uid17_fpAccTest_b;

    -- zeroExponent_uid42_fpAccTest(CONSTANT,41)
    zeroExponent_uid42_fpAccTest_q <= "00000000";

    -- rightShiftStage1Idx2Rng8_uid119_alignmentShifter_uid17_fpAccTest(BITSELECT,118)@1
    rightShiftStage1Idx2Rng8_uid119_alignmentShifter_uid17_fpAccTest_in <= rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q;
    rightShiftStage1Idx2Rng8_uid119_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage1Idx2Rng8_uid119_alignmentShifter_uid17_fpAccTest_in(61 downto 8);

    -- rightShiftStage1Idx2_uid121_alignmentShifter_uid17_fpAccTest(BITJOIN,120)@1
    rightShiftStage1Idx2_uid121_alignmentShifter_uid17_fpAccTest_q <= zeroExponent_uid42_fpAccTest_q & rightShiftStage1Idx2Rng8_uid119_alignmentShifter_uid17_fpAccTest_b;

    -- zs_uid84_zeroCounter_uid37_fpAccTest(CONSTANT,83)
    zs_uid84_zeroCounter_uid37_fpAccTest_q <= "0000";

    -- rightShiftStage1Idx1Rng4_uid116_alignmentShifter_uid17_fpAccTest(BITSELECT,115)@1
    rightShiftStage1Idx1Rng4_uid116_alignmentShifter_uid17_fpAccTest_in <= rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q;
    rightShiftStage1Idx1Rng4_uid116_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage1Idx1Rng4_uid116_alignmentShifter_uid17_fpAccTest_in(61 downto 4);

    -- rightShiftStage1Idx1_uid118_alignmentShifter_uid17_fpAccTest(BITJOIN,117)@1
    rightShiftStage1Idx1_uid118_alignmentShifter_uid17_fpAccTest_q <= zs_uid84_zeroCounter_uid37_fpAccTest_q & rightShiftStage1Idx1Rng4_uid116_alignmentShifter_uid17_fpAccTest_b;

    -- rightShiftStage0Idx3Pad48_uid112_alignmentShifter_uid17_fpAccTest(CONSTANT,111)
    rightShiftStage0Idx3Pad48_uid112_alignmentShifter_uid17_fpAccTest_q <= "000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx3Rng48_uid111_alignmentShifter_uid17_fpAccTest(BITSELECT,110)@1
    rightShiftStage0Idx3Rng48_uid111_alignmentShifter_uid17_fpAccTest_in <= rightPaddedIn_uid18_fpAccTest_q;
    rightShiftStage0Idx3Rng48_uid111_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage0Idx3Rng48_uid111_alignmentShifter_uid17_fpAccTest_in(61 downto 48);

    -- rightShiftStage0Idx3_uid113_alignmentShifter_uid17_fpAccTest(BITJOIN,112)@1
    rightShiftStage0Idx3_uid113_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage0Idx3Pad48_uid112_alignmentShifter_uid17_fpAccTest_q & rightShiftStage0Idx3Rng48_uid111_alignmentShifter_uid17_fpAccTest_b;

    -- zs_uid64_zeroCounter_uid37_fpAccTest(CONSTANT,63)
    zs_uid64_zeroCounter_uid37_fpAccTest_q <= "00000000000000000000000000000000";

    -- rightShiftStage0Idx2Rng32_uid108_alignmentShifter_uid17_fpAccTest(BITSELECT,107)@1
    rightShiftStage0Idx2Rng32_uid108_alignmentShifter_uid17_fpAccTest_in <= rightPaddedIn_uid18_fpAccTest_q;
    rightShiftStage0Idx2Rng32_uid108_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage0Idx2Rng32_uid108_alignmentShifter_uid17_fpAccTest_in(61 downto 32);

    -- rightShiftStage0Idx2_uid110_alignmentShifter_uid17_fpAccTest(BITJOIN,109)@1
    rightShiftStage0Idx2_uid110_alignmentShifter_uid17_fpAccTest_q <= zs_uid64_zeroCounter_uid37_fpAccTest_q & rightShiftStage0Idx2Rng32_uid108_alignmentShifter_uid17_fpAccTest_b;

    -- zs_uid72_zeroCounter_uid37_fpAccTest(CONSTANT,71)
    zs_uid72_zeroCounter_uid37_fpAccTest_q <= "0000000000000000";

    -- rightShiftStage0Idx1Rng16_uid105_alignmentShifter_uid17_fpAccTest(BITSELECT,104)@1
    rightShiftStage0Idx1Rng16_uid105_alignmentShifter_uid17_fpAccTest_in <= rightPaddedIn_uid18_fpAccTest_q;
    rightShiftStage0Idx1Rng16_uid105_alignmentShifter_uid17_fpAccTest_b <= rightShiftStage0Idx1Rng16_uid105_alignmentShifter_uid17_fpAccTest_in(61 downto 16);

    -- rightShiftStage0Idx1_uid107_alignmentShifter_uid17_fpAccTest(BITJOIN,106)@1
    rightShiftStage0Idx1_uid107_alignmentShifter_uid17_fpAccTest_q <= zs_uid72_zeroCounter_uid37_fpAccTest_q & rightShiftStage0Idx1Rng16_uid105_alignmentShifter_uid17_fpAccTest_b;

    -- fracX_uid7_fpAccTest(BITSELECT,6)@0
    fracX_uid7_fpAccTest_in <= x;
    fracX_uid7_fpAccTest_b <= fracX_uid7_fpAccTest_in(22 downto 0);

    -- redist19(DELAY,194)
    redist19 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracX_uid7_fpAccTest_b, xout => redist19_q, clk => clk, aclr => areset );

    -- oFracX_uid10_fpAccTest(BITJOIN,9)@1
    oFracX_uid10_fpAccTest_q <= VCC_q & redist19_q;

    -- padConst_uid17_fpAccTest(CONSTANT,16)
    padConst_uid17_fpAccTest_q <= "00000000000000000000000000000000000000";

    -- rightPaddedIn_uid18_fpAccTest(BITJOIN,17)@1
    rightPaddedIn_uid18_fpAccTest_q <= oFracX_uid10_fpAccTest_q & padConst_uid17_fpAccTest_q;

    -- expX_uid6_fpAccTest(BITSELECT,5)@0
    expX_uid6_fpAccTest_in <= x;
    expX_uid6_fpAccTest_b <= expX_uid6_fpAccTest_in(30 downto 23);

    -- rShiftConstant_uid15_fpAccTest(CONSTANT,14)
    rShiftConstant_uid15_fpAccTest_q <= "010001011";

    -- rightShiftValue_uid16_fpAccTest(SUB,15)@0
    rightShiftValue_uid16_fpAccTest_a <= STD_LOGIC_VECTOR("0" & rShiftConstant_uid15_fpAccTest_q);
    rightShiftValue_uid16_fpAccTest_b <= STD_LOGIC_VECTOR("00" & expX_uid6_fpAccTest_b);
    rightShiftValue_uid16_fpAccTest: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            rightShiftValue_uid16_fpAccTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            rightShiftValue_uid16_fpAccTest_o <= STD_LOGIC_VECTOR(UNSIGNED(rightShiftValue_uid16_fpAccTest_a) - UNSIGNED(rightShiftValue_uid16_fpAccTest_b));
        END IF;
    END PROCESS;
    rightShiftValue_uid16_fpAccTest_q <= rightShiftValue_uid16_fpAccTest_o(9 downto 0);

    -- rightShiftStageSel5Dto4_uid114_alignmentShifter_uid17_fpAccTest(BITSELECT,113)@1
    rightShiftStageSel5Dto4_uid114_alignmentShifter_uid17_fpAccTest_in <= rightShiftValue_uid16_fpAccTest_q(5 downto 0);
    rightShiftStageSel5Dto4_uid114_alignmentShifter_uid17_fpAccTest_b <= rightShiftStageSel5Dto4_uid114_alignmentShifter_uid17_fpAccTest_in(5 downto 4);

    -- rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest(MUX,114)@1
    rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_s <= rightShiftStageSel5Dto4_uid114_alignmentShifter_uid17_fpAccTest_b;
    rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest: PROCESS (rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_s, rightPaddedIn_uid18_fpAccTest_q, rightShiftStage0Idx1_uid107_alignmentShifter_uid17_fpAccTest_q, rightShiftStage0Idx2_uid110_alignmentShifter_uid17_fpAccTest_q, rightShiftStage0Idx3_uid113_alignmentShifter_uid17_fpAccTest_q)
    BEGIN
        CASE (rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_s) IS
            WHEN "00" => rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q <= rightPaddedIn_uid18_fpAccTest_q;
            WHEN "01" => rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage0Idx1_uid107_alignmentShifter_uid17_fpAccTest_q;
            WHEN "10" => rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage0Idx2_uid110_alignmentShifter_uid17_fpAccTest_q;
            WHEN "11" => rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage0Idx3_uid113_alignmentShifter_uid17_fpAccTest_q;
            WHEN OTHERS => rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel3Dto2_uid125_alignmentShifter_uid17_fpAccTest(BITSELECT,124)@1
    rightShiftStageSel3Dto2_uid125_alignmentShifter_uid17_fpAccTest_in <= rightShiftValue_uid16_fpAccTest_q(3 downto 0);
    rightShiftStageSel3Dto2_uid125_alignmentShifter_uid17_fpAccTest_b <= rightShiftStageSel3Dto2_uid125_alignmentShifter_uid17_fpAccTest_in(3 downto 2);

    -- rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest(MUX,125)@1
    rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_s <= rightShiftStageSel3Dto2_uid125_alignmentShifter_uid17_fpAccTest_b;
    rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest: PROCESS (rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_s, rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q, rightShiftStage1Idx1_uid118_alignmentShifter_uid17_fpAccTest_q, rightShiftStage1Idx2_uid121_alignmentShifter_uid17_fpAccTest_q, rightShiftStage1Idx3_uid124_alignmentShifter_uid17_fpAccTest_q)
    BEGIN
        CASE (rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_s) IS
            WHEN "00" => rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage0_uid115_alignmentShifter_uid17_fpAccTest_q;
            WHEN "01" => rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage1Idx1_uid118_alignmentShifter_uid17_fpAccTest_q;
            WHEN "10" => rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage1Idx2_uid121_alignmentShifter_uid17_fpAccTest_q;
            WHEN "11" => rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage1Idx3_uid124_alignmentShifter_uid17_fpAccTest_q;
            WHEN OTHERS => rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel1Dto0_uid136_alignmentShifter_uid17_fpAccTest(BITSELECT,135)@1
    rightShiftStageSel1Dto0_uid136_alignmentShifter_uid17_fpAccTest_in <= rightShiftValue_uid16_fpAccTest_q(1 downto 0);
    rightShiftStageSel1Dto0_uid136_alignmentShifter_uid17_fpAccTest_b <= rightShiftStageSel1Dto0_uid136_alignmentShifter_uid17_fpAccTest_in(1 downto 0);

    -- rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest(MUX,136)@1
    rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_s <= rightShiftStageSel1Dto0_uid136_alignmentShifter_uid17_fpAccTest_b;
    rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest: PROCESS (rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_s, rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q, rightShiftStage2Idx1_uid129_alignmentShifter_uid17_fpAccTest_q, rightShiftStage2Idx2_uid132_alignmentShifter_uid17_fpAccTest_q, rightShiftStage2Idx3_uid135_alignmentShifter_uid17_fpAccTest_q)
    BEGIN
        CASE (rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_s) IS
            WHEN "00" => rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage1_uid126_alignmentShifter_uid17_fpAccTest_q;
            WHEN "01" => rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage2Idx1_uid129_alignmentShifter_uid17_fpAccTest_q;
            WHEN "10" => rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage2Idx2_uid132_alignmentShifter_uid17_fpAccTest_q;
            WHEN "11" => rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage2Idx3_uid135_alignmentShifter_uid17_fpAccTest_q;
            WHEN OTHERS => rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- wIntCst_uid103_alignmentShifter_uid17_fpAccTest(CONSTANT,102)
    wIntCst_uid103_alignmentShifter_uid17_fpAccTest_q <= "111110";

    -- shiftedOut_uid104_alignmentShifter_uid17_fpAccTest(COMPARE,103)@1
    shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_cin <= GND_q;
    shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_a <= STD_LOGIC_VECTOR("00" & rightShiftValue_uid16_fpAccTest_q) & '0';
    shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_b <= STD_LOGIC_VECTOR("000000" & wIntCst_uid103_alignmentShifter_uid17_fpAccTest_q) & shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_cin(0);
    shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_a) - UNSIGNED(shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_b));
    shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_n(0) <= not (shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_o(12));

    -- r_uid139_alignmentShifter_uid17_fpAccTest(MUX,138)@1
    r_uid139_alignmentShifter_uid17_fpAccTest_s <= shiftedOut_uid104_alignmentShifter_uid17_fpAccTest_n;
    r_uid139_alignmentShifter_uid17_fpAccTest: PROCESS (r_uid139_alignmentShifter_uid17_fpAccTest_s, rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_q, zeroOutCst_uid138_alignmentShifter_uid17_fpAccTest_q)
    BEGIN
        CASE (r_uid139_alignmentShifter_uid17_fpAccTest_s) IS
            WHEN "0" => r_uid139_alignmentShifter_uid17_fpAccTest_q <= rightShiftStage2_uid137_alignmentShifter_uid17_fpAccTest_q;
            WHEN "1" => r_uid139_alignmentShifter_uid17_fpAccTest_q <= zeroOutCst_uid138_alignmentShifter_uid17_fpAccTest_q;
            WHEN OTHERS => r_uid139_alignmentShifter_uid17_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- shiftedFracUpper_uid20_fpAccTest(BITSELECT,19)@1
    shiftedFracUpper_uid20_fpAccTest_in <= r_uid139_alignmentShifter_uid17_fpAccTest_q;
    shiftedFracUpper_uid20_fpAccTest_b <= shiftedFracUpper_uid20_fpAccTest_in(61 downto 24);

    -- redist17(DELAY,192)
    redist17 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => shiftedFracUpper_uid20_fpAccTest_b, xout => redist17_q, clk => clk, aclr => areset );

    -- extendedAlignedShiftedFrac_uid21_fpAccTest(BITJOIN,20)@2
    extendedAlignedShiftedFrac_uid21_fpAccTest_q <= GND_q & redist17_q;

    -- onesComplementExtendedFrac_uid22_fpAccTest(LOGICAL,21)@2
    onesComplementExtendedFrac_uid22_fpAccTest_a <= extendedAlignedShiftedFrac_uid21_fpAccTest_q;
    onesComplementExtendedFrac_uid22_fpAccTest_b <= STD_LOGIC_VECTOR((38 downto 1 => redist18_q(0)) & redist18_q);
    onesComplementExtendedFrac_uid22_fpAccTest_q <= onesComplementExtendedFrac_uid22_fpAccTest_a xor onesComplementExtendedFrac_uid22_fpAccTest_b;

    -- accumulator_uid24_fpAccTest(ADD,23)@2
    accumulator_uid24_fpAccTest_cin <= redist18_q;
    accumulator_uid24_fpAccTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 48 => sum_uid27_fpAccTest_b(47)) & sum_uid27_fpAccTest_b) & '1');
    accumulator_uid24_fpAccTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 39 => onesComplementExtendedFrac_uid22_fpAccTest_q(38)) & onesComplementExtendedFrac_uid22_fpAccTest_q) & accumulator_uid24_fpAccTest_cin(0));
    accumulator_uid24_fpAccTest_i <= accumulator_uid24_fpAccTest_b;
    accumulator_uid24_fpAccTest: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            accumulator_uid24_fpAccTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist20_q = "1") THEN
                accumulator_uid24_fpAccTest_o <= accumulator_uid24_fpAccTest_i;
            ELSE
                accumulator_uid24_fpAccTest_o <= STD_LOGIC_VECTOR(SIGNED(accumulator_uid24_fpAccTest_a) + SIGNED(accumulator_uid24_fpAccTest_b));
            END IF;
        END IF;
    END PROCESS;
    accumulator_uid24_fpAccTest_c(0) <= accumulator_uid24_fpAccTest_o(50);
    accumulator_uid24_fpAccTest_q <= accumulator_uid24_fpAccTest_o(49 downto 1);

    -- os_uid25_fpAccTest(BITJOIN,24)@3
    os_uid25_fpAccTest_q <= accumulator_uid24_fpAccTest_c & accumulator_uid24_fpAccTest_q;

    -- osr_uid26_fpAccTest(BITSELECT,25)@3
    osr_uid26_fpAccTest_in <= STD_LOGIC_VECTOR(os_uid25_fpAccTest_q(48 downto 0));
    osr_uid26_fpAccTest_b <= osr_uid26_fpAccTest_in(48 downto 0);

    -- sum_uid27_fpAccTest(BITSELECT,26)@3
    sum_uid27_fpAccTest_in <= STD_LOGIC_VECTOR(osr_uid26_fpAccTest_b(47 downto 0));
    sum_uid27_fpAccTest_b <= sum_uid27_fpAccTest_in(47 downto 0);

    -- accumulatorSign_uid29_fpAccTest(BITSELECT,28)@3
    accumulatorSign_uid29_fpAccTest_in <= sum_uid27_fpAccTest_b(46 downto 0);
    accumulatorSign_uid29_fpAccTest_b <= accumulatorSign_uid29_fpAccTest_in(46 downto 46);

    -- accOverflowBitMSB_uid30_fpAccTest(BITSELECT,29)@3
    accOverflowBitMSB_uid30_fpAccTest_in <= sum_uid27_fpAccTest_b;
    accOverflowBitMSB_uid30_fpAccTest_b <= accOverflowBitMSB_uid30_fpAccTest_in(47 downto 47);

    -- accOverflow_uid32_fpAccTest(LOGICAL,31)@3
    accOverflow_uid32_fpAccTest_a <= accOverflowBitMSB_uid30_fpAccTest_b;
    accOverflow_uid32_fpAccTest_b <= accumulatorSign_uid29_fpAccTest_b;
    accOverflow_uid32_fpAccTest_q <= accOverflow_uid32_fpAccTest_a xor accOverflow_uid32_fpAccTest_b;

    -- muxAccOverflowFeedbackSignal_uid59_fpAccTest(MUX,58)@2
    muxAccOverflowFeedbackSignal_uid59_fpAccTest_s <= redist20_q;
    muxAccOverflowFeedbackSignal_uid59_fpAccTest: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            muxAccOverflowFeedbackSignal_uid59_fpAccTest_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (muxAccOverflowFeedbackSignal_uid59_fpAccTest_s) IS
                WHEN "0" => muxAccOverflowFeedbackSignal_uid59_fpAccTest_q <= oRAccOverflowFlagFeedback_uid60_fpAccTest_q;
                WHEN "1" => muxAccOverflowFeedbackSignal_uid59_fpAccTest_q <= GND_q;
                WHEN OTHERS => muxAccOverflowFeedbackSignal_uid59_fpAccTest_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- oRAccOverflowFlagFeedback_uid60_fpAccTest(LOGICAL,59)@3
    oRAccOverflowFlagFeedback_uid60_fpAccTest_a <= muxAccOverflowFeedbackSignal_uid59_fpAccTest_q;
    oRAccOverflowFlagFeedback_uid60_fpAccTest_b <= accOverflow_uid32_fpAccTest_q;
    oRAccOverflowFlagFeedback_uid60_fpAccTest_q <= oRAccOverflowFlagFeedback_uid60_fpAccTest_a or oRAccOverflowFlagFeedback_uid60_fpAccTest_b;

    -- redist11(DELAY,186)
    redist11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => oRAccOverflowFlagFeedback_uid60_fpAccTest_q, xout => redist11_q, clk => clk, aclr => areset );

    -- expLTLSBA_uid11_fpAccTest(CONSTANT,10)
    expLTLSBA_uid11_fpAccTest_q <= "01100101";

    -- cmpLT_expX_expLTLSBA_uid12_fpAccTest(COMPARE,11)@0
    cmpLT_expX_expLTLSBA_uid12_fpAccTest_cin <= GND_q;
    cmpLT_expX_expLTLSBA_uid12_fpAccTest_a <= STD_LOGIC_VECTOR("00" & expX_uid6_fpAccTest_b) & '0';
    cmpLT_expX_expLTLSBA_uid12_fpAccTest_b <= STD_LOGIC_VECTOR("00" & expLTLSBA_uid11_fpAccTest_q) & cmpLT_expX_expLTLSBA_uid12_fpAccTest_cin(0);
    cmpLT_expX_expLTLSBA_uid12_fpAccTest_o <= STD_LOGIC_VECTOR(UNSIGNED(cmpLT_expX_expLTLSBA_uid12_fpAccTest_a) - UNSIGNED(cmpLT_expX_expLTLSBA_uid12_fpAccTest_b));
    cmpLT_expX_expLTLSBA_uid12_fpAccTest_c(0) <= cmpLT_expX_expLTLSBA_uid12_fpAccTest_o(10);

    -- muxXUnderflowFeedbackSignal_uid55_fpAccTest(MUX,54)@0
    muxXUnderflowFeedbackSignal_uid55_fpAccTest_s <= n;
    muxXUnderflowFeedbackSignal_uid55_fpAccTest: PROCESS (muxXUnderflowFeedbackSignal_uid55_fpAccTest_s, oRXUnderflowFlagFeedback_uid56_fpAccTest_q, GND_q)
    BEGIN
        CASE (muxXUnderflowFeedbackSignal_uid55_fpAccTest_s) IS
            WHEN "0" => muxXUnderflowFeedbackSignal_uid55_fpAccTest_q <= oRXUnderflowFlagFeedback_uid56_fpAccTest_q;
            WHEN "1" => muxXUnderflowFeedbackSignal_uid55_fpAccTest_q <= GND_q;
            WHEN OTHERS => muxXUnderflowFeedbackSignal_uid55_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oRXUnderflowFlagFeedback_uid56_fpAccTest(LOGICAL,55)@0
    oRXUnderflowFlagFeedback_uid56_fpAccTest_a <= muxXUnderflowFeedbackSignal_uid55_fpAccTest_q;
    oRXUnderflowFlagFeedback_uid56_fpAccTest_b <= cmpLT_expX_expLTLSBA_uid12_fpAccTest_c;
    oRXUnderflowFlagFeedback_uid56_fpAccTest_q_i <= oRXUnderflowFlagFeedback_uid56_fpAccTest_a or oRXUnderflowFlagFeedback_uid56_fpAccTest_b;
    oRXUnderflowFlagFeedback_uid56_fpAccTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => oRXUnderflowFlagFeedback_uid56_fpAccTest_q_i, xout => oRXUnderflowFlagFeedback_uid56_fpAccTest_q, clk => clk, aclr => areset );

    -- redist12(DELAY,187)
    redist12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => oRXUnderflowFlagFeedback_uid56_fpAccTest_q, xout => redist12_q, clk => clk, aclr => areset );

    -- expGTMaxMSBX_uid13_fpAccTest(CONSTANT,12)
    expGTMaxMSBX_uid13_fpAccTest_q <= "10001011";

    -- cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest(COMPARE,13)@0
    cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_cin <= GND_q;
    cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_a <= STD_LOGIC_VECTOR("00" & expGTMaxMSBX_uid13_fpAccTest_q) & '0';
    cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_b <= STD_LOGIC_VECTOR("00" & expX_uid6_fpAccTest_b) & cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_cin(0);
    cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_o <= STD_LOGIC_VECTOR(UNSIGNED(cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_a) - UNSIGNED(cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_b));
    cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_c(0) <= cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_o(10);

    -- muxXOverflowFeedbackSignal_uid51_fpAccTest(MUX,50)@0
    muxXOverflowFeedbackSignal_uid51_fpAccTest_s <= n;
    muxXOverflowFeedbackSignal_uid51_fpAccTest: PROCESS (muxXOverflowFeedbackSignal_uid51_fpAccTest_s, oRXOverflowFlagFeedback_uid52_fpAccTest_q, GND_q)
    BEGIN
        CASE (muxXOverflowFeedbackSignal_uid51_fpAccTest_s) IS
            WHEN "0" => muxXOverflowFeedbackSignal_uid51_fpAccTest_q <= oRXOverflowFlagFeedback_uid52_fpAccTest_q;
            WHEN "1" => muxXOverflowFeedbackSignal_uid51_fpAccTest_q <= GND_q;
            WHEN OTHERS => muxXOverflowFeedbackSignal_uid51_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oRXOverflowFlagFeedback_uid52_fpAccTest(LOGICAL,51)@0
    oRXOverflowFlagFeedback_uid52_fpAccTest_a <= muxXOverflowFeedbackSignal_uid51_fpAccTest_q;
    oRXOverflowFlagFeedback_uid52_fpAccTest_b <= cmpGT_expX_expGTMaxMSBX_uid14_fpAccTest_c;
    oRXOverflowFlagFeedback_uid52_fpAccTest_q_i <= oRXOverflowFlagFeedback_uid52_fpAccTest_a or oRXOverflowFlagFeedback_uid52_fpAccTest_b;
    oRXOverflowFlagFeedback_uid52_fpAccTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => oRXOverflowFlagFeedback_uid52_fpAccTest_q_i, xout => oRXOverflowFlagFeedback_uid52_fpAccTest_q, clk => clk, aclr => areset );

    -- redist13(DELAY,188)
    redist13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => oRXOverflowFlagFeedback_uid52_fpAccTest_q, xout => redist13_q, clk => clk, aclr => areset );

    -- redist16(DELAY,191)
    redist16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => accumulatorSign_uid29_fpAccTest_b, xout => redist16_q, clk => clk, aclr => areset );

    -- ShiftedOutComparator_uid38_fpAccTest(CONSTANT,37)
    ShiftedOutComparator_uid38_fpAccTest_q <= "101110";

    -- accResOutOfExpRange_uid39_fpAccTest(LOGICAL,38)@8
    accResOutOfExpRange_uid39_fpAccTest_a <= ShiftedOutComparator_uid38_fpAccTest_q;
    accResOutOfExpRange_uid39_fpAccTest_b <= redist0_q;
    accResOutOfExpRange_uid39_fpAccTest_q <= "1" WHEN accResOutOfExpRange_uid39_fpAccTest_a = accResOutOfExpRange_uid39_fpAccTest_b ELSE "0";

    -- accValidRange_uid33_fpAccTest(BITSELECT,32)@3
    accValidRange_uid33_fpAccTest_in <= sum_uid27_fpAccTest_b(46 downto 0);
    accValidRange_uid33_fpAccTest_b <= accValidRange_uid33_fpAccTest_in(46 downto 0);

    -- accOnesComplement_uid34_fpAccTest(LOGICAL,33)@3
    accOnesComplement_uid34_fpAccTest_a <= accValidRange_uid33_fpAccTest_b;
    accOnesComplement_uid34_fpAccTest_b <= STD_LOGIC_VECTOR((46 downto 1 => accumulatorSign_uid29_fpAccTest_b(0)) & accumulatorSign_uid29_fpAccTest_b);
    accOnesComplement_uid34_fpAccTest_q <= accOnesComplement_uid34_fpAccTest_a xor accOnesComplement_uid34_fpAccTest_b;

    -- accValuePositive_uid35_fpAccTest(ADD,34)@3
    accValuePositive_uid35_fpAccTest_a <= STD_LOGIC_VECTOR("0" & accOnesComplement_uid34_fpAccTest_q);
    accValuePositive_uid35_fpAccTest_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000000000000000000" & accumulatorSign_uid29_fpAccTest_b);
    accValuePositive_uid35_fpAccTest: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            accValuePositive_uid35_fpAccTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            accValuePositive_uid35_fpAccTest_o <= STD_LOGIC_VECTOR(UNSIGNED(accValuePositive_uid35_fpAccTest_a) + UNSIGNED(accValuePositive_uid35_fpAccTest_b));
        END IF;
    END PROCESS;
    accValuePositive_uid35_fpAccTest_q <= accValuePositive_uid35_fpAccTest_o(47 downto 0);

    -- posAccWoLeadingZeroBit_uid36_fpAccTest(BITSELECT,35)@4
    posAccWoLeadingZeroBit_uid36_fpAccTest_in <= accValuePositive_uid35_fpAccTest_q(45 downto 0);
    posAccWoLeadingZeroBit_uid36_fpAccTest_b <= posAccWoLeadingZeroBit_uid36_fpAccTest_in(45 downto 0);

    -- rVStage_uid65_zeroCounter_uid37_fpAccTest(BITSELECT,64)@4
    rVStage_uid65_zeroCounter_uid37_fpAccTest_in <= posAccWoLeadingZeroBit_uid36_fpAccTest_b;
    rVStage_uid65_zeroCounter_uid37_fpAccTest_b <= rVStage_uid65_zeroCounter_uid37_fpAccTest_in(45 downto 14);

    -- vCount_uid66_zeroCounter_uid37_fpAccTest(LOGICAL,65)@4
    vCount_uid66_zeroCounter_uid37_fpAccTest_a <= rVStage_uid65_zeroCounter_uid37_fpAccTest_b;
    vCount_uid66_zeroCounter_uid37_fpAccTest_b <= zs_uid64_zeroCounter_uid37_fpAccTest_q;
    vCount_uid66_zeroCounter_uid37_fpAccTest_q <= "1" WHEN vCount_uid66_zeroCounter_uid37_fpAccTest_a = vCount_uid66_zeroCounter_uid37_fpAccTest_b ELSE "0";

    -- redist10(DELAY,185)
    redist10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid66_zeroCounter_uid37_fpAccTest_q, xout => redist10_q, clk => clk, aclr => areset );

    -- vStage_uid68_zeroCounter_uid37_fpAccTest(BITSELECT,67)@4
    vStage_uid68_zeroCounter_uid37_fpAccTest_in <= posAccWoLeadingZeroBit_uid36_fpAccTest_b(13 downto 0);
    vStage_uid68_zeroCounter_uid37_fpAccTest_b <= vStage_uid68_zeroCounter_uid37_fpAccTest_in(13 downto 0);

    -- mO_uid67_zeroCounter_uid37_fpAccTest(CONSTANT,66)
    mO_uid67_zeroCounter_uid37_fpAccTest_q <= "111111111111111111";

    -- cStage_uid69_zeroCounter_uid37_fpAccTest(BITJOIN,68)@4
    cStage_uid69_zeroCounter_uid37_fpAccTest_q <= vStage_uid68_zeroCounter_uid37_fpAccTest_b & mO_uid67_zeroCounter_uid37_fpAccTest_q;

    -- vStagei_uid71_zeroCounter_uid37_fpAccTest(MUX,70)@4
    vStagei_uid71_zeroCounter_uid37_fpAccTest_s <= vCount_uid66_zeroCounter_uid37_fpAccTest_q;
    vStagei_uid71_zeroCounter_uid37_fpAccTest: PROCESS (vStagei_uid71_zeroCounter_uid37_fpAccTest_s, rVStage_uid65_zeroCounter_uid37_fpAccTest_b, cStage_uid69_zeroCounter_uid37_fpAccTest_q)
    BEGIN
        CASE (vStagei_uid71_zeroCounter_uid37_fpAccTest_s) IS
            WHEN "0" => vStagei_uid71_zeroCounter_uid37_fpAccTest_q <= rVStage_uid65_zeroCounter_uid37_fpAccTest_b;
            WHEN "1" => vStagei_uid71_zeroCounter_uid37_fpAccTest_q <= cStage_uid69_zeroCounter_uid37_fpAccTest_q;
            WHEN OTHERS => vStagei_uid71_zeroCounter_uid37_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid73_zeroCounter_uid37_fpAccTest(BITSELECT,72)@4
    rVStage_uid73_zeroCounter_uid37_fpAccTest_in <= vStagei_uid71_zeroCounter_uid37_fpAccTest_q;
    rVStage_uid73_zeroCounter_uid37_fpAccTest_b <= rVStage_uid73_zeroCounter_uid37_fpAccTest_in(31 downto 16);

    -- redist9(DELAY,184)
    redist9 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid73_zeroCounter_uid37_fpAccTest_b, xout => redist9_q, clk => clk, aclr => areset );

    -- vCount_uid74_zeroCounter_uid37_fpAccTest(LOGICAL,73)@5
    vCount_uid74_zeroCounter_uid37_fpAccTest_a <= redist9_q;
    vCount_uid74_zeroCounter_uid37_fpAccTest_b <= zs_uid72_zeroCounter_uid37_fpAccTest_q;
    vCount_uid74_zeroCounter_uid37_fpAccTest_q <= "1" WHEN vCount_uid74_zeroCounter_uid37_fpAccTest_a = vCount_uid74_zeroCounter_uid37_fpAccTest_b ELSE "0";

    -- redist8(DELAY,183)
    redist8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid74_zeroCounter_uid37_fpAccTest_q, xout => redist8_q, clk => clk, aclr => areset );

    -- vStage_uid75_zeroCounter_uid37_fpAccTest(BITSELECT,74)@4
    vStage_uid75_zeroCounter_uid37_fpAccTest_in <= vStagei_uid71_zeroCounter_uid37_fpAccTest_q(15 downto 0);
    vStage_uid75_zeroCounter_uid37_fpAccTest_b <= vStage_uid75_zeroCounter_uid37_fpAccTest_in(15 downto 0);

    -- redist7(DELAY,182)
    redist7 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid75_zeroCounter_uid37_fpAccTest_b, xout => redist7_q, clk => clk, aclr => areset );

    -- vStagei_uid77_zeroCounter_uid37_fpAccTest(MUX,76)@5
    vStagei_uid77_zeroCounter_uid37_fpAccTest_s <= vCount_uid74_zeroCounter_uid37_fpAccTest_q;
    vStagei_uid77_zeroCounter_uid37_fpAccTest: PROCESS (vStagei_uid77_zeroCounter_uid37_fpAccTest_s, redist9_q, redist7_q)
    BEGIN
        CASE (vStagei_uid77_zeroCounter_uid37_fpAccTest_s) IS
            WHEN "0" => vStagei_uid77_zeroCounter_uid37_fpAccTest_q <= redist9_q;
            WHEN "1" => vStagei_uid77_zeroCounter_uid37_fpAccTest_q <= redist7_q;
            WHEN OTHERS => vStagei_uid77_zeroCounter_uid37_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid79_zeroCounter_uid37_fpAccTest(BITSELECT,78)@5
    rVStage_uid79_zeroCounter_uid37_fpAccTest_in <= vStagei_uid77_zeroCounter_uid37_fpAccTest_q;
    rVStage_uid79_zeroCounter_uid37_fpAccTest_b <= rVStage_uid79_zeroCounter_uid37_fpAccTest_in(15 downto 8);

    -- redist6(DELAY,181)
    redist6 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid79_zeroCounter_uid37_fpAccTest_b, xout => redist6_q, clk => clk, aclr => areset );

    -- vCount_uid80_zeroCounter_uid37_fpAccTest(LOGICAL,79)@6
    vCount_uid80_zeroCounter_uid37_fpAccTest_a <= redist6_q;
    vCount_uid80_zeroCounter_uid37_fpAccTest_b <= zeroExponent_uid42_fpAccTest_q;
    vCount_uid80_zeroCounter_uid37_fpAccTest_q <= "1" WHEN vCount_uid80_zeroCounter_uid37_fpAccTest_a = vCount_uid80_zeroCounter_uid37_fpAccTest_b ELSE "0";

    -- redist5(DELAY,180)
    redist5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid80_zeroCounter_uid37_fpAccTest_q, xout => redist5_q, clk => clk, aclr => areset );

    -- vStage_uid81_zeroCounter_uid37_fpAccTest(BITSELECT,80)@5
    vStage_uid81_zeroCounter_uid37_fpAccTest_in <= vStagei_uid77_zeroCounter_uid37_fpAccTest_q(7 downto 0);
    vStage_uid81_zeroCounter_uid37_fpAccTest_b <= vStage_uid81_zeroCounter_uid37_fpAccTest_in(7 downto 0);

    -- redist4(DELAY,179)
    redist4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid81_zeroCounter_uid37_fpAccTest_b, xout => redist4_q, clk => clk, aclr => areset );

    -- vStagei_uid83_zeroCounter_uid37_fpAccTest(MUX,82)@6
    vStagei_uid83_zeroCounter_uid37_fpAccTest_s <= vCount_uid80_zeroCounter_uid37_fpAccTest_q;
    vStagei_uid83_zeroCounter_uid37_fpAccTest: PROCESS (vStagei_uid83_zeroCounter_uid37_fpAccTest_s, redist6_q, redist4_q)
    BEGIN
        CASE (vStagei_uid83_zeroCounter_uid37_fpAccTest_s) IS
            WHEN "0" => vStagei_uid83_zeroCounter_uid37_fpAccTest_q <= redist6_q;
            WHEN "1" => vStagei_uid83_zeroCounter_uid37_fpAccTest_q <= redist4_q;
            WHEN OTHERS => vStagei_uid83_zeroCounter_uid37_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid85_zeroCounter_uid37_fpAccTest(BITSELECT,84)@6
    rVStage_uid85_zeroCounter_uid37_fpAccTest_in <= vStagei_uid83_zeroCounter_uid37_fpAccTest_q;
    rVStage_uid85_zeroCounter_uid37_fpAccTest_b <= rVStage_uid85_zeroCounter_uid37_fpAccTest_in(7 downto 4);

    -- vCount_uid86_zeroCounter_uid37_fpAccTest(LOGICAL,85)@6
    vCount_uid86_zeroCounter_uid37_fpAccTest_a <= rVStage_uid85_zeroCounter_uid37_fpAccTest_b;
    vCount_uid86_zeroCounter_uid37_fpAccTest_b <= zs_uid84_zeroCounter_uid37_fpAccTest_q;
    vCount_uid86_zeroCounter_uid37_fpAccTest_q <= "1" WHEN vCount_uid86_zeroCounter_uid37_fpAccTest_a = vCount_uid86_zeroCounter_uid37_fpAccTest_b ELSE "0";

    -- redist3(DELAY,178)
    redist3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid86_zeroCounter_uid37_fpAccTest_q, xout => redist3_q, clk => clk, aclr => areset );

    -- vStage_uid87_zeroCounter_uid37_fpAccTest(BITSELECT,86)@6
    vStage_uid87_zeroCounter_uid37_fpAccTest_in <= vStagei_uid83_zeroCounter_uid37_fpAccTest_q(3 downto 0);
    vStage_uid87_zeroCounter_uid37_fpAccTest_b <= vStage_uid87_zeroCounter_uid37_fpAccTest_in(3 downto 0);

    -- vStagei_uid89_zeroCounter_uid37_fpAccTest(MUX,88)@6
    vStagei_uid89_zeroCounter_uid37_fpAccTest_s <= vCount_uid86_zeroCounter_uid37_fpAccTest_q;
    vStagei_uid89_zeroCounter_uid37_fpAccTest: PROCESS (vStagei_uid89_zeroCounter_uid37_fpAccTest_s, rVStage_uid85_zeroCounter_uid37_fpAccTest_b, vStage_uid87_zeroCounter_uid37_fpAccTest_b)
    BEGIN
        CASE (vStagei_uid89_zeroCounter_uid37_fpAccTest_s) IS
            WHEN "0" => vStagei_uid89_zeroCounter_uid37_fpAccTest_q <= rVStage_uid85_zeroCounter_uid37_fpAccTest_b;
            WHEN "1" => vStagei_uid89_zeroCounter_uid37_fpAccTest_q <= vStage_uid87_zeroCounter_uid37_fpAccTest_b;
            WHEN OTHERS => vStagei_uid89_zeroCounter_uid37_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid91_zeroCounter_uid37_fpAccTest(BITSELECT,90)@6
    rVStage_uid91_zeroCounter_uid37_fpAccTest_in <= vStagei_uid89_zeroCounter_uid37_fpAccTest_q;
    rVStage_uid91_zeroCounter_uid37_fpAccTest_b <= rVStage_uid91_zeroCounter_uid37_fpAccTest_in(3 downto 2);

    -- redist2(DELAY,177)
    redist2 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid91_zeroCounter_uid37_fpAccTest_b, xout => redist2_q, clk => clk, aclr => areset );

    -- vCount_uid92_zeroCounter_uid37_fpAccTest(LOGICAL,91)@7
    vCount_uid92_zeroCounter_uid37_fpAccTest_a <= redist2_q;
    vCount_uid92_zeroCounter_uid37_fpAccTest_b <= zs_uid90_zeroCounter_uid37_fpAccTest_q;
    vCount_uid92_zeroCounter_uid37_fpAccTest_q <= "1" WHEN vCount_uid92_zeroCounter_uid37_fpAccTest_a = vCount_uid92_zeroCounter_uid37_fpAccTest_b ELSE "0";

    -- vStage_uid93_zeroCounter_uid37_fpAccTest(BITSELECT,92)@6
    vStage_uid93_zeroCounter_uid37_fpAccTest_in <= vStagei_uid89_zeroCounter_uid37_fpAccTest_q(1 downto 0);
    vStage_uid93_zeroCounter_uid37_fpAccTest_b <= vStage_uid93_zeroCounter_uid37_fpAccTest_in(1 downto 0);

    -- redist1(DELAY,176)
    redist1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid93_zeroCounter_uid37_fpAccTest_b, xout => redist1_q, clk => clk, aclr => areset );

    -- vStagei_uid95_zeroCounter_uid37_fpAccTest(MUX,94)@7
    vStagei_uid95_zeroCounter_uid37_fpAccTest_s <= vCount_uid92_zeroCounter_uid37_fpAccTest_q;
    vStagei_uid95_zeroCounter_uid37_fpAccTest: PROCESS (vStagei_uid95_zeroCounter_uid37_fpAccTest_s, redist2_q, redist1_q)
    BEGIN
        CASE (vStagei_uid95_zeroCounter_uid37_fpAccTest_s) IS
            WHEN "0" => vStagei_uid95_zeroCounter_uid37_fpAccTest_q <= redist2_q;
            WHEN "1" => vStagei_uid95_zeroCounter_uid37_fpAccTest_q <= redist1_q;
            WHEN OTHERS => vStagei_uid95_zeroCounter_uid37_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid97_zeroCounter_uid37_fpAccTest(BITSELECT,96)@7
    rVStage_uid97_zeroCounter_uid37_fpAccTest_in <= vStagei_uid95_zeroCounter_uid37_fpAccTest_q;
    rVStage_uid97_zeroCounter_uid37_fpAccTest_b <= rVStage_uid97_zeroCounter_uid37_fpAccTest_in(1 downto 1);

    -- vCount_uid98_zeroCounter_uid37_fpAccTest(LOGICAL,97)@7
    vCount_uid98_zeroCounter_uid37_fpAccTest_a <= rVStage_uid97_zeroCounter_uid37_fpAccTest_b;
    vCount_uid98_zeroCounter_uid37_fpAccTest_b <= GND_q;
    vCount_uid98_zeroCounter_uid37_fpAccTest_q <= "1" WHEN vCount_uid98_zeroCounter_uid37_fpAccTest_a = vCount_uid98_zeroCounter_uid37_fpAccTest_b ELSE "0";

    -- r_uid99_zeroCounter_uid37_fpAccTest(BITJOIN,98)@7
    r_uid99_zeroCounter_uid37_fpAccTest_q <= redist10_q & redist8_q & redist5_q & redist3_q & vCount_uid92_zeroCounter_uid37_fpAccTest_q & vCount_uid98_zeroCounter_uid37_fpAccTest_q;

    -- redist0(DELAY,175)
    redist0 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => r_uid99_zeroCounter_uid37_fpAccTest_q, xout => redist0_q, clk => clk, aclr => areset );

    -- expRBias_uid41_fpAccTest(CONSTANT,40)
    expRBias_uid41_fpAccTest_q <= "010010011";

    -- resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged(SUB,174)@8
    resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_cin <= GND_q;
    resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_a <= expRBias_uid41_fpAccTest_q & '0';
    resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_b <= STD_LOGIC_VECTOR("000" & redist0_q) & resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_cin(0);
    resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_i <= "0" & zeroExponent_uid42_fpAccTest_q & "0";
    resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (accResOutOfExpRange_uid39_fpAccTest_q = "1") THEN
                resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_o <= resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_i;
            ELSE
                resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_o <= STD_LOGIC_VECTOR(UNSIGNED(resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_a) - UNSIGNED(resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_b));
            END IF;
        END IF;
    END PROCESS;
    resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_q <= resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_o(8 downto 1);

    -- leftShiftStage2Idx3Rng3_uid170_normalizationShifter_uid40_fpAccTest(BITSELECT,169)@8
    leftShiftStage2Idx3Rng3_uid170_normalizationShifter_uid40_fpAccTest_in <= leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q(44 downto 0);
    leftShiftStage2Idx3Rng3_uid170_normalizationShifter_uid40_fpAccTest_b <= leftShiftStage2Idx3Rng3_uid170_normalizationShifter_uid40_fpAccTest_in(44 downto 0);

    -- leftShiftStage2Idx3_uid171_normalizationShifter_uid40_fpAccTest(BITJOIN,170)@8
    leftShiftStage2Idx3_uid171_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage2Idx3Rng3_uid170_normalizationShifter_uid40_fpAccTest_b & rightShiftStage2Idx3Pad3_uid134_alignmentShifter_uid17_fpAccTest_q;

    -- leftShiftStage2Idx2Rng2_uid167_normalizationShifter_uid40_fpAccTest(BITSELECT,166)@8
    leftShiftStage2Idx2Rng2_uid167_normalizationShifter_uid40_fpAccTest_in <= leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q(45 downto 0);
    leftShiftStage2Idx2Rng2_uid167_normalizationShifter_uid40_fpAccTest_b <= leftShiftStage2Idx2Rng2_uid167_normalizationShifter_uid40_fpAccTest_in(45 downto 0);

    -- leftShiftStage2Idx2_uid168_normalizationShifter_uid40_fpAccTest(BITJOIN,167)@8
    leftShiftStage2Idx2_uid168_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage2Idx2Rng2_uid167_normalizationShifter_uid40_fpAccTest_b & zs_uid90_zeroCounter_uid37_fpAccTest_q;

    -- leftShiftStage2Idx1Rng1_uid164_normalizationShifter_uid40_fpAccTest(BITSELECT,163)@8
    leftShiftStage2Idx1Rng1_uid164_normalizationShifter_uid40_fpAccTest_in <= leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q(46 downto 0);
    leftShiftStage2Idx1Rng1_uid164_normalizationShifter_uid40_fpAccTest_b <= leftShiftStage2Idx1Rng1_uid164_normalizationShifter_uid40_fpAccTest_in(46 downto 0);

    -- leftShiftStage2Idx1_uid165_normalizationShifter_uid40_fpAccTest(BITJOIN,164)@8
    leftShiftStage2Idx1_uid165_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage2Idx1Rng1_uid164_normalizationShifter_uid40_fpAccTest_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid159_normalizationShifter_uid40_fpAccTest(BITSELECT,158)@8
    leftShiftStage1Idx3Rng12_uid159_normalizationShifter_uid40_fpAccTest_in <= leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q(35 downto 0);
    leftShiftStage1Idx3Rng12_uid159_normalizationShifter_uid40_fpAccTest_b <= leftShiftStage1Idx3Rng12_uid159_normalizationShifter_uid40_fpAccTest_in(35 downto 0);

    -- leftShiftStage1Idx3_uid160_normalizationShifter_uid40_fpAccTest(BITJOIN,159)@8
    leftShiftStage1Idx3_uid160_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage1Idx3Rng12_uid159_normalizationShifter_uid40_fpAccTest_b & rightShiftStage1Idx3Pad12_uid123_alignmentShifter_uid17_fpAccTest_q;

    -- leftShiftStage1Idx2Rng8_uid156_normalizationShifter_uid40_fpAccTest(BITSELECT,155)@8
    leftShiftStage1Idx2Rng8_uid156_normalizationShifter_uid40_fpAccTest_in <= leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q(39 downto 0);
    leftShiftStage1Idx2Rng8_uid156_normalizationShifter_uid40_fpAccTest_b <= leftShiftStage1Idx2Rng8_uid156_normalizationShifter_uid40_fpAccTest_in(39 downto 0);

    -- leftShiftStage1Idx2_uid157_normalizationShifter_uid40_fpAccTest(BITJOIN,156)@8
    leftShiftStage1Idx2_uid157_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage1Idx2Rng8_uid156_normalizationShifter_uid40_fpAccTest_b & zeroExponent_uid42_fpAccTest_q;

    -- leftShiftStage1Idx1Rng4_uid153_normalizationShifter_uid40_fpAccTest(BITSELECT,152)@8
    leftShiftStage1Idx1Rng4_uid153_normalizationShifter_uid40_fpAccTest_in <= leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q(43 downto 0);
    leftShiftStage1Idx1Rng4_uid153_normalizationShifter_uid40_fpAccTest_b <= leftShiftStage1Idx1Rng4_uid153_normalizationShifter_uid40_fpAccTest_in(43 downto 0);

    -- leftShiftStage1Idx1_uid154_normalizationShifter_uid40_fpAccTest(BITJOIN,153)@8
    leftShiftStage1Idx1_uid154_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage1Idx1Rng4_uid153_normalizationShifter_uid40_fpAccTest_b & zs_uid84_zeroCounter_uid37_fpAccTest_q;

    -- leftShiftStage0Idx2Rng32_uid147_normalizationShifter_uid40_fpAccTest(BITSELECT,146)@7
    leftShiftStage0Idx2Rng32_uid147_normalizationShifter_uid40_fpAccTest_in <= redist15_mem_q(15 downto 0);
    leftShiftStage0Idx2Rng32_uid147_normalizationShifter_uid40_fpAccTest_b <= leftShiftStage0Idx2Rng32_uid147_normalizationShifter_uid40_fpAccTest_in(15 downto 0);

    -- leftShiftStage0Idx2_uid148_normalizationShifter_uid40_fpAccTest(BITJOIN,147)@7
    leftShiftStage0Idx2_uid148_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage0Idx2Rng32_uid147_normalizationShifter_uid40_fpAccTest_b & zs_uid64_zeroCounter_uid37_fpAccTest_q;

    -- leftShiftStage0Idx1Rng16_uid144_normalizationShifter_uid40_fpAccTest(BITSELECT,143)@7
    leftShiftStage0Idx1Rng16_uid144_normalizationShifter_uid40_fpAccTest_in <= redist15_mem_q(31 downto 0);
    leftShiftStage0Idx1Rng16_uid144_normalizationShifter_uid40_fpAccTest_b <= leftShiftStage0Idx1Rng16_uid144_normalizationShifter_uid40_fpAccTest_in(31 downto 0);

    -- leftShiftStage0Idx1_uid145_normalizationShifter_uid40_fpAccTest(BITJOIN,144)@7
    leftShiftStage0Idx1_uid145_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage0Idx1Rng16_uid144_normalizationShifter_uid40_fpAccTest_b & zs_uid72_zeroCounter_uid37_fpAccTest_q;

    -- redist15_notEnable(LOGICAL,200)
    redist15_notEnable_a <= VCC_q;
    redist15_notEnable_q <= not (redist15_notEnable_a);

    -- redist15_nor(LOGICAL,201)
    redist15_nor_a <= redist15_notEnable_q;
    redist15_nor_b <= redist15_sticky_ena_q;
    redist15_nor_q <= not (redist15_nor_a or redist15_nor_b);

    -- redist15_cmpReg(REG,199)
    redist15_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist15_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist15_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist15_sticky_ena(REG,202)
    redist15_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist15_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist15_nor_q = "1") THEN
                redist15_sticky_ena_q <= STD_LOGIC_VECTOR(redist15_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist15_enaAnd(LOGICAL,203)
    redist15_enaAnd_a <= redist15_sticky_ena_q;
    redist15_enaAnd_b <= VCC_q;
    redist15_enaAnd_q <= redist15_enaAnd_a and redist15_enaAnd_b;

    -- redist15_rdcnt(COUNTER,197)
    -- every=1, low=0, high=1, step=1, init=1
    redist15_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist15_rdcnt_i <= TO_UNSIGNED(1, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist15_rdcnt_i <= redist15_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist15_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist15_rdcnt_i, 1)));

    -- redist15_wraddr(REG,198)
    redist15_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist15_wraddr_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist15_wraddr_q <= STD_LOGIC_VECTOR(redist15_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist15_mem(DUALMEM,196)
    redist15_mem_ia <= STD_LOGIC_VECTOR(accValuePositive_uid35_fpAccTest_q);
    redist15_mem_aa <= redist15_wraddr_q;
    redist15_mem_ab <= redist15_rdcnt_q;
    redist15_mem_reset0 <= areset;
    redist15_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 48,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 48,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist15_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist15_mem_reset0,
        clock1 => clk,
        address_a => redist15_mem_aa,
        data_a => redist15_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist15_mem_ab,
        q_b => redist15_mem_iq
    );
    redist15_mem_q <= redist15_mem_iq(47 downto 0);

    -- leftShiftStageSel5Dto4_uid150_normalizationShifter_uid40_fpAccTest(BITSELECT,149)@7
    leftShiftStageSel5Dto4_uid150_normalizationShifter_uid40_fpAccTest_in <= r_uid99_zeroCounter_uid37_fpAccTest_q;
    leftShiftStageSel5Dto4_uid150_normalizationShifter_uid40_fpAccTest_b <= leftShiftStageSel5Dto4_uid150_normalizationShifter_uid40_fpAccTest_in(5 downto 4);

    -- leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest(MUX,150)@7
    leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_s <= leftShiftStageSel5Dto4_uid150_normalizationShifter_uid40_fpAccTest_b;
    leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_s) IS
                WHEN "00" => leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q <= redist15_mem_q;
                WHEN "01" => leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage0Idx1_uid145_normalizationShifter_uid40_fpAccTest_q;
                WHEN "10" => leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage0Idx2_uid148_normalizationShifter_uid40_fpAccTest_q;
                WHEN "11" => leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q <= rightShiftStage0Idx3Pad48_uid112_alignmentShifter_uid17_fpAccTest_q;
                WHEN OTHERS => leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- leftShiftStageSel3Dto2_uid161_normalizationShifter_uid40_fpAccTest(BITSELECT,160)@8
    leftShiftStageSel3Dto2_uid161_normalizationShifter_uid40_fpAccTest_in <= redist0_q(3 downto 0);
    leftShiftStageSel3Dto2_uid161_normalizationShifter_uid40_fpAccTest_b <= leftShiftStageSel3Dto2_uid161_normalizationShifter_uid40_fpAccTest_in(3 downto 2);

    -- leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest(MUX,161)@8
    leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_s <= leftShiftStageSel3Dto2_uid161_normalizationShifter_uid40_fpAccTest_b;
    leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest: PROCESS (leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_s, leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q, leftShiftStage1Idx1_uid154_normalizationShifter_uid40_fpAccTest_q, leftShiftStage1Idx2_uid157_normalizationShifter_uid40_fpAccTest_q, leftShiftStage1Idx3_uid160_normalizationShifter_uid40_fpAccTest_q)
    BEGIN
        CASE (leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_s) IS
            WHEN "00" => leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage0_uid151_normalizationShifter_uid40_fpAccTest_q;
            WHEN "01" => leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage1Idx1_uid154_normalizationShifter_uid40_fpAccTest_q;
            WHEN "10" => leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage1Idx2_uid157_normalizationShifter_uid40_fpAccTest_q;
            WHEN "11" => leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage1Idx3_uid160_normalizationShifter_uid40_fpAccTest_q;
            WHEN OTHERS => leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel1Dto0_uid172_normalizationShifter_uid40_fpAccTest(BITSELECT,171)@8
    leftShiftStageSel1Dto0_uid172_normalizationShifter_uid40_fpAccTest_in <= redist0_q(1 downto 0);
    leftShiftStageSel1Dto0_uid172_normalizationShifter_uid40_fpAccTest_b <= leftShiftStageSel1Dto0_uid172_normalizationShifter_uid40_fpAccTest_in(1 downto 0);

    -- leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest(MUX,172)@8
    leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_s <= leftShiftStageSel1Dto0_uid172_normalizationShifter_uid40_fpAccTest_b;
    leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest: PROCESS (leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_s, leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q, leftShiftStage2Idx1_uid165_normalizationShifter_uid40_fpAccTest_q, leftShiftStage2Idx2_uid168_normalizationShifter_uid40_fpAccTest_q, leftShiftStage2Idx3_uid171_normalizationShifter_uid40_fpAccTest_q)
    BEGIN
        CASE (leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_s) IS
            WHEN "00" => leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage1_uid162_normalizationShifter_uid40_fpAccTest_q;
            WHEN "01" => leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage2Idx1_uid165_normalizationShifter_uid40_fpAccTest_q;
            WHEN "10" => leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage2Idx2_uid168_normalizationShifter_uid40_fpAccTest_q;
            WHEN "11" => leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_q <= leftShiftStage2Idx3_uid171_normalizationShifter_uid40_fpAccTest_q;
            WHEN OTHERS => leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracR_uid46_fpAccTest(BITSELECT,45)@8
    fracR_uid46_fpAccTest_in <= leftShiftStage2_uid173_normalizationShifter_uid40_fpAccTest_q(44 downto 0);
    fracR_uid46_fpAccTest_b <= fracR_uid46_fpAccTest_in(44 downto 22);

    -- redist14(DELAY,189)
    redist14 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracR_uid46_fpAccTest_b, xout => redist14_q, clk => clk, aclr => areset );

    -- R_uid47_fpAccTest(BITJOIN,46)@9
    R_uid47_fpAccTest_q <= redist16_q & resExpSub_uid43_fpAccTest_finalExpUpdated_uid45_fpAccTest_merged_q & redist14_q;

    -- xOut(GPOUT,4)@9
    r <= R_uid47_fpAccTest_q;
    xo <= redist13_q;
    xu <= redist12_q;
    ao <= redist11_q;

END normal;
