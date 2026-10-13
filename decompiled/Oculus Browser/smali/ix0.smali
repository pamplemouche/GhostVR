.class public abstract Lix0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/app/Activity;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    move-object v0, p0

    check-cast v0, LCd1;

    .line 2
    invoke-interface {v0}, LCd1;->o()LBd1;

    move-result-object v0

    .line 3
    new-instance v1, Lgx0;

    invoke-direct {v1, p2, v0, p3}, Lgx0;-><init>(Ljava/lang/Runnable;LBd1;Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e01d5

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b047a

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    sget-object p1, LEd1;->q:[LUd1;

    .line 8
    invoke-static {p1}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object p1

    .line 9
    sget-object p3, LEd1;->f:Lke1;

    .line 10
    new-instance v3, Lbe1;

    invoke-direct {v3, v2}, Lbe1;-><init>(LVd1;)V

    .line 11
    iput-object p2, v3, Lbe1;->a:Ljava/lang/Object;

    .line 12
    invoke-interface {p1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p2, LEd1;->m:Lhe1;

    const/4 p3, 0x1

    .line 14
    new-instance v3, LWd1;

    invoke-direct {v3, v2}, LWd1;-><init>(LVd1;)V

    .line 15
    iput-boolean p3, v3, LWd1;->a:Z

    .line 16
    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p2, LEd1;->g:Lke1;

    const p3, 0x7f130354

    .line 18
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance p3, Lbe1;

    invoke-direct {p3, v2}, Lbe1;-><init>(LVd1;)V

    .line 20
    iput-object p0, p3, Lbe1;->a:Ljava/lang/Object;

    .line 21
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p0, LEd1;->a:Lfe1;

    .line 23
    new-instance p2, Lbe1;

    invoke-direct {p2, v2}, Lbe1;-><init>(LVd1;)V

    .line 24
    iput-object v1, p2, Lbe1;->a:Ljava/lang/Object;

    .line 25
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance p0, Lle1;

    invoke-direct {p0, p1, v2}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {v0, p0, p1, p1}, LBd1;->a(Lle1;IZ)V

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)Z
    .locals 10

    .line 28
    iget-object v6, p0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    .line 29
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 30
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 31
    aget v1, p1, v0

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getAndroidPermissionsForContentSetting(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 32
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 33
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 34
    aget-object v4, v1, v3

    .line 35
    invoke-virtual {v6, v4}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 37
    aget v1, p1, v0

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 39
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_5
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    return v7

    .line 41
    :cond_6
    new-instance v9, Lfx0;

    move-object v0, v9

    move-object v1, v8

    move-object v2, v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lfx0;-><init>(Landroid/util/SparseArray;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)V

    .line 42
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 43
    :goto_3
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v7, p1, :cond_7

    .line 44
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 45
    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 46
    :cond_7
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 47
    invoke-virtual {v6, p0, v9}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    .line 48
    invoke-virtual {v6}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
