.class public LCl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIl0;
.implements LMl0;
.implements LlT;


# instance fields
.field public final a:LWT;

.field public final b:LNl0;

.field public final c:Lcy0;

.field public final d:LLl0;

.field public final e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Boolean;

.field public g:Lby0;

.field public h:Z


# direct methods
.method public constructor <init>(LNl0;LLl0;Lcy0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LCl0;->a:LWT;

    .line 3
    new-instance v0, LAl0;

    invoke-direct {v0, p0}, LAl0;-><init>(LCl0;)V

    iput-object v0, p0, LCl0;->e:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, LCl0;->b:LNl0;

    .line 5
    iput-object p3, p0, LCl0;->c:Lcy0;

    .line 6
    iput-object p2, p0, LCl0;->d:LLl0;

    .line 7
    new-instance p1, LBl0;

    invoke-direct {p1, p0}, LBl0;-><init>(LCl0;)V

    iput-object p1, p0, LCl0;->g:Lby0;

    .line 8
    invoke-virtual {p0}, LCl0;->d()V

    .line 9
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p0}, LCl0;->c()V

    .line 11
    :cond_1
    sget-object p1, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, LCl0;->c()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3
    iget-boolean p1, p0, LCl0;->h:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, LCl0;->h:Z

    .line 5
    iget-object p1, p0, LCl0;->b:LNl0;

    .line 6
    iget-object p1, p1, LNl0;->a:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, LCl0;->d:LLl0;

    iget-object v0, p0, LCl0;->e:Ljava/lang/Runnable;

    .line 8
    iget-object p1, p1, LLl0;->a:LWT;

    invoke-virtual {p1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, LCl0;->c:Lcy0;

    iget-object v0, p0, LCl0;->g:Lby0;

    .line 10
    iget-object v1, p1, Lcy0;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-nez v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p1, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(LHl0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LCl0;->a:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(LHl0;)V
    .locals 1

    .line 2
    iget-object v0, p0, LCl0;->a:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, LCl0;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LCl0;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LCl0;->h:Z

    .line 3
    iget-object v0, p0, LCl0;->b:LNl0;

    .line 4
    iget-object v0, v0, LNl0;->a:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, LCl0;->d:LLl0;

    iget-object v1, p0, LCl0;->e:Ljava/lang/Runnable;

    .line 6
    iget-object v0, v0, LLl0;->a:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, LCl0;->c:Lcy0;

    iget-object v1, p0, LCl0;->g:Lby0;

    if-eqz v0, :cond_1

    .line 8
    new-instance v2, LYx0;

    invoke-direct {v2, v1}, LYx0;-><init>(Lby0;)V

    .line 9
    iget-object v3, v0, Lcy0;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 11
    invoke-virtual {p0}, LCl0;->d()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, LCl0;->d:LLl0;

    .line 2
    iget-boolean v0, v0, LLl0;->d:Z

    .line 3
    sget-object v1, Lay0;->a:Lcy0;

    const-string v2, "ui_theme_setting"

    const/4 v3, -0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->f()Z

    move-result v1

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 6
    iget-object v6, p0, LCl0;->b:LNl0;

    .line 7
    iget-boolean v6, v6, LNl0;->b:Z

    if-nez v6, :cond_2

    :cond_1
    if-ne v1, v4, :cond_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 8
    :goto_0
    iget-object v7, p0, LCl0;->f:Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v6, v7, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, LCl0;->f:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    :goto_1
    if-eq v6, v3, :cond_6

    if-eqz v6, :cond_6

    if-eq v6, v5, :cond_6

    if-eq v6, v4, :cond_6

    goto :goto_2

    .line 11
    :cond_6
    sput v6, LS8;->w:I

    .line 12
    :goto_2
    iget-object v3, p0, LCl0;->a:LWT;

    invoke-virtual {v3}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LHl0;

    invoke-interface {v6}, LHl0;->q()V

    goto :goto_3

    .line 13
    :cond_7
    iget-object v3, p0, LCl0;->f:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 14
    sget-object v6, LGl0;->a:LVU;

    invoke-virtual {v6, v3}, LVU;->a(Z)V

    .line 15
    sget-object v3, LGl0;->c:LaV;

    invoke-virtual {v3, v1}, LaV;->a(I)V

    .line 16
    iget-object v3, p0, LCl0;->f:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 17
    sget-object v3, LGl0;->b:LaV;

    if-ne v1, v4, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x2

    :goto_4
    invoke-virtual {v3, v2}, LaV;->a(I)V

    :cond_a
    return-void
.end method
