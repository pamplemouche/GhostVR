.class public abstract Lcom/oculus/http/core/base/ApiCallback;
.super Ljava/lang/Object;
.source "ApiCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mIsComplete:Z

.field private mIsPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsComplete:Z

    .line 14
    iput-boolean v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsPaused:Z

    return-void
.end method
