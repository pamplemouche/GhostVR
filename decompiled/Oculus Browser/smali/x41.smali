.class public Lx41;
.super Landroid/media/MediaCodec$Callback;
.source "PG"


# instance fields
.field public a:Lorg/chromium/media/MediaCodecBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaCodecBridge;Lorg/chromium/media/MediaCodecBridge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 2
    iput-object p2, p0, Lx41;->a:Lorg/chromium/media/MediaCodecBridge;

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    const-string p1, "MediaCodec.onError: "

    .line 1
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "cr_MediaCodecBridge"

    invoke-static {v0, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lx41;->a:Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {p1}, Lorg/chromium/media/MediaCodecBridge;->b()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lx41;->a:Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {p1, p2}, Lorg/chromium/media/MediaCodecBridge;->a(I)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lx41;->a:Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {p1, p2, p3}, Lorg/chromium/media/MediaCodecBridge;->a(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lx41;->a:Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {p1, p2}, Lorg/chromium/media/MediaCodecBridge;->a(Landroid/media/MediaFormat;)V

    return-void
.end method
