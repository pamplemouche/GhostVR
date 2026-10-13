.class public LaC0;
.super LuC0;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1
    invoke-direct {p0, v0, v1}, LuC0;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v0

    invoke-virtual {v0}, LOT0;->c()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-virtual {p0}, LaC0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object p1

    invoke-virtual {p1}, LOT0;->a()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1}, LuC0;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130143

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f130142

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LuC0;->a(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LaC0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->b()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, LJ/N;->Mf7wdfcH(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
