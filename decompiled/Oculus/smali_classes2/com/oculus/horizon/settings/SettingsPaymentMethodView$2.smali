.class Lcom/oculus/horizon/settings/SettingsPaymentMethodView$2;
.super Ljava/lang/Object;
.source "SettingsPaymentMethodView.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->createAndShowDeleteCardModal(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
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
    .line 110
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$2;->this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    iput-object p2, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$2;->val$model:Lcom/oculus/horizon/commerce/PaymentMethodModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$2;->this$0:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->access$100(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;)Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$2;->val$model:Lcom/oculus/horizon/commerce/PaymentMethodModel;

    iget-object v1, v1, Lcom/oculus/horizon/commerce/PaymentMethodModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->onDeletePaymentMethod(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    return v0
.end method
