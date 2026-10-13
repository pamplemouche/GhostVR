.class public Lcom/facebook/mobileconfig/specifier/MobileConfigParamTypeUtil;
.super Ljava/lang/Object;
.source "MobileConfigParamTypeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)I
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%d is not a MobileConfigParamType"

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :pswitch_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 15
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 17
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 19
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 21
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
