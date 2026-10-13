.class public LQp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LHp0;
.implements LJp0;
.implements Landroid/text/TextWatcher;


# instance fields
.field public A:I

.field public B:I

.field public final C:Ljava/util/List;

.field public final D:Ljava/util/List;

.field public final w:Lle1;

.field public x:Lorg/chromium/base/Callback;

.field public y:Z

.field public z:LNp0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LQp0;

    return-void
.end method

.method public constructor <init>(Lle1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LQp0;->A:I

    .line 3
    iput v0, p0, LQp0;->B:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LQp0;->C:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LQp0;->D:Ljava/util/List;

    .line 6
    iput-object p1, p0, LQp0;->w:Lle1;

    .line 7
    sget-object v1, LTp0;->e:Lke1;

    new-instance v2, LPp0;

    invoke-direct {v2, p0}, LPp0;-><init>(LQp0;)V

    invoke-virtual {p1, v1, v2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, LQp0;->w:Lle1;

    sget-object v1, LTp0;->f:Lhe1;

    invoke-virtual {p1, v1, v0}, Lle1;->a(Lhe1;Z)V

    .line 9
    iget-object p1, p0, LQp0;->w:Lle1;

    sget-object v0, LTp0;->g:Lke1;

    invoke-virtual {p1, v0, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, LQp0;->w:Lle1;

    sget-object v0, LTp0;->j:Lke1;

    invoke-virtual {p1, v0, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, LQp0;->w:Lle1;

    sget-object v0, LTp0;->k:Lke1;

    invoke-virtual {p1, v0, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, LQp0;->a(Z)Z

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-gtz p1, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-boolean v0, p0, LQp0;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQp0;->z:LNp0;

    iget-object v0, v0, LNp0;->b:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LQp0;->z:LNp0;

    .line 2
    iget-object v1, v0, LNp0;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, LNp0;->b:Ljava/lang/CharSequence;

    .line 3
    :goto_0
    iget-boolean v1, p0, LQp0;->y:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, LQp0;->z:LNp0;

    iget-object v1, v1, LNp0;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 4
    :goto_1
    iget-boolean v1, p0, LQp0;->y:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    iget v1, p0, LQp0;->A:I

    move v5, v1

    :goto_2
    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    move-object v3, v0

    .line 5
    new-instance v0, LSp0;

    iget-object v1, p0, LQp0;->z:LNp0;

    iget v6, v1, LNp0;->e:I

    iget v7, p0, LQp0;->B:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, LSp0;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    .line 6
    iget-object v1, p0, LQp0;->w:Lle1;

    sget-object v2, LTp0;->h:Lke1;

    invoke-virtual {v1, v2, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, LQp0;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, LQp0;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJp0;

    invoke-interface {v1, p1, p2}, LJp0;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 3

    .line 7
    iget-object v0, p0, LQp0;->w:Lle1;

    sget-object v1, LTp0;->l:Lhe1;

    invoke-virtual {v0, v1}, Lle1;->a(Lce1;)Z

    move-result v0

    .line 8
    iget-object v1, p0, LQp0;->w:Lle1;

    sget-object v2, LTp0;->l:Lhe1;

    invoke-virtual {v1, v2, p1}, Lle1;->a(Lhe1;Z)V

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LQp0;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LQp0;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    invoke-interface {v1, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LQp0;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LQp0;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LQp0;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LQp0;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
