.class public Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;
.super Ljava/lang/Object;
.source "ControllerMemoryFile.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private mAddress:J

.field private mFd:I


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static native close(I)V
.end method

.method private deactivate()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mAddress:J

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->munmap(J)V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mAddress:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "ControllerMemoryFile"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mFd:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeactivated()Z
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native mmap(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native munmap(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native read(J[B)I
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->deactivate()V

    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mFd:I

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->close(I)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mFd:I

    goto :goto_0
.end method

.method public open(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mFd:I

    .line 24
    iget v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mFd:I

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mmap(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mAddress:J

    .line 25
    return-void
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read from deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-wide v0, p0, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->mAddress:J

    invoke-static {v0, v1, p1}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->read(J[B)I

    move-result v0

    return v0
.end method
