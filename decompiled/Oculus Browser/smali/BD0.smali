.class public LBD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlT;


# static fields
.field public static c:LBD0;


# instance fields
.field public final a:LKU0;

.field public final b:LpF0;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "GoogleServicesManager.GoogleServicesManager"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v1

    iput-object v1, p0, LBD0;->a:LKU0;

    .line 5
    invoke-static {}, LpF0;->b()LpF0;

    move-result-object v1

    iput-object v1, p0, LBD0;->b:LpF0;

    .line 6
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    .line 7
    iget-object v2, p0, LBD0;->a:LKU0;

    invoke-virtual {v2}, LKU0;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    iget-object v2, v1, Lorg/chromium/chrome/browser/signin/SigninManager;->c:Lorg/chromium/components/signin/identitymanager/IdentityManager;

    .line 9
    iget-wide v2, v2, Lorg/chromium/components/signin/identitymanager/IdentityManager;->a:J

    .line 10
    invoke-static {v2, v3}, LJ/N;->MMEufdOf(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GoogleServicesManager"

    const-string v3, "Signed in state got out of sync, forcing native sign out"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    .line 12
    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(I)V

    .line 13
    :cond_0
    invoke-static {}, LsG0;->c()LsG0;

    .line 14
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v1, p0}, LWT;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "GoogleServicesManager.onMainActivityStart"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, LpF0;->a()Z

    move-result v2

    .line 4
    iget-object v3, p0, LBD0;->b:LpF0;

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v1

    new-instance v4, LkF0;

    invoke-direct {v4, v3, v2}, LkF0;-><init>(LpF0;Z)V

    invoke-virtual {v1, v4}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, LBD0;->a()V

    :cond_0
    return-void
.end method
