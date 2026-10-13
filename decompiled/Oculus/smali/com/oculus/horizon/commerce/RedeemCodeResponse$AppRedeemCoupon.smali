.class public Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;
.super Ljava/lang/Object;
.source "RedeemCodeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/RedeemCodeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRedeemCoupon"
.end annotation


# instance fields
.field public alternative_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation
.end field

.field public app_entitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Entitlement;",
            ">;"
        }
    .end annotation
.end field

.field public default_item:Lcom/oculus/horizon/api/common/Item;

.field public iap_entitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/InAppItemEntitlement;",
            ">;"
        }
    .end annotation
.end field

.field public stored_credits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
