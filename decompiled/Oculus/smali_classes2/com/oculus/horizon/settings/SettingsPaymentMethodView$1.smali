.class Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;
.super Ljava/lang/Object;
.source "SettingsPaymentMethodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->setupMenu(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

.field final synthetic val$model:Lcom/oculus/horizon/commerce/PaymentMethodModel;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    iput-object p2, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->val$model:Lcom/oculus/horizon/commerce/PaymentMethodModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/oculus/horizon/widget/OculusPopupMenu;

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    invoke-static {v2}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->access$000(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 62
    sget v1, Lcom/oculus/horizon/R$menu;->payment_method:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->inflate(I)V

    .line 64
    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->val$model:Lcom/oculus/horizon/commerce/PaymentMethodModel;

    instance-of v1, v1, Lcom/oculus/horizon/commerce/StoreCreditModel;

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->set_default:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 66
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->remove:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    :cond_0
    :goto_0
    new-instance v1, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;-><init>(Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V

    .line 90
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 91
    return-void

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->balance_detail:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 69
    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->val$model:Lcom/oculus/horizon/commerce/PaymentMethodModel;

    iget-boolean v1, v1, Lcom/oculus/horizon/commerce/PaymentMethodModel;->isDefault:Z

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->set_default:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
