.class public final LJb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LIb;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/content/pm/PackageManager;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public final g:Landroid/content/BroadcastReceiver;

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;LIb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJb;->e:Ljava/util/ArrayList;

    .line 3
    new-instance v0, LGb;

    invoke-direct {v0, p0}, LGb;-><init>(LJb;)V

    iput-object v0, p0, LJb;->g:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v0, LHb;

    invoke-direct {v0, p0}, LHb;-><init>(LJb;)V

    iput-object v0, p0, LJb;->h:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, LJb;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, LJb;->b:LIb;

    .line 7
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, LJb;->c:Landroid/os/Handler;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, LJb;->d:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    iget-boolean v0, p0, LJb;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MediaRouteProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, LJb;->d:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_1

    .line 5
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 6
    iget-object v7, p0, LJb;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    .line 7
    iget-object v9, p0, LJb;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LFb;

    .line 8
    iget-object v10, v9, LFb;->i:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v9, v9, LFb;->i:Landroid/content/ComponentName;

    .line 9
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, -0x1

    :goto_3
    if-gez v8, :cond_6

    .line 10
    new-instance v5, LFb;

    iget-object v6, p0, LJb;->a:Landroid/content/Context;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, LFb;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 11
    iget-boolean v3, v5, LFb;->l:Z

    if-nez v3, :cond_5

    .line 12
    iput-boolean v4, v5, LFb;->l:Z

    .line 13
    invoke-virtual {v5}, LFb;->e()V

    .line 14
    :cond_5
    iget-object v3, p0, LJb;->e:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    iget-object v1, p0, LJb;->b:LIb;

    check-cast v1, Lnb;

    invoke-virtual {v1, v5}, Lnb;->a(LYa;)V

    :goto_4
    move v1, v4

    goto :goto_0

    :cond_6
    if-lt v8, v1, :cond_1

    .line 16
    iget-object v3, p0, LJb;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LFb;

    .line 17
    iget-boolean v5, v3, LFb;->l:Z

    if-nez v5, :cond_7

    .line 18
    iput-boolean v4, v3, LFb;->l:Z

    .line 19
    invoke-virtual {v3}, LFb;->e()V

    .line 20
    :cond_7
    iget-object v4, v3, LFb;->n:LBb;

    if-nez v4, :cond_8

    invoke-virtual {v3}, LFb;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 21
    invoke-virtual {v3}, LFb;->d()V

    .line 22
    invoke-virtual {v3}, LFb;->a()V

    .line 23
    :cond_8
    iget-object v3, p0, LJb;->e:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v8, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_4

    .line 24
    :cond_9
    iget-object v0, p0, LJb;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 25
    iget-object v0, p0, LJb;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_5
    if-lt v0, v1, :cond_d

    .line 26
    iget-object v3, p0, LJb;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LFb;

    .line 27
    iget-object v4, p0, LJb;->b:LIb;

    check-cast v4, Lnb;

    .line 28
    invoke-virtual {v4, v3}, Lnb;->b(LYa;)I

    move-result v5

    if-ltz v5, :cond_b

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    .line 29
    invoke-static {}, Lrb;->e()V

    .line 30
    iput-object v6, v3, LYa;->d:LUa;

    .line 31
    invoke-virtual {v3, v6}, LYa;->b(LTa;)V

    .line 32
    iget-object v7, v4, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lob;

    .line 33
    invoke-virtual {v4, v7, v6}, Lnb;->a(Lob;LZa;)V

    .line 34
    iget-object v6, v4, Lnb;->i:Lgb;

    const/16 v8, 0x202

    invoke-virtual {v6, v8, v7}, Lgb;->a(ILjava/lang/Object;)V

    .line 35
    iget-object v4, v4, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 36
    :cond_a
    throw v6

    .line 37
    :cond_b
    :goto_6
    iget-object v4, p0, LJb;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    iget-boolean v4, v3, LFb;->l:Z

    if-eqz v4, :cond_c

    .line 39
    iput-boolean v2, v3, LFb;->l:Z

    .line 40
    invoke-virtual {v3}, LFb;->e()V

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_d
    return-void
.end method
