.class public LPL0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static f:LPL0;


# instance fields
.field public a:LY01;

.field public b:LWT;

.field public c:I

.field public d:Ljava/util/Set;

.field public e:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LPL0;->b:LWT;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LPL0;->c:I

    .line 4
    sget-object v0, LFW;->j:LFW;

    sget-object v1, LFL0;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a()LPL0;
    .locals 3

    .line 1
    sget-object v0, LPL0;->f:LPL0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, LPL0;

    invoke-direct {v0}, LPL0;-><init>()V

    sput-object v0, LPL0;->f:LPL0;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 4
    new-instance v2, Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    invoke-direct {v2, v1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object v2, v0, LPL0;->a:LY01;

    .line 6
    new-instance v1, LGL0;

    invoke-direct {v1, v0}, LGL0;-><init>(LPL0;)V

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->c(Lorg/chromium/base/Callback;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_1
    :goto_0
    sget-object v0, LPL0;->f:LPL0;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 9
    iput p1, p0, LPL0;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 10
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 11
    new-instance v1, Lbm0;

    invoke-direct {v1, v0}, Lbm0;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 12
    iget-object v1, v1, Lbm0;->b:Landroid/app/NotificationManager;

    const-string v2, "tracing_status"

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 13
    sput-object v0, LQL0;->a:LPl0;

    .line 14
    iget-object v1, p0, LPL0;->e:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 15
    sget-object v2, LFW;->j:LFW;

    new-instance v3, LOL0;

    invoke-direct {v3, v1}, LOL0;-><init>(Ljava/io/File;)V

    const-wide/16 v4, 0x0

    .line 16
    invoke-static {v2, v3, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 17
    iput-object v0, p0, LPL0;->e:Ljava/io/File;

    .line 18
    :cond_0
    iget-object v1, p0, LPL0;->a:LY01;

    invoke-interface {v1}, LY01;->destroy()V

    .line 19
    iput-object v0, p0, LPL0;->a:LY01;

    .line 20
    :cond_1
    iget-object v0, p0, LPL0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LNL0;

    .line 21
    invoke-interface {v1, p1}, LNL0;->d(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
