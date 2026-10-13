.class public Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;


# instance fields
.field public final a:J

.field public final b:LWT;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->MtOl9Oto(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a:J

    .line 4
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b:LWT;

    return-void
.end method

.method public static d()Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->c:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->c:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->c:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    return-object v0
.end method

.method private onFontScaleFactorChanged(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->c()F

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll00;

    .line 3
    invoke-interface {v2, p1, v0}, Ll00;->a(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onForceEnableZoomChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll00;

    .line 2
    invoke-interface {v1, p1}, Ll00;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a:J

    .line 6
    invoke-static {v0, v1, p0}, LJ/N;->MHphDsyg(JLjava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public final a(F)V
    .locals 5

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a()F

    move-result v0

    .line 8
    iget-wide v1, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a:J

    .line 9
    invoke-static {v1, v2, p0, p1}, LJ/N;->Mr3oVxR_(JLjava/lang/Object;F)V

    const/4 v1, 0x0

    const v2, 0x3fa66666    # 1.3f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    .line 10
    iget-wide v3, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a:J

    .line 11
    invoke-static {v3, v4, p0}, LJ/N;->MOnmBKet(JLjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a(ZZ)V

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 13
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v0, "user_set_force_enable_zoom"

    .line 14
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    invoke-virtual {p0, v1, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "user_set_force_enable_zoom"

    .line 2
    invoke-static {v0, v1, p2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->MFeACHCG(JLjava/lang/Object;Z)V

    return-void
.end method

.method public final b()F
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    return v0
.end method

.method public c()F
    .locals 6

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "user_font_scale_factor"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    cmpl-float v1, v3, v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v1, v3

    .line 4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b()F

    move-result v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v3, v4}, LEO0;->a(FFF)F

    move-result v1

    move v3, v1

    .line 6
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return v3
.end method
