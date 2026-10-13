.class public LWH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModel;


# instance fields
.field public final a:LVH0;

.field public final b:LWT;

.field public c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(LVH0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LWH0;->b:LWT;

    .line 3
    iput-object p1, p0, LWH0;->a:LVH0;

    .line 4
    sget-object p1, LQH0;->a:LRH0;

    .line 5
    iput-object p1, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, LWH0;->e:Z

    .line 7
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 8
    instance-of v0, p1, LeI0;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, LeI0;

    invoke-interface {p1}, LeI0;->showIncognitoNotifications()Z

    move-result p1

    iput-boolean p1, p0, LWH0;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 5
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public a(II)V
    .locals 1

    .line 8
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(II)V

    return-void
.end method

.method public a(LlI0;)V
    .locals 1

    .line 43
    iget-object v0, p0, LWH0;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(LlI0;)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, LWH0;->d:Z

    .line 10
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 11
    iget-object v2, v0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    instance-of v2, v2, LRH0;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 12
    :cond_0
    iget-boolean v2, v0, LWH0;->e:Z

    if-eqz v2, :cond_2

    .line 13
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130208

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f130209

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f13014c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v6, 0x0

    .line 18
    new-instance v7, Lcm0;

    const/16 v8, 0x64

    const/4 v9, 0x2

    const-string v10, "incognito_tabs_open"

    invoke-direct {v7, v9, v10, v8}, Lcm0;-><init>(ILjava/lang/String;I)V

    const-string v8, "incognito"

    .line 19
    invoke-static {v1, v8, v6, v7}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v6

    .line 20
    invoke-interface {v6, v5}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v5

    .line 21
    invoke-static {v2}, LQe0;->a(Landroid/content/Context;)Lpm0;

    move-result-object v6

    .line 22
    invoke-interface {v5, v6}, LPl0;->b(Lpm0;)LPl0;

    move-result-object v5

    .line 23
    invoke-interface {v5, v4}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object v4

    .line 24
    invoke-interface {v4, v1}, LPl0;->d(Z)LPl0;

    move-result-object v4

    const/4 v5, -0x1

    .line 25
    invoke-interface {v4, v5}, LPl0;->a(I)LPl0;

    move-result-object v4

    const v5, 0x7f080235

    .line 26
    invoke-interface {v4, v5}, LPl0;->c(I)LPl0;

    move-result-object v4

    .line 27
    invoke-interface {v4, v3}, LPl0;->b(Z)LPl0;

    move-result-object v4

    .line 28
    invoke-interface {v4, v1}, LPl0;->c(Z)LPl0;

    move-result-object v1

    const-string v4, "Incognito"

    .line 29
    invoke-interface {v1, v4}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object v1

    .line 30
    new-instance v4, Lbm0;

    invoke-direct {v4, v2}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-interface {v1}, LPl0;->b()LOl0;

    move-result-object v1

    .line 32
    invoke-virtual {v4, v1}, Lbm0;->a(LOl0;)V

    .line 33
    sget-object v2, Lnm0;->a:Lom0;

    .line 34
    iget-object v1, v1, LOl0;->a:Landroid/app/Notification;

    .line 35
    invoke-virtual {v2, v9, v1}, Lom0;->a(ILandroid/app/Notification;)V

    .line 36
    :cond_2
    iget-object v1, v0, LWH0;->a:LVH0;

    check-cast v1, LXH0;

    .line 37
    new-instance v2, LkI0;

    iget-object v7, v1, LXH0;->a:LbI0;

    iget-object v8, v1, LXH0;->b:LbI0;

    iget-object v9, v1, LXH0;->c:LEI0;

    iget-object v10, v1, LXH0;->d:LmI0;

    iget-object v11, v1, LXH0;->e:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget-object v12, v1, LXH0;->f:LYI0;

    iget-object v13, v1, LXH0;->g:LfI0;

    const/4 v14, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v14}, LkI0;-><init>(ZZLbI0;LbI0;LEI0;LmI0;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;LYI0;LfI0;Z)V

    .line 38
    iput-object v2, v0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 39
    iget-object v1, v0, LWH0;->b:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LlI0;

    .line 40
    iget-object v4, v0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v4, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    goto :goto_1

    .line 41
    :cond_3
    :goto_2
    iget-object v1, v0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-interface {v1, v2, v4, v5}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;II)V

    .line 42
    iput-boolean v3, v0, LWH0;->d:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 6
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(ZZ)V

    .line 7
    invoke-virtual {p0}, LWH0;->b()V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, LWH0;->b()V

    return p1
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
    .locals 1

    .line 3
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    move-result p1

    .line 4
    invoke-virtual {p0}, LWH0;->b()V

    return p1
.end method

.method public b(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .line 27
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, LdI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 7

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-virtual {p0}, LWH0;->e()LdI0;

    move-result-object v0

    invoke-interface {v0}, LdI0;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 3
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    instance-of v0, v0, LRH0;

    if-nez v0, :cond_a

    iget-boolean v0, p0, LWH0;->d:Z

    if-eqz v0, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    invoke-virtual {p0}, LWH0;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 5
    iget-object v2, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->destroy()V

    if-eqz v0, :cond_9

    .line 6
    iget-object v2, p0, LWH0;->a:LVH0;

    check-cast v2, LXH0;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 7
    sget-object v2, LSe0;->b:LSe0;

    if-nez v2, :cond_2

    .line 8
    new-instance v2, LSe0;

    invoke-direct {v2}, LSe0;-><init>()V

    sput-object v2, LSe0;->b:LSe0;

    .line 9
    :cond_2
    sget-object v2, LSe0;->b:LSe0;

    .line 10
    iget-object v2, v2, LSe0;->a:Ljava/util/List;

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LRe0;

    .line 12
    check-cast v4, LNH0;

    if-eqz v4, :cond_5

    .line 13
    sget-object v4, LOH0;->a:Landroid/util/SparseArray;

    const/4 v5, 0x0

    .line 14
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 15
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LLH0;

    check-cast v6, LhJ0;

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_4
    throw v3

    .line 17
    :cond_5
    throw v3

    .line 18
    :cond_6
    iget-boolean v1, p0, LWH0;->e:Z

    if-eqz v1, :cond_7

    .line 19
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v2, "notification"

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v2, "incognito_tabs_open"

    const/16 v3, 0x64

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 22
    :cond_7
    iget-wide v1, v0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 23
    invoke-static {v1, v2, v0}, LJ/N;->MScIZBOB(JLjava/lang/Object;)V

    goto :goto_2

    .line 24
    :cond_8
    throw v3

    .line 25
    :cond_9
    :goto_2
    sget-object v0, LQH0;->a:LRH0;

    .line 26
    iput-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    :cond_a
    :goto_3
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 29
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(I)V

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 28
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    return-void
.end method

.method public b(LlI0;)V
    .locals 1

    .line 30
    iget-object v0, p0, LWH0;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    return-void
.end method

.method public c()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .line 1
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    instance-of v1, v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :cond_1
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    return-object v0
.end method

.method public c(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 6
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->c(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 7
    invoke-virtual {p0}, LWH0;->b()V

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 5
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, LdI0;->c(I)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LWH0;->e()LdI0;

    move-result-object v0

    invoke-interface {v0}, LdI0;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->d()V

    .line 3
    invoke-virtual {p0}, LWH0;->b()V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 4
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->d(I)V

    .line 5
    invoke-virtual {p0}, LWH0;->b()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->destroy()V

    return-void
.end method

.method public e()LdI0;
    .locals 1

    .line 1
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->e()LdI0;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, LdI0;->getCount()I

    move-result v0

    return v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public index()I
    .locals 1

    .line 1
    iget-object v0, p0, LWH0;->c:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, LdI0;->index()I

    move-result v0

    return v0
.end method

.method public isCurrentModel()Z
    .locals 2

    .line 1
    iget-object v0, p0, LWH0;->a:LVH0;

    check-cast v0, LXH0;

    .line 2
    iget-object v0, v0, LXH0;->g:LfI0;

    check-cast v0, LwI0;

    .line 3
    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    invoke-virtual {p0}, LWH0;->a()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
