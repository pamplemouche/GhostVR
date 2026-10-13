.class Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$3;
.super Ljava/lang/Object;
.source "ConfirmPasswordSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->updateDisplayToRoadblockLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$3;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$3;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->access$100(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_FORGOT_PASSWORD:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$3;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->access$200(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/authapi/OVRAuth;->logout(Landroid/os/ResultReceiver;Z)V

    .line 122
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$3;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    const-class v2, Lcom/oculus/horizon/main/StartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$3;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method
