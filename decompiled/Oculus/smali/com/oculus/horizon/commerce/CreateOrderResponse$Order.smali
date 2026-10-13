.class public Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;
.super Ljava/lang/Object;
.source "CreateOrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/CreateOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Order"
.end annotation


# instance fields
.field public app_store_item:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;

.field public id:Ljava/lang/String;

.field public payment_method:Lcom/oculus/horizon/api/common/PaymentMethod;

.field public purchase:Lcom/oculus/horizon/api/common/PurchaseDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
