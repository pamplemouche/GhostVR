.class Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;
.super Ljava/io/OutputStream;
.source "AcraRadioMonitorBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/util/AcraRadioMonitorBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputStreamDecorator"
.end annotation


# instance fields
.field private final mDecoratedStream:Ljava/io/OutputStream;

.field private final mListener:Lcom/facebook/acra/util/AcraRadioListener;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/acra/util/AcraRadioListener;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mDecoratedStream:Ljava/io/OutputStream;

    .line 32
    iput-object p2, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mDecoratedStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    throw v0
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mDecoratedStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    throw v0
.end method

.method public write(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mDecoratedStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    .line 43
    return-void

    .line 41
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    throw v0
.end method

.method public write([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mDecoratedStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    array-length v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    array-length v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    throw v0
.end method

.method public write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mDecoratedStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/facebook/acra/util/AcraRadioListener;->onRadioActive(JJI)V

    throw v0
.end method
