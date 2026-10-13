.class final Lcom/oculus/localmedia/LocalMediaManager$5;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/localmedia/LocalMediaManager;->deleteAsync(Ljava/lang/String;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appPtr:J

.field final synthetic val$jsonMediaItem:Ljava/lang/String;

.field final synthetic val$queryId:I


# direct methods
.method constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaManager$5;->val$jsonMediaItem:Ljava/lang/String;

    iput p2, p0, Lcom/oculus/localmedia/LocalMediaManager$5;->val$queryId:I

    iput-wide p3, p0, Lcom/oculus/localmedia/LocalMediaManager$5;->val$appPtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 280
    const/4 v4, 0x0

    .line 281
    .local v4, "success":Z
    invoke-static {}, Lcom/oculus/localmedia/MediaItem;->builder()Lcom/oculus/localmedia/MediaItem$Builder;

    iget-object v5, p0, Lcom/oculus/localmedia/LocalMediaManager$5;->val$jsonMediaItem:Ljava/lang/String;

    invoke-static {v5}, Lcom/oculus/localmedia/MediaItem$Builder;->fromJson(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/localmedia/MediaItem$Builder;->build()Lcom/oculus/localmedia/MediaItem;

    move-result-object v2

    .line 282
    .local v2, "item":Lcom/oculus/localmedia/MediaItem;
    if-nez v2, :cond_1

    .line 283
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v6, "Invalid item provided to delete method."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    iget v5, p0, Lcom/oculus/localmedia/LocalMediaManager$5;->val$queryId:I

    iget-wide v6, p0, Lcom/oculus/localmedia/LocalMediaManager$5;->val$appPtr:J

    invoke-static {v5, v4, v6, v7}, Lcom/oculus/localmedia/LocalMediaManager;->access$600(IZJ)V

    .line 310
    return-void

    .line 284
    :cond_1
    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v5

    if-nez v5, :cond_2

    .line 285
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can only delete local items, source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    :cond_3
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v6, "Filepath is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 293
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File does not exist for path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 296
    const/4 v4, 0x1

    .line 297
    invoke-static {}, Lcom/oculus/localmedia/LocalMediaManager;->access$400()Lcom/oculus/localmedia/LocalMediaManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 298
    invoke-static {}, Lcom/oculus/localmedia/LocalMediaManager;->access$400()Lcom/oculus/localmedia/LocalMediaManager;

    move-result-object v5

    invoke-static {v5}, Lcom/oculus/localmedia/LocalMediaManager;->access$500(Lcom/oculus/localmedia/LocalMediaManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 299
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v2, v3}, Lcom/oculus/localmedia/MediaItem;->deleteMedia(Landroid/content/ContentResolver;)I

    move-result v5

    if-nez v5, :cond_0

    .line 300
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File failed to delete media store entry for path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 304
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File failed to delete for path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
