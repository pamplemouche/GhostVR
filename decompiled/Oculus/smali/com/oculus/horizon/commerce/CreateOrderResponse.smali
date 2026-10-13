.class public Lcom/oculus/horizon/commerce/CreateOrderResponse;
.super Ljava/lang/Object;
.source "CreateOrderResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;,
        Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;
    }
.end annotation


# instance fields
.field public order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaymentMethod()Lcom/oculus/horizon/api/common/PaymentMethod;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreateOrderResponse;->order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;->payment_method:Lcom/oculus/horizon/api/common/PaymentMethod;

    return-object v0
.end method

.method public getPurchaseDetails()Lcom/oculus/horizon/api/common/PurchaseDetails;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreateOrderResponse;->order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;->purchase:Lcom/oculus/horizon/api/common/PurchaseDetails;

    return-object v0
.end method
