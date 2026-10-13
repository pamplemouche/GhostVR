.class public Lcom/oculus/horizon/api/commerce/OrdersRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "OrdersRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/commerce/OrdersResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    return-void
.end method
