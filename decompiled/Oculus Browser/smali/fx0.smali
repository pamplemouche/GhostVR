.class public Lfx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final synthetic a:Landroid/util/SparseArray;

.field public final synthetic b:Lorg/chromium/ui/base/WindowAndroid;

.field public final synthetic c:Lorg/chromium/chrome/browser/tab/Tab;

.field public final synthetic d:[I

.field public final synthetic e:Lhx0;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfx0;->a:Landroid/util/SparseArray;

    iput-object p2, p0, Lfx0;->b:Lorg/chromium/ui/base/WindowAndroid;

    iput-object p3, p0, Lfx0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    iput-object p4, p0, Lfx0;->d:[I

    iput-object p5, p0, Lfx0;->e:Lhx0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3
    :goto_0
    array-length v6, p2

    const/4 v7, -0x1

    if-ge v4, v6, :cond_4

    .line 4
    aget v6, p2, v4

    if-ne v6, v7, :cond_3

    .line 5
    aget-object v6, p1, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v6, p0, Lfx0;->a:Landroid/util/SparseArray;

    aget-object v8, p1, v4

    const/4 v9, 0x0

    .line 7
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 8
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 9
    :goto_2
    array-length v12, v10

    if-ge v11, v12, :cond_1

    .line 10
    aget-object v12, v10, v11

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 11
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    goto :goto_3

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 12
    :cond_2
    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v6, p0, Lfx0;->b:Lorg/chromium/ui/base/WindowAndroid;

    aget-object v7, p1, v4

    invoke-virtual {v6, v7}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lfx0;->b:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz v5, :cond_9

    .line 15
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    if-eqz p1, :cond_9

    .line 16
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p2

    const/4 v1, 0x2

    const/16 v2, 0xa

    const/16 v4, 0x9

    if-ne p2, v1, :cond_5

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 18
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const v7, 0x7f130352

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ne p2, v3, :cond_8

    const/4 p2, 0x5

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const v7, 0x7f130351

    goto :goto_4

    .line 24
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const v7, 0x7f130353

    goto :goto_4

    .line 26
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 27
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const v7, 0x7f130350

    .line 28
    :cond_8
    :goto_4
    new-instance p2, Ldx0;

    iget-object v0, p0, Lfx0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lfx0;->d:[I

    iget-object v2, p0, Lfx0;->e:Lhx0;

    invoke-direct {p2, v0, v1, v2}, Ldx0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)V

    iget-object v0, p0, Lfx0;->e:Lhx0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v1, Lex0;

    invoke-direct {v1, v0}, Lex0;-><init>(Lhx0;)V

    .line 30
    invoke-static {p1, v7, p2, v1}, Lix0;->a(Landroid/app/Activity;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_5

    .line 31
    :cond_9
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 32
    iget-object p1, p0, Lfx0;->e:Lhx0;

    invoke-interface {p1}, Lhx0;->onAndroidPermissionAccepted()V

    goto :goto_5

    .line 33
    :cond_a
    iget-object p1, p0, Lfx0;->e:Lhx0;

    invoke-interface {p1}, Lhx0;->onAndroidPermissionCanceled()V

    :goto_5
    return-void
.end method
