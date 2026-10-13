.class public Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;
.super Ljava/lang/Object;
.source "OrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitalOrder"
.end annotation


# instance fields
.field public app_store_item:Lcom/oculus/horizon/api/common/Item;

.field public payment_method:Lcom/oculus/horizon/api/common/PaymentMethod;

.field public purchase:Lcom/oculus/horizon/api/common/PurchaseDetails;

.field public refund_not_available_error:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$Error;

.field public refund_status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
