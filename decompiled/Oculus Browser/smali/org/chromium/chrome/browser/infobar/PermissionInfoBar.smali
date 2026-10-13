.class public Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"

# interfaces
.implements Lhx0;


# instance fields
.field public final J:Lorg/chromium/chrome/browser/tab/Tab;

.field public K:[I

.field public L:Z

.field public M:Z

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v8, p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v2, 0x7f0600e9

    move-object v0, p0

    move v1, p3

    move-object v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 2
    iput-object v0, v8, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->J:Lorg/chromium/chrome/browser/tab/Tab;

    move-object v0, p2

    .line 3
    iput-object v0, v8, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->K:[I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, v8, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->L:Z

    .line 5
    iput-boolean v0, v8, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->M:Z

    move-object v0, p5

    .line 6
    iput-object v0, v8, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->N:Ljava/lang/String;

    move-object v0, p4

    .line 7
    iput-object v0, v8, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->O:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 8
    iput-object v0, v8, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->P:Ljava/lang/String;

    return-void
.end method

.method public static create(Lorg/chromium/chrome/browser/tab/Tab;[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;
    .locals 11

    .line 1
    invoke-static {p2}, LGZ;->a(I)I

    move-result v3

    .line 2
    new-instance v10, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;-><init>(Lorg/chromium/chrome/browser/tab/Tab;[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 1

    .line 6
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 7
    iget-object p1, p1, LUf0;->G:LRf0;

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    return-void
.end method

.method public a(Lpf0;)V
    .locals 2

    .line 1
    new-instance v0, Lof0;

    invoke-direct {v0, p1}, Lof0;-><init>(Lpf0;)V

    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->O:Ljava/lang/String;

    .line 2
    iput-object p1, v0, Lof0;->b:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->N:Ljava/lang/String;

    new-instance v1, LZf0;

    invoke-direct {v1, p0}, LZf0;-><init>(Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lof0;->a(Ljava/lang/CharSequence;Lorg/chromium/base/Callback;)Lof0;

    .line 5
    invoke-virtual {v0}, Lof0;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 5

    xor-int/lit8 v0, p1, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->L:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->b(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->J:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->K:[I

    .line 5
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 6
    invoke-static {v0, v3, p0}, Lix0;->a(Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 7
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0xa

    .line 8
    invoke-static {v3}, LuC0;->e(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "category"

    .line 9
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 11
    const-class v4, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    .line 12
    invoke-static {v3, v4, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_3
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    .line 13
    :cond_4
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->b(I)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->b(I)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->M:Z

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->a(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->d()V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->E:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->L:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->M:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAndroidPermissionAccepted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/PermissionInfoBar;->c(Z)V

    return-void
.end method

.method public onAndroidPermissionCanceled()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    return-void
.end method
