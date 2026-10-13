.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;
.super LU10;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LU10;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public d()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060169

    .line 2
    invoke-static {v0, v1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, LU10;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060169

    const v2, 0x7f08013c

    .line 3
    invoke-static {v0, v2, v1}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, LhR0;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
