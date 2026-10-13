.class public Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;
.super Landroid/widget/ScrollView;
.source "PG"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lzz0;


# instance fields
.field public A:Landroid/widget/CheckBox;

.field public B:I

.field public w:LAz0;

.field public x:Landroid/widget/TextView;

.field public y:Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

.field public z:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, LAz0;

    invoke-direct {p2, p1, p0}, LAz0;-><init>(Landroid/content/Context;Lzz0;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->w:LAz0;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->w:LAz0;

    .line 2
    iget v0, v0, LAz0;->w:I

    .line 3
    sget v1, LAz0;->D:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->B:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->w:LAz0;

    invoke-virtual {v0}, LAz0;->b()I

    move-result v0

    .line 5
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->z:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->w:LAz0;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->z:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    :goto_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2, p1}, LJ/N;->MjS06q3K(Ljava/lang/Object;I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    const v0, 0x7f0b0445

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->x:Landroid/widget/TextView;

    const v0, 0x7f0b01c3

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->y:Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

    const v0, 0x7f0b01c2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->z:Landroid/widget/Spinner;

    const v0, 0x7f0b03eb

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->A:Landroid/widget/CheckBox;

    return-void
.end method
