.class public Lv0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public e:Landroid/view/View;

.field public f:Landroid/support/design/widget/TabLayout;

.field public g:Lx0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lv0;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lv0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv0;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lv0;->g:Lx0;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lv0;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Lv0;->c()V

    return-object p0
.end method

.method public a()Z
    .locals 2

    .line 5
    iget-object v0, p0, Lv0;->f:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->a()I

    move-result v0

    iget v1, p0, Lv0;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv0;->f:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/support/design/widget/TabLayout;->b(Lv0;Z)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0;->g:Lx0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lx0;->a()V

    :cond_0
    return-void
.end method
