.class public Lw41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public w:I

.field public final synthetic x:Lorg/chromium/media/MediaCodecBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaCodecBridge;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw41;->x:Lorg/chromium/media/MediaCodecBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lw41;->w:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw41;->x:Lorg/chromium/media/MediaCodecBridge;

    iget v1, p0, Lw41;->w:I

    invoke-virtual {v0, v1}, Lorg/chromium/media/MediaCodecBridge;->b(I)V

    return-void
.end method
