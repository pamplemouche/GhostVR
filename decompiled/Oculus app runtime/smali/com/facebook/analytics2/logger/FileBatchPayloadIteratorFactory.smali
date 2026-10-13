.class Lcom/facebook/analytics2/logger/FileBatchPayloadIteratorFactory;
.super Ljava/lang/Object;
.source "FileBatchPayloadIteratorFactory.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;)Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;
    .locals 2

    .line 14
    new-instance v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    const/16 v1, 0x4e20

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;-><init>(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;I)V

    return-object v0
.end method
