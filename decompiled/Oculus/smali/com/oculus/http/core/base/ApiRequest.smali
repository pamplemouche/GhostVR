.class public Lcom/oculus/http/core/base/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


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
.field private transient mCallback:Lcom/oculus/http/core/base/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/http/core/base/ApiCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/oculus/http/core/base/ApiCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oculus/http/core/base/ApiCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiRequest;->mCallback:Lcom/oculus/http/core/base/ApiCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 17
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiRequest;->mCallback:Lcom/oculus/http/core/base/ApiCallback;

    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/oculus/http/core/base/ApiCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/http/core/base/ApiCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    iput-object p1, p0, Lcom/oculus/http/core/base/ApiRequest;->mCallback:Lcom/oculus/http/core/base/ApiCallback;

    .line 13
    return-void
.end method
