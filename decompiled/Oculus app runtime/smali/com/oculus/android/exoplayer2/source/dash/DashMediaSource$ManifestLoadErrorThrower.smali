.class final Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ManifestLoadErrorThrower"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 1154
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeThrowManifestError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;->access$800(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;->access$800(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1158
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;->access$700(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;)Lcom/oculus/android/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 1159
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->maybeThrowManifestError()V

    return-void
.end method

.method public maybeThrowError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;->access$700(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;)Lcom/oculus/android/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 1165
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;->maybeThrowManifestError()V

    return-void
.end method
