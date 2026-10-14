.class public Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;
.super Landroid/support/v7/preference/s;

# interfaces
.implements Landroid/support/v7/preference/p;
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;


# instance fields
.field a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

.field private c:Landroid/support/v7/app/az;

.field private d:Landroid/support/v7/preference/DropDownPreference;

.field private e:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private f:Landroid/support/v7/preference/Preference;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/s;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    return-object p0
.end method

.method private ag()V
    .locals 4

    new-instance v0, Landroid/support/v7/app/s;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->l()Landroid/support/v4/app/p;

    move-result-object v2

    const v3, 0x7f10026e

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0f001c

    goto :goto_0

    :cond_0
    const v1, 0x7f0f001b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->m()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    const v1, 0x7f0f00d7

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/l;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/l;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/m;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/m;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    return-void
.end method

.method private ah()V
    .locals 4

    new-instance v0, Landroid/support/v7/app/s;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->l()Landroid/support/v4/app/p;

    move-result-object v2

    const v3, 0x7f10026e

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0f001c

    goto :goto_0

    :cond_0
    const v1, 0x7f0f001b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->m()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/n;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/n;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    return-void
.end method

.method private ai()V
    .locals 3

    const-string v0, "[UpdateSettingPreference] startUpdateCheckProgress()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->c:Landroid/support/v7/app/az;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/az;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/support/v7/app/az;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->c:Landroid/support/v7/app/az;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->c:Landroid/support/v7/app/az;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->m()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->c:Landroid/support/v7/app/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->c:Landroid/support/v7/app/az;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->c:Landroid/support/v7/app/az;

    invoke-virtual {v0}, Landroid/support/v7/app/az;->show()V

    :cond_1
    return-void
.end method

.method private aj()V
    .locals 1

    const-string v0, "[UpdateSettingPreference] stopUpdateCheckProgress()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->c:Landroid/support/v7/app/az;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/az;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->c:Landroid/support/v7/app/az;

    invoke-virtual {v0}, Landroid/support/v7/app/az;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->e:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->aj()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->ah()V

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->k()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    const/high16 v0, 0x7f120000

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a_(ILjava/lang/String;)V

    const-string p2, "key_update_check"

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/DropDownPreference;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    const-string p2, "key_auto_update"

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->e:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string p2, "key_manual_update"

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->f:Landroid/support/v7/preference/Preference;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "2"

    aput-object v1, p2, v0

    const-string v1, "1"

    aput-object v1, p2, p1

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, p2, v2

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2, p2}, Landroid/support/v7/preference/DropDownPreference;->a([Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->m()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v7/preference/DropDownPreference;->e(I)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    const-string v3, "vrsw_update_settings_update_check_mode"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/DropDownPreference;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p2}, Landroid/support/v7/preference/DropDownPreference;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/DropDownPreference;->a(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/e;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/DropDownPreference;->a(Landroid/support/v7/preference/p;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/DropDownPreference;->a(Landroid/support/v7/preference/o;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result p2

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->d:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/DropDownPreference;->b(Z)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "initial_app_auto_update"

    invoke-static {p2, v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/t;->b(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->e:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->e:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->a(Z)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->e:Landroid/support/v7/preference/SwitchPreferenceCompat;

    new-instance p2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/k;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/k;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->a(Landroid/support/v7/preference/o;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->f:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/p;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->aj()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->ag()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->ah()V

    :goto_0
    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->f:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->g:J

    const-string p1, "536"

    const-string v0, "0019"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->ai()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(IZZ)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a()V

    :cond_1
    return v1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->l()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->l()Landroid/support/v4/app/p;

    move-result-object v0

    const v1, 0x7f010021

    const v2, 0x7f010024

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->overridePendingTransition(II)V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/s;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public a_(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b_()V
    .locals 0

    return-void
.end method

.method public c_()V
    .locals 0

    return-void
.end method
