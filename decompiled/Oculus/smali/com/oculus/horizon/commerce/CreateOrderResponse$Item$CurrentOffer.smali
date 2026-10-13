.class public Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;
.super Ljava/lang/Object;
.source "CreateOrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentOffer"
.end annotation


# instance fields
.field public price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

.field public price_without_proration:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$PriceWithoutProration;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
