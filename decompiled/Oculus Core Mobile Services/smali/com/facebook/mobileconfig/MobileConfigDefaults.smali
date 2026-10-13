.class public Lcom/facebook/mobileconfig/MobileConfigDefaults;
.super Ljava/lang/Object;
.source "MobileConfigDefaults.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolDefaults(J)Z
    .locals 2

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getStdDefault(J)Z

    move-result v0

    return v0
.end method

.method public static getLongDefaults(J)J
    .locals 2

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 34
    :pswitch_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 21
    :pswitch_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 22
    :pswitch_2
    const-wide/16 v0, 0xa

    goto :goto_0

    .line 23
    :pswitch_3
    const-wide/16 v0, 0x5a0

    goto :goto_0

    .line 25
    :pswitch_4
    const-wide/16 v0, 0xf

    goto :goto_0

    .line 26
    :pswitch_5
    const-wide/16 v0, 0x14

    goto :goto_0

    .line 27
    :pswitch_6
    const-wide/32 v0, 0x7d2b7500

    goto :goto_0

    .line 28
    :pswitch_7
    const-wide/32 v0, 0x7ffffd78

    goto :goto_0

    .line 29
    :pswitch_8
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 31
    :pswitch_9
    const-wide/16 v0, 0x5

    goto :goto_0

    .line 32
    :pswitch_a
    const-wide/32 v0, 0x15180

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public static getStringDefaults(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v0

    .line 47
    packed-switch v0, :pswitch_data_0

    .line 52
    const-string v0, ""

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    const-string v0, "abc"

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "it.ikon.virtours.production01"

    goto :goto_0

    .line 50
    :pswitch_2
    const-string v0, "{}"

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static preferWaitForNonDefault(I)Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
