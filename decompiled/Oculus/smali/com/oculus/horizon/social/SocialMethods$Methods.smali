.class interface abstract Lcom/oculus/horizon/social/SocialMethods$Methods;
.super Ljava/lang/Object;
.source "SocialMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/SocialMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Methods"
.end annotation


# virtual methods
.method public abstract acceptFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/UserMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/UserMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/FriendRequestAcceptResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract block(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/UserMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/UserMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/UserBlockedResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract checkUserHasSeenActivityPrivacyUpdateRoadblock(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract checkUserHasSeenSocialNux(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/HasSeenNuxResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getAchievements(Ljava/lang/String;Lcom/oculus/horizon/social/request/AchievementsParams;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/AchievementsParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/AchievementsParams;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/AchievementsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getAllGameInvites(Ljava/lang/String;Lcom/oculus/horizon/social/request/GameInviteParams;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/GameInviteParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/GameInviteParams;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/NotificationResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getAllPartyInvites(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/NotificationResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getBlockedUsers(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/BlockedUsersResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getEntitlementsWithAchievements(Ljava/lang/String;Lcom/oculus/horizon/social/request/SingleUserParams;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/SingleUserParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/SingleUserParams;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getFriendRequests(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/api/social/FriendRequestsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getFriends(Ljava/lang/String;Lcom/oculus/horizon/social/request/SingleUserParams;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/SingleUserParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/SingleUserParams;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/api/social/FriendsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getPartyInfoWithActivitySync(Ljava/lang/String;Lcom/oculus/horizon/social/request/GetPartyInfoWithActivityParams;)Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/GetPartyInfoWithActivityParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getPartyInvitableUsersSync(Ljava/lang/String;Lcom/oculus/horizon/social/request/SingleUserParams;)Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/SingleUserParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getProfile(Ljava/lang/String;Lcom/oculus/horizon/social/request/SingleUserParams;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/SingleUserParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/SingleUserParams;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/api/common/user/User;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getSocialActivity(Ljava/lang/String;Lcom/oculus/horizon/social/request/SocialActivityParams;)Lcom/oculus/horizon/social/api/SocialActivityResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/SocialActivityParams;
        .annotation runtime Lretrofit/http/Query;
            value = "variables"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract partyCreate(Ljava/lang/String;Lcom/oculus/horizon/social/request/PartyCreateParams;Ljava/lang/String;)Lcom/oculus/horizon/social/api/PartyCreateResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/PartyCreateParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract partyInviteUsers(Ljava/lang/String;Lcom/oculus/horizon/social/request/PartyInviteUsersParams;Ljava/lang/String;)Ljava/lang/Void;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/PartyInviteUsersParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract partyJoin(Ljava/lang/String;Lcom/oculus/horizon/social/request/PartyJoinParams;Ljava/lang/String;)Ljava/lang/Void;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/PartyJoinParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract partyLeave(Ljava/lang/String;Lcom/oculus/horizon/social/request/PartyLeaveParams;Ljava/lang/String;)Ljava/lang/Void;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/PartyLeaveParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract partySetType(Ljava/lang/String;Lcom/oculus/horizon/social/request/PartySetTypeParams;Ljava/lang/String;)Ljava/lang/Void;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/PartySetTypeParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract rejectFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/UserMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/UserMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/FriendRequestRejectResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract resetSocialNux(Ljava/lang/String;Lcom/oculus/horizon/social/request/SocialNuxMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/SocialNuxMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/SocialNuxMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract sendFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/UserMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/UserMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/FriendRequestSendResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract setPrivacy(Ljava/lang/String;Lcom/oculus/horizon/social/request/SetPrivacyParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/SetPrivacyParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/SetPrivacyParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/SetPrivacyResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract setSeenActivityPrivacyUpdateRoadblock(Ljava/lang/String;Lcom/oculus/horizon/social/request/ActivityPrivacyUpdateRoadblockMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/ActivityPrivacyUpdateRoadblockMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/ActivityPrivacyUpdateRoadblockMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract setSeenSocialNux(Ljava/lang/String;Lcom/oculus/horizon/social/request/SocialNuxMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/SocialNuxMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/SocialNuxMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract unblock(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/UserMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/UserMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/UserUnblockedResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract unfriend(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/UserMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/UserMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/FriendRemovedResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract userGetCurrentParty(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract userSearch(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserSearchParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/social/request/UserSearchParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/social/request/UserSearchParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/social/api/UserSearchResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method
