.class public Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse;
.super Ljava/lang/Object;
.source "EntitlementsWithAchievementsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Image;,
        Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;,
        Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;,
        Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Entitlements;
    }
.end annotation


# instance fields
.field public active_android_entitlements:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Entitlements;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
