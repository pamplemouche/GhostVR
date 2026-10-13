.class public abstract LOY;
.super LQ8;
.source "PG"

# interfaces
.implements LHl0;


# instance fields
.field public J:LIl0;

.field public K:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LQ8;-><init>()V

    return-void
.end method


# virtual methods
.method public final H()LIl0;
    .locals 1

    .line 1
    iget-object v0, p0, LOY;->J:LIl0;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 1

    .line 1
    iget-object p1, p0, LOY;->J:LIl0;

    .line 2
    invoke-interface {p1}, LIl0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, LIl0;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 4
    :goto_0
    iget v0, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr p1, v0

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {}, LFl0;->a()LIl0;

    move-result-object v0

    .line 3
    iput-object v0, p0, LOY;->J:LIl0;

    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 6
    invoke-virtual {p0, p1, v0}, LOY;->a(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    invoke-virtual {p0, v0}, Landroid/app/Activity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LQ8;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p0, LOY;->K:I

    .line 3
    iget-object v1, p0, LOY;->J:LIl0;

    .line 4
    invoke-interface {v1}, LIl0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    .line 5
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, LOY;->setTheme(I)V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_2

    .line 8
    invoke-virtual {p0}, LP3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, LOY;->J:LIl0;

    invoke-interface {v0, p0}, LIl0;->a(LHl0;)V

    .line 2
    invoke-super {p0, p1}, LQ8;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, LOY;->J:LIl0;

    invoke-interface {v0, p0}, LIl0;->b(LHl0;)V

    .line 2
    invoke-super {p0}, LQ8;->onDestroy()V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LQ8;->setTheme(I)V

    .line 2
    iput p1, p0, LOY;->K:I

    return-void
.end method
