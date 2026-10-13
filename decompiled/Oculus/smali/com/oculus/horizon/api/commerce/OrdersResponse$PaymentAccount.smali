.class public Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount;
.super Ljava/lang/Object;
.source "OrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/commerce/OrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAccount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrders;,
        Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;,
        Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$Error;
    }
.end annotation


# instance fields
.field public digital_orders:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrders;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
