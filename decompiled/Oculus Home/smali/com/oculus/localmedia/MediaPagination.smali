.class public Lcom/oculus/localmedia/MediaPagination;
.super Ljava/lang/Object;
.source "MediaPagination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/MediaPagination$Builder;
    }
.end annotation


# instance fields
.field private mLastCursor:Ljava/lang/String;

.field private mStartCursor:Ljava/lang/String;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "totalCount"    # I
    .param p2, "startCursor"    # Ljava/lang/String;
    .param p3, "lastCursor"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/oculus/localmedia/MediaPagination;->mTotalCount:I

    .line 20
    iput-object p2, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getLastCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/oculus/localmedia/MediaPagination;->mTotalCount:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    iget-object v5, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v2

    .line 40
    .local v1, "hasNextPage":Z
    :goto_0
    iget-object v5, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 41
    .local v2, "hasPreviousPage":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 42
    const-string v4, "start_cursor"

    iget-object v5, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    const-string v4, "end_cursor"

    iget-object v5, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_1
    const-string v4, "has_next_page"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 48
    const-string v4, "has_previous_page"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 49
    iget v4, p0, Lcom/oculus/localmedia/MediaPagination;->mTotalCount:I

    if-ltz v4, :cond_2

    .line 50
    const-string v4, "total_count"

    iget v5, p0, Lcom/oculus/localmedia/MediaPagination;->mTotalCount:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "hasNextPage":Z
    .end local v2    # "hasPreviousPage":Z
    :cond_2
    :goto_2
    return-object v3

    :cond_3
    move v1, v4

    .line 39
    goto :goto_0

    .restart local v1    # "hasNextPage":Z
    :cond_4
    move v2, v4

    .line 40
    goto :goto_1

    .line 52
    .end local v1    # "hasNextPage":Z
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not serialize pageInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPagination{mTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/MediaPagination;->mTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartCursor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastCursor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
