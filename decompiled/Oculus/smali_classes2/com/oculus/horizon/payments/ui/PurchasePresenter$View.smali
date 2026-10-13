.class public interface abstract Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/payments/ui/PurchasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract dismissLoadingIndicator()V
.end method

.method public abstract finish()V
.end method

.method public abstract getString(I)Ljava/lang/String;
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showLoadingIndicator()V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method
