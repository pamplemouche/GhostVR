.class public Lcom/oculus/horizon/commerce/RedeemCodeResponse;
.super Lcom/oculus/horizon/commerce/GrantEntitlementResponse;
.source "RedeemCodeResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;
    }
.end annotation


# instance fields
.field public app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oculus/horizon/commerce/GrantEntitlementResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlternativeItems()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->alternative_items:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->alternative_items:Ljava/util/List;

    .line 51
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppEntitlements()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Entitlement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->app_entitlements:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->app_entitlements:Ljava/util/List;

    .line 33
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public getInAppEntitlements()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/InAppItemEntitlement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->iap_entitlements:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->iap_entitlements:Ljava/util/List;

    .line 39
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public getStoreCredits()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->stored_credits:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->stored_credits:Ljava/util/List;

    .line 45
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->app_entitlements:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->iap_entitlements:Ljava/util/List;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "app_redeem_coupon is null or all entitlements are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    return-void
.end method
