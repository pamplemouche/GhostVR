.class public abstract LYO0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LlT;


# direct methods
.method public static a()V
    .locals 2

    .line 13
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 14
    sget-object v1, Lwf1;->b:Lwf1;

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, v1, Lwf1;->a:LGf1;

    invoke-virtual {v1, v0}, LGf1;->a(Landroid/content/Context;)V

    .line 16
    :goto_0
    sget-object v0, LnP0;->b:LnP0;

    if-nez v0, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, v0, LnP0;->a:LGf1;

    .line 18
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 19
    invoke-virtual {v0, v1}, LGf1;->a(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lvf1;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LYO0;->a:LlT;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, LXO0;

    invoke-direct {v0}, LXO0;-><init>()V

    sput-object v0, LYO0;->a:LlT;

    .line 4
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    sget-object v0, LZ01;->a:LFW;

    .line 6
    sget-object v1, Lwf1;->b:Lwf1;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lwf1;

    invoke-direct {v1, v0}, Lwf1;-><init>(LFW;)V

    sput-object v1, Lwf1;->b:Lwf1;

    .line 8
    :cond_1
    sget-object v0, Lwf1;->b:Lwf1;

    .line 9
    sget-object v1, LzT;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 10
    new-instance v2, Luf1;

    invoke-direct {v2, v0, v1, p0, p1}, Luf1;-><init>(Lwf1;Landroid/content/Context;Ljava/lang/String;Lvf1;)V

    .line 11
    iget-object p1, v0, Lwf1;->a:LGf1;

    invoke-virtual {p1, v1, p0, v2}, LGf1;->a(Landroid/content/Context;Ljava/lang/String;LFf1;)V

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 12
    throw p0
.end method
