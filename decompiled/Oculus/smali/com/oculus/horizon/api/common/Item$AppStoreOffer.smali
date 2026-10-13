.class public Lcom/oculus/horizon/api/common/Item$AppStoreOffer;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppStoreOffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;,
        Lcom/oculus/horizon/api/common/Item$AppStoreOffer$PriceWithoutProration;,
        Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;
    }
.end annotation


# instance fields
.field public end_time:J

.field public id:Ljava/lang/String;

.field public is_offer_locked_by_payment_method:Z

.field public price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

.field public price_without_proration:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$PriceWithoutProration;

.field public promo_benefit:Ljava/lang/String;

.field public show_timer:Z

.field public strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

.field public viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
