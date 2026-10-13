.class public Lcom/facebook/quicklog/identifiers/CheckoutPurchaseExperiences;
.super Ljava/lang/Object;
.source "CheckoutPurchaseExperiences.java"


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
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 55
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "CHECKOUT_PURCHASE_EXPERIENCES_CHECKOUT_FLOW"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "CHECKOUT_PURCHASE_EXPERIENCES_CHECKOUT_LAUNCH_BY_PRODUCT"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "CHECKOUT_PURCHASE_EXPERIENCES_PAY_FLOW"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "CHECKOUT_PURCHASE_EXPERIENCES_PAY_FLOW_IG"

    goto :goto_0

    .line 50
    :pswitch_5
    const-string v0, "CHECKOUT_PURCHASE_EXPERIENCES_UPDATE_CHECKOUT_API_IG"

    goto :goto_0

    .line 52
    :pswitch_6
    const-string v0, "CHECKOUT_PURCHASE_EXPERIENCES_CHECKOUT_INFO_API_IG"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
