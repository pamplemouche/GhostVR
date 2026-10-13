.class public Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;
.super Ls2;
.source "PG"


# instance fields
.field public D0:[Ljava/lang/String;

.field public E0:Ljava/util/Map;

.field public F0:[Ljava/lang/String;

.field public G0:Ljava/util/Map;

.field public H0:LP8;

.field public I0:LTA0;

.field public J0:LIa0;

.field public K0:Lorg/chromium/chrome/browser/profiles/Profile;

.field public L0:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->E0:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->G0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public g(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lz2;->g(Landroid/os/Bundle;)V

    const-string v0, "ImportantDomains"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->D0:[Ljava/lang/String;

    const-string v0, "FaviconURLs"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->F0:[Ljava/lang/String;

    const-string v0, "ImportantDomainReasons"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->D0:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 6
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->E0:Ljava/util/Map;

    aget-object v1, v1, v0

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->G0:Ljava/util/Map;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->D0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->D0:[Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->F0:[Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Ls2;->g(Z)V

    .line 4
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->K0:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 5
    new-instance v1, LIa0;

    invoke-direct {v1, p1}, LIa0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->J0:LIa0;

    .line 6
    sget-object p1, LzT;->a:Landroid/content/Context;

    const-string v1, "activity"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 8
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    mul-int/lit8 p1, p1, 0x19

    mul-int/lit16 p1, p1, 0x400

    const v1, 0x19000

    .line 9
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->J0:LIa0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 11
    new-instance v3, LFa0;

    invoke-direct {v3, v1, p1}, LFa0;-><init>(LIa0;I)V

    iput-object v3, v1, LIa0;->c:Landroid/util/LruCache;

    .line 12
    new-instance p1, LTA0;

    iget-object v6, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->D0:[Ljava/lang/String;

    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->F0:[Ljava/lang/String;

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, LTA0;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/res/Resources;LRA0;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->I0:LTA0;

    .line 13
    new-instance p1, LRA0;

    invoke-direct {p1, p0}, LRA0;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;)V

    .line 14
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0e0055

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b03c8

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->L0:Landroid/widget/ListView;

    .line 16
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->I0:LTA0;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->L0:Landroid/widget/ListView;

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->I0:LTA0;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 18
    new-instance v2, LO8;

    .line 19
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    const v4, 0x7f140245

    invoke-direct {v2, v3, v4}, LO8;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1305b1

    .line 20
    invoke-virtual {v2, v3}, LO8;->b(I)LO8;

    const v3, 0x7f1301e9

    .line 21
    invoke-virtual {v2, v3, p1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v3, 0x7f1301d4

    .line 22
    invoke-virtual {v2, v3, p1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 23
    iget-object p1, v2, LO8;->a:LK8;

    iput-object v1, p1, LK8;->u:Landroid/view/View;

    .line 24
    iput v0, p1, LK8;->t:I

    .line 25
    iput-boolean v0, p1, LK8;->v:Z

    .line 26
    invoke-virtual {v2}, LO8;->a()LP8;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->H0:LP8;

    return-object p1

    .line 27
    :cond_1
    throw v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Ls2;->A0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->J0:LIa0;

    if-eqz p1, :cond_1

    .line 4
    iget-wide v0, p1, LIa0;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    invoke-static {v0, v1}, LJ/N;->MJaut_pX(J)V

    .line 6
    iput-wide v2, p1, LIa0;->b:J

    :cond_1
    return-void
.end method
