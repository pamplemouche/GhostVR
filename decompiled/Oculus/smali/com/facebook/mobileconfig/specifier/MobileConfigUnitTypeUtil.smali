.class public Lcom/facebook/mobileconfig/specifier/MobileConfigUnitTypeUtil;
.super Ljava/lang/Object;
.source "MobileConfigUnitTypeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)I
    .locals 3

    .prologue
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%d is not a MobileConfigUnitType"

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0

    .line 14
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 10
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
