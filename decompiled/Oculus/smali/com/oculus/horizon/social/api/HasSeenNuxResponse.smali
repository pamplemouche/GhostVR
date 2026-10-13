.class public Lcom/oculus/horizon/social/api/HasSeenNuxResponse;
.super Ljava/lang/Object;
.source "HasSeenNuxResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/HasSeenNuxResponse$SocialSettingsInfo;,
        Lcom/oculus/horizon/social/api/HasSeenNuxResponse$Viewer;
    }
.end annotation


# instance fields
.field public viewer:Lcom/oculus/horizon/social/api/HasSeenNuxResponse$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
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
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/social/api/HasSeenNuxResponse;->viewer:Lcom/oculus/horizon/social/api/HasSeenNuxResponse$Viewer;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid HasSeenNuxResponse. Response didn\'t have a viewer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/social/api/HasSeenNuxResponse;->viewer:Lcom/oculus/horizon/social/api/HasSeenNuxResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/HasSeenNuxResponse$Viewer;->social_settings_info:Lcom/oculus/horizon/social/api/HasSeenNuxResponse$SocialSettingsInfo;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid HasSeenNuxResponse. Viewer didn\'t have a social_settings_info"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    return-void
.end method
