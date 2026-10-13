.class public Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Llc;
.implements Lmc;
.implements LMB0;
.implements Landroid/view/View$OnClickListener;
.implements LCc;


# instance fields
.field public E0:Landroid/support/v7/widget/RecyclerView;

.field public F0:Landroid/widget/TextView;

.field public G0:Landroid/view/MenuItem;

.field public H0:Landroid/widget/Button;

.field public I0:LuC0;

.field public J0:Ljava/lang/String;

.field public K0:Z

.field public L0:Z

.field public M0:Z

.field public N0:Z

.field public O0:Z

.field public P0:I

.field public Q0:Ljava/util/List;

.field public R0:Z

.field public S0:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->M0:Z

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->O0:Z

    return-void
.end method

.method public static final synthetic V()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LJ/N;->MDSDZMJZ(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q()V

    return-void
.end method


# virtual methods
.method public L()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->G0:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-static {v0, v1}, LIy0;->a(Landroid/view/MenuItem;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q()V

    return-void
.end method

.method public final O()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {v1}, LuC0;->b()I

    move-result v1

    .line 3
    iget-object v2, v0, Lrc;->u0:LDc;

    .line 4
    iget-object v2, v2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "binary_toggle"

    .line 5
    invoke-virtual {v2, v3}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const-string v4, "tri_state_toggle"

    .line 6
    invoke-virtual {v2, v4}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;

    const-string v5, "third_party_cookies"

    .line 7
    invoke-virtual {v2, v5}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    const-string v6, "notifications_vibrate"

    .line 8
    invoke-virtual {v2, v6}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    const-string v7, "protected_content_learn_more"

    .line 9
    invoke-virtual {v2, v7}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    const-string v8, "allowed_group"

    .line 10
    invoke-virtual {v2, v8}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lvc;

    const-string v9, "blocked_group"

    .line 11
    invoke-virtual {v2, v9}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lvc;

    const-string v10, "managed_group"

    .line 12
    invoke-virtual {v2, v10}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lvc;

    .line 13
    iget-object v11, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual/range {p0 .. p0}, Lz2;->l()LD2;

    move-result-object v12

    invoke-virtual {v11, v12}, LuC0;->c(Landroid/content/Context;)Z

    move-result v11

    .line 14
    iget-object v12, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, LuC0;->a(I)Z

    move-result v12

    const-string v14, "AndroidSiteSettingsUIRefresh"

    if-nez v12, :cond_1

    iget-object v12, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v13, 0xf

    .line 15
    invoke-virtual {v12, v13}, LuC0;->a(I)Z

    move-result v12

    if-nez v12, :cond_1

    if-eqz v11, :cond_0

    .line 16
    invoke-static {v14}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_3

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v13, 0x1

    :goto_3
    if-eqz v12, :cond_4

    .line 17
    invoke-virtual {v2, v3}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 18
    invoke-virtual {v2, v4}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_6

    .line 19
    :cond_4
    iget-boolean v12, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->R0:Z

    if-eqz v12, :cond_8

    .line 20
    invoke-virtual {v2, v3}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 21
    iput-object v0, v4, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 22
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 23
    invoke-static {v3, v1}, LJ/N;->MuzIxnPt(Ljava/lang/Object;I)I

    move-result v3

    const/16 v12, 0x10

    if-ne v1, v12, :cond_6

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    const/4 v15, 0x3

    if-lt v1, v12, :cond_5

    new-array v15, v15, [I

    .line 25
    fill-array-data v15, :array_0

    goto :goto_4

    :cond_5
    new-array v15, v15, [I

    .line 26
    fill-array-data v15, :array_1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 27
    :goto_4
    iput v3, v4, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->i0:I

    .line 28
    iput-object v15, v4, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->j0:[I

    goto/16 :goto_6

    :cond_7
    const/4 v1, 0x0

    .line 29
    throw v1

    .line 30
    :cond_8
    invoke-virtual {v2, v4}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 31
    iput-object v0, v3, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 32
    invoke-static {v1}, LYB0;->c(I)LXB0;

    move-result-object v4

    .line 33
    iget v4, v4, LXB0;->b:I

    .line 34
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 35
    iget-object v4, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v12, 0x7

    invoke-virtual {v4, v12}, LuC0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 36
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 37
    invoke-static {v4}, LJ/N;->M2FD$AKz(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f130677

    .line 38
    invoke-virtual {v3, v4}, LKc;->f(I)V

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    .line 39
    throw v4

    .line 40
    :cond_a
    invoke-static {v1}, LYB0;->c(I)LXB0;

    move-result-object v4

    .line 41
    iget v15, v4, LXB0;->f:I

    if-nez v15, :cond_b

    iget-object v4, v4, LXB0;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, LYB0;->a(I)I

    move-result v15

    .line 42
    :cond_b
    invoke-virtual {v3, v15}, LKc;->f(I)V

    .line 43
    :goto_5
    invoke-static {v1}, LYB0;->c(I)LXB0;

    move-result-object v4

    .line 44
    iget v15, v4, LXB0;->g:I

    if-nez v15, :cond_c

    iget-object v4, v4, LXB0;->e:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, LYB0;->a(I)I

    move-result v15

    .line 45
    :cond_c
    invoke-virtual {v3, v15}, LKc;->e(I)V

    .line 46
    new-instance v4, LhC0;

    invoke-direct {v4, v0}, LhC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    .line 47
    iput-object v4, v3, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 48
    invoke-static {v4, v3}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 49
    iget-object v4, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {v4, v12}, LuC0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 50
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->b()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->a()Z

    move-result v1

    .line 51
    invoke-virtual {v3, v1}, LKc;->f(Z)V

    goto :goto_6

    .line 52
    :cond_d
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v1

    invoke-virtual {v3, v1}, LKc;->f(Z)V

    :goto_6
    if-eqz v11, :cond_10

    .line 53
    invoke-static {v14}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 54
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->R()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    .line 55
    :cond_e
    new-instance v1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 56
    iget-object v3, v0, Lrc;->u0:LDc;

    .line 57
    iget-object v3, v3, LDc;->a:Landroid/content/Context;

    const/4 v4, 0x0

    .line 58
    invoke-direct {v1, v3, v4}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v3, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 60
    iget-object v11, v0, Lrc;->u0:LDc;

    .line 61
    iget-object v11, v11, LDc;->a:Landroid/content/Context;

    .line 62
    invoke-direct {v3, v11, v4}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iget-object v4, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lz2;->l()LD2;

    move-result-object v11

    const/4 v12, 0x1

    .line 65
    invoke-virtual {v4, v1, v3, v11, v12}, LuC0;->a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/app/Activity;Z)V

    .line 66
    iget-object v4, v1, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    if-eqz v4, :cond_f

    .line 67
    invoke-virtual {v2, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 68
    :cond_f
    iget-object v1, v3, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 69
    invoke-virtual {v2, v3}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    :cond_10
    :goto_7
    if-eqz v13, :cond_11

    .line 70
    invoke-virtual {v2, v5}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 71
    invoke-virtual {v2, v6}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 72
    invoke-virtual {v2, v7}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 73
    invoke-virtual {v2, v8}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 74
    invoke-virtual {v2, v9}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 75
    invoke-virtual {v2, v10}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    return-void

    .line 76
    :cond_11
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 77
    iput-object v0, v5, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->U()V

    goto :goto_8

    .line 79
    :cond_12
    invoke-virtual {v2, v5}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 80
    :goto_8
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_13

    .line 81
    iput-object v0, v6, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->T()V

    goto :goto_9

    .line 83
    :cond_13
    invoke-virtual {v2, v6}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 84
    :goto_9
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, LuC0;->a(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 85
    invoke-virtual {v2, v7}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 86
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->E0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const/4 v3, 0x0

    goto :goto_a

    :cond_14
    const/4 v2, 0x1

    .line 87
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->E0:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 88
    :goto_a
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->K0:Z

    if-nez v1, :cond_15

    .line 89
    iput-boolean v3, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->L0:Z

    .line 90
    iput-boolean v2, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->M0:Z

    .line 91
    iput-boolean v3, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->N0:Z

    .line 92
    :cond_15
    iput-boolean v2, v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->K0:Z

    .line 93
    iput-object v0, v8, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 94
    iput-object v0, v9, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 95
    iput-object v0, v10, Landroid/support/v7/preference/Preference;->B:Lmc;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f13068b
        0x7f13068c
        0x7f13068e
    .end array-data

    :array_1
    .array-data 4
        0x7f13068a
        0x7f13068d
        0x7f13068e
    .end array-data
.end method

.method public final P()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, LuC0;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v1, 0x7f130665

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f130666

    goto/16 :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0x7f130667

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f13066b

    const v1, 0x7f13066b

    goto :goto_0

    :cond_3
    const v0, 0x7f13066a

    const v1, 0x7f13066a

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f13066d

    const v1, 0x7f13066d

    goto :goto_0

    :cond_5
    const v0, 0x7f13066c

    const v1, 0x7f13066c

    goto :goto_0

    .line 8
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f130669

    const v1, 0x7f130669

    goto :goto_0

    :cond_7
    const v0, 0x7f130668

    const v1, 0x7f130668

    .line 10
    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, LuC0;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, LuC0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->S()V

    return-void

    .line 4
    :cond_1
    new-instance v0, LNC0;

    invoke-direct {v0, v3}, LNC0;-><init>(Z)V

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    new-instance v2, LiC0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LiC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;LfC0;)V

    invoke-virtual {v0, v1, v2}, LNC0;->a(LuC0;LMC0;)V

    return-void
.end method

.method public final R()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->R0:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 3
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "tri_state_toggle"

    .line 4
    invoke-virtual {v0, v3}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;

    .line 5
    iget v0, v0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->i0:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 7
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "binary_toggle"

    .line 8
    invoke-virtual {v0, v3}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-eqz v0, :cond_2

    .line 9
    iget-boolean v0, v0, LKc;->k0:Z

    xor-int/2addr v0, v1

    return v0

    :cond_2
    return v2
.end method

.method public final S()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 3
    invoke-virtual {v0}, Lvc;->y()V

    const v0, 0x7f17001e

    .line 4
    invoke-static {p0, v0}, Lxy0;->a(Lrc;I)V

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->O()V

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, LuC0;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    const/16 v4, 0x17

    invoke-virtual {v1, v4}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, LuC0;->a(I)Z

    move-result v1

    const-string v4, "AndroidSiteSettingsUIRefresh"

    if-eqz v1, :cond_2

    .line 10
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_0
    if-eqz v2, :cond_7

    .line 18
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 19
    iget-object v1, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 20
    new-instance v2, LNB0;

    .line 21
    iget-object v0, v0, LDc;->a:Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->P()Ljava/lang/String;

    move-result-object v3

    const-string v4, "add_exception"

    invoke-direct {v2, v0, v4, v3, p0}, LNB0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LMB0;)V

    .line 23
    invoke-virtual {v1, v2}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    return-void
.end method

.method public final T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "notifications_vibrate"

    .line 3
    invoke-virtual {v0, v1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    :cond_0
    return-void
.end method

.method public final U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "third_party_cookies"

    .line 3
    invoke-virtual {v0, v1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, LJ/N;->M5m45FqE(Ljava/lang/Object;)Z

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 8
    sget-object v1, LeC0;->a:Lqy0;

    .line 9
    iput-object v1, v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->o0:Lqy0;

    .line 10
    invoke-static {v1, v0}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 141
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "category"

    const-string v4, ""

    .line 142
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 143
    invoke-static {v3}, LuC0;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, LuC0;->d(I)LuC0;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 144
    :goto_1
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 145
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    if-nez v0, :cond_3

    .line 146
    invoke-static {v1}, LuC0;->d(I)LuC0;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 147
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {v0}, LuC0;->b()I

    move-result v0

    .line 148
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->R0:Z

    .line 149
    invoke-super {p0, p1, p2, p3}, Lrc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 150
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v0, 0xf

    invoke-virtual {p3, v0}, LuC0;->a(I)Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x7f0e01a6

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b018f

    .line 152
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->F0:Landroid/widget/TextView;

    const p1, 0x7f0b00ca

    .line 153
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->H0:Landroid/widget/Button;

    .line 154
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_4
    iget-object p1, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    .line 156
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->E0:Landroid/support/v7/widget/RecyclerView;

    .line 157
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    .line 158
    invoke-virtual {p0, v2}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public final a(II)Ljava/lang/CharSequence;
    .locals 4

    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 3
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, " - %d"

    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 8
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060093

    .line 9
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 10
    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 11
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    const/16 v3, 0x21

    invoke-virtual {v0, p2, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 12
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f060095

    .line 13
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 14
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p2, p1

    .line 15
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 16
    invoke-virtual {v0, v1, p2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public final a(IZ)V
    .locals 2

    .line 67
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 68
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "allowed_group"

    .line 69
    invoke-virtual {v0, v1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 70
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 71
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 72
    invoke-virtual {p1, v0}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->p()V

    return-void

    .line 74
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->K0:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    const p2, 0x7f130671

    goto :goto_0

    :cond_3
    const p2, 0x7f130698

    .line 75
    :goto_0
    invoke-virtual {p0, p2, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->a(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 76
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->M0:Z

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->f(Z)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f17001e

    .line 17
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 18
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "title"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "selected_domains"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    new-instance p1, Ljava/util/HashSet;

    .line 24
    iget-object v1, p0, Lz2;->C:Landroid/os/Bundle;

    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->S0:Ljava/util/Set;

    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->O()V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    .line 29
    iput-boolean p1, p0, Lz2;->c0:Z

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 30
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f000b

    .line 31
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b039f

    .line 32
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->G0:Landroid/view/MenuItem;

    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    new-instance v2, LdC0;

    invoke-direct {v2, p0}, LdC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    invoke-static {p2, v0, v1, v2}, LIy0;->a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;LHy0;)V

    const p2, 0x7f1303bf

    const/4 v0, 0x0

    const v1, 0x7f0b026d

    .line 34
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, LP3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f080160

    .line 36
    invoke-static {p2, v1, v0}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 46
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 47
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "binary_toggle"

    .line 48
    invoke-virtual {v0, v1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 49
    invoke-virtual {v0}, LuC0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {p1}, LuC0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-static {p1}, Lsy0;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-static {p1}, Lsy0;->a(Landroid/content/Context;)V

    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v0, p1, LOC0;

    if-eqz v0, :cond_3

    .line 54
    move-object v0, p1

    check-cast v0, LOC0;

    .line 55
    const-class v2, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 56
    iput-object v2, v0, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {v2, v1}, LuC0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, v0, LOC0;->n0:LyC0;

    const-string v4, "org.chromium.chrome.preferences.site"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, v0, LOC0;->n0:LyC0;

    .line 60
    iget-object v3, v3, LyC0;->w:LzC0;

    const-string v4, "org.chromium.chrome.preferences.site_address"

    .line 61
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    :goto_1
    iget-object v2, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v3, "org.chromium.chrome.preferences.navigation_source"

    .line 63
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 64
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    :cond_3
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 66
    invoke-virtual {p0}, Lz2;->l()LD2;

    :cond_4
    return v1
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 77
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    .line 78
    iget-object v1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v2, "binary_toggle"

    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_15

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x13

    const/4 v5, 0x2

    const/4 v6, 0x6

    if-ge p1, v1, :cond_10

    if-eqz p1, :cond_f

    const/16 v1, 0xf

    if-eq p1, v1, :cond_f

    .line 80
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 81
    invoke-virtual {v1, p1}, LuC0;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 82
    :cond_0
    invoke-static {p1}, LuC0;->b(I)I

    move-result v1

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v0, :cond_e

    const/16 v4, 0xa

    if-eqz v1, :cond_c

    if-eq v1, v5, :cond_b

    const/16 v8, 0xd

    if-eq v1, v8, :cond_a

    const/16 v8, 0x1a

    if-eq v1, v8, :cond_b

    const/16 v8, 0x1f

    if-eq v1, v8, :cond_9

    const/16 v8, 0x21

    if-eq v1, v8, :cond_8

    const/16 v8, 0x23

    if-eq v1, v8, :cond_7

    const/16 v8, 0x27

    if-eq v1, v8, :cond_b

    const/16 v8, 0x2e

    if-eq v1, v8, :cond_b

    const/4 v8, 0x4

    if-eq v1, v8, :cond_b

    const/4 v8, 0x5

    if-eq v1, v8, :cond_6

    if-eq v1, v6, :cond_5

    const/16 v8, 0x9

    if-eq v1, v8, :cond_4

    if-eq v1, v4, :cond_3

    const/16 v8, 0x16

    if-eq v1, v8, :cond_2

    const/16 v8, 0x17

    if-eq v1, v8, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    invoke-static {v0, v7}, LJ/N;->MWqgGO_s(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 84
    :cond_2
    invoke-static {v0, v7}, LJ/N;->MiXDvn8V(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 85
    :cond_3
    invoke-static {v0, v7}, LJ/N;->Md3p1pc9(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 86
    :cond_4
    invoke-static {v0, v7}, LJ/N;->MoL8UfRa(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 87
    :cond_5
    invoke-static {v0, v7}, LJ/N;->MZqpAw8o(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 88
    :cond_6
    invoke-static {v0, v7}, LJ/N;->MSKrGL8Q(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 89
    :cond_7
    invoke-static {v0, v7}, LJ/N;->MilNVu0_(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 90
    :cond_8
    invoke-static {v0, v7}, LJ/N;->MIpAL76s(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 91
    :cond_9
    invoke-static {v0, v7}, LJ/N;->MWR$4HPi(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 92
    :cond_a
    invoke-static {v0, v7}, LJ/N;->MPztbFxY(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 93
    :cond_b
    invoke-static {v0, v1, v7}, LJ/N;->MoMLRlig(Ljava/lang/Object;IZ)V

    goto :goto_1

    .line 94
    :cond_c
    invoke-static {v0, v7}, LJ/N;->Mj36iq1T(Ljava/lang/Object;Z)V

    :goto_1
    if-ne p1, v6, :cond_d

    .line 95
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->U()V

    goto :goto_3

    :cond_d
    if-ne p1, v4, :cond_10

    .line 96
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->T()V

    goto :goto_3

    .line 97
    :cond_e
    throw v4

    :cond_f
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 98
    :cond_10
    :goto_3
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {p1, v5}, LuC0;->a(I)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/4 v0, 0x3

    .line 99
    invoke-virtual {p1, v0}, LuC0;->a(I)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 100
    invoke-virtual {p1, v6}, LuC0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "AndroidSiteSettingsUIRefresh"

    .line 101
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 102
    :cond_11
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v0, 0x8

    .line 103
    invoke-virtual {p1, v0}, LuC0;->a(I)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v0, 0xe

    .line 104
    invoke-virtual {p1, v0}, LuC0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 105
    :cond_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "add_exception"

    if-eqz p1, :cond_13

    .line 106
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 107
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 108
    invoke-virtual {p1, p2}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 109
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 110
    iget-object p2, p2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 111
    invoke-virtual {p2, p1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 112
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->p()V

    goto :goto_4

    .line 113
    :cond_13
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 114
    iget-object v0, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 115
    new-instance v1, LNB0;

    .line 116
    iget-object p1, p1, LDc;->a:Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->P()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, p2, v4, p0}, LNB0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LMB0;)V

    .line 118
    invoke-virtual {v0, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 119
    :cond_14
    :goto_4
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 120
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 121
    invoke-virtual {p1, v2}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 122
    iget p2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->P0:I

    .line 123
    iget-boolean p1, p1, LKc;->k0:Z

    xor-int/2addr p1, v3

    .line 124
    invoke-virtual {p0, p2, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->a(IZ)V

    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q()V

    goto :goto_5

    .line 126
    :cond_15
    iget-object v1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v2, "tri_state_toggle"

    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 128
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 129
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {p2}, LuC0;->b()I

    move-result p2

    if-eqz v0, :cond_16

    .line 130
    invoke-static {v0, p2, p1}, LJ/N;->MytrLNw_(Ljava/lang/Object;II)V

    .line 131
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q()V

    goto :goto_5

    .line 132
    :cond_16
    throw v4

    .line 133
    :cond_17
    iget-object v1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v2, "third_party_cookies"

    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 135
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_18

    .line 136
    invoke-static {v0, p1}, LJ/N;->MkPh5osO(Ljava/lang/Object;Z)V

    goto :goto_5

    :cond_18
    throw v4

    .line 137
    :cond_19
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v1, "notifications_vibrate"

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 139
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_1a

    .line 140
    invoke-static {v0, p1}, LJ/N;->MvF_rde9(Ljava/lang/Object;Z)V

    goto :goto_5

    :cond_1a
    throw v4

    :cond_1b
    :goto_5
    return v3
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b026d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const p1, 0x7f13033a

    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f130337

    .line 39
    :cond_0
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {p0, p1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v4

    .line 41
    invoke-virtual {v0, v1, p1, v4, v2}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    return v3

    .line 42
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->G0:Landroid/view/MenuItem;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v4

    invoke-static {p1, v0, v1, v4}, LIy0;->a(Landroid/view/MenuItem;Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 43
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 44
    :cond_2
    iput-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q()V

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v1, "allowed_group"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->M0:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->M0:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v0, "blocked_group"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->L0:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->L0:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->N0:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->N0:Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q()V

    return v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 2
    invoke-virtual {v1}, LuC0;->b()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    :goto_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 5
    invoke-virtual {v4}, LuC0;->b()I

    move-result v4

    .line 6
    invoke-static {v3, v4, p1, v0}, LJ/N;->Mb3LSqSL(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 7
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v4

    const v5, 0x7f130670

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v3, p1, v5}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q()V

    .line 12
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, LuC0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    if-ne v0, v2, :cond_1

    const-string p1, "SoundContentSetting.MuteBy.PatternException"

    .line 13
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "SoundContentSetting.UnmuteBy.PatternException"

    .line 14
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "blocked_group"

    .line 3
    invoke-virtual {v0, v1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 5
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 6
    invoke-virtual {p1, v0}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->p()V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->K0:Z

    if-nez v1, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f130673

    goto :goto_0

    :cond_3
    const v1, 0x7f130672

    .line 10
    :goto_0
    invoke-virtual {p0, v1, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->a(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 11
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->L0:Z

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->f(Z)V

    return-void
.end method

.method public final i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "managed_group"

    .line 3
    invoke-virtual {v0, v1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 5
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 6
    invoke-virtual {p1, v0}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->p()V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->K0:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    const v1, 0x7f130699

    .line 9
    invoke-virtual {p0, v1, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->a(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 10
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->N0:Z

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->f(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->H0:Landroid/widget/Button;

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q0:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOC0;

    .line 4
    iget-object v2, v2, LOC0;->n0:LyC0;

    .line 5
    invoke-virtual {v2}, LyC0;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, LO8;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v2

    invoke-direct {p1, v2}, LO8;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1305af

    .line 7
    new-instance v3, LgC0;

    invoke-direct {v3, p0}, LgC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    invoke-virtual {p1, v2, v3}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v2, 0x7f1301d4

    const/4 v3, 0x0

    .line 8
    invoke-virtual {p1, v2, v3}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v2, 0x7f1305b1

    .line 9
    invoke-virtual {p1, v2}, LO8;->b(I)LO8;

    const v2, 0x7f1305b0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 10
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 11
    invoke-virtual {p0, v2, v3}, Lz2;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p1, LO8;->a:LK8;

    iput-object v0, v1, LK8;->h:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {p1}, LO8;->a()LP8;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method
