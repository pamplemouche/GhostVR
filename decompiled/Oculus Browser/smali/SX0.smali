.class public final LSX0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:[F

.field public e:Z

.field public f:F

.field public g:F

.field public h:F

.field public i:Z

.field public j:Z

.field public k:F

.field public l:F

.field public m:F

.field public n:Landroid/view/inputmethod/CursorAnchorInfo;

.field public final o:Landroid/graphics/Matrix;

.field public final p:[I

.field public final q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public r:LL01;

.field public final s:LQX0;

.field public final t:LRX0;


# direct methods
.method public constructor <init>(LL01;LQX0;LRX0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LSX0;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, LSX0;->p:[I

    .line 4
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, LSX0;->q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 5
    iput-object p1, p0, LSX0;->r:LL01;

    .line 6
    iput-object p2, p0, LSX0;->s:LQX0;

    .line 7
    iput-object p3, p0, LSX0;->t:LRX0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    .line 7
    iget-boolean v1, v0, LSX0;->e:Z

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v1, v0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 9
    iget-object v1, v0, LSX0;->q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 10
    iget-object v1, v0, LSX0;->s:LQX0;

    move-object v3, v1

    check-cast v3, LUX0;

    .line 11
    iget-object v3, v3, LUX0;->a:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 12
    iget-object v3, v3, Lorg/chromium/content/browser/input/ImeAdapterImpl;->P:Ljava/lang/String;

    .line 13
    move-object v4, v1

    check-cast v4, LUX0;

    .line 14
    iget-object v4, v4, LUX0;->a:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 15
    iget v4, v4, Lorg/chromium/content/browser/input/ImeAdapterImpl;->N:I

    .line 16
    move-object v5, v1

    check-cast v5, LUX0;

    .line 17
    iget-object v5, v5, LUX0;->a:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 18
    iget v5, v5, Lorg/chromium/content/browser/input/ImeAdapterImpl;->O:I

    .line 19
    move-object v6, v1

    check-cast v6, LUX0;

    .line 20
    iget-object v6, v6, LUX0;->a:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 21
    iget v6, v6, Lorg/chromium/content/browser/input/ImeAdapterImpl;->Q:I

    .line 22
    check-cast v1, LUX0;

    .line 23
    iget-object v1, v1, LUX0;->a:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 24
    iget v1, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->R:I

    if-eqz v3, :cond_1

    if-ltz v6, :cond_1

    .line 25
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v1, v7, :cond_1

    .line 26
    iget-object v7, v0, LSX0;->q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 27
    invoke-interface {v3, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 28
    invoke-virtual {v7, v6, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 29
    iget-object v1, v0, LSX0;->d:[F

    if-eqz v1, :cond_1

    .line 30
    array-length v3, v1

    div-int/lit8 v3, v3, 0x4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_1

    mul-int/lit8 v8, v7, 0x4

    .line 31
    aget v11, v1, v8

    add-int/lit8 v9, v8, 0x1

    .line 32
    aget v12, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 33
    aget v13, v1, v9

    add-int/lit8 v8, v8, 0x3

    .line 34
    aget v14, v1, v8

    add-int v10, v6, v7

    .line 35
    iget-object v9, v0, LSX0;->q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, v0, LSX0;->q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 37
    iget-object v1, v0, LSX0;->o:Landroid/graphics/Matrix;

    iget v3, v0, LSX0;->f:F

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 38
    iget-object v1, v0, LSX0;->o:Landroid/graphics/Matrix;

    iget v3, v0, LSX0;->g:F

    iget v4, v0, LSX0;->h:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 39
    iget-object v1, v0, LSX0;->q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, v0, LSX0;->o:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 40
    iget-boolean v1, v0, LSX0;->i:Z

    if-eqz v1, :cond_3

    .line 41
    iget-object v3, v0, LSX0;->q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget v4, v0, LSX0;->k:F

    iget v5, v0, LSX0;->l:F

    iget v7, v0, LSX0;->m:F

    .line 42
    iget-boolean v1, v0, LSX0;->j:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    const/4 v8, 0x2

    :goto_1
    move v6, v7

    .line 43
    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 44
    :cond_3
    iget-object v1, v0, LSX0;->q:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    iput-object v1, v0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 45
    :cond_4
    iget-object v1, v0, LSX0;->r:LL01;

    if-eqz v1, :cond_6

    .line 46
    iget-object v3, v0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    check-cast v1, LYX0;

    .line 47
    invoke-virtual {v1}, LYX0;->a()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, p1

    .line 48
    invoke-virtual {v1, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 49
    :cond_6
    :goto_2
    iput-boolean v2, v0, LSX0;->b:Z

    return-void
.end method

.method public a(ZZLandroid/view/View;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LSX0;->a:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-boolean v1, p0, LSX0;->c:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 4
    :cond_2
    :goto_0
    iput-boolean p2, p0, LSX0;->c:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 5
    iput-boolean p2, p0, LSX0;->b:Z

    .line 6
    invoke-virtual {p0, p3}, LSX0;->a(Landroid/view/View;)V

    :cond_3
    return p2
.end method
