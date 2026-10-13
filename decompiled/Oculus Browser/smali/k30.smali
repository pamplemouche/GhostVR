.class public Lk30;
.super Lg11;
.source "PG"


# instance fields
.field public final synthetic a:Lp30;


# direct methods
.method public constructor <init>(Lp30;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk30;->a:Lp30;

    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didFinishNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lk30;->a:Lp30;

    .line 4
    iget-object v0, p1, Lp30;->B:Lr30;

    .line 5
    iget-object p1, p1, Lp30;->z:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 7
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->j()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, v0, Lr30;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0b019a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    invoke-static {p1}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public titleWasSet(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk30;->a:Lp30;

    .line 2
    iget-object v0, v0, Lp30;->B:Lr30;

    .line 3
    iget-object v0, v0, Lr30;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0b019c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
