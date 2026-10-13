.class public Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;
.super Ljava/lang/Object;
.source "CreateOrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/CreateOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;
    }
.end annotation


# instance fields
.field public current_offer:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
