.class public Lcom/oculus/localmedia/MediaResponse;
.super Ljava/lang/Object;
.source "MediaResponse.java"


# instance fields
.field private error:Ljava/lang/String;

.field private folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private paginationData:Lcom/oculus/localmedia/MediaPagination;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public addFolderItem(Lcom/oculus/localmedia/FolderItem;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public addMediaItem(Lcom/oculus/localmedia/MediaItem;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public getFolders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/FolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaPagination;->getTotalCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(Ljava/lang/String;)Lcom/oculus/localmedia/MediaResponse;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oculus/localmedia/MediaResponse;->error:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public setPaginationData(Lcom/oculus/localmedia/MediaPagination;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    .line 43
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->error:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "error"

    iget-object v2, p0, Lcom/oculus/localmedia/MediaResponse;->error:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_0
    :goto_0
    return-object v1

    .line 70
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 72
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not serialize query response : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_3
    :try_start_1
    const-string v0, "items"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/FolderItem;

    .line 81
    invoke-virtual {v0}, Lcom/oculus/localmedia/FolderItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 86
    :cond_5
    const-string v0, "folders"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "page_info"

    iget-object v2, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaPagination;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaResponse;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
