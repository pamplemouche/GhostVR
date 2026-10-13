.class public Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;
.super Ljava/lang/Object;
.source "MobileConfigTableUtil.java"


# static fields
.field public static final INVALID_BOOL_META:B

.field public static final INVALID_META:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->DISABLED:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    const/4 v1, -0x1

    invoke-static {v2, v2, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->createMeta(ZZLcom/facebook/mobileconfig/factory/ExposureLoggingMode;I)I

    move-result v0

    sput v0, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->INVALID_META:I

    .line 55
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->DISABLED:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    const/4 v1, 0x0

    .line 56
    invoke-static {v2, v2, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->createBoolMeta(ZZLcom/facebook/mobileconfig/factory/ExposureLoggingMode;Z)B

    move-result v0

    sput-byte v0, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->INVALID_BOOL_META:B

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBoolMeta(ZZLcom/facebook/mobileconfig/factory/ExposureLoggingMode;Z)B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 162
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 164
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->getValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x6

    int-to-byte v4, v2

    .line 167
    sget-object v2, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil$1;->$SwitchMap$com$facebook$mobileconfig$factory$ExposureLoggingMode:[I

    invoke-virtual {p2}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v3, v1

    .line 176
    :goto_1
    if-eqz p0, :cond_2

    const/16 v2, 0x10

    .line 178
    :goto_2
    if-eqz p3, :cond_0

    const/16 v1, -0x80

    .line 179
    :cond_0
    or-int/2addr v0, v4

    or-int/2addr v0, v3

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0

    .line 170
    :pswitch_0
    const/16 v2, 0x8

    move v3, v2

    .line 171
    goto :goto_1

    :cond_2
    move v2, v1

    .line 176
    goto :goto_2

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createMeta(ZZLcom/facebook/mobileconfig/factory/ExposureLoggingMode;I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 138
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 140
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->getValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v2, 0x6

    .line 142
    sget-object v2, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil$1;->$SwitchMap$com$facebook$mobileconfig$factory$ExposureLoggingMode:[I

    invoke-virtual {p2}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    move v2, v1

    .line 150
    :goto_1
    if-eqz p0, :cond_0

    const/16 v1, 0x10

    .line 151
    :cond_0
    shl-int/lit8 v4, p3, 0x8

    .line 152
    or-int/2addr v0, v3

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    or-int/2addr v0, v4

    return v0

    :cond_1
    move v0, v1

    .line 138
    goto :goto_0

    .line 145
    :pswitch_0
    const/16 v2, 0x8

    .line 146
    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getBooleanValue(B)Z
    .locals 1

    .prologue
    .line 133
    ushr-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLoggingModeWithoutCaptureStackFromMeta(I)Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;
    .locals 1

    .prologue
    .line 68
    and-int/lit8 v0, p0, 0x6

    ushr-int/lit8 v0, v0, 0x1

    .line 69
    invoke-static {v0}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->valueOf(I)Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggingSlotIdFromMeta(I)I
    .locals 2

    .prologue
    .line 129
    ushr-int/lit8 v0, p0, 0x8

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static hasLoggingIdFromMeta(B)Z
    .locals 1

    .prologue
    .line 109
    and-int/lit8 v0, p0, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLoggingIdFromMeta(I)Z
    .locals 1

    .prologue
    .line 104
    and-int/lit8 v0, p0, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCaptureStackFromMeta(I)Z
    .locals 1

    .prologue
    .line 113
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMissingFromMeta(I)Z
    .locals 1

    .prologue
    .line 121
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullFromMeta(B)Z
    .locals 1

    .prologue
    .line 63
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullFromMeta(I)Z
    .locals 1

    .prologue
    .line 59
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
