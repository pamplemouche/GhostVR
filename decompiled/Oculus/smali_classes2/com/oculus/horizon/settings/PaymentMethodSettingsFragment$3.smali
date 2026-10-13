.class Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$3;
.super Ljava/lang/Object;
.source "PaymentMethodSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->showEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
