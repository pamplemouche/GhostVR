.class public Lcom/facebook/cameracore/recording/common/RecordingException;
.super Lcom/facebook/cameracore/common/exception/CameraCoreException;
.source "RecordingException.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/common/exception/CameraCoreException;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/common/exception/CameraCoreException;-><init>(ILjava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x4e20

    invoke-direct {p0, v0, p1}, Lcom/facebook/cameracore/common/exception/CameraCoreException;-><init>(ILjava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 30
    instance-of v0, p2, Lcom/facebook/cameracore/common/exception/CameraCoreException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/facebook/cameracore/common/exception/CameraCoreException;

    .line 32
    invoke-virtual {v0}, Lcom/facebook/cameracore/common/exception/CameraCoreException;->getErrorCode()I

    move-result v0

    .line 30
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/cameracore/common/exception/CameraCoreException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void

    .line 32
    :cond_0
    const/16 v0, 0x4e20

    goto :goto_0
.end method
