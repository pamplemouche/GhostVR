.class public LgS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LaS0;


# static fields
.field public static a:LeS0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LdS0;->a:LeS0;

    sput-object v0, LgS0;->a:LeS0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LIq;)LRS0;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, LIq;->a:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v2, LQS0;

    invoke-direct {v2, v1}, LQS0;-><init>(I)V

    .line 4
    iget-object p0, p0, LIq;->b:Landroid/os/Bundle;

    const-string v1, "_background_task_extras"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 6
    iput-object p0, v2, LQS0;->b:Landroid/os/Bundle;

    .line 7
    new-instance p0, LRS0;

    invoke-direct {p0, v2, v0}, LRS0;-><init>(LQS0;LPS0;)V

    return-object p0

    :catch_0
    const-string v1, "Cound not parse task ID from task tag: "

    .line 8
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object p0, p0, LIq;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BkgrdTaskSchedGcmNM"

    invoke-static {v2, p0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(LOS0;)Lcom/google/android/gms/gcm/Task;
    .locals 5

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    iget-object v1, p0, LOS0;->b:Landroid/os/Bundle;

    const-string v2, "_background_task_extras"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    new-instance v1, LfS0;

    invoke-direct {v1, v0}, LfS0;-><init>(Landroid/os/Bundle;)V

    .line 15
    iget-object v0, p0, LOS0;->g:LMS0;

    .line 16
    invoke-interface {v0, v1}, LMS0;->a(LNS0;)V

    .line 17
    iget-object v0, v1, LfS0;->a:LHq;

    .line 18
    iget-boolean v1, p0, LOS0;->e:Z

    .line 19
    invoke-virtual {v0, v1}, LHq;->a(Z)LHq;

    move-result-object v1

    .line 20
    iget v2, p0, LOS0;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x2

    .line 21
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, LHq;->a(I)LHq;

    move-result-object v1

    .line 22
    iget-boolean v2, p0, LOS0;->d:Z

    .line 23
    invoke-virtual {v1, v2}, LHq;->b(Z)LHq;

    move-result-object v1

    const-class v2, Lorg/chromium/components/background_task_scheduler/BackgroundTaskGcmTaskService;

    .line 24
    invoke-virtual {v1, v2}, LHq;->a(Ljava/lang/Class;)LHq;

    move-result-object v1

    .line 25
    iget v2, p0, LOS0;->a:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, LHq;->a(Ljava/lang/String;)LHq;

    move-result-object v1

    .line 28
    iget-boolean p0, p0, LOS0;->f:Z

    .line 29
    invoke-virtual {v1, p0}, LHq;->c(Z)LHq;

    .line 30
    invoke-virtual {v0}, LHq;->a()Lcom/google/android/gms/gcm/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 3

    .line 40
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 41
    sget-object v0, Ldm;->d:Ldm;

    .line 42
    sget v1, Lem;->a:I

    invoke-virtual {v0, p1, v1}, Lem;->a(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {p1}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    const-string v1, "BkgrdTaskSchedGcmNM"

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "GcmNetworkManager is not available."

    .line 44
    invoke-static {v1, p2, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 45
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 46
    const-class v2, Lorg/chromium/components/background_task_scheduler/BackgroundTaskGcmTaskService;

    .line 47
    invoke-virtual {p1, p2, v2}, LAq;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "GcmNetworkManager failed to cancel task."

    .line 48
    invoke-static {v1, p2, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;LOS0;)Z
    .locals 2

    .line 31
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 32
    sget-object v0, Ldm;->d:Ldm;

    .line 33
    sget v1, Lem;->a:I

    invoke-virtual {v0, p1, v1}, Lem;->a(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {p1}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "BkgrdTaskSchedGcmNM"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "GcmNetworkManager is not available."

    .line 35
    invoke-static {v0, p2, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 36
    :cond_1
    :try_start_0
    invoke-static {p2}, LgS0;->a(LOS0;)Lcom/google/android/gms/gcm/Task;

    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, LAq;->a(Lcom/google/android/gms/gcm/Task;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "null."

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "GcmNetworkManager failed to schedule task, gcm message: "

    .line 39
    invoke-static {p2, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
