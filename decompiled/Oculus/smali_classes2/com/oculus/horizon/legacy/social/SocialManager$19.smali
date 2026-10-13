.class Lcom/oculus/horizon/legacy/social/SocialManager$19;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->setPrivacy(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/SetPrivacyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

.field final synthetic val$identityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

.field final synthetic val$includedUserIds:[Ljava/lang/String;

.field final synthetic val$privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

.field final synthetic val$state:Lcom/oculus/horizon/social/model/PrivacyState;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$identityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$state:Lcom/oculus/horizon/social/model/PrivacyState;

    iput-object p5, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$includedUserIds:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1800(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;

    .line 1140
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-interface {v0, v2, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;->onPrivacySetError(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    .line 1143
    invoke-virtual {v0}, Lcom/oculus/horizon/social/model/PrivacyConcept;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$state:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 1144
    invoke-virtual {v0}, Lcom/oculus/horizon/social/model/PrivacyState;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$includedUserIds:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$includedUserIds:[Ljava/lang/String;

    .line 1145
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$identityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 1146
    invoke-virtual {v4}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1142
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenSettingSetFailure(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1147
    return-void

    .line 1145
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/SetPrivacyResponse;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1118
    iget-object v0, p1, Lcom/oculus/horizon/social/api/SetPrivacyResponse;->privacy_audience:Lcom/oculus/horizon/api/profile/PrivacyAudience;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/PrivacyAudience;->base_state:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/social/SocialUtils;->privacyState(Ljava/lang/String;)Lcom/oculus/horizon/social/model/PrivacyState;

    move-result-object v2

    .line 1119
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    new-instance v5, Lcom/oculus/horizon/social/model/CurrentPrivacyState;

    iget-boolean v0, v2, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/social/api/SetPrivacyResponse;->privacy_audience:Lcom/oculus/horizon/api/profile/PrivacyAudience;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/PrivacyAudience;->included_users:Lcom/oculus/horizon/api/profile/PrivacyAudience$IncludedUsers;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/PrivacyAudience$IncludedUsers;->nodes:Ljava/util/List;

    .line 1124
    invoke-static {v0}, Lcom/oculus/horizon/social/SocialUtils;->getUserIds(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    iget-object v6, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$identityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    invoke-direct {v5, v2, v0, v6}, Lcom/oculus/horizon/social/model/CurrentPrivacyState;-><init>(Lcom/oculus/horizon/social/model/PrivacyState;Lcom/google/common/collect/ImmutableList;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V

    .line 1119
    invoke-virtual {v3, v4, v5}, Lcom/oculus/horizon/legacy/social/MeManager;->setCurrentPrivacyState(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/CurrentPrivacyState;)V

    .line 1127
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1800(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;

    .line 1128
    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-interface {v0, v4, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;->onPrivacySet(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;)V

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 1124
    goto :goto_0

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    .line 1131
    invoke-virtual {v2}, Lcom/oculus/horizon/social/model/PrivacyConcept;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$state:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 1132
    invoke-virtual {v3}, Lcom/oculus/horizon/social/model/PrivacyState;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$includedUserIds:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$includedUserIds:[Ljava/lang/String;

    .line 1133
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_2
    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/SocialManager$19;->val$identityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 1134
    invoke-virtual {v4}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1130
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenSettingSetSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1115
    check-cast p1, Lcom/oculus/horizon/social/api/SetPrivacyResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$19;->onResponse(Lcom/oculus/horizon/social/api/SetPrivacyResponse;)V

    return-void
.end method
