.class Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$1;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;-><init>(ILcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;Lcom/oculus/video/source/hls/HlsChunkSource;Lcom/oculus/android/exoplayer2/upstream/Allocator;JLcom/oculus/android/exoplayer2/Format;ILcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;


# direct methods
.method constructor <init>(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$1;->this$0:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$1;->this$0:Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;->access$000(Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method
