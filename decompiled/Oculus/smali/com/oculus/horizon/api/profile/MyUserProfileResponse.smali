.class public Lcom/oculus/horizon/api/profile/MyUserProfileResponse;
.super Ljava/lang/Object;
.source "MyUserProfileResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;
    }
.end annotation


# instance fields
.field public viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityPrivacySettings()Lcom/oculus/horizon/api/profile/PrivacyEdges;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->privacy_current_activity:Lcom/oculus/horizon/api/profile/PrivacyEdges;

    if-nez v0, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->privacy_current_activity:Lcom/oculus/horizon/api/profile/PrivacyEdges;

    goto :goto_0
.end method

.method public getFriendsPrivacySettings()Lcom/oculus/horizon/api/profile/PrivacyEdges;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->privacy_friends:Lcom/oculus/horizon/api/profile/PrivacyEdges;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->privacy_friends:Lcom/oculus/horizon/api/profile/PrivacyEdges;

    goto :goto_0
.end method

.method public getLinkedAccounts()Lcom/oculus/horizon/api/profile/LinkedAccounts;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->linked_accounts_info:Lcom/oculus/horizon/api/profile/LinkedAccounts;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->linked_accounts_info:Lcom/oculus/horizon/api/profile/LinkedAccounts;

    goto :goto_0
.end method

.method public getProfilePrivacySettings()Lcom/oculus/horizon/api/profile/PrivacyEdges;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->privacy_real_world_identity:Lcom/oculus/horizon/api/profile/PrivacyEdges;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->privacy_real_world_identity:Lcom/oculus/horizon/api/profile/PrivacyEdges;

    goto :goto_0
.end method

.method public getUser()Lcom/oculus/horizon/api/common/user/User;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->user:Lcom/oculus/horizon/api/common/user/User;

    return-object v0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid MyUserProfileResponse. Response didn\'t have a viewer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->user:Lcom/oculus/horizon/api/common/user/User;

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid MyUserProfileResponse. Viewer didn\'t have a user"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    return-void
.end method
