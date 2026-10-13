.class public Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;
.super Ljava/lang/Object;
.source "HasSeenActivityPrivacyUpdateRoadblockResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$SocialSettingsInfo;,
        Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$Viewer;
    }
.end annotation


# instance fields
.field public viewer:Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;->viewer:Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$Viewer;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid HasSeenActivityPrivacyUpdateRoadblockResponse. Response didn\'t have a viewer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;->viewer:Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$Viewer;->social_settings_info:Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$SocialSettingsInfo;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid HasSeenActivityPrivacyUpdateRoadblockResponse. Viewer didn\'t have a social_settings_info"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    return-void
.end method
