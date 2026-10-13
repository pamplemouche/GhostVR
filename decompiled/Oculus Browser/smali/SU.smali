.class public LSU;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final i:LYU;

.field public static final j:LYU;

.field public static final k:LSU;


# instance fields
.field public final a:I

.field public b:I

.field public c:Ljava/lang/Integer;

.field public d:Z

.field public e:Z

.field public f:LrU;

.field public g:LNU;

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LYU;

    const-string v1, "Android.MemoryPressureMonitor.GetMyMemoryState.Succeeded.Time"

    invoke-direct {v0, v1}, LYU;-><init>(Ljava/lang/String;)V

    sput-object v0, LSU;->i:LYU;

    .line 2
    new-instance v0, LYU;

    const-string v1, "Android.MemoryPressureMonitor.GetMyMemoryState.Failed.Time"

    invoke-direct {v0, v1}, LYU;-><init>(Ljava/lang/String;)V

    sput-object v0, LSU;->j:LYU;

    .line 3
    new-instance v0, LSU;

    const v1, 0xea60

    invoke-direct {v0, v1}, LSU;-><init>(I)V

    sput-object v0, LSU;->k:LSU;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LSU;->b:I

    .line 3
    sget-object v0, LOU;->a:LrU;

    iput-object v0, p0, LSU;->f:LrU;

    .line 4
    sget-object v0, LPU;->a:LNU;

    iput-object v0, p0, LSU;->g:LNU;

    .line 5
    new-instance v0, LQU;

    invoke-direct {v0, p0}, LQU;-><init>(LSU;)V

    iput-object v0, p0, LSU;->h:Ljava/lang/Runnable;

    .line 6
    iput p1, p0, LSU;->a:I

    return-void
.end method

.method public static final a()Ljava/lang/Integer;
    .locals 4

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 10
    :try_start_0
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 11
    invoke-static {v2}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 12
    sget-object v3, LSU;->i:LYU;

    invoke-static {v3, v0, v1}, LSU;->a(LYU;J)V

    .line 13
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-static {v2}, LSU;->c(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    sget-object v2, LSU;->j:LYU;

    invoke-static {v2, v0, v1}, LSU;->a(LYU;J)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(LYU;J)V
    .locals 3

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    .line 8
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2}, LZU;->a(I)V

    return-void
.end method

.method public static c(I)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x50

    if-ge p0, v0, :cond_2

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-boolean v0, p0, LSU;->d:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LSU;->c:Ljava/lang/Integer;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, LSU;->b(I)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LSU;->h:Ljava/lang/Runnable;

    iget v1, p0, LSU;->a:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LSU;->d:Z

    .line 3
    iput p1, p0, LSU;->b:I

    .line 4
    iget-object v0, p0, LSU;->g:LNU;

    invoke-interface {v0, p1}, LNU;->a(I)V

    return-void
.end method
