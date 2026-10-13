.class public Lorg/chromium/base/ApplicationStatus;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Map;

.field public static b:I

.field public static c:Ljava/lang/Object;

.field public static d:Ljava/lang/Integer;

.field public static e:Landroid/app/Activity;

.field public static f:LlT;

.field public static final g:LWT;

.field public static final h:LWT;

.field public static final i:LWT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    sput v0, Lorg/chromium/base/ApplicationStatus;->b:I

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    .line 6
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    .line 7
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->i:LWT;

    return-void
.end method

.method public static a()I
    .locals 8

    .line 49
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->d:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/chromium/base/ApplicationStatus;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 51
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 52
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LjT;

    .line 54
    iget v4, v4, LjT;->a:I

    const/4 v6, 0x5

    if-eq v4, v5, :cond_2

    if-eq v4, v6, :cond_2

    const/4 v7, 0x6

    if-eq v4, v7, :cond_2

    return v2

    :cond_2
    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const/4 v0, 0x2

    return v0

    :cond_5
    if-eqz v3, :cond_6

    const/4 v0, 0x3

    return v0

    :cond_6
    return v5

    :catchall_0
    move-exception v1

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2

    const/4 v0, 0x6

    if-nez p0, :cond_0

    return v0

    .line 38
    :cond_0
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LjT;

    if-eqz p0, :cond_1

    .line 39
    iget v0, p0, LjT;->a:I

    :cond_1
    return v0
.end method

.method public static a(I)V
    .locals 2

    .line 11
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/chromium/base/ApplicationStatus;->d:Ljava/lang/Integer;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlT;

    .line 15
    invoke-interface {v1, p0}, LlT;->a(I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 5

    if-eqz p0, :cond_7

    .line 17
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 18
    :cond_0
    sput-object p0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 19
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    .line 20
    sget-object v2, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    monitor-enter v2

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    .line 21
    :try_start_0
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    new-instance v4, LjT;

    invoke-direct {v4, v3}, LjT;-><init>(LeT;)V

    invoke-interface {v1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_2
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LjT;

    .line 23
    iput p1, v1, LjT;->a:I

    const/4 v4, 0x6

    if-ne p1, v4, :cond_3

    .line 24
    sget-object v4, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v4, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    if-ne p0, v4, :cond_3

    sput-object v3, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 26
    :cond_3
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->a()I

    move-result v3

    sput v3, Lorg/chromium/base/ApplicationStatus;->b:I

    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v1, v1, LjT;->b:LWT;

    .line 29
    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LkT;

    .line 30
    invoke-interface {v2, p0, p1}, LkT;->onActivityStateChange(Landroid/app/Activity;I)V

    goto :goto_0

    .line 31
    :cond_4
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LkT;

    .line 32
    invoke-interface {v2, p0, p1}, LkT;->onActivityStateChange(Landroid/app/Activity;I)V

    goto :goto_1

    .line 33
    :cond_5
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result p0

    if-eq p0, v0, :cond_6

    .line 34
    sget-object p1, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlT;

    .line 35
    invoke-interface {v0, p0}, LlT;->a(I)V

    goto :goto_2

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 37
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null activity is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x4

    .line 2
    :try_start_0
    sput v1, Lorg/chromium/base/ApplicationStatus;->b:I

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, LeT;

    invoke-direct {v0}, LeT;-><init>()V

    .line 5
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->i:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, LfT;

    invoke-direct {v0}, LfT;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    instance-of v0, p0, LnT;

    if-eqz v0, :cond_0

    .line 8
    check-cast p0, LnT;

    .line 9
    new-instance v0, LgT;

    invoke-direct {v0}, LgT;-><init>()V

    invoke-interface {p0, v0}, LnT;->registerPanelLifecycleCallbacks(LmT;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(LkT;)V
    .locals 3

    .line 43
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LjT;

    .line 46
    iget-object v2, v2, LjT;->b:LWT;

    .line 47
    invoke-virtual {v2, p0}, LWT;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(LkT;Landroid/app/Activity;)V
    .locals 1

    .line 40
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LjT;

    .line 41
    iget-object p1, p1, LjT;->b:LWT;

    .line 42
    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 3

    .line 1
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static getStateForApplication()I
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->a:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lorg/chromium/base/ApplicationStatus;->b:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static hasVisibleActivities()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static registerThreadSafeNativeApplicationStateListener()V
    .locals 1

    .line 1
    new-instance v0, LiT;

    invoke-direct {v0}, LiT;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void
.end method
