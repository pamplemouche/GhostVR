.class public Lcom/oculus/localmedia/LocalMediaConfig$Builder;
.super Ljava/lang/Object;
.source "LocalMediaConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/LocalMediaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mIncludeFolders:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mExcludeFolders:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mTestMode:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/localmedia/LocalMediaConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/localmedia/LocalMediaConfig$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oculus/localmedia/LocalMediaConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/LocalMediaConfig;
    .locals 5

    .prologue
    .line 129
    new-instance v0, Lcom/oculus/localmedia/LocalMediaConfig;

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mMediaUriManager:Lcom/oculus/localmedia/MediaUriManager;

    iget-object v2, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mIncludeFolders:Ljava/util/List;

    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mExcludeFolders:Ljava/util/List;

    iget-boolean v4, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mTestMode:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/localmedia/LocalMediaConfig;-><init>(Lcom/oculus/localmedia/MediaUriManager;Ljava/util/List;Ljava/util/List;Z)V

    return-object v0
.end method

.method public enableTestMode()Lcom/oculus/localmedia/LocalMediaConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mTestMode:Z

    .line 122
    return-object p0
.end method

.method public excludeFolder(Ljava/lang/String;)Lcom/oculus/localmedia/LocalMediaConfig$Builder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mIncludeFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t use both includeFolder and excludeFolder at the same time."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-object p0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mExcludeFolders:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public includeFolder(Ljava/lang/String;)Lcom/oculus/localmedia/LocalMediaConfig$Builder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mExcludeFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t use both includeFolder and excludeFolder at the same time."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-object p0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mIncludeFolders:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMediaUriManager(Lcom/oculus/localmedia/MediaUriManager;)Lcom/oculus/localmedia/LocalMediaConfig$Builder;
    .locals 0
    .param p1, "mediaUriManager"    # Lcom/oculus/localmedia/MediaUriManager;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaConfig$Builder;->mMediaUriManager:Lcom/oculus/localmedia/MediaUriManager;

    .line 86
    return-object p0
.end method
