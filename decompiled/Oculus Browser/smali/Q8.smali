.class public abstract LQ8;
.super LD2;
.source "PG"

# interfaces
.implements LR8;
.implements LQ3;


# instance fields
.field public G:LS8;

.field public H:I

.field public I:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LD2;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LQ8;->H:I

    return-void
.end method


# virtual methods
.method public F()LS8;
    .locals 2

    .line 1
    iget-object v0, p0, LQ8;->G:LS8;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk9;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lk9;-><init>(Landroid/content/Context;Landroid/view/Window;LR8;)V

    .line 3
    iput-object v0, p0, LQ8;->G:LS8;

    .line 4
    :cond_0
    iget-object v0, p0, LQ8;->G:LS8;

    return-object v0
.end method

.method public G()LB8;
    .locals 1

    .line 1
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 2
    invoke-virtual {v0}, Lk9;->i()V

    .line 3
    iget-object v0, v0, Lk9;->C:LB8;

    return-object v0
.end method

.method public a(LMc;)LNc;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(LNc;)V
    .locals 0

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 2
    invoke-virtual {v0}, Lk9;->g()V

    .line 3
    iget-object v1, v0, Lk9;->P:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, v0, Lk9;->z:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public b(LNc;)V
    .locals 0

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LQ8;->G()LB8;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p0}, LQ8;->G()LB8;

    move-result-object v1

    const/16 v2, 0x52

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0, p1}, LA7;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, v0, p0, p1}, Lo7;->a(Ln7;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 2
    invoke-virtual {v0}, Lk9;->g()V

    .line 3
    iget-object v0, v0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 1
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 2
    iget-object v1, v0, Lk9;->D:Landroid/view/MenuInflater;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lk9;->i()V

    .line 4
    new-instance v1, LVc;

    iget-object v2, v0, Lk9;->C:LB8;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, LB8;->a()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lk9;->x:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, LVc;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lk9;->D:Landroid/view/MenuInflater;

    .line 6
    :cond_1
    iget-object v0, v0, Lk9;->D:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, LQ8;->I:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Ldi;->a()Z

    .line 2
    :cond_0
    iget-object v0, p0, LQ8;->I:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, LP3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    invoke-virtual {v0}, LS8;->c()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, LD2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 3
    iget-boolean v1, v0, Lk9;->U:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lk9;->O:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lk9;->i()V

    .line 5
    iget-object v1, v0, Lk9;->C:LB8;

    if-eqz v1, :cond_0

    .line 6
    check-cast v1, Lqa;

    .line 7
    iget-object v2, v1, Lqa;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 9
    invoke-virtual {v1, v2}, Lqa;->d(Z)V

    .line 10
    :cond_0
    invoke-static {}, Lye;->a()Lye;

    move-result-object v1

    iget-object v2, v0, Lk9;->x:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lye;->b(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v0}, Lk9;->a()Z

    .line 12
    iget-object v0, p0, LQ8;->I:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 13
    invoke-super {p0}, LP3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 14
    iget-object v1, p0, LQ8;->I:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LS8;->b()V

    .line 3
    invoke-virtual {v0, p1}, LS8;->a(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v0}, LS8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LQ8;->H:I

    if-eqz v0, :cond_1

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 6
    invoke-virtual {p0}, LP3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, LQ8;->H:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, LQ8;->setTheme(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-super {p0, p1}, LD2;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, LD2;->onDestroy()V

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 3
    iget-boolean v1, v0, Lk9;->h0:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lk9;->j0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lk9;->d0:Z

    .line 6
    iget-object v1, v0, Lk9;->C:LB8;

    .line 7
    iget-object v0, v0, Lk9;->g0:Lg9;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lg9;->a()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 9
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, LD2;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, LQ8;->G()LB8;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    .line 4
    check-cast p1, Lqa;

    .line 5
    iget-object p1, p1, Lqa;->e:LZe;

    check-cast p1, LXh;

    .line 6
    iget p1, p1, LXh;->b:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    .line 7
    invoke-static {p0}, LB3;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p0}, LQ3;->s()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    .line 11
    invoke-static {p0}, LB3;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 15
    :try_start_0
    invoke-static {p0, v1}, LB3;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 17
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, LB3;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    .line 19
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 21
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    .line 23
    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    const/4 p2, 0x0

    .line 24
    invoke-static {p0, p1, p2}, LR3;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    .line 25
    :try_start_1
    invoke-static {p0}, Lm2;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 26
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 27
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_8
    return v2
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, LD2;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object p1

    check-cast p1, Lk9;

    .line 3
    invoke-virtual {p1}, Lk9;->g()V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, LD2;->onPostResume()V

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 3
    invoke-virtual {v0}, Lk9;->i()V

    .line 4
    iget-object v0, v0, Lk9;->C:LB8;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    check-cast v0, Lqa;

    .line 6
    iput-boolean v1, v0, Lqa;->v:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LD2;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 3
    iget v0, v0, Lk9;->e0:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const-string v1, "appcompat:local_night_mode"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, LD2;->onStart()V

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 3
    invoke-virtual {v0}, Lk9;->a()Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, LD2;->onStop()V

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    invoke-virtual {v0}, LS8;->d()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object p2

    invoke-virtual {p2, p1}, LS8;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LQ8;->G()LB8;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public s()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p0}, LB3;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    invoke-virtual {v0, p1}, LS8;->b(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    invoke-virtual {v0, p1}, LS8;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LS8;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LP3;->setTheme(I)V

    .line 2
    iput p1, p0, LQ8;->H:I

    return-void
.end method
