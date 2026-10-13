.class public final Lrb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:Lnb;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrb;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lrb;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lrb;
    .locals 6

    if-eqz p0, :cond_4

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    sget-object v0, Lrb;->c:Lnb;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lnb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lrb;->c:Lnb;

    .line 4
    iget-object v1, v0, Lnb;->j:LXb;

    invoke-virtual {v0, v1}, Lnb;->a(LYa;)V

    .line 5
    new-instance v1, LJb;

    iget-object v2, v0, Lnb;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, LJb;-><init>(Landroid/content/Context;LIb;)V

    iput-object v1, v0, Lnb;->l:LJb;

    .line 6
    iget-boolean v0, v1, LJb;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, v1, LJb;->f:Z

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 15
    iget-object v2, v1, LJb;->a:Landroid/content/Context;

    iget-object v3, v1, LJb;->g:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, v1, LJb;->c:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 16
    iget-object v0, v1, LJb;->c:Landroid/os/Handler;

    iget-object v1, v1, LJb;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_0
    sget-object v0, Lrb;->c:Lnb;

    .line 18
    iget-object v1, v0, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 19
    iget-object v2, v0, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrb;

    if-nez v2, :cond_2

    .line 20
    iget-object v2, v0, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_2
    iget-object v3, v2, Lrb;->a:Landroid/content/Context;

    if-ne v3, p0, :cond_1

    goto :goto_1

    .line 22
    :cond_3
    new-instance v2, Lrb;

    invoke-direct {v2, p0}, Lrb;-><init>(Landroid/content/Context;)V

    .line 23
    iget-object p0, v0, Lnb;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v2

    .line 24
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcb;)I
    .locals 3

    .line 65
    iget-object v0, p0, Lrb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 66
    iget-object v2, p0, Lrb;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldb;

    iget-object v2, v2, Ldb;->b:Lcb;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a()Lqb;
    .locals 1

    .line 25
    invoke-static {}, Lrb;->e()V

    .line 26
    sget-object v0, Lrb;->c:Lnb;

    invoke-virtual {v0}, Lnb;->b()Lqb;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 31
    invoke-static {}, Lrb;->e()V

    .line 32
    sget-object v0, Lrb;->c:Lnb;

    invoke-virtual {v0}, Lnb;->a()Lqb;

    move-result-object v0

    .line 33
    sget-object v1, Lrb;->c:Lnb;

    invoke-virtual {v1}, Lnb;->c()Lqb;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 34
    sget-object v1, Lrb;->c:Lnb;

    invoke-virtual {v1, v0, p1}, Lnb;->a(Lqb;I)V

    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lrb;->c:Lnb;

    invoke-virtual {v0}, Lnb;->b()Lqb;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnb;->a(Lqb;I)V

    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported reason to unselect route"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(LS5;)V
    .locals 2

    .line 67
    sget-object v0, Lrb;->c:Lnb;

    .line 68
    iput-object p1, v0, Lnb;->u:LS5;

    if-eqz p1, :cond_0

    .line 69
    new-instance v1, Lkb;

    invoke-direct {v1, v0, p1}, Lkb;-><init>(Lnb;LS5;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 70
    :goto_0
    iget-object p1, v0, Lnb;->s:Lkb;

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Lkb;->a()V

    .line 72
    :cond_1
    iput-object v1, v0, Lnb;->s:Lkb;

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v0}, Lnb;->e()V

    :cond_2
    return-void
.end method

.method public a(Lbb;Lcb;I)V
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 47
    invoke-static {}, Lrb;->e()V

    .line 48
    invoke-virtual {p0, p2}, Lrb;->a(Lcb;)I

    move-result v0

    if-gez v0, :cond_0

    .line 49
    new-instance v0, Ldb;

    invoke-direct {v0, p0, p2}, Ldb;-><init>(Lrb;Lcb;)V

    .line 50
    iget-object p2, p0, Lrb;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    iget-object p2, p0, Lrb;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ldb;

    :goto_0
    const/4 p2, 0x0

    .line 52
    iget v1, v0, Ldb;->d:I

    not-int v2, v1

    and-int/2addr v2, p3

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    or-int p2, v1, p3

    .line 53
    iput p2, v0, Ldb;->d:I

    const/4 p2, 0x1

    .line 54
    :cond_1
    iget-object p3, v0, Ldb;->c:Lbb;

    if-eqz p3, :cond_4

    .line 55
    invoke-virtual {p3}, Lbb;->a()V

    .line 56
    invoke-virtual {p1}, Lbb;->a()V

    .line 57
    iget-object p3, p3, Lbb;->b:Ljava/util/List;

    iget-object v1, p1, Lbb;->b:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 58
    new-instance p2, Lab;

    iget-object p3, v0, Ldb;->c:Lbb;

    invoke-direct {p2, p3}, Lab;-><init>(Lbb;)V

    .line 59
    invoke-virtual {p2, p1}, Lab;->a(Lbb;)Lab;

    .line 60
    invoke-virtual {p2}, Lab;->a()Lbb;

    move-result-object p1

    iput-object p1, v0, Ldb;->c:Lbb;

    const/4 p2, 0x1

    :cond_2
    if-eqz p2, :cond_3

    .line 61
    sget-object p1, Lrb;->c:Lnb;

    invoke-virtual {p1}, Lnb;->d()V

    :cond_3
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 62
    throw p1

    .line 63
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lqb;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 27
    invoke-static {}, Lrb;->e()V

    .line 28
    sget-object v0, Lrb;->c:Lnb;

    const/4 v1, 0x3

    .line 29
    invoke-virtual {v0, p1, v1}, Lnb;->a(Lqb;I)V

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lbb;I)Z
    .locals 7

    if-eqz p1, :cond_6

    .line 37
    invoke-static {}, Lrb;->e()V

    .line 38
    sget-object v0, Lrb;->c:Lnb;

    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {p1}, Lbb;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_1

    .line 40
    iget-boolean v1, v0, Lnb;->k:Z

    if-eqz v1, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_3

    .line 41
    :cond_1
    iget-object v1, v0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    .line 42
    iget-object v5, v0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqb;

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_2

    .line 43
    invoke-virtual {v5}, Lqb;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v5, p1}, Lqb;->a(Lbb;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return v2

    :cond_5
    const/4 p1, 0x0

    .line 45
    throw p1

    .line 46
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3

    .line 6
    sget-object v0, Lrb;->c:Lnb;

    .line 7
    iget-object v1, v0, Lnb;->s:Lkb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v1, Lkb;->a:LS5;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, LS5;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lnb;->u:LS5;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, LS5;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method public b(Lcb;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    invoke-virtual {p0, p1}, Lrb;->a(Lcb;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Lrb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    sget-object p1, Lrb;->c:Lnb;

    invoke-virtual {p1}, Lnb;->d()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    sget-object v0, Lrb;->c:Lnb;

    .line 3
    iget-object v0, v0, Lnb;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()Lqb;
    .locals 1

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    sget-object v0, Lrb;->c:Lnb;

    invoke-virtual {v0}, Lnb;->c()Lqb;

    move-result-object v0

    return-object v0
.end method
