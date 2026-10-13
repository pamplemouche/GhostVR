.class Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;
.super Ljava/lang/Object;
.source "UserActivityPrivacyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

.field final synthetic val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;->val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;->val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    .line 95
    invoke-virtual {v1}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getCurrentStateString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-static {v2}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->access$000(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)Z

    move-result v2

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportActivityPrivacyLearnMore(Ljava/lang/String;Z)V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;->val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenReadMoreDisplayed()V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$2;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->access$100(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 98
    return-void
.end method
