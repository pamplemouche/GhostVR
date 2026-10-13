.class public Lcom/facebook/quicklog/identifiers/ReactNativeBridge;
.super Ljava/lang/Object;
.source "ReactNativeBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    packed-switch p0, :pswitch_data_0

    .line 162
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 93
    :pswitch_1
    const-string v0, "REACT_NATIVE_BRIDGE_PROCESS_PACKAGES"

    goto :goto_0

    .line 95
    :pswitch_2
    const-string v0, "REACT_NATIVE_BRIDGE_RUN_JS_BUNDLE"

    goto :goto_0

    .line 97
    :pswitch_3
    const-string v0, "REACT_NATIVE_BRIDGE_NATIVE_MODULE_INITIALIZE"

    goto :goto_0

    .line 99
    :pswitch_4
    const-string v0, "REACT_NATIVE_BRIDGE_CREATE_UI_MANAGER_MODULE"

    goto :goto_0

    .line 101
    :pswitch_5
    const-string v0, "REACT_NATIVE_BRIDGE_CREATE_VIEW_MANAGERS"

    goto :goto_0

    .line 103
    :pswitch_6
    const-string v0, "REACT_NATIVE_BRIDGE_CREATE_UI_MANAGER_MODULE_CONSTANTS"

    goto :goto_0

    .line 105
    :pswitch_7
    const-string v0, "REACT_NATIVE_BRIDGE_FBREACT_BUILD_REACT_INSTANCE_MANAGER"

    goto :goto_0

    .line 107
    :pswitch_8
    const-string v0, "REACT_NATIVE_BRIDGE_FBREACT_GET_REACT_INSTANCE_HOLDER_SPEC"

    goto :goto_0

    .line 109
    :pswitch_9
    const-string v0, "REACT_NATIVE_BRIDGE_CREATE_MODULE"

    goto :goto_0

    .line 111
    :pswitch_a
    const-string v0, "REACT_NATIVE_BRIDGE_PROCESS_CORE_REACT_PACKAGE"

    goto :goto_0

    .line 113
    :pswitch_b
    const-string v0, "REACT_NATIVE_BRIDGE_PROCESS_FB4A_INFRA_PACKAGE"

    goto :goto_0

    .line 115
    :pswitch_c
    const-string v0, "REACT_NATIVE_BRIDGE_PROCESS_FB4A_PRODUCT_PACKAGE"

    goto :goto_0

    .line 117
    :pswitch_d
    const-string v0, "REACT_NATIVE_BRIDGE_CREATE_MOBILE_CONFIG_MODULE"

    goto :goto_0

    .line 119
    :pswitch_e
    const-string v0, "REACT_NATIVE_BRIDGE_CREATE_MOBILE_CONFIG_MODULE_GET_METADATA"

    goto :goto_0

    .line 121
    :pswitch_f
    const-string v0, "REACT_NATIVE_BRIDGE_I18N_MODULE_CONSTANTS_CONVERT"

    goto :goto_0

    .line 123
    :pswitch_10
    const-string v0, "REACT_NATIVE_BRIDGE_CREATE_I18N_MODULE_CONSTANTS"

    goto :goto_0

    .line 125
    :pswitch_11
    const-string v0, "REACT_NATIVE_BRIDGE_CREATE_I18N_ASSETS_MODULE"

    goto :goto_0

    .line 127
    :pswitch_12
    const-string v0, "REACT_NATIVE_BRIDGE_GET_CONSTANTS"

    goto :goto_0

    .line 129
    :pswitch_13
    const-string v0, "REACT_NATIVE_BRIDGE_INITIALIZE_MODULE"

    goto :goto_0

    .line 131
    :pswitch_14
    const-string v0, "REACT_NATIVE_BRIDGE_ON_HOST_RESUME"

    goto :goto_0

    .line 133
    :pswitch_15
    const-string v0, "REACT_NATIVE_BRIDGE_ON_HOST_PAUSE"

    goto :goto_0

    .line 135
    :pswitch_16
    const-string v0, "REACT_NATIVE_BRIDGE_CONVERT_CONSTANTS"

    goto :goto_0

    .line 137
    :pswitch_17
    const-string v0, "REACT_NATIVE_BRIDGE_PRE_SETUP_REACT_CONTEXT"

    goto :goto_0

    .line 139
    :pswitch_18
    const-string v0, "REACT_NATIVE_BRIDGE_CORE"

    goto :goto_0

    .line 141
    :pswitch_19
    const-string v0, "REACT_NATIVE_BRIDGE_PRE_RUN_APPLICATION"

    goto :goto_0

    .line 143
    :pswitch_1a
    const-string v0, "REACT_NATIVE_BRIDGE_UNPACK_JS_BUNDLE"

    goto :goto_0

    .line 145
    :pswitch_1b
    const-string v0, "REACT_NATIVE_BRIDGE_UNPACK_JS_BUNDLE_EAGERLY"

    goto :goto_0

    .line 147
    :pswitch_1c
    const-string v0, "REACT_NATIVE_BRIDGE_DESTROY_CATALYST_INSTANCE"

    goto :goto_0

    .line 149
    :pswitch_1d
    const-string v0, "REACT_NATIVE_BRIDGE_REGISTER_JS_SEGMENT"

    goto :goto_0

    .line 151
    :pswitch_1e
    const-string v0, "REACT_NATIVE_BRIDGE_NATIVE_MODULE_SETUP"

    goto :goto_0

    .line 153
    :pswitch_1f
    const-string v0, "REACT_NATIVE_BRIDGE_LOAD_RN_SO_FILE"

    goto :goto_0

    .line 155
    :pswitch_20
    const-string v0, "REACT_NATIVE_BRIDGE_LOAD_RN_FABRIC_SO_FILE"

    goto :goto_0

    .line 157
    :pswitch_21
    const-string v0, "REACT_NATIVE_BRIDGE_FABRIC_RENDER_TTRC"

    goto :goto_0

    .line 159
    :pswitch_22
    const-string v0, "REACT_NATIVE_BRIDGE_FABRIC_RENDER_TTI"

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method
