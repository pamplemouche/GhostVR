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
.method public getTotalCount()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/oculus/localmedia/MediaPagination;->mTotalCount:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    .line 32
    :goto_0
    iget-object v4, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 33
    :goto_1
    if-eqz v0, :cond_0

    .line 34
    const-string v1, "start_cursor"

    iget-object v4, p0, Lcom/oculus/localmedia/MediaPagination;->mStartCursor:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_0
    if-eqz v2, :cond_1

    .line 37
    const-string v1, "end_cursor"

    iget-object v4, p0, Lcom/oculus/localmedia/MediaPagination;->mLastCursor:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_1
    const-string v1, "has_next_page"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 40
    const-string v1, "has_previous_page"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 41
    iget v0, p0, Lcom/oculus/localmedia/MediaPagination;->mTotalCount:I

    if-ltz v0, :cond_2

    .line 42
    const-string v0, "total_count"

    iget v1, p0, Lcom/oculus/localmedia/MediaPagination;->mTotalCount:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_2
    :goto_2
    return-object v3

    :cond_3
    move v2, v1

    .line 31
    goto :goto_0

    :cond_4
    move v0, v1

    .line 32
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not serialize pageInfo : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 52
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
