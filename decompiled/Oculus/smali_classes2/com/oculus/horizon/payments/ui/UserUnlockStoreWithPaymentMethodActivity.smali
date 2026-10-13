.class public Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UserUnlockStoreWithPaymentMethodActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget v0, Lcom/oculus/horizon/R$layout;->user_unlock_free_content_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodActivity;->setContentView(I)V

    .line 17
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 18
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method
