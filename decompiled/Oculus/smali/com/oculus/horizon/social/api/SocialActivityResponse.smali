.class public Lcom/oculus/horizon/social/api/SocialActivityResponse;
.super Ljava/lang/Object;
.source "SocialActivityResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;
    }
.end annotation


# instance fields
.field public social_activity:Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
