.class public Lcom/facebook/quicklog/identifiers/ComponentScript;
.super Ljava/lang/Object;
.source "ComponentScript.java"


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
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 60
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 45
    :pswitch_1
    const-string v0, "COMPONENT_SCRIPT_COMPONENT_SCRIPT_INITIALIZER"

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v0, "COMPONENT_SCRIPT_CREATE_LAYOUT"

    goto :goto_0

    .line 49
    :pswitch_3
    const-string v0, "COMPONENT_SCRIPT_GET_MEMORY_METRICS"

    goto :goto_0

    .line 51
    :pswitch_4
    const-string v0, "COMPONENT_SCRIPT_TTI"

    goto :goto_0

    .line 53
    :pswitch_5
    const-string v0, "COMPONENT_SCRIPT_UNPACK_CS_JS_BUNDLE_EAGERLY"

    goto :goto_0

    .line 55
    :pswitch_6
    const-string v0, "COMPONENT_SCRIPT_NATIVE_COMPONENT_LAYOUT"

    goto :goto_0

    .line 57
    :pswitch_7
    const-string v0, "COMPONENT_SCRIPT_MOBILE_LAB_TTI"

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
