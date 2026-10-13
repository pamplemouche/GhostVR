.class public Lcom/facebook/quicklog/identifiers/Commerce;
.super Ljava/lang/Object;
.source "Commerce.java"


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
    .line 39
    packed-switch p0, :pswitch_data_0

    .line 50
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    const-string v0, "COMMERCE_ANDROID_COMMERCE_VIEW_STOREFRONT_COLLECTION"

    goto :goto_0

    .line 43
    :pswitch_1
    const-string v0, "COMMERCE_ANDROID_COMMERCE_VIEW_STOREFRONT"

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "COMMERCE_ANDROID_COMMERCE_VIEW_PRODUCT_DETAILS"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "COMMERCE_B2C_TTI"

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
