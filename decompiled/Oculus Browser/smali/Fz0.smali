.class public LFz0;
.super LOz0;
.source "PG"


# instance fields
.field public final synthetic I:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, LFz0;->I:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    .line 2
    invoke-direct {p0, p2}, LOz0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ldh;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, LOz0;->a(Ldh;I)V

    .line 2
    check-cast p1, LNz0;

    .line 3
    iget-object v0, p0, LXM0;->B:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, LHz0;

    iget-object v0, p0, LFz0;->I:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->z0:LJz0;

    .line 6
    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    new-instance v1, LMz0;

    invoke-direct {v1, v0, p2}, LMz0;-><init>(LJz0;LHz0;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
