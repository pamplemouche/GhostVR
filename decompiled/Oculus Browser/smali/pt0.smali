.class public Lpt0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:Lpt0;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:LWT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object v0, p0, Lpt0;->a:Landroid/content/SharedPreferences;

    .line 4
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lpt0;->b:LWT;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "chrome://newtab/"

    :goto_0
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lpt0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lpt0;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lpt0;->a:Landroid/content/SharedPreferences;

    const-string v1, "homepage_custom_uri"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static f()Lpt0;
    .locals 1

    .line 1
    sget-object v0, Lpt0;->c:Lpt0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lpt0;

    invoke-direct {v0}, Lpt0;-><init>()V

    sput-object v0, Lpt0;->c:Lpt0;

    .line 3
    :cond_0
    sget-object v0, Lpt0;->c:Lpt0;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    .line 1
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object v0

    invoke-virtual {v0}, Lpt0;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lpt0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "homepage"

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Settings.ShowHomeButtonPreferenceStateChanged"

    .line 5
    invoke-static {v0, p1}, LfV;->a(Ljava/lang/String;Z)V

    const-string v0, "Settings.ShowHomeButtonPreferenceState"

    .line 6
    invoke-static {v0, p1}, LfV;->a(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {p0}, Lpt0;->c()V

    return-void
.end method

.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lpt0;->a:Landroid/content/SharedPreferences;

    const-string v1, "homepage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lpt0;->a:Landroid/content/SharedPreferences;

    const-string v1, "homepage_partner_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpt0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lot0;

    .line 2
    invoke-interface {v1}, Lot0;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
