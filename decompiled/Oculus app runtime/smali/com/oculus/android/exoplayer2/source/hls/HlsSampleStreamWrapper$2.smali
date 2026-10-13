.class Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper$2;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/oculus/android/exoplayer2/source/hls/HlsChunkSource;Lcom/oculus/android/exoplayer2/upstream/Allocator;JLcom/oculus/android/exoplayer2/Format;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper$2;->this$0:Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper$2;->this$0:Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->access$100(Lcom/oculus/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method
