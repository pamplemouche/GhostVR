.class public final Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static l:Z

.field public static m:LKW0;

.field public static n:LKW0;

.field public static o:LsV;

.field public static p:LfW0;

.field public static final q:Ljava/util/Map;

.field public static r:LsV;

.field public static s:I

.field public static t:LKV0;

.field public static u:Z

.field public static v:Z

.field public static w:J


# instance fields
.field public final a:LfW0;

.field public final b:LKV0;

.field public final c:Z

.field public final d:Z

.field public final e:LQV;

.field public final f:LRV;

.field public g:J

.field public h:I

.field public i:Z

.field public final j:Ljava/lang/Object;

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->q:Ljava/util/Map;

    const/4 v0, -0x1

    .line 2
    sput v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->s:I

    return-void
.end method

.method public constructor <init>(J[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;ZZLandroid/os/IBinder;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWV0;

    invoke-direct {v0, p0}, LWV0;-><init>(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->e:LQV;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->h:I

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j:Ljava/lang/Object;

    .line 5
    iput-wide p1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->g:J

    .line 6
    iput-boolean p5, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->c:Z

    .line 7
    iput-boolean p6, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->d:Z

    .line 8
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 9
    invoke-static {p1, p5}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a(Landroid/content/Context;Z)LsV;

    move-result-object v6

    .line 10
    new-instance p1, LRV;

    .line 11
    sget-object v2, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    .line 12
    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->e:LQV;

    const/4 p2, 0x0

    if-nez p7, :cond_0

    move-object v7, p2

    goto :goto_0

    :cond_0
    new-array p6, v0, [Landroid/os/IBinder;

    const/4 v0, 0x0

    aput-object p7, p6, v0

    .line 13
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    move-object v7, p6

    :goto_0
    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, LRV;-><init>(Landroid/os/Handler;LQV;[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;LsV;Ljava/util/List;)V

    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->f:LRV;

    const-string p1, "type"

    .line 14
    invoke-static {p3, p1}, Lv01;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 15
    sget-object p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->p:LfW0;

    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a:LfW0;

    .line 16
    sget-object p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->t:LKV0;

    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b:LKV0;

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->k:I

    goto :goto_1

    .line 18
    :cond_1
    iput-object p2, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a:LfW0;

    .line 19
    iput-object p2, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b:LKV0;

    const/4 p1, -0x2

    .line 20
    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->k:I

    :goto_1
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "org.chromium.base.process_launcher.extra.bind_to_caller"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->v:Z

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->f()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->c()J

    move-result-wide v5

    sput-wide v5, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->w:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "ChildProcLH"

    const-string v5, "Shared RELRO support disabled!"

    .line 42
    invoke-static {v1, v5, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_1
    sput-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->v:Z

    .line 44
    :goto_0
    sget-wide v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->w:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 45
    :cond_2
    new-instance v3, LAV0;

    invoke-direct {v3, v0, v1, v2}, LAV0;-><init>(JZ)V

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 46
    iget-wide v1, v0, LAV0;->a:J

    const-string v3, "org.chromium.content.common.linker_params.base_load_address"

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    iget-boolean v1, v0, LAV0;->b:Z

    const-string v2, "org.chromium.content.common.linker_params.wait_for_shared_relro"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    iget-object v1, v0, LAV0;->c:Ljava/lang/String;

    const-string v2, "org.chromium.content.common.linker_params.test_runner_class_name"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget v0, v0, LAV0;->d:I

    const-string v1, "org.chromium.content.common.linker_params.linker_implementation"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)LsV;
    .locals 11

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->r:LsV;

    if-nez p1, :cond_0

    .line 4
    sget-object v2, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v6, "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"

    const/4 v8, 0x0

    const-string v5, "org.chromium.content.app.PrivilegedProcessService"

    move-object v1, p0

    .line 5
    invoke-static/range {v1 .. v9}, LsV;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)LsV;

    move-result-object p0

    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->r:LsV;

    .line 6
    :cond_0
    sget-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->r:LsV;

    return-object p0

    .line 7
    :cond_1
    sget-object p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->o:LsV;

    if-nez p1, :cond_6

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, p1, v0

    const-string v0, "ChildProcLH"

    const-string v1, "Create a new ChildConnectionAllocator with package name = %s, sandboxed = true"

    .line 8
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    sget-object v3, LUV0;->w:Ljava/lang/Runnable;

    .line 10
    sget p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->s:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 p0, 0x0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    const-class p0, Lorg/chromium/content/app/SandboxedProcessService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v5, p0

    .line 13
    sget v9, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->s:I

    const/4 v8, 0x0

    .line 14
    new-instance p0, LqV;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, LqV;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZILnV;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {}, LLV;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    sget-object v2, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    const-string p1, "org.chromium.content.app.SandboxedProcessService"

    const/4 v7, 0x0

    .line 17
    invoke-static {p0, v4, p1}, LsV;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance p0, LrV;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v4

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, LrV;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZZZLnV;)V

    goto :goto_1

    .line 19
    :cond_4
    sget-object v2, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v7, 0x0

    const-string v6, "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

    const/4 v8, 0x0

    const-string v5, "org.chromium.content.app.SandboxedProcessService"

    move-object v1, p0

    .line 20
    invoke-static/range {v1 .. v9}, LsV;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)LsV;

    move-result-object p0

    .line 21
    :goto_1
    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->o:LsV;

    .line 22
    invoke-static {}, LLV;->n()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 23
    new-instance p0, LfW0;

    invoke-direct {p0}, LfW0;-><init>()V

    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->p:LfW0;

    goto :goto_2

    .line 24
    :cond_5
    new-instance p0, LfW0;

    sget-object p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->o:LsV;

    .line 25
    invoke-virtual {p1}, LsV;->a()I

    move-result p1

    invoke-direct {p0, p1}, LfW0;-><init>(I)V

    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->p:LfW0;

    .line 26
    :cond_6
    :goto_2
    sget-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->o:LsV;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 27
    new-instance v0, LYV0;

    invoke-direct {v0, p0}, LYV0;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object p0, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 30
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->u:Z

    .line 31
    sget-object p0, LRV0;->a:LlT;

    .line 32
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(I)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;
    .locals 1

    .line 3
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->q:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    new-instance v0, LXV0;

    invoke-direct {v0, p0, p1}, LXV0;-><init>(Landroid/content/Context;Z)V

    .line 2
    sget-object p0, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic c(I)V
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 1
    sget-boolean p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->u:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->u:Z

    .line 3
    sget-object p0, LSV0;->w:Ljava/lang/Runnable;

    .line 4
    sget-object v0, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->u:Z

    if-nez p0, :cond_1

    .line 6
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->u:Z

    .line 7
    sget-object p0, LTV0;->w:Ljava/lang/Runnable;

    .line 8
    sget-object v0, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static createAndStart(J[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;Z)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;
    .locals 10

    const-string v0, "type"

    .line 1
    invoke-static {p2, v0}, Lv01;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderer"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x1

    const-string v2, "gpu-process"

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "service-sandbox-type"

    .line 4
    invoke-static {p2, v1}, Lv01;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 5
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, LrW0;

    invoke-direct {v0}, LrW0;-><init>()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v7, v0

    .line 7
    new-instance v9, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;-><init>(J[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;ZZLandroid/os/IBinder;)V

    .line 8
    iget-object v0, v9, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->f:LRV;

    invoke-virtual {v0, v8, v8}, LRV;->a(ZZ)Z

    .line 9
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->l:Z

    if-nez v0, :cond_4

    .line 10
    sput-boolean v8, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->l:Z

    .line 11
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->p:LfW0;

    if-eqz v0, :cond_4

    const-string v0, "ServiceGroupImportance"

    .line 12
    invoke-static {v0}, LJ/N;->Mb97JLvv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->p:LfW0;

    .line 14
    iput-boolean v8, v0, LfW0;->A:Z

    .line 15
    invoke-virtual {v0}, LfW0;->d()V

    .line 16
    iget-boolean v1, v0, LfW0;->B:Z

    if-eqz v1, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    iget-object v1, v0, LfW0;->w:Landroid/os/Handler;

    iget-object v2, v0, LfW0;->z:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    iput-boolean v8, v0, LfW0;->B:Z

    .line 19
    :goto_3
    sget-boolean v1, LfW0;->C:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, LfW0;->b()V

    :cond_4
    return-object v9
.end method

.method private dumpProcessStack(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b(I)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->f:LRV;

    .line 3
    iget-object p1, p1, LRV;->g:LLV;

    .line 4
    iget-object p1, p1, LLV;->i:LbW;

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p1}, LbW;->i()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ChildProcessConn"

    const-string v1, "Failed to dump process stack."

    .line 6
    invoke-static {p1, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getTerminationInfoAndStop(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->f:LRV;

    .line 2
    iget-object v0, v0, LRV;->g:LLV;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a()I

    move-result v9

    .line 4
    invoke-virtual {v0}, LLV;->j()[I

    move-result-object v1

    .line 5
    invoke-virtual {v0}, LLV;->b()I

    move-result v3

    invoke-virtual {v0}, LLV;->f()Z

    move-result v4

    .line 6
    invoke-virtual {v0}, LLV;->d()Z

    move-result v5

    const/4 v0, 0x3

    aget v6, v1, v0

    const/4 v0, 0x2

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    move-wide v1, p1

    .line 7
    invoke-static/range {v1 .. v9}, LJ/N;->MJcoZ9pW(JIZZIIII)V

    .line 8
    new-instance p1, LVV0;

    invoke-direct {p1, p0}, LVV0;-><init>(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V

    .line 9
    sget-object p2, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static makeFdInfo(IIZJJ)Lorg/chromium/base/process_launcher/FileDescriptorInfo;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :goto_1
    new-instance p1, Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    move-object v0, p1

    move v1, p0

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/base/process_launcher/FileDescriptorInfo;-><init>(ILandroid/os/ParcelFileDescriptor;JJ)V

    return-object p1

    :catch_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p0, "ChildProcLH"

    const-string p2, "Invalid FD provided for process connection, aborting connection."

    .line 4
    invoke-static {p0, p2, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setPriority(IZZZJZZI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p5

    move/from16 v4, p7

    move/from16 v5, p9

    .line 1
    invoke-static/range {p1 .. p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b(I)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v6, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->f:LRV;

    .line 3
    iget-object v6, v6, LRV;->g:LLV;

    const-string v7, "BackgroundMediaRendererHasModerateBinding"

    .line 4
    invoke-static {v7}, LJ/N;->Mb97JLvv(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    cmp-long v13, v2, v8

    if-eqz v13, :cond_7

    :cond_1
    if-eq v5, v11, :cond_7

    if-eqz p3, :cond_2

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    cmp-long v13, v2, v8

    if-lez v13, :cond_3

    if-nez v4, :cond_6

    :cond_3
    if-nez p8, :cond_6

    if-eq v5, v10, :cond_6

    if-eqz p3, :cond_4

    if-nez v7, :cond_6

    :cond_4
    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    :goto_0
    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v7, 0x2

    :goto_2
    if-eqz v1, :cond_8

    .line 5
    iget-boolean v8, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->i:Z

    if-nez v8, :cond_8

    .line 6
    iget-object v8, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b:LKV0;

    if-eqz v8, :cond_8

    .line 7
    iget-object v8, v8, LKV0;->w:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v10

    if-nez v8, :cond_8

    .line 8
    invoke-virtual {v6}, LLV;->a()V

    .line 9
    :cond_8
    iput-boolean v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->i:Z

    .line 10
    iget v8, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->h:I

    const-string v9, "The connection is not bound for %d"

    const-string v13, "ChildProcessConn"

    if-eq v8, v7, :cond_d

    if-eqz v7, :cond_d

    if-eq v7, v10, :cond_c

    if-eq v7, v11, :cond_9

    goto :goto_3

    .line 11
    :cond_9
    invoke-virtual {v6}, LLV;->e()Z

    move-result v8

    if-nez v8, :cond_a

    new-array v8, v10, [Ljava/lang/Object;

    .line 12
    iget v14, v6, LLV;->m:I

    .line 13
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v12

    invoke-static {v13, v9, v8}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 14
    :cond_a
    iget v8, v6, LLV;->q:I

    if-nez v8, :cond_b

    .line 15
    iget-object v8, v6, LLV;->n:LFV;

    check-cast v8, LHV;

    invoke-virtual {v8}, LHV;->a()Z

    .line 16
    invoke-virtual {v6}, LLV;->m()V

    .line 17
    :cond_b
    iget v8, v6, LLV;->q:I

    add-int/2addr v8, v10

    iput v8, v6, LLV;->q:I

    goto :goto_3

    .line 18
    :cond_c
    invoke-virtual {v6}, LLV;->a()V

    .line 19
    :cond_d
    :goto_3
    iget-object v8, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a:LfW0;

    if-eqz v8, :cond_e

    .line 20
    invoke-virtual {v8, v6}, LfW0;->a(LLV;)I

    move-result v14

    .line 21
    iget-object v15, v8, LfW0;->y:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LcW0;

    .line 22
    iput-boolean v1, v15, LcW0;->b:Z

    .line 23
    iput-wide v2, v15, LcW0;->c:J

    .line 24
    iput-boolean v4, v15, LcW0;->d:Z

    .line 25
    iput v5, v15, LcW0;->e:I

    .line 26
    invoke-virtual {v8, v14}, LfW0;->b(I)V

    .line 27
    iget-object v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b:LKV0;

    if-eqz v1, :cond_e

    .line 28
    invoke-virtual {v1}, LKV0;->a()V

    .line 29
    :cond_e
    iget v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->h:I

    if-eq v1, v7, :cond_12

    if-eqz v1, :cond_12

    if-eq v1, v10, :cond_11

    if-eq v1, v11, :cond_f

    goto :goto_4

    .line 30
    :cond_f
    invoke-virtual {v6}, LLV;->e()Z

    move-result v1

    if-nez v1, :cond_10

    new-array v1, v10, [Ljava/lang/Object;

    .line 31
    iget v2, v6, LLV;->m:I

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v13, v9, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 33
    :cond_10
    iget v1, v6, LLV;->q:I

    sub-int/2addr v1, v10

    iput v1, v6, LLV;->q:I

    if-nez v1, :cond_12

    .line 34
    iget-object v1, v6, LLV;->n:LFV;

    check-cast v1, LHV;

    invoke-virtual {v1}, LHV;->b()V

    .line 35
    invoke-virtual {v6}, LLV;->m()V

    goto :goto_4

    .line 36
    :cond_11
    invoke-virtual {v6}, LLV;->k()V

    .line 37
    :cond_12
    :goto_4
    iput v7, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->h:I

    return-void
.end method

.method public static stop(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b(I)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->f:LRV;

    .line 3
    iget-object p0, p0, LRV;->g:LLV;

    .line 4
    iget v0, p0, LLV;->m:I

    .line 5
    invoke-virtual {p0}, LLV;->l()V

    .line 6
    invoke-virtual {p0}, LLV;->h()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget v1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->k:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->k:I

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
