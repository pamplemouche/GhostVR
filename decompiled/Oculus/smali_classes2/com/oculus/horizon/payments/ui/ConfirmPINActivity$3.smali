.class Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$3;
.super Ljava/lang/Object;
.source "ConfirmPINActivity.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->confirmRefund()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$3;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$3;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$500(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    .line 284
    const/4 v0, 0x0

    return v0
.end method
