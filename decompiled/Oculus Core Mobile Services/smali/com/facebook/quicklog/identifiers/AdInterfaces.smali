.class public Lcom/facebook/quicklog/identifiers/AdInterfaces;
.super Ljava/lang/Object;
.source "AdInterfaces.java"


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
    .line 51
    packed-switch p0, :pswitch_data_0

    .line 70
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    const-string v0, "AD_INTERFACES_LOAD_AD_INTERFACE"

    goto :goto_0

    .line 55
    :pswitch_1
    const-string v0, "AD_INTERFACES_CREATE"

    goto :goto_0

    .line 57
    :pswitch_2
    const-string v0, "AD_INTERFACES_PAUSE"

    goto :goto_0

    .line 59
    :pswitch_3
    const-string v0, "AD_INTERFACES_DELETE"

    goto :goto_0

    .line 61
    :pswitch_4
    const-string v0, "AD_INTERFACES_RESUME"

    goto :goto_0

    .line 63
    :pswitch_5
    const-string v0, "AD_INTERFACES_ADD_BUDGET"

    goto :goto_0

    .line 65
    :pswitch_6
    const-string v0, "AD_INTERFACES_UPDATE_AD_ACCOUNT"

    goto :goto_0

    .line 67
    :pswitch_7
    const-string v0, "AD_INTERFACES_UPDATE_BUDGET"

    goto :goto_0

    .line 51
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
    .end packed-switch
.end method
