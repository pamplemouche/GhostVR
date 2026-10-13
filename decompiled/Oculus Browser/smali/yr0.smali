.class public final synthetic Lyr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lzr0;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzr0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyr0;->a:Lzr0;

    iput-object p2, p0, Lyr0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lyr0;->a:Lzr0;

    iget-object v1, p0, Lyr0;->b:Ljava/lang/String;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v2, v0, Lzr0;->y:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lle1;

    .line 5
    iget-object v5, v0, Lzr0;->A:LTr0;

    check-cast v5, Lmr0;

    invoke-virtual {v5, v4}, Lmr0;->a(Lle1;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v3, LPr0;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v5}, LPr0;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iput-boolean v6, v3, LPr0;->c:Z

    .line 8
    invoke-virtual {v3}, LPr0;->a()LQr0;

    move-result-object v3

    .line 9
    sget-object v5, LKr0;->a:Lke1;

    invoke-virtual {v4, v5, v3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 10
    iget-object p1, v0, Lzr0;->A:LTr0;

    check-cast p1, Lmr0;

    invoke-virtual {p1}, Lmr0;->h()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
