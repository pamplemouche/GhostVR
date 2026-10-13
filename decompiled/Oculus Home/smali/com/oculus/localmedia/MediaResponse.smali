.class public Lcom/oculus/localmedia/MediaResponse;
.super Ljava/lang/Object;
.source "MediaResponse.java"


# instance fields
.field private error:Ljava/lang/String;

.field private errorCode:Lcom/oculus/localmedia/MediaErrorCode;

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

.field private jsonResponse:Ljava/lang/String;

.field private paginationData:Lcom/oculus/localmedia/MediaPagination;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private queryId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryId"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/localmedia/MediaResponse;->queryId:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    .line 31
    sget-object v0, Lcom/oculus/localmedia/MediaErrorCode;->NONE:Lcom/oculus/localmedia/MediaErrorCode;

    iput-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->errorCode:Lcom/oculus/localmedia/MediaErrorCode;

    .line 32
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oculus/localmedia/MediaResponse;
    .locals 3
    .param p0, "jsonResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/oculus/localmedia/MediaResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/oculus/localmedia/MediaResponse;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "mediaResponse":Lcom/oculus/localmedia/MediaResponse;
    iput-object p0, v1, Lcom/oculus/localmedia/MediaResponse;->jsonResponse:Ljava/lang/String;

    .line 38
    return-object v1
.end method

.method private toJSON()Lorg/json/JSONObject;
    .locals 11

    .prologue
    .line 91
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v7, "json":Lorg/json/JSONObject;
    :try_start_0
    iget-object v8, p0, Lcom/oculus/localmedia/MediaResponse;->queryId:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/oculus/localmedia/MediaResponse;->queryId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 94
    const-string v8, "queryId"

    iget-object v9, p0, Lcom/oculus/localmedia/MediaResponse;->queryId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_0
    iget-object v8, p0, Lcom/oculus/localmedia/MediaResponse;->errorCode:Lcom/oculus/localmedia/MediaErrorCode;

    sget-object v9, Lcom/oculus/localmedia/MediaErrorCode;->NONE:Lcom/oculus/localmedia/MediaErrorCode;

    if-eq v8, v9, :cond_2

    .line 97
    const-string v8, "errorCode"

    iget-object v9, p0, Lcom/oculus/localmedia/MediaResponse;->errorCode:Lcom/oculus/localmedia/MediaErrorCode;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v8, "error"

    iget-object v9, p0, Lcom/oculus/localmedia/MediaResponse;->error:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_1
    :goto_0
    return-object v7

    .line 100
    :cond_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 101
    .local v6, "itemsArray":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/localmedia/MediaItem;

    .line 102
    .local v4, "item":Lcom/oculus/localmedia/MediaItem;
    invoke-virtual {v4}, Lcom/oculus/localmedia/MediaItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    .line 103
    .local v5, "itemJSON":Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    .line 104
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    .end local v4    # "item":Lcom/oculus/localmedia/MediaItem;
    .end local v5    # "itemJSON":Lorg/json/JSONObject;
    .end local v6    # "itemsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not serialize query response : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v6    # "itemsArray":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string v8, "items"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 110
    .local v3, "foldersArray":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/localmedia/FolderItem;

    .line 111
    .local v1, "folder":Lcom/oculus/localmedia/FolderItem;
    invoke-virtual {v1}, Lcom/oculus/localmedia/FolderItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 112
    .local v2, "folderJSON":Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 113
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 116
    .end local v1    # "folder":Lcom/oculus/localmedia/FolderItem;
    .end local v2    # "folderJSON":Lorg/json/JSONObject;
    :cond_6
    const-string v8, "folders"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v8, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    if-eqz v8, :cond_1

    .line 119
    const-string v8, "page_info"

    iget-object v9, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    invoke-virtual {v9}, Lcom/oculus/localmedia/MediaPagination;->toJSON()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addFolderItem(Lcom/oculus/localmedia/FolderItem;)V
    .locals 1
    .param p1, "folder"    # Lcom/oculus/localmedia/FolderItem;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addMediaItem(Lcom/oculus/localmedia/MediaItem;)V
    .locals 1
    .param p1, "item"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
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
    .line 68
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
    .line 64
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastCursor()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaPagination;->getLastCursor()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "size":I
    iget-object v1, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/localmedia/MediaResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 86
    iget-object v1, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaResponse;->folders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 87
    return v0

    :cond_1
    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public getStartCursor()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaPagination;->getStartCursor()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 72
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
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/localmedia/MediaErrorCode;->INTERNAL_ERROR:Lcom/oculus/localmedia/MediaErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/oculus/localmedia/MediaResponse;->setError(Ljava/lang/String;Lcom/oculus/localmedia/MediaErrorCode;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    return-object v0
.end method

.method public setError(Ljava/lang/String;Lcom/oculus/localmedia/MediaErrorCode;)Lcom/oculus/localmedia/MediaResponse;
    .locals 0
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/oculus/localmedia/MediaErrorCode;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oculus/localmedia/MediaResponse;->error:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/oculus/localmedia/MediaResponse;->errorCode:Lcom/oculus/localmedia/MediaErrorCode;

    .line 48
    return-object p0
.end method

.method public setPaginationData(Lcom/oculus/localmedia/MediaPagination;)V
    .locals 0
    .param p1, "paginationData"    # Lcom/oculus/localmedia/MediaPagination;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oculus/localmedia/MediaResponse;->paginationData:Lcom/oculus/localmedia/MediaPagination;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->jsonResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaResponse;->jsonResponse:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/oculus/localmedia/MediaResponse;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
