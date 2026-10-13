.class Lcom/oculus/http/common/OculusSocketConfig;
.super Ljava/lang/Object;
.source "OculusSocketConfig.java"

# interfaces
.implements Lcom/facebook/http/config/SocketConfig;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectTimeoutMillis()I
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x3a98

    return v0
.end method

.method public getSocketTimeoutMillis()I
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x3a98

    return v0
.end method
