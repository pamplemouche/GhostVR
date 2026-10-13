.class public Lcom/facebook/rti/common/util/NetworkCategory;
.super Ljava/lang/Object;
.source "NetworkCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/common/util/NetworkCategory$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static categorize(Landroid/net/NetworkInfo;)Lcom/facebook/rti/common/util/NetworkCategory$Type;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 40
    packed-switch v0, :pswitch_data_0

    .line 73
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->Other:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    packed-switch v1, :pswitch_data_1

    .line 68
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_OTHER:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    goto :goto_0

    .line 52
    :pswitch_1
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_2G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_3G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    goto :goto_0

    .line 64
    :pswitch_3
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_4G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    goto :goto_0

    .line 66
    :pswitch_4
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_OTHER:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    goto :goto_0

    .line 71
    :pswitch_5
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->WIFI:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 46
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
