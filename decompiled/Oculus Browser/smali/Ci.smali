.class public final LCi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:LAi;

.field public c:Ljava/util/ArrayList;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/util/ArrayList;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LCi;->a:Landroid/content/Intent;

    .line 3
    new-instance v0, LAi;

    invoke-direct {v0}, LAi;-><init>()V

    iput-object v0, p0, LCi;->b:LAi;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LCi;->c:Ljava/util/ArrayList;

    .line 5
    iput-object v0, p0, LCi;->d:Landroid/os/Bundle;

    .line 6
    iput-object v0, p0, LCi;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, LCi;->f:Z

    return-void
.end method


# virtual methods
.method public a(I)LCi;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, LCi;->a:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.COLOR_SCHEME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for the colorScheme argument"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)LCi;
    .locals 2

    .line 1
    iget-object v0, p0, LCi;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public a()LDi;
    .locals 4

    .line 4
    iget-object v0, p0, LCi;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    iget-object v1, p0, LCi;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :cond_0
    iget-object v0, p0, LCi;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, LCi;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 10
    :cond_1
    iget-object v0, p0, LCi;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, LCi;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 12
    :cond_2
    iget-object v0, p0, LCi;->a:Landroid/content/Intent;

    iget-boolean v1, p0, LCi;->f:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    iget-object v0, p0, LCi;->a:Landroid/content/Intent;

    iget-object v1, p0, LCi;->b:LAi;

    .line 14
    iget-object v1, v1, LAi;->a:Ljava/lang/Integer;

    .line 15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 18
    new-instance v0, LDi;

    iget-object v1, p0, LCi;->a:Landroid/content/Intent;

    iget-object v2, p0, LCi;->d:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, LDi;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method
