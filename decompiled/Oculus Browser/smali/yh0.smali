.class public Lyh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LHh0;


# direct methods
.method public constructor <init>(LHh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyh0;->w:LHh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lyh0;->w:LHh0;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    new-instance v2, Luh0;

    invoke-direct {v2, v0}, Luh0;-><init>(LHh0;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v2, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 4
    invoke-static {}, LbZ;->a()V

    .line 5
    invoke-static {}, LJ/N;->M2GcaEfy()V

    .line 6
    new-instance v0, Lxh0;

    invoke-direct {v0, p0}, Lxh0;-><init>(Lyh0;)V

    .line 7
    sget-boolean v2, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->d:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 8
    sget-object v2, LZ01;->a:LFW;

    .line 9
    invoke-static {v2, v0, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v2, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_0
    invoke-static {}, Lorg/chromium/base/PowerMonitor;->a()V

    .line 12
    sget-object v0, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v2, LPD0;->w:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->g()V

    .line 14
    invoke-static {}, Lym0;->b()Lym0;

    move-result-object v0

    .line 15
    iget-boolean v2, v0, Lym0;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lym0;->b:Landroid/content/SharedPreferences;

    const-string v5, "channels_version_key"

    const/4 v6, -0x1

    .line 16
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget v0, v0, Lym0;->d:I

    if-eq v2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lyh0;->w:LHh0;

    if-eqz v0, :cond_2

    .line 18
    sget-object v0, LFW;->j:LFW;

    sget-object v1, Lph0;->w:Ljava/lang/Runnable;

    .line 19
    invoke-static {v0, v1, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 20
    :cond_2
    throw v1

    :cond_3
    :goto_2
    return-void

    .line 21
    :cond_4
    throw v1
.end method
