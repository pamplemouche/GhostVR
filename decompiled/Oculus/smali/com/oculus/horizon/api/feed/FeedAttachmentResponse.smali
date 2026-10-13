.class public Lcom/oculus/horizon/api/feed/FeedAttachmentResponse;
.super Ljava/lang/Object;
.source "FeedAttachmentResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/feed/FeedAttachmentResponse$MediaConnection;,
        Lcom/oculus/horizon/api/feed/FeedAttachmentResponse$Actors;
    }
.end annotation


# instance fields
.field public actor:Lcom/oculus/horizon/api/feed/FeedAttachmentResponse$Actors;

.field public id:Ljava/lang/String;

.field public media:Lcom/oculus/horizon/api/feed/FeedAttachmentResponse$MediaConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
