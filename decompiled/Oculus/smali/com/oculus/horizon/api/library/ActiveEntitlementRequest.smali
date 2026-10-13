.class public Lcom/oculus/horizon/api/library/ActiveEntitlementRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "ActiveEntitlementRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/library/ActiveEntitlementsResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    return-void
.end method
