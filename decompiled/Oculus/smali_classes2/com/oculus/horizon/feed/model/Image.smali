.class public Lcom/oculus/horizon/feed/model/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private final mHeight:J

.field private final mName:Ljava/lang/String;

.field private final mScale:F

.field private final mUri:Landroid/net/Uri;

.field private final mWidth:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJLandroid/net/Uri;F)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/horizon/feed/model/Image;->mName:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lcom/oculus/horizon/feed/model/Image;->mWidth:J

    .line 24
    iput-wide p4, p0, Lcom/oculus/horizon/feed/model/Image;->mHeight:J

    .line 25
    iput-object p6, p0, Lcom/oculus/horizon/feed/model/Image;->mUri:Landroid/net/Uri;

    .line 26
    iput p7, p0, Lcom/oculus/horizon/feed/model/Image;->mScale:F

    .line 27
    return-void
.end method

.method static fromResponse(Lcom/oculus/horizon/api/feed/ImageResponse;)Lcom/oculus/horizon/feed/model/Image;
    .locals 8

    .prologue
    .line 17
    new-instance v0, Lcom/oculus/horizon/feed/model/Image;

    iget-object v1, p0, Lcom/oculus/horizon/api/feed/ImageResponse;->name:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oculus/horizon/api/feed/ImageResponse;->width:J

    iget-wide v4, p0, Lcom/oculus/horizon/api/feed/ImageResponse;->height:J

    iget-object v6, p0, Lcom/oculus/horizon/api/feed/ImageResponse;->uri:Ljava/lang/String;

    .line 18
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget v7, p0, Lcom/oculus/horizon/api/feed/ImageResponse;->scale:F

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/feed/model/Image;-><init>(Ljava/lang/String;JJLandroid/net/Uri;F)V

    return-object v0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/Image;->mUri:Landroid/net/Uri;

    return-object v0
.end method
