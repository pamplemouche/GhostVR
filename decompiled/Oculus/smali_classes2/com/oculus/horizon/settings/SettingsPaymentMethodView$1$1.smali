.class Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;
.super Ljava/lang/Object;
.source "SettingsPaymentMethodView.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;->this$1:Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->set_default:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;->this$1:Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;

    iget-object v0, v0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->access$100(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;)Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;->this$1:Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;

    iget-object v1, v1, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->val$model:Lcom/oculus/horizon/commerce/PaymentMethodModel;

    iget-object v1, v1, Lcom/oculus/horizon/commerce/PaymentMethodModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->onSetDefaultPaymentMethod(Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->balance_detail:I

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;->this$1:Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;

    iget-object v0, v0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->access$100(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;)Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->onShowBalanceDetails()V

    .line 84
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->remove:I

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;->this$1:Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;

    iget-object v0, v0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1$1;->this$1:Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;

    iget-object v1, v1, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;->val$model:Lcom/oculus/horizon/commerce/PaymentMethodModel;

    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->access$200(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    .line 87
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
