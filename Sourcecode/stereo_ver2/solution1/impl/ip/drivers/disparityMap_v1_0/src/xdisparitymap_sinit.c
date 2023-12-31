// ==============================================================
// File generated on Sat Aug 01 16:46:16 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdisparitymap.h"

extern XDisparitymap_Config XDisparitymap_ConfigTable[];

XDisparitymap_Config *XDisparitymap_LookupConfig(u16 DeviceId) {
	XDisparitymap_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDISPARITYMAP_NUM_INSTANCES; Index++) {
		if (XDisparitymap_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDisparitymap_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDisparitymap_Initialize(XDisparitymap *InstancePtr, u16 DeviceId) {
	XDisparitymap_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDisparitymap_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDisparitymap_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

