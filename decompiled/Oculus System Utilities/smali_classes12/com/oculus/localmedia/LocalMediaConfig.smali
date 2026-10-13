.class public Lcom/oculus/localmedia/LocalMediaConfig;
.super Ljava/lang/Object;
.source "LocalMediaConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/LocalMediaConfig$Builder;
    }
.end annotation


# instance fields
.field private mExcludeFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaUriManager:Lcom/oculus/localmedia/MediaUriManager;

.field private mTestMode:Z


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/MediaUriManager;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .param p1, "mediaUriManager"    # Lcom/oculus/localmedia/MediaUriManager;
    .param p4, "testMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/localmedia/MediaUriManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "includeFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "excludeFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mMediaUriManager:Lcom/oculus/localmedia/MediaUriManager;

    .line 27
    iput-object p2, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mIncludeFolders:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mExcludeFolders:Ljava/util/List;

    .line 29
    iput-boolean p4, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mTestMode:Z

    .line 30
    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/LocalMediaConfig$Builder;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/localmedia/LocalMediaConfig$Builder;-><init>(Lcom/oculus/localmedia/LocalMediaConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public getIncludeFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mIncludeFolders:Ljava/util/List;

    return-object v0
.end method

.method public getMediaUriManager()Lcom/oculus/localmedia/MediaUriManager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mMediaUriManager:Lcom/oculus/localmedia/MediaUriManager;

    return-object v0
.end method

.method public isSupportedPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mExcludeFolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 50
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mIncludeFolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 51
    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mIncludeFolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .restart local v0    # "path":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 53
    goto :goto_0

    .end local v0    # "path":Ljava/lang/String;
    :cond_5
    move v1, v2

    .line 58
    goto :goto_0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/oculus/localmedia/LocalMediaConfig;->mTestMode:Z

    return v0
.end method
