################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
MFRC522.obj: C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/MFRC522.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="MFRC522.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

camera_app.obj: ../camera_app.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="camera_app.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

diskio.obj: ../diskio.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="diskio.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

i2c_lcd.obj: C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/i2c_lcd.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="i2c_lcd.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

i2cconfig.obj: C:/Users/DELL/workspace_v8/camera_application/i2cconfig.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="i2cconfig.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="main.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

mt9d111.obj: C:/Users/DELL/workspace_v8/camera_application/mt9d111.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="mt9d111.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

pinmux.obj: ../pinmux.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="pinmux.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

startup_ccs.obj: C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common/startup_ccs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="startup_ccs.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

uart_if.obj: C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common/uart_if.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs800/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/source" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/oslib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink_extlib/provisioninglib" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/simplelink/include" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/example/common" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/inc/" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/third_party/fatfs/src" --include_path="C:/ti/CC3200SDK_1.3.0/cc3200-sdk/driverlib" --include_path="C:/Users/DELL/workspace_v8/camera_application" --define=ccs --define=cc3200 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="uart_if.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


