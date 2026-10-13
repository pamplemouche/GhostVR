.class public LTx0;
.super Landroid/widget/RelativeLayout;
.source "PG"

# interfaces
.implements Lyx0;
.implements LYg;
.implements Lwx0;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Z

.field public B:Lsc1;

.field public C:Lxx0;

.field public D:Landroid/support/v7/widget/RecyclerView;

.field public E:LKx0;

.field public F:Landroid/support/v7/widget/GridLayoutManager;

.field public G:LRx0;

.field public H:LrR0;

.field public I:LBT;

.field public J:LBT;

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:Lzx0;

.field public Q:J

.field public R:Z

.field public S:Ljava/util/List;

.field public T:Landroid/widget/VideoView;

.field public U:Landroid/widget/MediaController;

.field public w:LIx0;

.field public x:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

.field public y:Lorg/chromium/chrome/browser/ChromeActivity;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLJx0;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    move-object v3, v1

    check-cast v3, Lorg/chromium/chrome/browser/ChromeActivity;

    iput-object v3, v0, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    iput-boolean v2, v0, LTx0;->A:Z

    .line 4
    new-instance v3, Lxx0;

    invoke-direct {v3, v0, v1}, Lxx0;-><init>(Lwx0;Landroid/content/Context;)V

    iput-object v3, v0, LTx0;->C:Lxx0;

    .line 5
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v3, Lxx0;->r:Landroid/content/Context;

    const-class v6, Lorg/chromium/chrome/browser/photo_picker/DecoderService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    const-class v5, LCx0;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v5, v3, Lxx0;->r:Landroid/content/Context;

    iget-object v3, v3, Lxx0;->l:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 8
    new-instance v3, LrR0;

    invoke-direct {v3}, LrR0;-><init>()V

    iput-object v3, v0, LTx0;->H:LrR0;

    if-nez v2, :cond_0

    .line 9
    iput-boolean v6, v3, LrR0;->a:Z

    .line 10
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0e0165

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b03c9

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    iput-object v1, v0, LTx0;->x:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    .line 12
    new-instance v1, LKx0;

    invoke-direct {v1, v0}, LKx0;-><init>(LTx0;)V

    iput-object v1, v0, LTx0;->E:LKx0;

    .line 13
    iget-object v3, v0, LTx0;->x:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a(LBg;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iput-object v1, v0, LTx0;->D:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    const v1, 0x7f1304ed

    const v10, 0x7f1304ed

    goto :goto_0

    :cond_1
    const v1, 0x7f1304ec

    const v10, 0x7f1304ec

    .line 14
    :goto_0
    iget-object v7, v0, LTx0;->x:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    const v8, 0x7f0e0166

    iget-object v9, v0, LTx0;->H:LrR0;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a(ILrR0;IIILTh;ZZ)LpR0;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/photo_picker/PhotoPickerToolbar;

    .line 15
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 16
    iget-object v2, v1, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v2, p3

    .line 17
    iput-object v2, v1, Lorg/chromium/chrome/browser/photo_picker/PhotoPickerToolbar;->T0:LJx0;

    const v2, 0x7f0b016a

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b04eb

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, v0, LTx0;->T:Landroid/widget/VideoView;

    .line 21
    invoke-virtual/range {p0 .. p0}, LTx0;->a()V

    .line 22
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, v0, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    iget v3, v0, LTx0;->M:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, LTx0;->F:Landroid/support/v7/widget/GridLayoutManager;

    .line 23
    iget-object v2, v0, LTx0;->D:Landroid/support/v7/widget/RecyclerView;

    .line 24
    iput-boolean v6, v2, Landroid/support/v7/widget/RecyclerView;->O:Z

    .line 25
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 26
    new-instance v1, LRx0;

    iget v2, v0, LTx0;->M:I

    iget v3, v0, LTx0;->N:I

    invoke-direct {v1, v0, v2, v3}, LRx0;-><init>(LTx0;II)V

    iput-object v1, v0, LTx0;->G:LRx0;

    .line 27
    iget-object v2, v0, LTx0;->D:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->a(LLg;)V

    .line 28
    iget-object v1, v0, LTx0;->D:Landroid/support/v7/widget/RecyclerView;

    .line 29
    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView;->J:LYg;

    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    .line 31
    div-long/2addr v1, v3

    const-wide/16 v3, 0x2

    .line 32
    div-long v3, v1, v3

    long-to-int v4, v3

    iput v4, v0, LTx0;->K:I

    const-wide/16 v3, 0x8

    .line 33
    div-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, v0, LTx0;->L:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 17
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 18
    iget-object v1, p0, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    iget-object v1, p0, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 21
    invoke-virtual {v1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 22
    iget-object v2, p0, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07025b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, LTx0;->N:I

    sub-int v3, v0, v2

    add-int/2addr v1, v2

    .line 23
    div-int/2addr v3, v1

    const/4 v1, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, LTx0;->M:I

    .line 24
    iget v3, p0, LTx0;->N:I

    add-int/lit8 v4, v2, 0x1

    mul-int v4, v4, v3

    sub-int/2addr v0, v4

    div-int/2addr v0, v2

    iput v0, p0, LTx0;->O:I

    .line 25
    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, LTx0;->N:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eq v2, v0, :cond_2

    .line 26
    iget v0, p0, LTx0;->N:I

    add-int/2addr v0, v1

    iput v0, p0, LTx0;->N:I

    :cond_2
    return-void
.end method

.method public final a(I[Landroid/net/Uri;I)V
    .locals 1

    .line 27
    iget-object v0, p0, LTx0;->B:Lsc1;

    invoke-interface {v0, p1, p2}, Lsc1;->a(I[Landroid/net/Uri;)V

    .line 28
    iget-object p1, p0, LTx0;->w:LIx0;

    invoke-virtual {p1}, LIx0;->dismiss()V

    .line 29
    sget-object p1, Lwc1;->c:Lvc1;

    if-nez p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    check-cast p1, Lvh0;

    const/4 p2, 0x0

    .line 31
    iput-object p2, p1, Lvh0;->a:LIx0;

    :goto_0
    const-string p1, "Android.PhotoPicker.DialogAction"

    const/4 p2, 0x4

    .line 32
    invoke-static {p1, p3, p2}, LfV;->a(Ljava/lang/String;II)V

    .line 33
    iget-object p1, p0, LTx0;->E:LKx0;

    .line 34
    iget p1, p1, LKx0;->A:I

    const-string p2, "Android.PhotoPicker.DecodeRequests"

    .line 35
    invoke-static {p2, p1}, LfV;->c(Ljava/lang/String;I)V

    .line 36
    iget-object p1, p0, LTx0;->E:LKx0;

    .line 37
    iget p1, p1, LKx0;->z:I

    const-string p2, "Android.PhotoPicker.CacheHits"

    .line 38
    invoke-static {p2, p1}, LfV;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ldh;)V
    .locals 2

    .line 11
    check-cast p1, LMx0;

    .line 12
    invoke-virtual {p1}, LMx0;->p()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, LTx0;->C:Lxx0;

    .line 14
    iget-object v1, v0, Lxx0;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, v0, Lxx0;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, v0, Lxx0;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LTx0;->Q:J

    sub-long/2addr v0, v2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    const-string v2, "Android.PhotoPicker.EnumerationTime"

    .line 3
    invoke-static {v2, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Android.PhotoPicker.EnumeratedFiles"

    const/4 v2, 0x1

    const/16 v4, 0x2710

    const/16 v5, 0x32

    .line 5
    invoke-static {v1, v0, v2, v4, v5}, LfV;->a(Ljava/lang/String;IIII)V

    const-string v0, "Android.PhotoPicker.EnumeratedRate"

    .line 6
    invoke-static {v0, v3}, LfV;->a(Ljava/lang/String;I)V

    .line 7
    iput-object p1, p0, LTx0;->z:Ljava/util/List;

    .line 8
    iget-boolean p1, p0, LTx0;->R:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, LTx0;->E:LKx0;

    .line 10
    iget-object p1, p1, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    :cond_0
    return-void
.end method

.method public b()Landroid/util/LruCache;
    .locals 3

    .line 1
    iget-object v0, p0, LTx0;->J:LBT;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LBT;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->J0()LCT;

    move-result-object v0

    new-instance v1, Landroid/util/LruCache;

    iget v2, p0, LTx0;->K:I

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    invoke-virtual {v0, v1}, LCT;->a(Ljava/lang/Object;)LBT;

    move-result-object v0

    iput-object v0, p0, LTx0;->J:LBT;

    .line 4
    :cond_1
    iget-object v0, p0, LTx0;->J:LBT;

    .line 5
    iget-object v0, v0, LBT;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, Landroid/util/LruCache;

    return-object v0
.end method

.method public c()Landroid/util/LruCache;
    .locals 3

    .line 1
    iget-object v0, p0, LTx0;->I:LBT;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LBT;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->J0()LCT;

    move-result-object v0

    new-instance v1, Landroid/util/LruCache;

    iget v2, p0, LTx0;->L:I

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    invoke-virtual {v0, v1}, LCT;->a(Ljava/lang/Object;)LBT;

    move-result-object v0

    iput-object v0, p0, LTx0;->I:LBT;

    .line 4
    :cond_1
    iget-object v0, p0, LTx0;->I:LBT;

    .line 5
    iget-object v0, v0, LBT;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, Landroid/util/LruCache;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b016a

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, LTx0;->H:LrR0;

    invoke-virtual {p1}, LrR0;->b()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLx0;

    add-int/lit8 v3, v1, 0x1

    .line 6
    iget-object v2, v2, LLx0;->w:Landroid/net/Uri;

    .line 7
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1, v0, p1}, LTx0;->a(I[Landroid/net/Uri;I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0b00d0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    const p1, 0x7f0b0355

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, LTx0;->T:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 11
    iget-object p1, p0, LTx0;->T:Landroid/widget/VideoView;

    invoke-virtual {p1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 12
    iget-object p1, p0, LTx0;->U:Landroid/widget/MediaController;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 13
    iput-object v2, p0, LTx0;->U:Landroid/widget/MediaController;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0, v1, v2, v1}, LTx0;->a(I[Landroid/net/Uri;I)V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, LTx0;->a()V

    .line 3
    iget-object p1, p0, LTx0;->F:Landroid/support/v7/widget/GridLayoutManager;

    iget v0, p0, LTx0;->M:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->k(I)V

    .line 4
    iget-object p1, p0, LTx0;->D:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, LTx0;->G:LRx0;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->b(LLg;)V

    .line 5
    new-instance p1, LRx0;

    iget v0, p0, LTx0;->M:I

    iget v1, p0, LTx0;->N:I

    invoke-direct {p1, p0, v0, v1}, LRx0;-><init>(LTx0;II)V

    iput-object p1, p0, LTx0;->G:LRx0;

    .line 6
    iget-object v0, p0, LTx0;->D:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(LLg;)V

    .line 7
    iget-object p1, p0, LTx0;->z:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, LTx0;->E:LKx0;

    .line 8
    iget-object p1, p1, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    :cond_0
    return-void
.end method
