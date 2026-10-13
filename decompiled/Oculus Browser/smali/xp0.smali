.class public Lxp0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, LPY;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OmniboxSearchEngineLogo"

    .line 3
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lxp0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object p1

    .line 6
    invoke-interface {p1}, LF01;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
