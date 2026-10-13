.class Lcom/oculus/horizon/settings/PasswordSettingsFragment$2;
.super Ljava/lang/Object;
.source "PasswordSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PasswordSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->access$300(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->onForgotPasswordClicked()V

    .line 76
    return-void
.end method
