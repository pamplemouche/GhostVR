.class Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;
.super Ljava/lang/Object;
.source "ProfileHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->bind(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$user:Lcom/oculus/horizon/api/common/user/User;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;Lcom/oculus/horizon/api/common/user/User;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->val$user:Lcom/oculus/horizon/api/common/user/User;

    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenPartyCallsNUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->val$user:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenPartyCallActivity(Lcom/oculus/horizon/api/common/user/User;)V

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    .line 158
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$300(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->ACTIVITY:Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/MeManager;->getCurrentPrivacyState(Lcom/oculus/horizon/social/model/PrivacyConcept;)Lcom/oculus/horizon/social/model/CurrentPrivacyState;

    move-result-object v0

    iget-object v1, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->state:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    .line 160
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$400(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/deeplinking/DeepLinkUriUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->val$user:Lcom/oculus/horizon/api/common/user/User;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    const-string v4, "notif_friend_online"

    invoke-virtual {v0, v2, v3, v4}, Lcom/oculus/horizon/deeplinking/DeepLinkUriUtils;->newMainActivityIntentForFriendId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 162
    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    .line 164
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$400(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/deeplinking/DeepLinkUriUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/deeplinking/DeepLinkUriUtils;->newMainActivityIntentForPrivacySettings(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    :goto_1
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v3}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenPartyCallNUXActivity(Lcom/oculus/horizon/social/model/PrivacyState;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    .line 165
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$400(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/deeplinking/DeepLinkUriUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/deeplinking/DeepLinkUriUtils;->newMainActivityIntentForActivityNotificationSettings(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method
