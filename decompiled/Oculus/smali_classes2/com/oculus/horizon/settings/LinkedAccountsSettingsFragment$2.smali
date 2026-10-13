.class Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;
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
    .line 91
    iput-object p1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 5

    .prologue
    .line 94
    if-eqz p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "sync_tap"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 98
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 99
    invoke-static {v4}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v4

    .line 95
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEventForFBLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$800(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    .line 111
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "unsync_tap"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 106
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 107
    invoke-static {v4}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v4

    .line 103
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEventForFBLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$900(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    goto :goto_0
.end method
