.class public Lcom/oculus/horizon/feed/model/StoryMedia;
.super Ljava/lang/Object;
.source "StoryMedia.java"


# instance fields
.field private final mDeeplinkUri:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field private final mMedia:Lcom/oculus/horizon/feed/model/Media;

.field private final mThumbnail:Lcom/oculus/horizon/feed/model/Image;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lcom/oculus/horizon/feed/model/Image;Lcom/oculus/horizon/feed/model/Media;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/horizon/feed/model/StoryMedia;->mId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/oculus/horizon/feed/model/StoryMedia;->mDeeplinkUri:Landroid/net/Uri;

    .line 26
    iput-object p3, p0, Lcom/oculus/horizon/feed/model/StoryMedia;->mThumbnail:Lcom/oculus/horizon/feed/model/Image;

    .line 27
    iput-object p4, p0, Lcom/oculus/horizon/feed/model/StoryMedia;->mMedia:Lcom/oculus/horizon/feed/model/Media;

    .line 28
    return-void
.end method

.method static fromResponse(Lcom/oculus/horizon/api/feed/StoryMediaResponse;)Lcom/oculus/horizon/feed/model/StoryMedia;
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lcom/oculus/horizon/feed/model/StoryMedia;

    iget-object v1, p0, Lcom/oculus/horizon/api/feed/StoryMediaResponse;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/api/feed/StoryMediaResponse;->deeplink:Ljava/lang/String;

    .line 18
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/api/feed/StoryMediaResponse;->thumbnail_image:Lcom/oculus/horizon/api/feed/ImageResponse;

    .line 19
    invoke-static {v3}, Lcom/oculus/horizon/feed/model/Image;->fromResponse(Lcom/oculus/horizon/api/feed/ImageResponse;)Lcom/oculus/horizon/feed/model/Image;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/api/feed/StoryMediaResponse;->content_media:Lcom/oculus/horizon/api/feed/MediaResponse;

    .line 20
    invoke-static {v4}, Lcom/oculus/horizon/feed/model/Media;->fromResponse(Lcom/oculus/horizon/api/feed/MediaResponse;)Lcom/oculus/horizon/feed/model/Media;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/feed/model/StoryMedia;-><init>(Ljava/lang/String;Landroid/net/Uri;Lcom/oculus/horizon/feed/model/Image;Lcom/oculus/horizon/feed/model/Media;)V

    return-object v0
.end method


# virtual methods
.method public getMedia()Lcom/oculus/horizon/feed/model/Media;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/StoryMedia;->mMedia:Lcom/oculus/horizon/feed/model/Media;

    return-object v0
.end method

.method public getThumbnail()Lcom/oculus/horizon/feed/model/Image;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/StoryMedia;->mThumbnail:Lcom/oculus/horizon/feed/model/Image;

    return-object v0
.end method
