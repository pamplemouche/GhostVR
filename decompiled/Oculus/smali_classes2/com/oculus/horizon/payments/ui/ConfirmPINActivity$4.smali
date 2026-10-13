.class Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$4;
.super Ljava/lang/Object;
.source "ConfirmPINActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 298
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$300(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->finish()V

    .line 305
    :cond_0
    return-void
.end method
