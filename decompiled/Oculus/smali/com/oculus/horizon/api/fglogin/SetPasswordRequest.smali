.class public Lcom/oculus/horizon/api/fglogin/SetPasswordRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "SetPasswordRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/fglogin/SetPasswordResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    return-void
.end method
