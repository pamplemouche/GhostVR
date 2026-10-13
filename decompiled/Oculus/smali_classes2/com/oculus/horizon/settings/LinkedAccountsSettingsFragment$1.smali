.class Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;
.super Ljava/lang/Object;
.source "LinkedAccountsSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 5

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "link_tap"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 71
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$200(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "unlink_tap"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 78
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 79
    invoke-static {v4}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v4

    .line 75
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEventForFBLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$400(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v2}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$500(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$600(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;ZZ)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$700(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    goto :goto_0
.end method
