.class public abstract Lcom/facebook/cameracore/common/exception/CameraCoreException;
.super Ljava/lang/Exception;
.source "CameraCoreException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/common/exception/CameraCoreException$ErrorCode;
    }
.end annotation


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/cameracore/common/exception/CameraCoreException;->mErrorCode:I

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 93
    iput p1, p0, Lcom/facebook/cameracore/common/exception/CameraCoreException;->mErrorCode:I

    .line 94
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 98
    iput p1, p0, Lcom/facebook/cameracore/common/exception/CameraCoreException;->mErrorCode:I

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iput p1, p0, Lcom/facebook/cameracore/common/exception/CameraCoreException;->mErrorCode:I

    .line 109
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    iput p1, p0, Lcom/facebook/cameracore/common/exception/CameraCoreException;->mErrorCode:I

    .line 104
    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/facebook/cameracore/common/exception/CameraCoreException;->mErrorCode:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Ljava/util/Locale;

    const-string v1, "%s [ErrorCode=%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/facebook/cameracore/common/exception/CameraCoreException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/util/Locale;

    const-string v1, "[ErrorCode=%d]"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/cameracore/common/exception/CameraCoreException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
