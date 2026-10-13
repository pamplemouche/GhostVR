.class final Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UtcTimestampCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method private constructor <init>(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 1078
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$1;)V
    .locals 0

    .line 1078
    invoke-direct {p0, p1}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 1078
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;->onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJZ)V"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;->onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 1078
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;->onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 1078
    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;->onLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public onLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .line 1095
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;->this$0:Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampLoadError(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method
