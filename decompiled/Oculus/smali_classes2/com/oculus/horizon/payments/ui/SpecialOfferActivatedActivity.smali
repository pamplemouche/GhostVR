.class public Lcom/oculus/horizon/payments/ui/SpecialOfferActivatedActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SpecialOfferActivatedActivity.java"

# interfaces
.implements Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/SpecialOfferActivatedActivity;->finish()V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/SpecialOfferActivatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    const-string v1, "store_wide_offer_key"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 24
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreWideOfferModel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/SpecialOfferActivatedActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->REDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    const/4 v3, 0x0

    .line 25
    invoke-static {v1, p0, v0, v2, v3}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->launchMe(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;Lcom/oculus/horizon/store/StoreWideOfferModel;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/SpecialOfferActivatedActivity;->finish()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/SpecialOfferActivatedActivity;->finish()V

    goto :goto_0
.end method
