.class public Lcom/oculus/horizon/feed/model/Actor;
.super Ljava/lang/Object;
.source "Actor.java"


# instance fields
.field private final mDeeplinkUri:Landroid/net/Uri;

.field private final mIcon:Lcom/oculus/horizon/feed/model/StoryMedia;

.field private final mId:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/oculus/horizon/feed/model/StoryMedia;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/horizon/feed/model/Actor;->mId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/oculus/horizon/feed/model/Actor;->mName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/oculus/horizon/feed/model/Actor;->mDeeplinkUri:Landroid/net/Uri;

    .line 27
    iput-object p4, p0, Lcom/oculus/horizon/feed/model/Actor;->mIcon:Lcom/oculus/horizon/feed/model/StoryMedia;

    .line 28
    return-void
.end method

.method static fromResponse(Lcom/oculus/horizon/api/feed/ActorResponse;)Lcom/oculus/horizon/feed/model/Actor;
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lcom/oculus/horizon/feed/model/Actor;

    iget-object v1, p0, Lcom/oculus/horizon/api/feed/ActorResponse;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/api/feed/ActorResponse;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/feed/ActorResponse;->deeplink:Ljava/lang/String;

    .line 19
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/api/feed/ActorResponse;->icon:Lcom/oculus/horizon/api/feed/StoryMediaResponse;

    .line 20
    invoke-static {v4}, Lcom/oculus/horizon/feed/model/StoryMedia;->fromResponse(Lcom/oculus/horizon/api/feed/StoryMediaResponse;)Lcom/oculus/horizon/feed/model/StoryMedia;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/feed/model/Actor;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/oculus/horizon/feed/model/StoryMedia;)V

    return-object v0
.end method


# virtual methods
.method public getIcon()Lcom/oculus/horizon/feed/model/StoryMedia;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/Actor;->mIcon:Lcom/oculus/horizon/feed/model/StoryMedia;

    return-object v0
.end method
