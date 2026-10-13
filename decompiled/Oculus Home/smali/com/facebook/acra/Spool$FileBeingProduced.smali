.class public final Lcom/facebook/acra/Spool$FileBeingProduced;
.super Ljava/lang/Object;
.source "Spool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/Spool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FileBeingProduced"
.end annotation


# instance fields
.field public final file:Ljava/io/RandomAccessFile;

.field public final fileName:Ljava/io/File;

.field final synthetic this$0:Lcom/facebook/acra/Spool;


# direct methods
.method constructor <init>(Lcom/facebook/acra/Spool;Ljava/io/File;Ljava/io/RandomAccessFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/acra/Spool;
    .param p2, "fileName"    # Ljava/io/File;
    .param p3, "file"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/facebook/acra/Spool$FileBeingProduced;->this$0:Lcom/facebook/acra/Spool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/facebook/acra/Spool$FileBeingProduced;->fileName:Ljava/io/File;

    .line 244
    iput-object p3, p0, Lcom/facebook/acra/Spool$FileBeingProduced;->file:Ljava/io/RandomAccessFile;

    .line 245
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v1, p0, Lcom/facebook/acra/Spool$FileBeingProduced;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/Spool$FileBeingProduced;->this$0:Lcom/facebook/acra/Spool;

    iget-object v0, v0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/facebook/acra/Spool$FileBeingProduced;->fileName:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Lcom/facebook/acra/Spool$FileBeingProduced;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
