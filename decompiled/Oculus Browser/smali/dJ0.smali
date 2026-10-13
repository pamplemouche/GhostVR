.class public LdJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# static fields
.field public static z:LdJ0;


# instance fields
.field public w:LcJ0;

.field public x:Ljava/util/List;

.field public y:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LbJ0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LbJ0;-><init>(LaJ0;)V

    iput-object v0, p0, LdJ0;->w:LcJ0;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LdJ0;->x:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LdJ0;->y:Ljava/util/Map;

    .line 5
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 6
    iget-object v2, p0, LdJ0;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()LdJ0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LdJ0;->z:LdJ0;

    if-nez v0, :cond_0

    new-instance v0, LdJ0;

    invoke-direct {v0}, LdJ0;-><init>()V

    sput-object v0, LdJ0;->z:LdJ0;

    .line 3
    :cond_0
    sget-object v0, LdJ0;->z:LdJ0;

    return-object v0
.end method


# virtual methods
.method public a(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, LdJ0;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, LdJ0;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpI0;

    if-eqz v2, :cond_0

    .line 6
    check-cast v2, LrI0;

    invoke-virtual {v2, p1}, LrI0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, LOH0;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8
    sget-object v0, LOH0;->a:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LLH0;

    check-cast p1, LhJ0;

    if-eqz p1, :cond_3

    return-object v1

    .line 10
    :cond_3
    throw v1

    :cond_4
    return-object v1
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    instance-of v0, p1, LcI0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, LcI0;

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, LdJ0;->y:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, LdJ0;->x:Ljava/util/List;

    iget-object v0, p0, LdJ0;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 5
    iget-object p2, p0, LdJ0;->x:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
