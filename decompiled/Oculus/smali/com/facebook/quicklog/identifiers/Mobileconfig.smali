.class public Lcom/facebook/quicklog/identifiers/Mobileconfig;
.super Ljava/lang/Object;
.source "Mobileconfig.java"


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
    .line 48
    packed-switch p0, :pswitch_data_0

    .line 69
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 50
    :pswitch_1
    const-string v0, "MOBILECONFIG_NATIVE_MANAGER_CREATION"

    goto :goto_0

    .line 52
    :pswitch_2
    const-string v0, "MOBILECONFIG_JAVA_MANAGER_CREATION"

    goto :goto_0

    .line 54
    :pswitch_3
    const-string v0, "MOBILECONFIG_SESSION_BASED_INIT"

    goto :goto_0

    .line 56
    :pswitch_4
    const-string v0, "MOBILECONFIG_SESSIONLESS_INIT"

    goto :goto_0

    .line 58
    :pswitch_5
    const-string v0, "MOBILECONFIG_NULL_BUFFER"

    goto :goto_0

    .line 60
    :pswitch_6
    const-string v0, "MOBILECONFIG_BUFFER_PATH_MIGRATION"

    goto :goto_0

    .line 62
    :pswitch_7
    const-string v0, "MOBILECONFIG_FACTORY_IMPL_INIT_MANAGER"

    goto :goto_0

    .line 64
    :pswitch_8
    const-string v0, "MOBILECONFIG_UNIFIED_MOBILECONFIG_LOAD_SCHEMA"

    goto :goto_0

    .line 66
    :pswitch_9
    const-string v0, "MOBILECONFIG_UNIFIED_MOBILECONFIG_LOAD_DEFAULT"

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
