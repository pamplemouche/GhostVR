.class public Lcom/oculus/horizon/api/feed/FeedStoryResponse;
.super Ljava/lang/Object;
.source "FeedStoryResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/feed/FeedStoryResponse$Attachments;
    }
.end annotation


# instance fields
.field public actors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/feed/ActorResponse;",
            ">;"
        }
    .end annotation
.end field

.field public attachments:Lcom/oculus/horizon/api/feed/FeedStoryResponse$Attachments;

.field public body_text:Ljava/lang/String;

.field public deeplink:Ljava/lang/String;

.field public display_time:J

.field public id:Ljava/lang/String;

.field public render_styles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
