.class public Lcom/facebook/common/util/serial/BuildSerialUtil;
.super Ljava/lang/Object;
.source "BuildSerialUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 17
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 23
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "PERMISSION_DENIED"

    goto :goto_0
.end method
