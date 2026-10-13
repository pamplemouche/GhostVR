.class public Lcom/oculus/horizon/api/feed/FeedResponse$Viewer;
.super Ljava/lang/Object;
.source "FeedResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/feed/FeedResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Viewer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/feed/FeedResponse$Viewer$Feed;
    }
.end annotation


# instance fields
.field public feed:Lcom/oculus/horizon/api/feed/FeedResponse$Viewer$Feed;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
