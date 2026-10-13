.class public LSc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lyc1;


# instance fields
.field public final synthetic a:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSc1;->a:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzc1;J)V
    .locals 7

    .line 1
    iget-object v2, p0, LSc1;->a:Lorg/chromium/ui/base/WindowAndroid;

    .line 2
    iget-boolean p1, v2, Lorg/chromium/ui/base/WindowAndroid;->mVSyncPaused:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v2, Lorg/chromium/ui/base/WindowAndroid;->mPendingVSyncRequest:Z

    return-void

    .line 4
    :cond_0
    iget-wide v0, v2, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, v2, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lzc1;

    .line 6
    invoke-virtual {p1}, Lzc1;->a()J

    move-result-wide v5

    move-wide v3, p2

    .line 7
    invoke-static/range {v0 .. v6}, LJ/N;->MaRRNbDu(JLjava/lang/Object;JJ)V

    :cond_1
    return-void
.end method
