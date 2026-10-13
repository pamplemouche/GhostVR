.class Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;
.super Ljava/lang/Object;
.source "LinkedAccountsSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;


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
    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFBAccountLinkError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    return-void
.end method

.method public onFBAccountLinkSuccess()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onFBAccountUnlinkError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "unlink_error"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 165
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    iget-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$500(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$600(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;ZZ)V

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_unknown:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    return-void
.end method

.method public onFBAccountUnlinkSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "unlink_success"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 151
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0, v4, v4}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$600(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;ZZ)V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 156
    invoke-virtual {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_linked_accounts_unlinking_succeeded:I

    const/4 v2, 0x1

    .line 155
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    return-void
.end method

.method public onFBAuthCancelled()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onFBAuthError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    return-void
.end method

.method public onFBAuthSuccess(Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onFBDataFetchComplete(Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .locals 0
    .param p1    # Lcom/oculus/horizon/fbconnect/FacebookData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    return-void
.end method

.method public onFBSyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 6
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "sync_error"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 194
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 195
    invoke-static {v4}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v4

    .line 191
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEventForFBLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$600(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;ZZ)V

    .line 199
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_unknown:I

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    return-void
.end method

.method public onFBSyncFriendsSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "sync_success"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 177
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 178
    invoke-static {v4}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v4

    .line 174
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEventForFBLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0, v5, v5}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$600(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;ZZ)V

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 183
    invoke-virtual {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_linked_accounts_syncing_succeeded:I

    .line 182
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    return-void
.end method

.method public onFBUnsyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 6
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "unsync_error"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 224
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 225
    invoke-static {v4}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v4

    .line 221
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEventForFBLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0, v5, v5}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$600(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;ZZ)V

    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_unknown:I

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    return-void
.end method

.method public onFBUnsyncFriendsSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 204
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "link_account_facebook"

    const-string v2, "unsync_success"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 207
    invoke-static {v3}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 208
    invoke-static {v4}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v4

    .line 204
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEventForFBLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->access$600(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;ZZ)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    .line 213
    invoke-virtual {v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_linked_accounts_unsyncing_succeeded:I

    .line 212
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    return-void
.end method
