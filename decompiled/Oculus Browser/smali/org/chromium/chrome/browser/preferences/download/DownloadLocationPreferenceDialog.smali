.class public Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreferenceDialog;
.super Lnc;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->O()Lec;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;

    const v1, 0x7f0b024f

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;->o0:LBz0;

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    invoke-super {p0, p1}, Lnc;->b(Landroid/view/View;)V

    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method
