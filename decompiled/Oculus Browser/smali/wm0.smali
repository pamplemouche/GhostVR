.class public Lwm0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lam0;

.field public b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lam0;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwm0;->a:Lam0;

    .line 3
    iput-object p2, p0, Lwm0;->b:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    sget-object v1, Lum0;->b:Ljava/util/Set;

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    sget-object v3, Lum0;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrm0;

    .line 41
    iget-object v2, v2, Lrm0;->d:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    sget-object v1, Lum0;->b:Ljava/util/Set;

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lwm0;->a(Ljava/util/Collection;Ljava/util/Collection;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "default_channel_id"

    .line 32
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 33
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-static {p1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0, v0, p1, v1}, Lwm0;->a(Ljava/util/Collection;Ljava/util/Collection;Z)V

    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lvm0;->a(Ljava/lang/String;)Lsm0;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lwm0;->b:Landroid/content/res/Resources;

    .line 6
    invoke-virtual {v2, v3}, Lsm0;->a(Landroid/content/res/Resources;)Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "web:"

    .line 9
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    .line 10
    :cond_2
    sget-object v2, Lum0;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrm0;

    if-eqz v2, :cond_5

    move-object p2, v2

    :goto_2
    if-nez p2, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v2, p2, Lrm0;->d:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Lvm0;->a(Ljava/lang/String;)Lsm0;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lwm0;->b:Landroid/content/res/Resources;

    .line 14
    invoke-virtual {v2, v3}, Lsm0;->a(Landroid/content/res/Resources;)Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 15
    iget-object v3, p0, Lwm0;->b:Landroid/content/res/Resources;

    .line 16
    iget v4, p2, Lrm0;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 17
    new-instance v4, Landroid/app/NotificationChannel;

    iget-object v5, p2, Lrm0;->a:Ljava/lang/String;

    iget v6, p2, Lrm0;->c:I

    invoke-direct {v4, v5, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 18
    iget-object v3, p2, Lrm0;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 19
    iget-boolean p2, p2, Lrm0;->e:Z

    invoke-virtual {v4, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    if-nez p3, :cond_4

    const/4 p2, 0x0

    .line 20
    invoke-virtual {v4, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 21
    :cond_4
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Could not initialize channel: "

    invoke-static {p3, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lwm0;->a:Lam0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 26
    check-cast p3, Landroid/app/NotificationChannelGroup;

    move-object v0, p2

    check-cast v0, Lbm0;

    .line 27
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p3}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    goto :goto_3

    .line 28
    :cond_7
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lwm0;->a:Lam0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 30
    check-cast p3, Landroid/app/NotificationChannel;

    move-object v0, p2

    check-cast v0, Lbm0;

    .line 31
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_4

    :cond_8
    return-void
.end method
