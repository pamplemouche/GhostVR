.class Lcom/oculus/horizon/legacy/social/MeManager$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "MeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/profile/MyUserProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/MeManager;

.field final synthetic val$logger:Lcom/oculus/horizon/legacy/social/SocialLogger;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/horizon/legacy/social/SocialLogger;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->val$logger:Lcom/oculus/horizon/legacy/social/SocialLogger;

    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-static {}, Lcom/oculus/horizon/legacy/social/MeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to refresh current user information. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->val$logger:Lcom/oculus/horizon/legacy/social/SocialLogger;

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oculus/horizon/legacy/social/SocialLogger;->reportFetchResult(ZLjava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0, v4}, Lcom/oculus/horizon/legacy/social/MeManager;->access$302(Lcom/oculus/horizon/legacy/social/MeManager;I)I

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0, v4}, Lcom/oculus/horizon/legacy/social/MeManager;->access$402(Lcom/oculus/horizon/legacy/social/MeManager;I)I

    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/MeManager;->access$1000(Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/http/core/base/ApiError;)V

    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 226
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/profile/MyUserProfileResponse;)V
    .locals 8

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    .line 160
    invoke-static {}, Lcom/oculus/horizon/legacy/social/MeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Refreshed user data for %s"

    iget-object v3, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    iget-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->val$logger:Lcom/oculus/horizon/legacy/social/SocialLogger;

    const/4 v2, 0x1

    iget-object v3, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/oculus/horizon/legacy/social/SocialLogger;->reportFetchResult(ZLjava/lang/String;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->access$100(Lcom/oculus/horizon/legacy/social/MeManager;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getProfilePictureUri()Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    .line 169
    :goto_0
    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->access$200(Lcom/oculus/horizon/legacy/social/MeManager;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipeline;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromCache(Landroid/net/Uri;)V

    .line 176
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 177
    iget-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->client_preference_data:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->client_preference_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/ClientPreference;

    .line 179
    iget-object v0, v0, Lcom/oculus/horizon/api/common/ClientPreference;->type:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    .line 184
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->access$100(Lcom/oculus/horizon/legacy/social/MeManager;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getClientPreferences()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/ClientPreference;

    .line 186
    iget-object v5, v0, Lcom/oculus/horizon/api/common/ClientPreference;->type:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 188
    invoke-static {}, Lcom/oculus/horizon/legacy/social/MeManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "preventing client preference %s from being trampled"

    iget-object v7, v0, Lcom/oculus/horizon/api/common/ClientPreference;->type:Ljava/lang/String;

    .line 187
    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 195
    iget-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->client_preference_data:Ljava/util/List;

    if-nez v0, :cond_7

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->client_preference_data:Ljava/util/List;

    .line 198
    :cond_7
    iget-object v0, v1, Lcom/oculus/horizon/api/common/user/User;->client_preference_data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    :cond_8
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->access$100(Lcom/oculus/horizon/legacy/social/MeManager;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setUser(Lcom/oculus/horizon/api/common/user/User;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    iget-object v2, v1, Lcom/oculus/horizon/api/common/user/User;->friends:Lcom/oculus/horizon/api/common/user/User$Friends;

    iget v2, v2, Lcom/oculus/horizon/api/common/user/User$Friends;->count:I

    invoke-static {v0, v2}, Lcom/oculus/horizon/legacy/social/MeManager;->access$302(Lcom/oculus/horizon/legacy/social/MeManager;I)I

    .line 204
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    iget-object v2, v1, Lcom/oculus/horizon/api/common/user/User;->friend_requests_received_2:Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;

    iget v2, v2, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;->count:I

    invoke-static {v0, v2}, Lcom/oculus/horizon/legacy/social/MeManager;->access$402(Lcom/oculus/horizon/legacy/social/MeManager;I)I

    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    iget-object v2, v1, Lcom/oculus/horizon/api/common/user/User;->notifications:Lcom/oculus/horizon/api/common/user/User$GameInviteList;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/User$GameInviteList;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oculus/horizon/legacy/social/MeManager;->access$502(Lcom/oculus/horizon/legacy/social/MeManager;I)I

    .line 206
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/MeManager;->access$600(Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/horizon/api/profile/MyUserProfileResponse;)V

    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/MeManager;->access$700(Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/horizon/api/profile/MyUserProfileResponse;)V

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/MeManager;->access$802(Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/horizon/api/common/user/User;)Lcom/oculus/horizon/api/common/user/User;

    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->access$900(Lcom/oculus/horizon/legacy/social/MeManager;)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->val$tcs:Lbolts/TaskCompletionSource;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/MeManager$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/MeManager;->access$800(Lcom/oculus/horizon/legacy/social/MeManager;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 155
    check-cast p1, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/MeManager$1;->onResponse(Lcom/oculus/horizon/api/profile/MyUserProfileResponse;)V

    return-void
.end method
