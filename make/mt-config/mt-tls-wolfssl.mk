# Copyright (c) 2003-2018, Xively All rights reserved.
#
# This is part of the Xively C Client library,
# it is licensed under the BSD 3-Clause license.

XI_TLS_LIB_INC_DIR ?= ./src/import/tls/wolfssl/
XI_TLS_LIB_BIN_DIR ?= ./src/import/tls/wolfssl/src/.libs/
XI_TLS_LIB_NAME ?= wolfssl

# wolfssl API
XI_CONFIG_FLAGS += -DHAVE_SNI
XI_CONFIG_FLAGS += -DHAVE_CERTIFICATE_STATUS_REQUEST

# enabling ECC 
XI_CONFIG_FLAGS += -DHAVE_ECC
XI_CONFIG_FLAGS += -DTFM_TIMING_RESISTANT -DECC_TIMING_RESISTANT -DWC_RSA_BLINDING
XI_CONFIG_FLAGS += -DWOLFSSL_X86_64_BUILD


# libxively OCSP stapling feature switch
XI_CONFIG_FLAGS += -DXI_TLS_OCSP_STAPLING
# libxively OCSP feature switch
# XI_CONFIG_FLAGS += -DXI_TLS_OCSP

XI_CONFIG_FLAGS += -DXI_TLS_LIB_WOLFSSL
