.class public Lorg/chromium/content/browser/TracingControllerAndroidImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LY01;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LMW0;

.field public final c:Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->e:Z

    .line 3
    iput-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a:Landroid/content/Context;

    .line 4
    new-instance v0, LMW0;

    invoke-direct {v0, p0}, LMW0;-><init>(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->b:LMW0;

    .line 5
    new-instance v0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->c:Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;

    return-void
.end method

.method public static generateTracingFilePath()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, LqU;->e()LqU;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0}, LqU;->close()V

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "UTC"

    .line 6
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chrome-profile-results-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v0}, LqU;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    .line 13
    :try_start_3
    invoke-virtual {v0}, LqU;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 14
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    throw v2
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {p0}, LJ/N;->MWlLnA$6(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cr.TracingController"

    .line 24
    invoke-static {v2, p1, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-boolean v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .line 4
    iput-boolean p2, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->e:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->generateTracingFilePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a:Landroid/content/Context;

    const p3, 0x7f13050e

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a(Ljava/lang/String;)V

    return p2

    .line 7
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->d:Z

    const-string v1, "cr.TracingController"

    if-eqz v0, :cond_1

    new-array p1, p2, [Ljava/lang/Object;

    const-string p3, "Received startTracing, but we\'re already tracing"

    .line 8
    invoke-static {v1, p3, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 9
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a()V

    .line 10
    iget-wide v2, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    .line 11
    invoke-static {v2, v3, p0, p3, p4}, LJ/N;->MZYMIGWv(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 12
    iget-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a:Landroid/content/Context;

    const p3, 0x7f13050d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a(Ljava/lang/String;)V

    return p2

    :cond_2
    const/4 p4, 0x1

    new-array v0, p4, [Ljava/lang/Object;

    aput-object p3, v0, p2

    const-string v2, "Profiler started: %s"

    .line 13
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, p2, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a:Landroid/content/Context;

    const v2, 0x7f13050f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 16
    iget-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p2

    .line 17
    iget-object p2, p2, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 18
    :cond_3
    iput-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->f:Ljava/lang/String;

    .line 19
    iput-boolean p5, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->g:Z

    .line 20
    iput-boolean p4, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->d:Z

    return p4
.end method

.method public a(Lorg/chromium/base/Callback;)Z
    .locals 2

    .line 21
    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a()V

    .line 22
    iget-wide v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    .line 23
    invoke-static {v0, v1, p0, p1}, LJ/N;->MkLMghix(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Lorg/chromium/base/Callback;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    iget-object v4, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->g:Z

    move-object v3, p0

    move-object v6, p1

    .line 3
    invoke-static/range {v1 .. v6}, LJ/N;->M$HKWu8q(JLjava/lang/Object;Ljava/lang/String;ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Lorg/chromium/base/Callback;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MdRNuqnW(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MLYQdwUF(JLjava/lang/Object;)V

    .line 4
    iput-wide v2, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->h:J

    :cond_0
    return-void
.end method

.method public onKnownCategoriesReceived([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    check-cast p2, Lorg/chromium/base/Callback;

    invoke-interface {p2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTraceBufferUsageReceived(FJLjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p4, Lorg/chromium/base/Callback;

    new-instance v0, Landroid/util/Pair;

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onTracingStopped(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->d:Z

    const-string v1, "cr.TracingController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Received onTracingStopped, but we aren\'t tracing"

    .line 2
    invoke-static {v1, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 3
    iget-object v4, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Profiler finished. Results are in %s."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {v1, v3, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a:Landroid/content/Context;

    const v3, 0x7f130510

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->f:Ljava/lang/String;

    aput-object v4, v0, v2

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-boolean v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->a:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8
    :cond_1
    iput-boolean v2, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->d:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->f:Ljava/lang/String;

    .line 10
    iput-boolean v2, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->g:Z

    if-eqz p1, :cond_2

    .line 11
    check-cast p1, Lorg/chromium/base/Callback;

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
