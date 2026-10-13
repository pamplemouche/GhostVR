.class public Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements LJG0;
.implements LBG0;
.implements LNG0;
.implements Llc;
.implements LoG0;


# instance fields
.field public final E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field public F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public G0:LZb;

.field public H0:LZb;

.field public I0:LZb;

.field public J0:LZb;

.field public K0:LZb;

.field public L0:LZb;

.field public M0:LZb;

.field public N0:[LZb;

.field public O0:Landroid/support/v7/preference/Preference;

.field public P0:Landroid/support/v7/preference/Preference;

.field public Q0:Landroid/support/v7/preference/Preference;

.field public R0:LnG0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    return-void
.end method


# virtual methods
.method public H()V
    .locals 1

    .line 1
    invoke-super {p0}, Lz2;->H()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->R0:LnG0;

    invoke-virtual {v0}, LnG0;->a()V

    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->O()V

    return-void
.end method

.method public M()V
    .locals 1

    .line 1
    invoke-super {p0}, Lrc;->M()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a(LoG0;)V

    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    invoke-super {p0}, Lrc;->N()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b(LoG0;)V

    return-void
.end method

.method public final O()V
    .locals 6

    .line 1
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->O0:Landroid/support/v7/preference/Preference;

    new-instance v2, LrB0;

    invoke-direct {v2, p0, v0}, LrB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;Ljava/lang/String;)V

    .line 4
    new-instance v0, LFB0;

    invoke-direct {v0, p0, v2}, LFB0;-><init>(Lrc;Ljava/lang/Runnable;)V

    .line 5
    iput-object v0, v1, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 7
    iget-wide v1, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 8
    invoke-static {v1, v2, v0}, LJ/N;->MpBx$QMz(JLjava/lang/Object;)Z

    move-result v0

    .line 9
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v1, v0}, LKc;->f(Z)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->N0:[LZb;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 11
    invoke-virtual {v5, v1}, LKc;->f(Z)V

    .line 12
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/Preference;->c(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 14
    iget-wide v3, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 15
    invoke-static {v3, v4, v0}, LJ/N;->M_gH1Vgj(JLjava/lang/Object;)[I

    move-result-object v0

    .line 16
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a([I)Ljava/util/Set;

    move-result-object v0

    .line 17
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->G0:LZb;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, LKc;->f(Z)V

    .line 18
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->G0:LZb;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 19
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->H0:LZb;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, LKc;->f(Z)V

    .line 20
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->H0:LZb;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 21
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->J0:LZb;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, LKc;->f(Z)V

    .line 22
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->J0:LZb;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 23
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->K0:LZb;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, LKc;->f(Z)V

    .line 24
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->K0:LZb;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 25
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->L0:LZb;

    const/16 v5, 0x26

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, LKc;->f(Z)V

    .line 26
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->L0:LZb;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 27
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->M0:LZb;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, LKc;->f(Z)V

    .line 28
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->M0:LZb;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 30
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->I0:LZb;

    if-eqz v0, :cond_2

    .line 31
    invoke-static {}, LJ/N;->M4NdKhmj()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 32
    :goto_1
    invoke-virtual {v3, v1}, LKc;->f(Z)V

    .line 33
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->I0:LZb;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 34
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v0

    .line 35
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->P0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 36
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->P0:Landroid/support/v7/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    const-string v1, "enter_password"

    if-nez v0, :cond_4

    const-string v0, "custom_password"

    .line 37
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->e(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 40
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->e(Ljava/lang/String;)V

    .line 41
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lz2;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->P0:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1305de

    .line 43
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    .line 44
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0600ea

    .line 47
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 48
    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 49
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 50
    invoke-virtual {v4, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 51
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final P()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 2
    iget-boolean v1, v1, LKc;->k0:Z

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->G0:LZb;

    .line 5
    iget-boolean v3, v3, LKc;->k0:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->H0:LZb;

    .line 8
    iget-boolean v3, v3, LKc;->k0:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->J0:LZb;

    .line 11
    iget-boolean v3, v3, LKc;->k0:Z

    if-eqz v3, :cond_2

    const/16 v3, 0xa

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->K0:LZb;

    .line 14
    iget-boolean v3, v3, LKc;->k0:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->L0:LZb;

    .line 17
    iget-boolean v3, v3, LKc;->k0:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x26

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->M0:LZb;

    .line 20
    iget-boolean v3, v3, LKc;->k0:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_5
    iget-wide v3, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 23
    sget-object v2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->d:[I

    goto :goto_1

    .line 24
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 25
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    .line 26
    aput v8, v6, v7

    move v7, v9

    goto :goto_0

    :cond_7
    move-object v2, v6

    .line 27
    :goto_1
    invoke-static {v3, v4, v0, v1, v2}, LJ/N;->MRx3HxkB(JLjava/lang/Object;Z[I)V

    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 29
    iget-boolean v0, v0, LKc;->k0:Z

    if-nez v0, :cond_8

    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->I0:LZb;

    .line 31
    iget-boolean v0, v0, LKc;->k0:Z

    if-eqz v0, :cond_9

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->G0:LZb;

    .line 33
    iget-boolean v0, v0, LKc;->k0:Z

    if-eqz v0, :cond_9

    :cond_8
    const/4 v5, 0x1

    .line 34
    :cond_9
    invoke-static {v5}, LJ/N;->MIN2Dr59(Z)V

    .line 35
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LsB0;

    invoke-direct {v1, p0}, LsB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;)V

    const-wide/16 v2, 0x0

    .line 36
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1303aa

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    const p2, 0x7f170012

    .line 3
    invoke-static {p0, p2}, Lxy0;->a(Lrc;I)V

    const-string p2, "sync_everything"

    .line 4
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 5
    iput-object p0, p2, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p2, "sync_autofill"

    .line 6
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, LZb;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->G0:LZb;

    const-string p2, "sync_bookmarks"

    .line 7
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, LZb;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->H0:LZb;

    const-string p2, "sync_payments_integration"

    .line 8
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, LZb;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->I0:LZb;

    const-string p2, "sync_history"

    .line 9
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, LZb;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->J0:LZb;

    const-string p2, "sync_passwords"

    .line 10
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, LZb;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->K0:LZb;

    const-string p2, "sync_recent_tabs"

    .line 11
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, LZb;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->L0:LZb;

    const-string p2, "sync_settings"

    .line 12
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, LZb;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->M0:LZb;

    const-string p2, "google_activity_controls"

    .line 13
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->O0:Landroid/support/v7/preference/Preference;

    const-string p2, "encryption"

    .line 14
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->P0:Landroid/support/v7/preference/Preference;

    .line 15
    new-instance v0, LnB0;

    invoke-direct {v0, p0}, LnB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;)V

    .line 16
    new-instance v1, LFB0;

    invoke-direct {v1, p0, v0}, LFB0;-><init>(Lrc;Ljava/lang/Runnable;)V

    .line 17
    iput-object v1, p2, Landroid/support/v7/preference/Preference;->B:Lmc;

    const-string p2, "sync_manage_data"

    .line 18
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->Q0:Landroid/support/v7/preference/Preference;

    .line 19
    new-instance v0, LoB0;

    invoke-direct {v0, p0}, LoB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;)V

    .line 20
    new-instance v1, LFB0;

    invoke-direct {v1, p0, v0}, LFB0;-><init>(Lrc;Ljava/lang/Runnable;)V

    .line 21
    iput-object v1, p2, Landroid/support/v7/preference/Preference;->B:Lmc;

    const/4 p2, 0x7

    new-array p2, p2, [LZb;

    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->G0:LZb;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->H0:LZb;

    aput-object v0, p2, p1

    const/4 p1, 0x2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->I0:LZb;

    aput-object v0, p2, p1

    const/4 p1, 0x3

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->J0:LZb;

    aput-object v0, p2, p1

    const/4 p1, 0x4

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->K0:LZb;

    aput-object v0, p2, p1

    const/4 p1, 0x5

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->L0:LZb;

    aput-object v0, p2, p1

    const/4 p1, 0x6

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->M0:LZb;

    aput-object v0, p2, p1

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->N0:[LZb;

    .line 23
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    .line 24
    iput-object p0, v0, Landroid/support/v7/preference/Preference;->A:Llc;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/profiles/Profile;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->O0:Landroid/support/v7/preference/Preference;

    const p2, 0x7f130585

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 27
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->d()LnG0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->R0:LnG0;

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 28
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const p2, 0x7f1303bf

    const/4 v0, 0x0

    const v1, 0x7f0b026d

    .line 29
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080160

    .line 30
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 36
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, LpB0;

    invoke-direct {p2, p0}, LpB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;)V

    const-wide/16 v0, 0x0

    .line 37
    invoke-static {p1, p2, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .line 31
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b026d

    if-ne p1, v0, :cond_0

    .line 32
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object p1

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f13033b

    .line 33
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v3, 0x0

    .line 35
    invoke-virtual {p1, v0, v1, v2, v3}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 4
    iget-wide v2, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 5
    invoke-static {v2, v3, v0, p1}, LJ/N;->MlUAisy7(JLjava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "enter_password"

    .line 6
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->e(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->O()V

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public c(I)V
    .locals 2

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 11
    iget-wide v0, p1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 12
    invoke-static {v0, v1, p1}, LJ/N;->MwXg19e5(JLjava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->k()Z

    .line 14
    iget-object p1, p0, Lz2;->N:LY2;

    if-eqz p1, :cond_1

    .line 15
    new-instance v0, Lq2;

    invoke-direct {v0, p1}, Lq2;-><init>(LY2;)V

    .line 16
    new-instance p1, LCG0;

    invoke-direct {p1}, LCG0;-><init>()V

    const/4 v1, -0x1

    .line 17
    invoke-virtual {p1, p0, v1}, Lz2;->a(Lz2;I)V

    const-string v1, "custom_password"

    .line 18
    invoke-virtual {p1, v0, v1}, Ls2;->a(Ld3;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 19
    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 3
    iget-wide v1, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 4
    invoke-static {v1, v2, v0}, LJ/N;->MXKIugP5(JLjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 6
    iget-wide v1, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 7
    invoke-static {v1, v2, v0, p1}, LJ/N;->M_l3G2yX(JLjava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->P()V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz2;->N:LY2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object p1

    check-cast p1, Ls2;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ls2;->g(Z)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LqB0;

    invoke-direct {v1, p0}, LqB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method
