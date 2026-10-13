.class public Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;
.super LH10;
.source "PG"


# instance fields
.field public e:J

.field public f:LKR0;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTaskScheduler;->scheduleTaskLimitless(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTaskScheduler;->scheduleTask(I)V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 2

    .line 1
    iput-object p3, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->f:LKR0;

    .line 2
    iget-object p2, p2, LRS0;->b:Landroid/os/Bundle;

    const-string p3, "limitlessPrefetching"

    .line 3
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->h:Z

    .line 4
    invoke-static {p1}, LhZ;->b(Landroid/content/Context;)LhZ;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 5
    iget-boolean p3, p1, LhZ;->c:Z

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 6
    iget-boolean p3, p1, LhZ;->a:Z

    if-nez p3, :cond_1

    .line 7
    iget p3, p1, LhZ;->b:I

    const/16 v1, 0x32

    if-ge p3, v1, :cond_1

    .line 8
    :cond_0
    iget-boolean p3, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->h:Z

    if-eqz p3, :cond_2

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_5

    .line 9
    iget-boolean p3, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->h:Z

    if-eqz p3, :cond_4

    .line 10
    iget p1, p1, LhZ;->d:I

    const/4 p3, 0x6

    if-eq p1, p3, :cond_3

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    .line 11
    :cond_4
    iget-boolean p3, p1, LhZ;->e:Z

    if-nez p3, :cond_3

    .line 12
    iget p1, p1, LhZ;->d:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    return v0

    :cond_6
    :goto_3
    return p2
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    .line 13
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->g:Z

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 2

    .line 1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->e:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, LH10;->a()LF01;

    move-result-object p1

    invoke-interface {p1}, LF01;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "InterestFeedContentSuggestions"

    .line 3
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "interest_feed_content_suggestions"

    .line 4
    invoke-static {p2, p1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->f:LKR0;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, LKR0;->a(Z)V

    return-void

    .line 6
    :cond_1
    invoke-static {p0}, LJ/N;->M_yiIXuu(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->g()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 3

    .line 7
    iget-wide p1, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->e:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->g:Z

    return p1

    .line 8
    :cond_0
    invoke-static {p1, p2, p0}, LJ/N;->MgpkLR_Z(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public doneProcessing(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->g:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->f:LKR0;

    invoke-interface {v0, p1}, LKR0;->a(Z)V

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->setNativeTask(J)V

    return-void
.end method

.method public setNativeTask(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTask;->e:J

    return-void
.end method
