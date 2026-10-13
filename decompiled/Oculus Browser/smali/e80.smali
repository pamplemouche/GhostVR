.class public Le80;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lc80;

.field public b:Z

.field public c:Z

.field public d:LZ70;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le80;->g:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lc80;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc80;-><init>(Le80;LY70;)V

    iput-object v1, p0, Le80;->a:Lc80;

    .line 8
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/base/Callback;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le80;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le80;->b:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LX70;

    invoke-direct {v1, p0, p1}, LX70;-><init>(Le80;Lorg/chromium/base/Callback;)V

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le80;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Le80;->d:LZ70;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, LZ70;

    new-instance v0, Lb80;

    invoke-direct {v0}, Lb80;-><init>()V

    invoke-direct {p1, p0, v0}, LZ70;-><init>(Le80;La80;)V

    iput-object p1, p0, Le80;->d:LZ70;

    .line 7
    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :goto_0
    return-void
.end method
