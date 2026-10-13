.class Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$1;
.super Ljava/lang/Object;
.source "TwoFactorMethodsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->access$000(Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$1;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->access$100(Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->continueWithMethod(I)V

    .line 111
    return-void
.end method
