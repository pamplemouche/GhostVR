.class public La90;
.super LH10;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {}, Lb90;->c()Lb90;

    move-result-object p1

    invoke-virtual {p1}, Lb90;->b()V

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 0

    .line 1
    invoke-static {}, Lb90;->c()Lb90;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, LV80;->a:LW80;

    .line 3
    invoke-virtual {p1}, LW80;->b()V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LZ80;

    invoke-direct {p2, p3}, LZ80;-><init>(LKR0;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public c()Z
    .locals 1

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->h()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
