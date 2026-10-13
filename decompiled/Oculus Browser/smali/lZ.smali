.class public LlZ;
.super LkZ;
.source "PG"


# instance fields
.field public y:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LkZ;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LlZ;->y:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSafeInset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDisplayCutout"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Left"

    .line 3
    invoke-virtual {p0, v0, v1}, LlZ;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Top"

    .line 4
    invoke-virtual {p0, v0, v2}, LlZ;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    const-string v3, "Right"

    .line 5
    invoke-virtual {p0, v0, v3}, LlZ;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    const-string v4, "Bottom"

    .line 6
    invoke-virtual {p0, v0, v4}, LlZ;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 7
    iget-object v4, p0, LlZ;->y:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-ne v5, v1, :cond_0

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ne v5, v2, :cond_0

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-ne v5, v3, :cond_0

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v0, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    iget-object v4, p0, LlZ;->y:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object v0, p0, LnZ;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LmZ;

    .line 10
    iget-object v2, p0, LlZ;->y:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, LmZ;->a(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 11
    :cond_1
    :goto_2
    invoke-super {p0, p1}, LkZ;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-object p1
.end method
