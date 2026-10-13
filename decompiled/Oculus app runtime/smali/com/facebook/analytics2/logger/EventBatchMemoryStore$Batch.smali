.class public Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;
.super Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
.source "EventBatchMemoryStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/EventBatchMemoryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Batch"
.end annotation


# instance fields
.field public final byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lcom/facebook/analytics2/logger/EventBatchMemoryStore;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/EventBatchMemoryStore;Ljava/io/ByteArrayOutputStream;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;->this$0:Lcom/facebook/analytics2/logger/EventBatchMemoryStore;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/analytics2/logger/EventBatchStore$Batch;-><init>(Lcom/facebook/analytics2/logger/EventBatchStore;Ljava/io/OutputStream;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    .line 59
    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventBatchMemoryStore$Batch;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method
