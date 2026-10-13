.class public Lcom/oculus/horizon/payments/ui/PurchaseActivity;
.super Landroid/app/Activity;
.source "PurchaseActivity.java"

# interfaces
.implements Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mPresenter:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

.field mPurchasePresenterProvider:Lcom/oculus/horizon/payments/ui/PurchasePresenterProvider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/PurchaseActivity;)V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/PurchaseActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/PurchaseActivity;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->$ul_$xXXcom_oculus_horizon_payments_ui_PurchasePresenterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/payments/ui/PurchasePresenterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mPurchasePresenterProvider:Lcom/oculus/horizon/payments/ui/PurchasePresenterProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static newStartIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/payments/ui/PurchaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v1, "extra_offer_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "extra_package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "extra_is_free"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    const-string v1, "extra_purchase_intent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    const-string v1, "extra_referral_view"

    invoke-virtual {p5}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "extra_item_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method


# virtual methods
.method public dismissLoadingIndicator()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {p0, p0}, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/PurchaseActivity;)V

    .line 55
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mPurchasePresenterProvider:Lcom/oculus/horizon/payments/ui/PurchasePresenterProvider;

    const-string v1, "extra_offer_id"

    .line 59
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_package_name"

    .line 60
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_is_free"

    .line 61
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "extra_purchase_intent"

    .line 62
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    const-string v5, "extra_referral_view"

    .line 63
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oculus/horizon/logging/TrackingViews$View;->fromStringWithDefaults(Ljava/lang/String;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v5

    const-string v7, "extra_item_id"

    .line 64
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/horizon/payments/ui/PurchasePresenterProvider;->get(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mPresenter:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mPresenter:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->setView(Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;)V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mPresenter:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->setView(Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;)V

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mPresenter:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->onResume()V

    .line 72
    return-void
.end method

.method public showLoadingIndicator()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 86
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mDialog:Landroid/app/Dialog;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 90
    return-void
.end method
