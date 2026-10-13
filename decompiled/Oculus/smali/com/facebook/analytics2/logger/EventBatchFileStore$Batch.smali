.class Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;
.super Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
.source "EventBatchFileStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/EventBatchFileStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Batch"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final fileOutputStream:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/facebook/analytics2/logger/EventBatchFileStore;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/EventBatchFileStore;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;-><init>(Lcom/facebook/analytics2/logger/EventBatchFileStore;Ljava/io/File;Ljava/io/FileOutputStream;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    .line 157
    return-void
.end method

.method private constructor <init>(Lcom/facebook/analytics2/logger/EventBatchFileStore;Ljava/io/File;Ljava/io/FileOutputStream;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;->this$0:Lcom/facebook/analytics2/logger/EventBatchFileStore;

    .line 161
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;-><init>(Lcom/facebook/analytics2/logger/EventBatchStore;Ljava/io/OutputStream;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    .line 163
    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;->file:Ljava/io/File;

    .line 164
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 165
    return-void
.end method
