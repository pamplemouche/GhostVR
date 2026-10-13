.class public Lcom/facebook/common/util/KnownDeviceModels;
.super Ljava/lang/Object;
.source "KnownDeviceModels.java"


# static fields
.field public static final AMAZON_KINDLE_FIRE_GEN1:Ljava/lang/String; = "Kindle Fire"

.field public static final AMAZON_KINDLE_FIRE_HD7_GEN2:Ljava/lang/String; = "KFTT"

.field public static final AMAZON_KINDLE_FIRE_HD7_GEN3:Ljava/lang/String; = "KFSOWI"

.field public static final AMAZON_KINDLE_FIRE_HD7_GEN3_WAN:Ljava/lang/String; = "KFTHWA"

.field public static final AMAZON_KINDLE_FIRE_HD7_GEN3_WIFI:Ljava/lang/String; = "KFTHWI"

.field public static final AMAZON_KINDLE_FIRE_HD8_9_GEN1_WAN:Ljava/lang/String; = "KFJWA"

.field public static final AMAZON_KINDLE_FIRE_HD8_9_GEN1_WIFI:Ljava/lang/String; = "KFJWI"

.field public static final AMAZON_KINDLE_FIRE_HD8_9_GEN2_WAN:Ljava/lang/String; = "KFAPWA"

.field public static final AMAZON_KINDLE_FIRE_HD8_9_GEN2_WIFI:Ljava/lang/String; = "KFAPWI"

.field public static final HTC_CHACHA:Ljava/lang/String; = "HTC Status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeviceModel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static varargs isDeviceModelOneOf([Ljava/lang/String;)Z
    .locals 2
    .param p0, "deviceModelArray"    # [Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 28
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/facebook/common/util/KnownDeviceModels;->isDeviceModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x1

    .line 32
    :goto_1
    return v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
