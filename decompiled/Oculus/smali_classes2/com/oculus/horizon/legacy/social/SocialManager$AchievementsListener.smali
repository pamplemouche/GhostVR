.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$AchievementsListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AchievementsListener"
.end annotation


# virtual methods
.method public abstract onAchievementsRefreshError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onAchievementsRefreshed(Lcom/oculus/horizon/social/api/AchievementsResponse;)V
.end method
