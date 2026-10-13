.class public LWV0;
.super LQV;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-direct {p0}, LQV;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LsV;LKV;)LLV;
    .locals 4

    .line 1
    iget-object v0, p0, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 2
    iget-boolean v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-boolean v0, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->c:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->m:LKW0;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->n:LKW0;

    :goto_0
    if-nez v0, :cond_2

    return-object v2

    .line 6
    :cond_2
    iget-object v1, v0, LKW0;->b:LLV;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, LKW0;->d:LKV;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_7

    .line 7
    iget-object v1, v0, LKW0;->a:LsV;

    if-ne v1, p1, :cond_7

    iget-object p1, v0, LKW0;->d:LKV;

    if-eqz p1, :cond_5

    goto :goto_3

    .line 8
    :cond_5
    iput-object p2, v0, LKW0;->d:LKV;

    .line 9
    iget-object p1, v0, LKW0;->b:LLV;

    .line 10
    iget-boolean v1, v0, LKW0;->c:Z

    if-eqz v1, :cond_8

    if-eqz p2, :cond_6

    .line 11
    new-instance v1, LJW0;

    invoke-direct {v1, v0, p2}, LJW0;-><init>(LKW0;LKV;)V

    .line 12
    sget-object p2, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_6
    iput-object v2, v0, LKW0;->b:LLV;

    .line 14
    iput-boolean v3, v0, LKW0;->c:Z

    goto :goto_4

    :cond_7
    :goto_3
    move-object p1, v2

    :cond_8
    :goto_4
    return-object p1
.end method
