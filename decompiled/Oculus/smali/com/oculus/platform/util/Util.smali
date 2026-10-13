.class public Lcom/oculus/platform/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/platform/util/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/util/Util;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string/jumbo v1, "sdk_major_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string/jumbo v1, "sdk_minor_version"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public static getServiceError(Landroid/os/Bundle;)Lcom/oculus/platform/util/OVRError;
    .locals 2

    .prologue
    .line 48
    invoke-static {p0}, Lcom/oculus/platform/util/Util;->isServiceError(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tried to fetch error code from non-error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    const-string v0, "error_code"

    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    invoke-static {v0}, Lcom/oculus/platform/util/OVRError;->fromInt(I)Lcom/oculus/platform/util/OVRError;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-static {p0}, Lcom/oculus/platform/util/Util;->isServiceError(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tried to fetch error message from non-error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const-string v0, "error_message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V
    .locals 1

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/oculus/platform/util/Util$2;

    invoke-direct {v0, p1, p2}, Lcom/oculus/platform/util/Util$2;-><init>(Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V
    .locals 1

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/oculus/platform/util/Util$1;

    invoke-direct {v0, p1, p2}, Lcom/oculus/platform/util/Util$1;-><init>(Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static isServiceError(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    const-string v0, "error_code"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oculus/platform/util/OVRError;->mErrorMessage:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance p0, Ljava/lang/Throwable;

    const-string/jumbo v0, "stacktrace"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 73
    :cond_0
    sget-object v0, Lcom/oculus/platform/util/Util;->TAG:Ljava/lang/String;

    const-string v1, "operation failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    invoke-static {p1, p2}, Lcom/oculus/platform/util/Util;->makeErrorResultQuiet(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static makeErrorResultQuiet(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v1, "error_message"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object v0
.end method
