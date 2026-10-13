.class public final synthetic Lms0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lns0;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lns0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms0;->a:Lns0;

    iput-object p2, p0, Lms0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lms0;->a:Lns0;

    iget-object v1, p0, Lms0;->b:Ljava/lang/String;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v2, v0, Lns0;->x:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lle1;

    .line 5
    iget-object v5, v0, Lns0;->w:LTr0;

    check-cast v5, Lmr0;

    invoke-virtual {v5, v4}, Lmr0;->a(Lle1;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    sget-object v3, Lxs0;->d:Lke1;

    invoke-virtual {v4, v3, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 7
    iget-object p1, v0, Lns0;->w:LTr0;

    check-cast p1, Lmr0;

    invoke-virtual {p1}, Lmr0;->h()V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
