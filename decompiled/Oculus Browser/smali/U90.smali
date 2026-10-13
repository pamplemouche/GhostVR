.class public LU90;
.super LOa;
.source "PG"


# instance fields
.field public x:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LOa;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget-object p1, LN90;->a:Lorg/chromium/base/Callback;

    invoke-static {p0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    new-instance v1, LM90;

    invoke-direct {v1, v0}, LM90;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {p0, v1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, LU90;

    invoke-direct {v0, p0}, LU90;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final synthetic a(Landroid/graphics/drawable/Animatable;)V
    .locals 2

    .line 5
    instance-of v0, p0, LF0;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, LF0;

    .line 7
    sget-object v0, LT90;->a:LR90;

    .line 8
    check-cast p0, LK0;

    invoke-virtual {p0, v0}, LK0;->a(LE0;)V

    goto :goto_0

    .line 9
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    instance-of v0, p0, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_1

    .line 10
    check-cast p0, Landroid/graphics/drawable/Animatable2;

    .line 11
    sget-object v0, LS90;->a:LP90;

    .line 12
    invoke-interface {p0, v0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 13
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 14
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p0, v0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    .line 17
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    instance-of v0, p0, Landroid/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_3

    .line 18
    check-cast p0, Landroid/graphics/drawable/DrawableWrapper;

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 20
    invoke-static {p0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    goto :goto_1

    .line 21
    :cond_3
    instance-of v0, p0, LOa;

    if-eqz v0, :cond_4

    .line 22
    check-cast p0, LOa;

    .line 23
    iget-object p0, p0, LOa;->w:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-static {p0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    goto :goto_1

    .line 25
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_5

    .line 26
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 28
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_5
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_6

    .line 30
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 32
    invoke-static {p0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    goto :goto_1

    .line 33
    :cond_6
    instance-of v0, p0, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_7

    .line 34
    check-cast p0, Landroid/graphics/drawable/RotateDrawable;

    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 36
    invoke-static {p0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    goto :goto_1

    .line 37
    :cond_7
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_8

    .line 38
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    .line 39
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 40
    :try_start_0
    invoke-static {p0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_8
    :goto_1
    return-void
.end method

.method public static final synthetic b(Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public static final synthetic c(Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method


# virtual methods
.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, LOa;->setVisible(ZZ)Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 2
    iget-boolean p1, p0, LU90;->x:Z

    if-nez p1, :cond_2

    .line 3
    :cond_0
    sget-object p1, LK90;->a:Lorg/chromium/base/Callback;

    invoke-static {p0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, LL90;->a:Lorg/chromium/base/Callback;

    invoke-static {p0, p1}, LU90;->a(Landroid/graphics/drawable/Drawable;Lorg/chromium/base/Callback;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, LU90;->x:Z

    return v0
.end method
