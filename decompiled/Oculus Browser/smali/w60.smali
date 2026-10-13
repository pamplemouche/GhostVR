.class public final synthetic Lw60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lw60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "CustomTabsConnection.initializeBrowser()"

    .line 1
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v2

    .line 2
    :try_start_0
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    invoke-static {v3}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 6
    iget-object v5, v4, LUg0;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/oculus/browser/OculusUser;->prefetchUserID(Landroid/content/Context;)V

    .line 7
    new-instance v5, LRg0;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, LRg0;-><init>(LUg0;Z)V

    .line 8
    invoke-virtual {v4, v5}, LUg0;->a(LCg0;)V

    const/4 v7, 0x0

    .line 9
    invoke-virtual {v4, v7, v5}, LUg0;->a(ZLCg0;)V

    .line 10
    invoke-static {v3, v6}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b(Landroid/content/Context;Z)V

    .line 11
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object v3

    invoke-virtual {v3}, LUg0;->c()V

    .line 12
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 13
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_0
    return-void

    .line 14
    :cond_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_2

    .line 16
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_2
    throw v1

    .line 17
    :cond_3
    throw v1
.end method
