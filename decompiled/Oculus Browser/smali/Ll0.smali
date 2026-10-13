.class public LLl0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static e:LLl0;


# instance fields
.field public final a:LWT;

.field public final b:Landroid/os/PowerManager;

.field public c:Landroid/content/BroadcastReceiver;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LLl0;->a:LWT;

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "power"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, LLl0;->b:Landroid/os/PowerManager;

    .line 5
    invoke-virtual {p0}, LLl0;->b()V

    .line 6
    invoke-virtual {p0}, LLl0;->a()V

    .line 7
    new-instance v0, LJl0;

    invoke-direct {v0, p0}, LJl0;-><init>(LLl0;)V

    .line 8
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LLl0;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LLl0;->c:Landroid/content/BroadcastReceiver;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, LLl0;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, LKl0;

    invoke-direct {v0, p0}, LKl0;-><init>(LLl0;)V

    iput-object v0, p0, LLl0;->c:Landroid/content/BroadcastReceiver;

    .line 8
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    :cond_2
    invoke-virtual {p0}, LLl0;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LLl0;->b:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, LLl0;->d:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iput-boolean v0, p0, LLl0;->d:Z

    .line 4
    iget-object v0, p0, LLl0;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    return-void
.end method
