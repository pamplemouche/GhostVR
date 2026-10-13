.class public Lcom/oculus/horizon/settings/FriendsListPrivacyFragment;
.super Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;
.source "FriendsListPrivacyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildPrivacyStateToViewMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/horizon/social/model/PrivacyState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->ANYONE:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->anyone:I

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->friends:I

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->invisible:I

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/oculus/horizon/R$layout;->settings_privacy_friend_list_fragment:I

    return v0
.end method

.method protected getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyConcept;

    return-object v0
.end method

.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/oculus/horizon/R$string;->settings_friends_list_privacy:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_PRIVACY_SOCIAL_FRIENDS_LIST:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method
