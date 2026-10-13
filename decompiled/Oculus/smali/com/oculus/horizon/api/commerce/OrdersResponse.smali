.class public Lcom/oculus/horizon/api/commerce/OrdersResponse;
.super Ljava/lang/Object;
.source "OrdersResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount;
    }
.end annotation


# instance fields
.field public payment_account:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method
