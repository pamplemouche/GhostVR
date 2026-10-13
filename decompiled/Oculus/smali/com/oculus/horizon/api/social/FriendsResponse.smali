.class public Lcom/oculus/horizon/api/social/FriendsResponse;
.super Ljava/lang/Object;
.source "FriendsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/social/FriendsResponse$Friends;
    }
.end annotation


# instance fields
.field public friends:Lcom/oculus/horizon/api/social/FriendsResponse$Friends;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
