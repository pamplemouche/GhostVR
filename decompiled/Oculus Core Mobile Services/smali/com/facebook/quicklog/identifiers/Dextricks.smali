.class public Lcom/facebook/quicklog/identifiers/Dextricks;
.super Ljava/lang/Object;
.source "Dextricks.java"


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
    .line 49
    packed-switch p0, :pswitch_data_0

    .line 72
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    const-string v0, "DEXTRICKS_DEXLIBLOADER_LOAD_MAIN"

    goto :goto_0

    .line 53
    :pswitch_1
    const-string v0, "DEXTRICKS_DEXLIBLOADER_OBTAIN_RES_PROVIDER"

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v0, "DEXTRICKS_DEXSTORE_LOAD_ALL"

    goto :goto_0

    .line 57
    :pswitch_3
    const-string v0, "DEXTRICKS_MANIFEST_LOAD"

    goto :goto_0

    .line 59
    :pswitch_4
    const-string v0, "DEXTRICKS_CHECK_DIRTY"

    goto :goto_0

    .line 61
    :pswitch_5
    const-string v0, "DEXTRICKS_REGEN_MISSING"

    goto :goto_0

    .line 63
    :pswitch_6
    const-string v0, "DEXTRICKS_REGEN_ALL"

    goto :goto_0

    .line 65
    :pswitch_7
    const-string v0, "DEXTRICKS_MDCL_INSTALL"

    goto :goto_0

    .line 67
    :pswitch_8
    const-string v0, "DEXTRICKS_MDCL_INSTALL_FIRST"

    goto :goto_0

    .line 69
    :pswitch_9
    const-string v0, "DEXTRICKS_INIT_GC_HOOKS"

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
