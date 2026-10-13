.class public LcM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lti0;
.implements LeL0;


# instance fields
.field public final A:LkQ0;

.field public final B:LfY;

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public G:Lorg/chromium/chrome/browser/tab/Tab;

.field public H:Z

.field public I:I

.field public J:F

.field public K:F

.field public L:Z

.field public final w:Landroid/view/Window;

.field public final x:Z

.field public final y:Lw30;

.field public final z:LbM0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, LcM0;->w:Landroid/view/Window;

    .line 3
    invoke-virtual {p1}, LBg0;->S()Z

    move-result v0

    iput-boolean v0, p0, LcM0;->x:Z

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->G0()V

    const/4 v0, 0x0

    iput-object v0, p0, LcM0;->y:Lw30;

    .line 5
    iput-object p1, p0, LcM0;->z:LbM0;

    .line 6
    new-instance v1, LZL0;

    invoke-direct {v1, p0}, LZL0;-><init>(LcM0;)V

    iput-object v1, p0, LcM0;->A:LkQ0;

    .line 7
    invoke-virtual {p1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, LAO0;->b(Landroid/content/res/Resources;Z)I

    move-result v3

    iput v3, p0, LcM0;->C:I

    const/4 v3, 0x1

    .line 9
    invoke-static {v1, v3}, LAO0;->b(Landroid/content/res/Resources;Z)I

    move-result v4

    iput v4, p0, LcM0;->D:I

    .line 10
    invoke-static {v1, v2}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v2

    iput v2, p0, LcM0;->E:I

    .line 11
    invoke-static {v1, v3}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v1

    iput v1, p0, LcM0;->F:I

    .line 12
    new-instance v1, LaM0;

    .line 13
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->l0()V

    invoke-direct {v1, p0}, LaM0;-><init>(LcM0;)V

    throw v0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 6

    .line 8
    sget-object v0, Lwc1;->b:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lwc1;->b:Ljava/lang/Boolean;

    .line 10
    sget-object v0, Lwc1;->a:Ljava/util/Map;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Lwc1;->a:Ljava/util/Map;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lwc1;->b:Ljava/lang/Boolean;

    .line 14
    :cond_1
    sget-object v0, Lwc1;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 15
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    const/4 v1, 0x1

    .line 16
    :cond_3
    iget-object v0, p0, LcM0;->w:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, -0x1000000

    if-eqz v1, :cond_5

    .line 18
    iget p2, p0, LcM0;->I:I

    if-nez p2, :cond_4

    const p2, 0x7f060028

    .line 19
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 20
    iput p2, p0, LcM0;->I:I

    .line 21
    :cond_4
    iget p2, p0, LcM0;->I:I

    ushr-int/lit8 v1, p2, 0x18

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    and-int/2addr p2, v4

    .line 22
    iget v3, p0, LcM0;->J:F

    mul-float v3, v3, v1

    invoke-static {p1, p2, v3}, LAO0;->a(IIF)I

    move-result p1

    .line 23
    invoke-static {p1}, LAO0;->d(I)Z

    move-result p2

    xor-int/2addr p2, v2

    .line 24
    invoke-static {v0, p2}, LdT;->a(Landroid/view/View;Z)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    const/high16 p1, -0x1000000

    goto :goto_1

    .line 25
    :cond_6
    invoke-static {p1}, LAO0;->a(I)I

    move-result v4

    move p1, v4

    .line 26
    :goto_1
    iget-object p2, p0, LcM0;->w:Landroid/view/Window;

    invoke-static {p2, p1}, LdT;->a(Landroid/view/Window;I)V

    return-void
.end method

.method public final a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LcM0;->b()I

    move-result v0

    .line 2
    iget-object v1, p0, LcM0;->z:LbM0;

    invoke-interface {v1}, LbM0;->y()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, LcM0;->z:LbM0;

    invoke-interface {p1}, LbM0;->A()Z

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 5
    sget-object v1, LxH0;->B:Ljava/lang/Class;

    invoke-virtual {p1, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p1

    check-cast p1, LxH0;

    .line 6
    iget-boolean p1, p1, LxH0;->A:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, v0, p1}, LcM0;->a(IZ)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, LcM0;->z:LbM0;

    invoke-interface {v0}, LbM0;->y()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, LcM0;->x:Z

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, LcM0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    .line 5
    :cond_2
    iget-object v0, p0, LcM0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_3

    invoke-static {v0}, LxH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v0

    return v0

    .line 6
    :cond_3
    iget-boolean v0, p0, LcM0;->H:Z

    if-eqz v0, :cond_4

    iget v0, p0, LcM0;->F:I

    goto :goto_0

    :cond_4
    iget v0, p0, LcM0;->E:I

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, LcM0;->B:LfY;

    invoke-virtual {v0}, LfY;->destroy()V

    const/4 v0, 0x0

    throw v0
.end method
