.class public abstract Lxg0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lwg0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lxg0;->d:Lwg0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lwg0;->a()V

    .line 3
    :cond_0
    move-object p1, p0

    check-cast p1, Ldh0;

    .line 4
    iget-object p1, p1, Ldh0;->e:Lfh0;

    .line 5
    iget-object p1, p1, Lfh0;->a:LGg0;

    .line 6
    invoke-interface {p1}, LGg0;->d()V

    .line 7
    :cond_1
    iget-boolean p1, p0, Lxg0;->b:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lxg0;->a:Z

    if-nez p1, :cond_4

    const/4 p1, 0x0

    const-string v0, "network_service_warm_up_enabled"

    .line 8
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-static {v0, p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b(Landroid/content/Context;Z)V

    .line 11
    :cond_2
    iget-boolean p1, p0, Lxg0;->c:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 12
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 13
    invoke-static {p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b(Landroid/content/Context;Z)V

    .line 14
    :cond_3
    move-object p1, p0

    check-cast p1, Ldh0;

    .line 15
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 16
    iget-object v1, p1, Ldh0;->e:Lfh0;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 17
    iput-object v0, v1, Lfh0;->f:Ljava/lang/Boolean;

    .line 18
    iget-object p1, p1, Ldh0;->e:Lfh0;

    .line 19
    invoke-virtual {p1}, Lfh0;->a()V

    :cond_4
    return-void
.end method
