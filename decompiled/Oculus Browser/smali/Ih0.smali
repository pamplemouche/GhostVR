.class public LIh0;
.super LCc1;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LCc1;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-static {p1}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lpl0;->y:Lpl0;

    .line 5
    invoke-virtual {v1, v0}, Lpl0;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lrc1;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
