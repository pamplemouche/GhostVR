.class public Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public final J:[Ljava/lang/String;

.field public final K:I

.field public final L:Ljava/lang/String;

.field public M:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v2, 0x7f0600e9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p4

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p5, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->L:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->J:[Ljava/lang/String;

    .line 4
    iput p3, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->K:I

    return-void
.end method

.method private getSelectedUsername()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->J:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->M:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static show(I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 8

    .line 1
    new-instance v7, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;

    invoke-static {p0}, LGZ;->a(I)I

    move-result v1

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;-><init>(I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 2
    invoke-virtual {p1}, LUf0;->a()LRf0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->J:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    .line 4
    new-instance v1, LQf0;

    .line 5
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 6
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->J:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, LQf0;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    const v2, 0x7f0b032e

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0e00d8

    invoke-virtual {v3, v5, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 8
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 9
    new-instance v1, LPf0;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, LPf0;-><init>(LOf0;)V

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setId(I)V

    .line 11
    iput-object v3, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->M:Landroid/widget/Spinner;

    .line 12
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->K:I

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 13
    :cond_0
    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 14
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p1}, LUf0;->a()LRf0;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->L:Ljava/lang/String;

    invoke-virtual {p1, v0}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    :cond_1
    return-void
.end method
