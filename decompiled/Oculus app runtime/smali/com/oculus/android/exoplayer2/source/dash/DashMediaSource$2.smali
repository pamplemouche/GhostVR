.class Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$2;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$2;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$2;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;->access$400(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;Z)V

    return-void
.end method
