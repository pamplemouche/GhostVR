.class public LRb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public A:Lorg/chromium/base/Callback;

.field public final w:Ljava/util/List;

.field public final x:Ljava/util/List;

.field public final y:J

.field public z:Lac0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LRb0;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, LRb0;->y:J

    .line 3
    iput-object p8, p0, LRb0;->A:Lorg/chromium/base/Callback;

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p5

    const/4 p8, 0x0

    if-eqz p5, :cond_4

    .line 6
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    new-instance p5, Lec0;

    invoke-direct {p5, p3}, Lec0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p3, Lfc0;

    invoke-direct {p3, p2}, Lfc0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p3, LMb0;

    invoke-direct {p3, p2}, LMb0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p3, LVb0;

    invoke-direct {p3, p2}, LVb0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p3, LYb0;

    invoke-direct {p3}, LYb0;-><init>()V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p3, LWb0;

    invoke-direct {p3}, LWb0;-><init>()V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p3, LZb0;

    invoke-direct {p3}, LZb0;-><init>()V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p3, LSb0;

    invoke-direct {p3, p6}, LSb0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p3, LNb0;

    invoke-direct {p3}, LNb0;-><init>()V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p3, LXb0;

    invoke-direct {p3}, LXb0;-><init>()V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LUb0;

    goto :goto_0

    .line 19
    :cond_0
    iput-object p4, p0, LRb0;->w:Ljava/util/List;

    .line 20
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 22
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    new-instance p4, LGb0;

    invoke-direct {p4, p2}, LGb0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance p2, Ldc0;

    invoke-direct {p2}, Ldc0;-><init>()V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance p2, Lorg/chromium/chrome/browser/feedback/ProcessIdFeedbackSource;

    invoke-direct {p2}, Lorg/chromium/chrome/browser/feedback/ProcessIdFeedbackSource;-><init>()V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iput-object p3, p0, LRb0;->x:Ljava/util/List;

    if-eqz p7, :cond_1

    .line 28
    new-instance p2, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;

    invoke-direct {p2, p1}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;-><init>(Landroid/app/Activity;)V

    .line 29
    iput-object p2, p0, LRb0;->z:Lac0;

    .line 30
    :cond_1
    iget-object p1, p0, LRb0;->x:Ljava/util/List;

    new-instance p2, LOb0;

    invoke-direct {p2, p0}, LOb0;-><init>(LRb0;)V

    invoke-static {p1, p2}, LsT;->a(Ljava/util/Collection;Lorg/chromium/base/Callback;)V

    .line 31
    iget-object p1, p0, LRb0;->z:Lac0;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lac0;->a(Ljava/lang/Runnable;)V

    :cond_2
    const-wide/16 p1, 0x1f4

    .line 32
    invoke-static {p0, p1, p2}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;J)V

    .line 33
    invoke-virtual {p0}, LRb0;->a()V

    return-void

    .line 34
    :cond_3
    throw p8

    .line 35
    :cond_4
    throw p8
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, LRb0;->A:Lorg/chromium/base/Callback;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LRb0;->z:Lac0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lac0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, LRb0;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LRb0;->y:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 5
    iget-object v0, p0, LRb0;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAb0;

    .line 6
    invoke-interface {v1}, LAb0;->a()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, LRb0;->A:Lorg/chromium/base/Callback;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, LRb0;->A:Lorg/chromium/base/Callback;

    .line 9
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LQb0;

    invoke-direct {v2, p0, v0}, LQb0;-><init>(LRb0;Lorg/chromium/base/Callback;)V

    const-wide/16 v3, 0x0

    .line 10
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LRb0;->a()V

    return-void
.end method
