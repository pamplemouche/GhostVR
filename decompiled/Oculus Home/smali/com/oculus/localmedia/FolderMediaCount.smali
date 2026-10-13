.class public Lcom/oculus/localmedia/FolderMediaCount;
.super Ljava/lang/Object;
.source "FolderMediaCount.java"


# instance fields
.field private mAggregatedCount:I

.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    .line 17
    iput v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    .line 18
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "aggregatedCount"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/localmedia/FolderMediaCount;-><init>()V

    .line 22
    iput p1, p0, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    .line 23
    iput p2, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    .line 24
    return-void
.end method


# virtual methods
.method public add(Lcom/oculus/localmedia/FolderMediaCount;)V
    .locals 2
    .param p1, "count"    # Lcom/oculus/localmedia/FolderMediaCount;

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    iget v1, p1, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    .line 29
    iget v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    iget v1, p1, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    .line 31
    :cond_0
    return-void
.end method

.method public getAggregatedCount()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    return v0
.end method

.method public increaseAggregateCount()V
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    .line 48
    return-void
.end method

.method public increaseCount()V
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    .line 43
    iget v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    .line 44
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "count"

    iget v3, p0, Lcom/oculus/localmedia/FolderMediaCount;->mCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v2, "aggregatedCount"

    iget v3, p0, Lcom/oculus/localmedia/FolderMediaCount;->mAggregatedCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not serialize to JSON"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
