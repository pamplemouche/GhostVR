.class public Lyv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements La91;
.implements LRw0;
.implements LJu0;
.implements LKu0;
.implements Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;
.implements Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;
.implements Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;
.implements Lzv0;
.implements LDw0;
.implements Lorg/chromium/chrome/browser/autofill/PersonalDataManager$NormalizedAddressRequestDelegate;
.implements LMv0;
.implements Lorg/chromium/components/payments/PaymentHandlerHost$PaymentHandlerHostDelegate;


# static fields
.field public static final N0:Ljava/util/Comparator;

.field public static final O0:Ljava/util/Comparator;

.field public static P0:Lyv0;


# instance fields
.field public final A:Lorg/chromium/content_public/browser/RenderFrameHost;

.field public A0:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field public final B:Lvv0;

.field public B0:LhU0;

.field public final C:Lwv0;

.field public C0:Ljava/util/Map;

.field public final D:Lorg/chromium/content_public/browser/WebContents;

.field public D0:Z

.field public final E:Ljava/lang/String;

.field public E0:Z

.field public final F:Ljava/lang/String;

.field public F0:Z

.field public final G:Ljava/lang/String;

.field public G0:Z

.field public final H:[[B

.field public H0:Z

.field public final I:LUt0;

.field public I0:Z

.field public final J:LBu0;

.field public J0:LAv0;

.field public final K:LHu0;

.field public K0:Ljava/lang/String;

.field public final L:Z

.field public L0:Z

.field public M:Lc91;

.field public M0:LPv0;

.field public N:Ljava/util/List;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public final U:Ljava/util/Queue;

.field public V:Lorg/chromium/payments/mojom/PaymentItem;

.field public W:Ljava/util/List;

.field public X:Ljava/util/Map;

.field public Y:Lcx0;

.field public Z:LZw0;

.field public a0:Ljava/lang/String;

.field public b0:Ljava/util/Map;

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:I

.field public h0:LZw0;

.field public i0:Ltw0;

.field public j0:Ljava/util/List;

.field public k0:Ljava/util/List;

.field public l0:Ljava/util/List;

.field public m0:I

.field public n0:LZw0;

.field public o0:LXw0;

.field public p0:Lgw0;

.field public q0:Lorg/chromium/base/Callback;

.field public r0:LQu0;

.field public s0:LVv0;

.field public t0:Z

.field public u0:Z

.field public v0:Z

.field public final w:LxI0;

.field public w0:LGu0;

.field public final x:LlI0;

.field public x0:Z

.field public final y:Lv30;

.field public y0:Ljava/util/Map;

.field public final z:Landroid/os/Handler;

.field public z0:LpI0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lyv0;

    .line 2
    sget-object v0, Lev0;->w:Ljava/util/Comparator;

    sput-object v0, Lyv0;->N0:Ljava/util/Comparator;

    .line 3
    sget-object v0, Lfv0;->w:Ljava/util/Comparator;

    sput-object v0, Lyv0;->O0:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;Lvv0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lpv0;

    invoke-direct {v0, p0}, Lpv0;-><init>(Lyv0;)V

    iput-object v0, p0, Lyv0;->w:LxI0;

    .line 3
    new-instance v0, Lqv0;

    invoke-direct {v0, p0}, Lqv0;-><init>(Lyv0;)V

    iput-object v0, p0, Lyv0;->x:LlI0;

    .line 4
    new-instance v0, Lrv0;

    invoke-direct {v0, p0}, Lrv0;-><init>(Lyv0;)V

    iput-object v0, p0, Lyv0;->y:Lv30;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lyv0;->z:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lyv0;->O:Z

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lyv0;->U:Ljava/util/Queue;

    .line 8
    iput-object p1, p0, Lyv0;->A:Lorg/chromium/content_public/browser/RenderFrameHost;

    .line 9
    iput-object p2, p0, Lyv0;->B:Lvv0;

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lyv0;->C:Lwv0;

    .line 11
    check-cast p1, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;

    .line 12
    iget-object p1, p1, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->b:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    if-eqz p1, :cond_1

    .line 13
    instance-of v1, p1, Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    check-cast p1, Lorg/chromium/content_public/browser/WebContents;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p2

    .line 15
    :goto_1
    iput-object p1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    .line 16
    iget-object p1, p0, Lyv0;->A:Lorg/chromium/content_public/browser/RenderFrameHost;

    .line 17
    invoke-interface {p1}, Lorg/chromium/content_public/browser/RenderFrameHost;->e()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, LJ/N;->MN7bz_Mm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iput-object p1, p0, Lyv0;->F:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    .line 21
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, LJ/N;->MN7bz_Mm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lyv0;->E:Ljava/lang/String;

    .line 24
    iget-object p1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyv0;->G:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    .line 26
    invoke-static {p1}, LJ/N;->M1JML7HW(Ljava/lang/Object;)[[B

    move-result-object p1

    .line 27
    iput-object p1, p0, Lyv0;->H:[[B

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyv0;->j0:Ljava/util/List;

    .line 29
    iget-object p1, p0, Lyv0;->B:Lvv0;

    iget-object v1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    check-cast p1, LYu0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p2

    invoke-interface {p2}, LdI0;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 31
    :goto_2
    iput-boolean p2, p0, Lyv0;->L:Z

    .line 32
    new-instance v1, LUt0;

    xor-int/2addr p2, v0

    invoke-direct {v1, v0, p2}, LUt0;-><init>(IZ)V

    iput-object v1, p0, Lyv0;->I:LUt0;

    .line 33
    new-instance p2, LBu0;

    iget-object v0, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p2, v0, v1, p1}, LBu0;-><init>(Lorg/chromium/content_public/browser/WebContents;LUt0;Z)V

    iput-object p2, p0, Lyv0;->J:LBu0;

    .line 34
    new-instance p1, LHu0;

    iget-boolean p2, p0, Lyv0;->L:Z

    iget-object v0, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p1, p2, v0}, LHu0;-><init>(ZLorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, p0, Lyv0;->K:LHu0;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyv0;->y0:Ljava/util/Map;

    return-void

    .line 36
    :cond_3
    throw p2
.end method

.method public static final synthetic a(LAQ0;LAQ0;)I
    .locals 0

    .line 845
    check-cast p1, LCQ0;

    .line 846
    iget p1, p1, LCQ0;->x:I

    .line 847
    check-cast p0, LCQ0;

    .line 848
    iget p0, p0, LCQ0;->x:I

    .line 849
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic a(LQu0;LQu0;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, LQu0;->o()Z

    move-result v0

    invoke-virtual {p1}, LQu0;->o()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p1, LCQ0;->x:I

    iget v1, p0, LCQ0;->x:I

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p1}, LQu0;->q()Z

    move-result v0

    .line 5
    invoke-virtual {p0}, LQu0;->q()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p1}, LQu0;->k()Z

    move-result v0

    invoke-virtual {p0}, LQu0;->k()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    iget-object v0, p1, LCQ0;->C:Ljava/lang/String;

    .line 8
    invoke-static {v0}, LVu0;->b(Ljava/lang/String;)I

    move-result v0

    .line 9
    iget-object p0, p0, LCQ0;->C:Ljava/lang/String;

    .line 10
    invoke-static {p0}, LVu0;->b(Ljava/lang/String;)I

    move-result p0

    .line 11
    iget-object v1, p1, LCQ0;->C:Ljava/lang/String;

    .line 12
    invoke-static {v1}, LVu0;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 13
    iget-object p1, p1, LCQ0;->C:Ljava/lang/String;

    .line 14
    invoke-static {p1}, LVu0;->a(Ljava/lang/String;)J

    move-result-wide v3

    .line 15
    invoke-static {v0, v1, v2}, Lyv0;->b(IJ)D

    move-result-wide v0

    invoke-static {p0, v3, v4}, Lyv0;->b(IJ)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/net/URI;)Z
    .locals 8

    .line 245
    sget-object p0, Lyv0;->P0:Lyv0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 246
    iget-object v2, p0, Lyv0;->s0:LVv0;

    if-eqz v2, :cond_0

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 247
    :cond_0
    new-instance v2, LVv0;

    invoke-direct {v2}, LVv0;-><init>()V

    iput-object v2, p0, Lyv0;->s0:LVv0;

    .line 248
    iget-object v2, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v3, p0, Lyv0;->s0:LVv0;

    new-instance v4, Liv0;

    invoke-direct {v4, p0}, Liv0;-><init>(Lyv0;)V

    const/4 p0, 0x0

    if-eqz v3, :cond_3

    .line 250
    new-instance v5, LWv0;

    new-instance v6, LRv0;

    invoke-direct {v6, v3}, LRv0;-><init>(LVv0;)V

    invoke-direct {v5, v6, v4}, LWv0;-><init>(Ljava/lang/Runnable;LUv0;)V

    .line 251
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->q0()LtQ0;

    move-result-object v4

    .line 252
    iget-object v6, v4, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 253
    iget-object v6, v6, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v6, v5}, LWT;->a(Ljava/lang/Object;)Z

    .line 254
    sget-object v6, LXv0;->a:[LUd1;

    .line 255
    invoke-static {v6}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v6

    .line 256
    new-instance v7, Lle1;

    invoke-direct {v7, v6, p0}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 257
    new-instance v6, LYv0;

    invoke-direct {v6, v2}, LYv0;-><init>(Landroid/content/Context;)V

    .line 258
    sget-object v2, LSv0;->a:Lne1;

    .line 259
    invoke-static {v7, v6, v2}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    move-result-object v2

    .line 260
    new-instance v7, LTv0;

    invoke-direct {v7, v2, v4, v5, v6}, LTv0;-><init>(Loe1;LtQ0;LWv0;LYv0;)V

    iput-object v7, v3, LVv0;->a:Ljava/lang/Runnable;

    .line 261
    iget-object v2, v4, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 262
    iget-object v2, v2, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-ne v6, v2, :cond_2

    .line 263
    invoke-virtual {v4}, LtQ0;->b()V

    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    .line 264
    :cond_2
    throw p0

    .line 265
    :cond_3
    throw p0

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static final b(IJ)D
    .locals 2

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    .line 209
    div-long/2addr v0, p1

    const-wide/16 p1, 0x2

    add-long/2addr v0, p1

    long-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    neg-double p1, p1

    add-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public a(ILCQ0;Lorg/chromium/base/Callback;)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 344
    check-cast p2, Lju0;

    invoke-virtual {p0, p2}, Lyv0;->a(Lju0;)V

    .line 345
    iput-object p3, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    return v0

    :cond_0
    const/4 p3, 0x2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 346
    check-cast p2, Lku0;

    invoke-virtual {p0, p2}, Lyv0;->a(Lku0;)V

    return p3

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 347
    check-cast p2, Lnu0;

    invoke-virtual {p0, p2}, Lyv0;->a(Lnu0;)V

    return p3

    :cond_2
    return v0
.end method

.method public final a(LT81;)LgU0;
    .locals 3

    .line 339
    iget-object v0, p1, LT81;->b:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lyv0;->y0:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LgU0;

    if-nez v1, :cond_0

    .line 341
    new-instance v1, LgU0;

    iget-object p1, p1, LT81;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, LgU0;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 342
    iget-object p1, p0, Lyv0;->y0:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 9

    if-nez p1, :cond_0

    .line 328
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 329
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 330
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 331
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/payments/mojom/PaymentItem;

    .line 332
    iget-object v4, v3, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    invoke-virtual {p0, v4}, Lyv0;->a(LT81;)LgU0;

    move-result-object v4

    .line 333
    new-instance v5, Lyw0;

    iget-object v6, v3, Lorg/chromium/payments/mojom/PaymentItem;->b:Ljava/lang/String;

    .line 334
    iget-object v7, p0, Lyv0;->y0:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    .line 335
    invoke-virtual {v4}, LgU0;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    const-string v7, ""

    :goto_2
    iget-object v8, v3, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v8, v8, LT81;->c:Ljava/lang/String;

    .line 336
    invoke-virtual {v4, v8}, LgU0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v3, v3, Lorg/chromium/payments/mojom/PaymentItem;->d:Z

    invoke-direct {v5, v6, v7, v4, v3}, Lyw0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 337
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(LQu0;)Lorg/chromium/payments/mojom/PaymentDetailsModifier;
    .locals 5

    .line 321
    iget-object v0, p0, Lyv0;->X:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, LQu0;->n()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 323
    iget-object v2, p0, Lyv0;->X:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 324
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 325
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    iget-object v3, p0, Lyv0;->X:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    .line 327
    iget-object v4, v3, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    invoke-virtual {p1, v2, v4}, LQu0;->a(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentMethodData;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_3
    :goto_0
    return-object v1
.end method

.method public a()V
    .locals 2

    .line 598
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyv0;->o0:LXw0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lyv0;->J0:LAv0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 599
    invoke-virtual {v0, v1}, LXw0;->a(Z)V

    .line 600
    iget-object v0, v0, LXw0;->D:Lxw0;

    .line 601
    iget-object v0, v0, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 7

    .line 635
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lyv0;->K:LHu0;

    .line 637
    iget-boolean v1, v0, LHu0;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 638
    iput-boolean v2, v0, LHu0;->b:Z

    .line 639
    iget-wide v3, v0, LHu0;->a:J

    .line 640
    invoke-static {v3, v4, v0}, LJ/N;->MYXbS3Jf(JLjava/lang/Object;)V

    .line 641
    :cond_1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v3, "payment_complete_once"

    .line 642
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 643
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 644
    invoke-static {v0, v3, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 645
    :cond_2
    iget-object v0, p0, Lyv0;->K:LHu0;

    iget-object v3, p0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v3, v3, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v4, v3, LT81;->b:Ljava/lang/String;

    iget-object v3, v3, LT81;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v2}, LHu0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 646
    iget-object v0, p0, Lyv0;->n0:LZw0;

    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    .line 647
    iget-object v3, v0, LCQ0;->C:Ljava/lang/String;

    .line 648
    sget-object v4, LyT;->a:Landroid/content/SharedPreferences;

    .line 649
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "payment_instrument_use_count_"

    invoke-static {v5, v3}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 650
    invoke-static {v3}, LVu0;->b(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 651
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 652
    iget-object v0, v0, LCQ0;->C:Ljava/lang/String;

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 654
    sget-object v4, LyT;->a:Landroid/content/SharedPreferences;

    .line 655
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "payment_instrument_use_date_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 657
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 658
    iget-object v0, p0, Lyv0;->p0:Lgw0;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 659
    new-instance p1, Lmv0;

    invoke-direct {p1, p0}, Lmv0;-><init>(Lyv0;)V

    const v1, 0x7f1304cc

    .line 660
    iget-object v0, v0, Lgw0;->a:Lpw0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lpw0;->a(Lfw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    goto :goto_0

    .line 661
    :cond_3
    new-instance p1, Lnv0;

    invoke-direct {p1, p0}, Lnv0;-><init>(Lyv0;)V

    .line 662
    iget-object v0, v0, Lgw0;->a:Lpw0;

    invoke-virtual {v0, p1}, Lpw0;->a(Lcw0;)V

    :goto_0
    return-void

    :cond_4
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 663
    :cond_5
    invoke-virtual {p0, v1}, Lyv0;->c(Z)V

    return-void
.end method

.method public a(ILorg/chromium/base/Callback;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lyv0;->z:Landroid/os/Handler;

    new-instance v1, Llv0;

    invoke-direct {v1, p0, p1, p2}, Llv0;-><init>(Lyv0;ILorg/chromium/base/Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(LF91;)V
    .locals 13

    .line 800
    iget-object v0, p0, Lyv0;->M0:LPv0;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-eqz v0, :cond_b

    const-string v2, "shippingAddress"

    const-string v3, ""

    const-string v4, "email"

    .line 801
    iget-object v5, p1, LF91;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    goto/16 :goto_6

    .line 802
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONTokener;

    iget-object v10, p1, LF91;->c:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 803
    iget-boolean v9, v0, LPv0;->c:Z

    if-eqz v9, :cond_1

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 804
    iget-object v9, p1, LF91;->f:LQ81;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, LQ81;->b:Ljava/lang/String;

    .line 805
    iget-boolean v9, v0, LPv0;->g:Z

    if-eqz v9, :cond_1

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 806
    :cond_1
    iget-boolean v4, v0, LPv0;->d:Z

    if-eqz v4, :cond_8

    .line 807
    iget-object v4, v0, LPv0;->i:Ljava/lang/String;

    iput-object v4, p1, LF91;->e:Ljava/lang/String;

    .line 808
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 809
    new-instance v9, LS81;

    invoke-direct {v9}, LS81;-><init>()V

    iput-object v9, p1, LF91;->d:LS81;

    const-string v10, "countryCode"

    .line 810
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, LS81;->b:Ljava/lang/String;

    .line 811
    iget-object v9, p1, LF91;->d:LS81;

    const-string v10, "administrativeArea"

    .line 812
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, LS81;->d:Ljava/lang/String;

    .line 813
    iget-object v9, p1, LF91;->d:LS81;

    const-string v10, "locality"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, LS81;->e:Ljava/lang/String;

    .line 814
    iget-object v9, p1, LF91;->d:LS81;

    const-string v10, "postalCode"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, LS81;->g:Ljava/lang/String;

    .line 815
    iget-object v9, p1, LF91;->d:LS81;

    const-string v10, "sortingCode"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, LS81;->h:Ljava/lang/String;

    .line 816
    iget-object v9, p1, LF91;->d:LS81;

    const-string v10, "name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, LS81;->j:Ljava/lang/String;

    .line 817
    iget-object v9, p1, LF91;->d:LS81;

    iput-object v3, v9, LS81;->f:Ljava/lang/String;

    .line 818
    iget-object v9, p1, LF91;->d:LS81;

    iput-object v3, v9, LS81;->i:Ljava/lang/String;

    .line 819
    iget-object v9, p1, LF91;->d:LS81;

    iput-object v3, v9, LS81;->k:Ljava/lang/String;

    const-string v3, "address1"

    .line 820
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "address2"

    .line 821
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "address3"

    .line 822
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 823
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x1

    .line 824
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    :goto_2
    add-int/2addr v10, v11

    .line 825
    iget-object v11, p1, LF91;->d:LS81;

    new-array v12, v10, [Ljava/lang/String;

    iput-object v12, v11, LS81;->c:[Ljava/lang/String;

    if-lez v10, :cond_7

    .line 826
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 827
    iget-object v10, p1, LF91;->d:LS81;

    iget-object v10, v10, LS81;->c:[Ljava/lang/String;

    aput-object v3, v10, v7

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 828
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 829
    iget-object v10, p1, LF91;->d:LS81;

    iget-object v10, v10, LS81;->c:[Ljava/lang/String;

    add-int/lit8 v11, v3, 0x1

    aput-object v9, v10, v3

    move v3, v11

    .line 830
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 831
    iget-object v9, p1, LF91;->d:LS81;

    iget-object v9, v9, LS81;->c:[Ljava/lang/String;

    aput-object v4, v9, v3

    .line 832
    :cond_7
    iget-boolean v3, v0, LPv0;->h:Z

    if-eqz v3, :cond_8

    .line 833
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_8
    const-string v2, "apiVersion"

    .line 834
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v6, :cond_9

    const-string v2, "cardInfo"

    .line 835
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 836
    invoke-virtual {v0, v2, p1}, LPv0;->a(Lorg/json/JSONObject;LF91;)V

    goto :goto_5

    :cond_9
    const-string v2, "paymentMethodData"

    .line 837
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v2, v1

    goto :goto_4

    :cond_a
    const-string v3, "info"

    .line 838
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 839
    :goto_4
    invoke-virtual {v0, v2, p1}, LPv0;->a(Lorg/json/JSONObject;LF91;)V

    .line 840
    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, LF91;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_c

    const-string v0, "Payment app response is not valid."

    .line 841
    invoke-virtual {p0, v0, v6}, Lyv0;->a(Ljava/lang/String;I)V

    goto :goto_7

    .line 842
    :cond_b
    throw v1

    .line 843
    :cond_c
    :goto_7
    iget-object v0, p0, Lyv0;->M:Lc91;

    check-cast v0, Lp91;

    invoke-virtual {v0, p1}, Lp91;->a(LF91;)V

    .line 844
    iput-object v1, p0, Lyv0;->J0:LAv0;

    return-void
.end method

.method public a(LH91;)V
    .locals 5

    .line 664
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p1}, LT61;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 666
    invoke-static {v1}, LJ/N;->MQ3mQqrV(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 667
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LHu0;->a(I)V

    const-string p1, "Invalid payment validation errors."

    .line 668
    invoke-virtual {p0, p1, v2}, Lyv0;->a(Ljava/lang/String;I)V

    return-void

    .line 669
    :cond_2
    iput-boolean v2, p0, Lyv0;->T:Z

    .line 670
    iget-object v1, p0, Lyv0;->o0:LXw0;

    .line 671
    iput-boolean v0, v1, LXw0;->a0:Z

    .line 672
    invoke-virtual {v1, v0}, LXw0;->a(Z)V

    .line 673
    iget-object v3, v1, LXw0;->D:Lxw0;

    .line 674
    iget-object v3, v3, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 675
    invoke-virtual {v1}, LXw0;->d()V

    .line 676
    iget-object v1, p1, LH91;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 677
    iget-object v1, p0, Lyv0;->o0:LXw0;

    iget-object v3, p1, LH91;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, LXw0;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 678
    :cond_3
    iget-object v1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    .line 679
    iget-object v3, p0, Lyv0;->o0:LXw0;

    .line 680
    invoke-virtual {v1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1304cc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-virtual {v3, v1}, LXw0;->a(Ljava/lang/String;)V

    .line 682
    :goto_1
    iget-boolean v1, p0, Lyv0;->c0:Z

    if-eqz v1, :cond_6

    iget-object v1, p1, LH91;->d:LO81;

    .line 683
    iget-object v3, v1, LO81;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LO81;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LO81;->d:Ljava/lang/String;

    .line 684
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LO81;->e:Ljava/lang/String;

    .line 685
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LO81;->f:Ljava/lang/String;

    .line 686
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LO81;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LO81;->h:Ljava/lang/String;

    .line 687
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LO81;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LO81;->j:Ljava/lang/String;

    .line 688
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, v1, LO81;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_6

    .line 689
    iget-object v1, p0, Lyv0;->U:Ljava/util/Queue;

    new-instance v3, Lov0;

    invoke-direct {v3, p0, p1}, Lov0;-><init>(Lyv0;LH91;)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_6
    iget-boolean v1, p0, Lyv0;->d0:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lyv0;->e0:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lyv0;->f0:Z

    if-eqz v1, :cond_a

    :cond_7
    iget-object v1, p1, LH91;->c:LR81;

    .line 691
    iget-object v3, v1, LR81;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, LR81;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, v1, LR81;->b:Ljava/lang/String;

    .line 692
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_a

    .line 693
    iget-object v0, p0, Lyv0;->U:Ljava/util/Queue;

    new-instance v1, Lbv0;

    invoke-direct {v1, p0, p1}, Lbv0;-><init>(Lyv0;LH91;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_a
    iget-object p1, p0, Lyv0;->U:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lyv0;->z:Landroid/os/Handler;

    iget-object v0, p0, Lyv0;->U:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method public a(LLu0;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(LLu0;Ljava/util/List;)V
    .locals 7

    .line 699
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lyv0;->k0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    .line 701
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 702
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQu0;

    .line 703
    new-instance v4, Ljava/util/HashSet;

    .line 704
    invoke-virtual {v3}, LQu0;->n()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 705
    iget-object v5, p0, Lyv0;->b0:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 706
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 707
    iget-boolean v5, p0, Lyv0;->v0:Z

    or-int/2addr v5, v1

    .line 708
    iput-boolean v5, p0, Lyv0;->v0:Z

    .line 709
    iget-boolean v5, p0, Lyv0;->O:Z

    .line 710
    iput-boolean v5, v3, LQu0;->G:Z

    .line 711
    iget-boolean v5, p0, Lyv0;->F0:Z

    invoke-virtual {v3}, LQu0;->j()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lyv0;->F0:Z

    .line 712
    iget-boolean v5, p0, Lyv0;->G0:Z

    invoke-virtual {v3}, LQu0;->o()Z

    move-result v6

    xor-int/2addr v6, v0

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lyv0;->G0:Z

    .line 713
    iget-object v5, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {v3}, LQu0;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 715
    iget-object v3, p0, Lyv0;->K:LHu0;

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, LHu0;->b(I)V

    goto :goto_2

    :cond_1
    const-string v3, "https://google.com/pay"

    .line 716
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https://android.com/pay"

    .line 717
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 718
    :cond_2
    iget-object v3, p0, Lyv0;->K:LHu0;

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, LHu0;->b(I)V

    goto :goto_2

    .line 719
    :cond_3
    :goto_1
    iget-object v3, p0, Lyv0;->K:LHu0;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, LHu0;->b(I)V

    goto :goto_2

    .line 720
    :cond_4
    invoke-virtual {v3}, LQu0;->l()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :cond_5
    iget-boolean p2, p0, Lyv0;->F0:Z

    iget-object v2, p0, Lyv0;->B:Lvv0;

    check-cast v2, LYu0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 722
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    if-eqz v2, :cond_1b

    const/4 v4, 0x7

    .line 723
    invoke-static {v2, v4}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v2

    and-int/2addr p2, v2

    .line 724
    iput-boolean p2, p0, Lyv0;->F0:Z

    .line 725
    invoke-interface {p1}, LLu0;->d()I

    move-result p1

    if-eqz p1, :cond_6

    .line 726
    iput p1, p0, Lyv0;->m0:I

    .line 727
    :cond_6
    iget-object p1, p0, Lyv0;->k0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 728
    :cond_7
    invoke-virtual {p0}, Lyv0;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 729
    :cond_8
    iget-boolean p1, p0, Lyv0;->v0:Z

    if-eqz p1, :cond_b

    .line 730
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 731
    :goto_3
    iget-object v2, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_a

    .line 732
    iget-object v2, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQu0;

    invoke-virtual {v2}, LQu0;->s()Z

    move-result v2

    if-nez v2, :cond_9

    .line 733
    iget-object v2, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQu0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 734
    :cond_a
    iput-object p1, p0, Lyv0;->l0:Ljava/util/List;

    .line 735
    :cond_b
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 p2, 0x0

    .line 736
    :goto_4
    iget-object v2, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_e

    .line 737
    iget-object v2, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQu0;

    invoke-virtual {v2}, LQu0;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 738
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 739
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 741
    iget-wide v5, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 742
    invoke-static {v5, v6, v4, v2}, LJ/N;->Mj65Bkg_(JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 743
    :cond_c
    throw v3

    :cond_d
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 744
    :cond_e
    iget-object p1, p0, Lyv0;->l0:Ljava/util/List;

    sget-object p2, Lyv0;->O0:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 745
    iget-object p1, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQu0;

    invoke-virtual {p1}, LQu0;->k()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    goto :goto_6

    :cond_f
    const/4 p1, -0x1

    .line 746
    :goto_6
    iget-boolean p2, p0, Lyv0;->P:Z

    if-eqz p2, :cond_10

    .line 747
    invoke-virtual {p0}, Lyv0;->l()V

    .line 748
    :cond_10
    iget-boolean p2, p0, Lyv0;->Q:Z

    if-eqz p2, :cond_11

    .line 749
    iget-boolean p2, p0, Lyv0;->F0:Z

    invoke-virtual {p0, p2}, Lyv0;->d(Z)V

    .line 750
    :cond_11
    iget-object p2, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p2

    if-nez p2, :cond_12

    .line 751
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, LHu0;->c(I)V

    const-string p1, "Unable to find Chrome activity."

    .line 752
    invoke-virtual {p0, p1, v0}, Lyv0;->a(Ljava/lang/String;I)V

    return-void

    .line 753
    :cond_12
    new-instance v2, LZw0;

    const/4 v4, 0x4

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lyv0;->l0:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v4, p1, v5}, LZw0;-><init>(IILjava/util/Collection;)V

    iput-object v2, p0, Lyv0;->n0:LZw0;

    .line 754
    iget p1, p0, Lyv0;->m0:I

    if-eqz p1, :cond_13

    .line 755
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 756
    iput-object p1, v2, LZw0;->f:Ljava/lang/String;

    .line 757
    :cond_13
    iget-object p1, p0, Lyv0;->K:LHu0;

    iget-object v2, p0, Lyv0;->l0:Ljava/util/List;

    .line 758
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lyv0;->l0:Ljava/util/List;

    .line 759
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQu0;

    invoke-virtual {v4}, LCQ0;->h()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_7

    :cond_14
    const/4 v4, 0x0

    .line 760
    :goto_7
    invoke-virtual {p1, v0, v2, v4}, LHu0;->a(IIZ)V

    .line 761
    iget-object p1, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 762
    iget-boolean p1, p0, Lyv0;->t0:Z

    if-eqz p1, :cond_16

    const/16 v1, 0xf

    goto :goto_8

    .line 763
    :cond_15
    iget-object p1, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQu0;

    invoke-virtual {p1}, LQu0;->o()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 764
    iget-object p1, p0, Lyv0;->l0:Ljava/util/List;

    .line 765
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnu0;

    invoke-virtual {p1}, Lnu0;->u()I

    move-result v1

    :cond_16
    :goto_8
    if-eqz v1, :cond_17

    const-string p1, "PaymentRequest.MissingPaymentFields"

    .line 766
    invoke-static {p1, v1}, LfV;->e(Ljava/lang/String;I)V

    .line 767
    :cond_17
    iget-object p1, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 768
    invoke-virtual {p0}, Lyv0;->g()Z

    move-result p1

    if-eqz p1, :cond_18

    return-void

    .line 769
    :cond_18
    invoke-virtual {p0}, Lyv0;->m()V

    .line 770
    iget-object p1, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lyv0;->x0:Z

    if-nez p1, :cond_19

    .line 771
    invoke-virtual {p0}, Lyv0;->k()V

    .line 772
    :cond_19
    invoke-static {}, LNv0;->a()LNv0;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 773
    sget-object p1, LNv0;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-virtual {p0, p2}, Lyv0;->b(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-void

    .line 775
    :cond_1a
    throw v3

    .line 776
    :cond_1b
    throw v3

    .line 777
    :cond_1c
    throw v3
.end method

.method public a(LU81;)V
    .locals 9

    .line 266
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-boolean v0, p0, Lyv0;->x0:Z

    const-string v1, "Invalid state."

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 268
    iget-object v0, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    const/4 v3, 0x3

    if-nez v0, :cond_1

    .line 269
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v3}, LHu0;->c(I)V

    const-string p1, "Unable to find Chrome activity."

    .line 270
    invoke-virtual {p0, p1}, Lyv0;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0, p1}, Lyv0;->b(LU81;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    iget-object p1, p1, LU81;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 273
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v3}, LHu0;->c(I)V

    .line 274
    invoke-virtual {p0, v1}, Lyv0;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_3
    iget-boolean p1, p0, Lyv0;->c0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lyv0;->N:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lyv0;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 276
    :cond_4
    iget-boolean p1, p0, Lyv0;->H0:Z

    if-nez p1, :cond_5

    .line 277
    invoke-virtual {p0}, Lyv0;->i()V

    .line 278
    :cond_5
    iput-boolean v2, p0, Lyv0;->x0:Z

    .line 279
    iget-boolean p1, p0, Lyv0;->D0:Z

    if-eqz p1, :cond_6

    .line 280
    iget-object p1, p0, Lyv0;->K:LHu0;

    iget-object v1, p0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v1, v1, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v3, v1, LT81;->b:Ljava/lang/String;

    iget-object v1, v1, LT81;->c:Ljava/lang/String;

    invoke-virtual {p1, v3, v1, v2}, LHu0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 281
    :cond_6
    invoke-virtual {p0, v0}, Lyv0;->b(Lorg/chromium/chrome/browser/ChromeActivity;)V

    :goto_0
    return-void

    .line 282
    :cond_7
    iget-object v0, p0, Lyv0;->o0:LXw0;

    const/4 v3, 0x2

    if-nez v0, :cond_8

    .line 283
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v3}, LHu0;->a(I)V

    const-string p1, "Attempted updateWith without show."

    .line 284
    invoke-virtual {p0, p1}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    .line 285
    :cond_8
    iget-boolean v0, p0, Lyv0;->c0:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lyv0;->d0:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lyv0;->f0:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lyv0;->e0:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lyv0;->r0:LQu0;

    if-eqz v0, :cond_9

    .line 286
    invoke-virtual {v0}, LQu0;->p()Z

    move-result v0

    if-nez v0, :cond_a

    .line 287
    :cond_9
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v3}, LHu0;->a(I)V

    .line 288
    invoke-virtual {p0, v1}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    .line 289
    :cond_a
    invoke-virtual {p0, p1}, Lyv0;->b(LU81;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 290
    :cond_b
    iget-object v0, p0, Lyv0;->r0:LQu0;

    if-eqz v0, :cond_12

    .line 291
    invoke-virtual {v0}, LQu0;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 292
    iget-object v0, p0, Lyv0;->r0:LQu0;

    .line 293
    new-instance v1, LX81;

    invoke-direct {v1}, LX81;-><init>()V

    .line 294
    iget-object v3, p1, LU81;->f:Ljava/lang/String;

    iput-object v3, v1, LX81;->e:Ljava/lang/String;

    .line 295
    iget-object v3, p1, LU81;->i:Ljava/lang/String;

    iput-object v3, v1, LX81;->f:Ljava/lang/String;

    .line 296
    iget-object v3, p1, LU81;->b:Lorg/chromium/payments/mojom/PaymentItem;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iput-object v3, v1, LX81;->b:LT81;

    .line 297
    :cond_c
    iget-object v3, p1, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    if-eqz v3, :cond_11

    .line 298
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 299
    :goto_1
    iget-object v5, p1, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    array-length v6, v5

    if-ge v4, v6, :cond_10

    .line 300
    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object v5, v5, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    .line 301
    iget-object v6, p0, Lyv0;->r0:LQu0;

    if-eqz v6, :cond_d

    const/4 v7, 0x0

    .line 302
    invoke-virtual {v6, v5, v7}, LQu0;->a(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentMethodData;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_2

    :cond_d
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_e

    goto :goto_3

    .line 303
    :cond_e
    new-instance v5, LW81;

    invoke-direct {v5}, LW81;-><init>()V

    .line 304
    new-instance v6, LV81;

    invoke-direct {v6}, LV81;-><init>()V

    iput-object v6, v5, LW81;->c:LV81;

    .line 305
    iget-object v7, p1, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    aget-object v8, v7, v4

    iget-object v8, v8, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object v8, v8, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    iput-object v8, v6, LV81;->b:Ljava/lang/String;

    .line 306
    aget-object v8, v7, v4

    iget-object v8, v8, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object v8, v8, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    iput-object v8, v6, LV81;->c:Ljava/lang/String;

    .line 307
    aget-object v6, v7, v4

    iget-object v6, v6, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    if-eqz v6, :cond_f

    .line 308
    aget-object v6, v7, v4

    iget-object v6, v6, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v6, v6, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iput-object v6, v5, LW81;->b:LT81;

    .line 309
    :cond_f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 310
    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [LW81;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LW81;

    iput-object p1, v1, LX81;->d:[LW81;

    .line 311
    :cond_11
    invoke-virtual {v0, v1}, LQu0;->a(LX81;)V

    return-void

    .line 312
    :cond_12
    iget-boolean v0, p0, Lyv0;->c0:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lyv0;->Z:LZw0;

    invoke-virtual {v0}, LZw0;->d()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, LU81;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    iget-object v0, p0, Lyv0;->h0:LZw0;

    .line 313
    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 314
    iget-object v0, p0, Lyv0;->h0:LZw0;

    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    .line 315
    iput-boolean v2, v0, LCQ0;->F:Z

    .line 316
    iget-object v0, p0, Lyv0;->h0:LZw0;

    const/4 v1, -0x2

    .line 317
    iput v1, v0, LZw0;->c:I

    .line 318
    iget-object p1, p1, LU81;->f:Ljava/lang/String;

    .line 319
    iput-object p1, v0, LZw0;->e:Ljava/lang/String;

    .line 320
    :cond_14
    invoke-virtual {p0}, Lyv0;->i()V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)V
    .locals 7

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 190
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 191
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 192
    iget-object v5, p0, Lyv0;->I:LUt0;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    .line 193
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v5, LUt0;->e:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    new-instance v4, Lju0;

    invoke-direct {v4, p1, v3}, Lju0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_2
    throw v4

    .line 197
    :cond_3
    sget-object p1, Lyv0;->N0:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 199
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    .line 200
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 201
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lju0;

    .line 202
    iget-object v2, v2, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 203
    invoke-static {v2}, Lju0;->b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 205
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 207
    iget-wide v5, v3, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 208
    invoke-static {v5, v6, v3, v2}, LJ/N;->Mj65Bkg_(JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_4
    throw v4

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lju0;

    .line 211
    iget-boolean p2, p2, LCQ0;->w:Z

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_3

    :cond_7
    const/4 p2, 0x0

    :goto_3
    const/4 v2, -0x1

    .line 212
    iget-object v3, p0, Lyv0;->Z:LZw0;

    invoke-virtual {v3}, LZw0;->b()LCQ0;

    move-result-object v3

    if-eqz v3, :cond_8

    if-eqz p2, :cond_8

    .line 213
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lju0;

    invoke-virtual {v2}, Lju0;->l()V

    const/4 v2, 0x0

    .line 214
    :cond_8
    iget-object v3, p0, Lyv0;->K:LHu0;

    const/4 v4, 0x2

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 216
    invoke-virtual {v3, v4, v5, p2}, LHu0;->a(IIZ)V

    .line 217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0xb

    goto :goto_4

    .line 218
    :cond_9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lju0;

    .line 219
    iget-object p2, p2, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-static {p2, v1}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)I

    move-result p2

    :goto_4
    if-eqz p2, :cond_a

    const-string v1, "PaymentRequest.MissingShippingFields"

    .line 220
    invoke-static {v1, p2}, LfV;->e(Ljava/lang/String;I)V

    .line 221
    :cond_a
    new-instance p2, LZw0;

    invoke-direct {p2, v0, v2, p1}, LZw0;-><init>(IILjava/util/Collection;)V

    iput-object p2, p0, Lyv0;->h0:LZw0;

    return-void
.end method

.method public a(Lc91;[Lorg/chromium/payments/mojom/PaymentMethodData;LU81;LY81;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 16
    iget-object v5, v0, Lyv0;->M:Lc91;

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 17
    iget-object v1, v0, Lyv0;->K:LHu0;

    invoke-virtual {v1, v6}, LHu0;->a(I)V

    const-string v1, "Attempted initialization twice."

    .line 18
    invoke-virtual {v0, v1}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 19
    iget-object v1, v0, Lyv0;->K:LHu0;

    invoke-virtual {v1, v6}, LHu0;->a(I)V

    const-string v1, "Invalid state."

    .line 20
    invoke-virtual {v0, v1}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_1
    iput-object v1, v0, Lyv0;->M:Lc91;

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lyv0;->b0:Ljava/util/Map;

    .line 23
    iget-object v1, v0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, LJ/N;->MdU5wLP0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 25
    iget-object v1, v0, Lyv0;->K:LHu0;

    invoke-virtual {v1, v6}, LHu0;->a(I)V

    const-string v1, "Not in a secure origin."

    .line 26
    invoke-virtual {v0, v1}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 27
    iget-boolean v7, v4, LY81;->e:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, v0, Lyv0;->c0:Z

    if-eqz v4, :cond_4

    .line 28
    iget-boolean v7, v4, LY81;->b:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v0, Lyv0;->d0:Z

    if-eqz v4, :cond_5

    .line 29
    iget-boolean v7, v4, LY81;->d:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, v0, Lyv0;->e0:Z

    if-eqz v4, :cond_6

    .line 30
    iget-boolean v7, v4, LY81;->c:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    iput-boolean v7, v0, Lyv0;->f0:Z

    if-nez v4, :cond_7

    const/4 v7, 0x0

    goto :goto_4

    .line 31
    :cond_7
    iget v7, v4, LY81;->f:I

    :goto_4
    iput v7, v0, Lyv0;->g0:I

    .line 32
    iget-object v7, v0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v7}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-static {v7}, LJ/N;->MIhiwY_4(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 34
    iput-boolean v5, v0, Lyv0;->L0:Z

    const-string v1, "Only localhost, file://, and cryptographic scheme origins allowed."

    .line 35
    iput-object v1, v0, Lyv0;->K0:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lyv0;->C0:Ljava/util/Map;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lyv0;->e()V

    return-void

    .line 38
    :cond_8
    iget-object v9, v0, Lyv0;->K:LHu0;

    iget-boolean v10, v0, Lyv0;->c0:Z

    iget-boolean v11, v0, Lyv0;->f0:Z

    iget-boolean v12, v0, Lyv0;->e0:Z

    iget-boolean v13, v0, Lyv0;->d0:Z

    .line 39
    iget-wide v7, v9, LHu0;->a:J

    .line 40
    invoke-static/range {v7 .. v13}, LJ/N;->MelRlGGS(JLjava/lang/Object;ZZZZ)V

    .line 41
    iget-object v7, v0, Lyv0;->B:Lvv0;

    iget-object v8, v0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    check-cast v7, LYu0;

    const/4 v9, 0x0

    if-eqz v7, :cond_33

    .line 42
    invoke-interface {v8}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-static {v7}, LJ/N;->MHuHQ1NP(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    move-object v7, v9

    goto :goto_5

    .line 44
    :cond_9
    invoke-static {v8}, LJ/N;->M2wCK0mV(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 45
    :goto_5
    iput-object v7, v0, Lyv0;->K0:Ljava/lang/String;

    .line 46
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 47
    iput-boolean v5, v0, Lyv0;->L0:Z

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lyv0;->C0:Ljava/util/Map;

    .line 49
    invoke-virtual/range {p0 .. p0}, Lyv0;->e()V

    return-void

    :cond_a
    if-eqz p5, :cond_b

    const-string v7, "PaymentRequestSkipToGPay"

    .line 50
    invoke-static {v7}, LBv0;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    .line 51
    :goto_6
    iget-object v8, v0, Lyv0;->J:LBu0;

    const-string v10, "basic-card"

    const-string v11, "https://google.com/pay"

    if-eqz v2, :cond_15

    .line 52
    array-length v12, v2

    if-nez v12, :cond_c

    goto/16 :goto_a

    .line 53
    :cond_c
    new-instance v12, LJ6;

    invoke-direct {v12}, LJ6;-><init>()V

    const/4 v13, 0x0

    .line 54
    :goto_7
    array-length v14, v2

    if-ge v13, v14, :cond_14

    .line 55
    aget-object v14, v2, v13

    iget-object v14, v14, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    .line 56
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d

    goto/16 :goto_a

    :cond_d
    if-eqz v7, :cond_f

    .line 57
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto :goto_9

    .line 58
    :cond_e
    aget-object v15, v2, v13

    iget-object v15, v15, Lorg/chromium/payments/mojom/PaymentMethodData;->d:LP81;

    if-eqz v15, :cond_f

    aget-object v15, v2, v13

    iget-object v15, v15, Lorg/chromium/payments/mojom/PaymentMethodData;->d:LP81;

    iget-object v15, v15, LP81;->b:Ljava/lang/String;

    .line 59
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    .line 60
    aget-object v15, v2, v13

    aget-object v5, v2, v13

    iget-object v5, v5, Lorg/chromium/payments/mojom/PaymentMethodData;->d:LP81;

    iget-object v5, v5, LP81;->b:Ljava/lang/String;

    iput-object v5, v15, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    .line 61
    :cond_f
    aget-object v5, v2, v13

    invoke-virtual {v12, v14, v5}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    aget-object v5, v2, v13

    if-eqz v8, :cond_13

    .line 63
    iget-object v14, v5, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    .line 64
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 65
    invoke-static {v5}, Lou0;->a(Lorg/chromium/payments/mojom/PaymentMethodData;)Ljava/util/Set;

    move-result-object v14

    .line 66
    iget-object v15, v8, LBu0;->j:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_10
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 68
    iget-object v1, v8, LBu0;->i:Ljava/util/Set;

    invoke-interface {v1, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 69
    iget-object v1, v8, LBu0;->i:Ljava/util/Set;

    invoke-interface {v1, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, v8, LBu0;->l:Ljava/util/List;

    iget-object v6, v8, LBu0;->h:Ljava/util/Map;

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LAu0;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    goto :goto_8

    .line 71
    :cond_11
    iget-object v1, v8, LBu0;->k:Ljava/util/Set;

    invoke-static {v5}, Lou0;->b(Lorg/chromium/payments/mojom/PaymentMethodData;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_12
    :goto_9
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto/16 :goto_7

    .line 72
    :cond_13
    throw v9

    .line 73
    :cond_14
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_b

    :cond_15
    :goto_a
    move-object v1, v9

    .line 74
    :goto_b
    iput-object v1, v0, Lyv0;->b0:Ljava/util/Map;

    if-eqz v7, :cond_16

    .line 75
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/payments/mojom/PaymentMethodData;

    .line 76
    new-instance v2, LPv0;

    iget-object v1, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->d:LP81;

    invoke-direct {v2, v4, v1}, LPv0;-><init>(LY81;LP81;)V

    iput-object v2, v0, Lyv0;->M0:LPv0;

    .line 77
    :cond_16
    iget-object v1, v0, Lyv0;->b0:Ljava/util/Map;

    if-nez v1, :cond_17

    .line 78
    iget-object v1, v0, Lyv0;->K:LHu0;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LHu0;->a(I)V

    const-string v1, "Invalid payment methods or data."

    .line 79
    invoke-virtual {v0, v1}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_17
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Lyv0;->b0:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lyv0;->C0:Ljava/util/Map;

    .line 81
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "StrictHasEnrolledAutofillInstrument"

    .line 82
    invoke-static {v1}, LBv0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 83
    new-instance v1, Lorg/chromium/payments/mojom/PaymentMethodData;

    invoke-direct {v1}, Lorg/chromium/payments/mojom/PaymentMethodData;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    iget-boolean v4, v0, Lyv0;->f0:Z

    .line 85
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-boolean v4, v0, Lyv0;->d0:Z

    .line 86
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-boolean v4, v0, Lyv0;->e0:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x3

    iget-boolean v5, v0, Lyv0;->c0:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "{payerEmail:%s,payerName:%s,payerPhone:%s,shipping:%s}"

    .line 87
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    .line 88
    iget-object v2, v0, Lyv0;->C0:Ljava/util/Map;

    const-string v4, "basic-card-payment-options"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_18
    invoke-virtual {v0, v3}, Lyv0;->b(LU81;)Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    .line 90
    :cond_19
    iget-object v1, v0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    if-nez v1, :cond_1a

    .line 91
    iget-object v1, v0, Lyv0;->K:LHu0;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LHu0;->a(I)V

    const-string v1, "Total required."

    .line 92
    invoke-virtual {v0, v1}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1a
    iget-object v1, v3, LU81;->h:Ljava/lang/String;

    iput-object v1, v0, Lyv0;->a0:Ljava/lang/String;

    .line 94
    iget-object v1, v0, Lyv0;->b0:Ljava/util/Map;

    .line 95
    invoke-static {v1}, Lmu0;->b(Ljava/util/Map;)Z

    move-result v1

    iput-boolean v1, v0, Lyv0;->t0:Z

    if-eqz v1, :cond_1b

    const-string v1, "NoCreditCardAbort"

    .line 96
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    .line 97
    :goto_c
    iput-boolean v1, v0, Lyv0;->u0:Z

    .line 98
    iget-boolean v1, v0, Lyv0;->c0:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v0, Lyv0;->d0:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v0, Lyv0;->e0:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v0, Lyv0;->f0:Z

    if-eqz v1, :cond_1d

    .line 99
    :cond_1c
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_32

    .line 100
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 101
    iget-wide v2, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, v1

    .line 102
    invoke-static/range {v2 .. v7}, LJ/N;->MfY8Rzvb(JLjava/lang/Object;ZZZ)[Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-wide v3, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 104
    invoke-static {v3, v4, v1}, LJ/N;->M2$wnjuR(JLjava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 106
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lyv0;->N:Ljava/util/List;

    .line 107
    :cond_1d
    iget-boolean v1, v0, Lyv0;->c0:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    .line 108
    :goto_d
    iget-object v2, v0, Lyv0;->N:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 109
    iget-object v2, v0, Lyv0;->N:Ljava/util/List;

    .line 110
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    const/4 v5, 0x0

    .line 111
    invoke-static {v2, v5}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)I

    move-result v2

    if-nez v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_e

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 112
    :goto_e
    iget-boolean v2, v0, Lyv0;->O:Z

    and-int/2addr v1, v2

    iput-boolean v1, v0, Lyv0;->O:Z

    goto :goto_f

    :cond_20
    const/4 v5, 0x0

    .line 113
    :goto_f
    iget-boolean v1, v0, Lyv0;->d0:Z

    if-nez v1, :cond_21

    iget-boolean v1, v0, Lyv0;->e0:Z

    if-nez v1, :cond_21

    iget-boolean v1, v0, Lyv0;->f0:Z

    if-eqz v1, :cond_24

    .line 114
    :cond_21
    new-instance v1, LGu0;

    iget-boolean v2, v0, Lyv0;->d0:Z

    iget-boolean v3, v0, Lyv0;->e0:Z

    iget-boolean v4, v0, Lyv0;->f0:Z

    iget-boolean v6, v0, Lyv0;->L:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-direct {v1, v2, v3, v4, v6}, LGu0;-><init>(ZZZZ)V

    iput-object v1, v0, Lyv0;->w0:LGu0;

    const/4 v1, 0x0

    .line 115
    :goto_10
    iget-object v2, v0, Lyv0;->N:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 116
    iget-object v2, v0, Lyv0;->N:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 117
    iget-object v3, v0, Lyv0;->w0:LGu0;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v3, v4, v6, v2}, LGu0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    const/4 v1, 0x1

    goto :goto_11

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_23
    const/4 v1, 0x0

    .line 120
    :goto_11
    iget-boolean v2, v0, Lyv0;->O:Z

    and-int/2addr v1, v2

    iput-boolean v1, v0, Lyv0;->O:Z

    .line 121
    :cond_24
    iget-boolean v1, v0, Lyv0;->u0:Z

    if-eqz v1, :cond_26

    const-string v1, "AlwaysAllowJustInTimePaymentApp"

    .line 122
    invoke-static {v1}, LBv0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_12

    :cond_25
    const/4 v1, 0x0

    goto :goto_13

    :cond_26
    :goto_12
    const/4 v1, 0x1

    .line 123
    :goto_13
    sget-object v2, LOu0;->b:LOu0;

    if-nez v2, :cond_27

    new-instance v2, LOu0;

    invoke-direct {v2}, LOu0;-><init>()V

    sput-object v2, LOu0;->b:LOu0;

    .line 124
    :cond_27
    sget-object v2, LOu0;->b:LOu0;

    .line 125
    iget-object v3, v0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    iget-object v4, v0, Lyv0;->b0:Ljava/util/Map;

    .line 126
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    if-eqz v2, :cond_31

    .line 127
    new-instance v6, Lmu0;

    invoke-direct {v6, v3}, Lmu0;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-interface {v0, v6}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->a(LLu0;)V

    .line 128
    iget-object v6, v2, LOu0;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 129
    invoke-interface/range {p0 .. p0}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->e()V

    goto :goto_15

    .line 130
    :cond_28
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v2, LOu0;->a:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    .line 131
    :goto_14
    iget-object v8, v2, LOu0;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_29

    .line 132
    iget-object v8, v2, LOu0;->a:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LNu0;

    .line 133
    new-instance v10, LMu0;

    invoke-direct {v10, v2, v0, v6, v8}, LMu0;-><init>(LOu0;Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;Ljava/util/Set;LNu0;)V

    .line 134
    invoke-interface {v8, v3, v4, v1, v10}, LNu0;->a(Lorg/chromium/content_public/browser/WebContents;Ljava/util/Map;ZLorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 135
    :cond_29
    :goto_15
    iget-object v1, v0, Lyv0;->b0:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    :cond_2a
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "https://"

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "https://android.com/pay"

    .line 136
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 137
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_17

    .line 138
    :cond_2b
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v17, 0x1

    goto :goto_16

    :cond_2c
    :goto_17
    const/16 v16, 0x1

    goto :goto_16

    .line 139
    :cond_2d
    iget-object v14, v0, Lyv0;->K:LHu0;

    iget-boolean v15, v0, Lyv0;->t0:Z

    .line 140
    iget-wide v12, v14, LHu0;->a:J

    .line 141
    invoke-static/range {v12 .. v17}, LJ/N;->McG0ZzXh(JLjava/lang/Object;ZZZ)V

    .line 142
    iget-object v1, v0, Lyv0;->B:Lvv0;

    check-cast v1, LYu0;

    if-eqz v1, :cond_30

    const-string v1, "WebPaymentsSingleAppUiSkip"

    .line 143
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 144
    iget-object v1, v0, Lyv0;->b0:Ljava/util/Map;

    .line 145
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    iget-boolean v1, v0, Lyv0;->c0:Z

    if-nez v1, :cond_2e

    iget-boolean v1, v0, Lyv0;->d0:Z

    if-nez v1, :cond_2e

    iget-boolean v1, v0, Lyv0;->e0:Z

    if-nez v1, :cond_2e

    iget-boolean v1, v0, Lyv0;->f0:Z

    if-nez v1, :cond_2e

    iget-object v1, v0, Lyv0;->b0:Ljava/util/Map;

    .line 146
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lyv0;->b0:Ljava/util/Map;

    .line 147
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_2e
    const/4 v2, 0x0

    :cond_2f
    iput-boolean v2, v0, Lyv0;->H0:Z

    return-void

    .line 148
    :cond_30
    throw v9

    .line 149
    :cond_31
    throw v9

    .line 150
    :cond_32
    throw v9

    .line 151
    :cond_33
    throw v9
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lyv0;->K0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lyv0;->K0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 628
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-eqz v0, :cond_0

    check-cast v0, Lp91;

    invoke-virtual {v0, p2, p1}, Lp91;->a(ILjava/lang/String;)V

    .line 629
    :cond_0
    invoke-virtual {p0}, Lyv0;->f()V

    const/4 p1, 0x1

    .line 630
    invoke-virtual {p0, p1}, Lyv0;->c(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 778
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyv0;->J0:LAv0;

    if-nez v0, :cond_0

    goto :goto_1

    .line 779
    :cond_0
    iget-object v0, p0, Lyv0;->n0:LZw0;

    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    .line 780
    instance-of v1, v0, Lnu0;

    if-eqz v1, :cond_2

    .line 781
    iget-object v1, v0, LCQ0;->C:Ljava/lang/String;

    .line 782
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 783
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    .line 784
    iget-object v0, v0, LCQ0;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 785
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 786
    iget-wide v2, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 787
    invoke-static {v2, v3, v1, v0}, LJ/N;->M4tBhXBK(JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 788
    throw p1

    .line 789
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lyv0;->H0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyv0;->o0:LXw0;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 790
    iput-boolean v1, v0, LXw0;->a0:Z

    .line 791
    invoke-virtual {v0, v1}, LXw0;->a(Z)V

    .line 792
    iget-object v0, v0, LXw0;->D:Lxw0;

    .line 793
    iget-object v0, v0, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 794
    :cond_3
    iget-object v0, p0, Lyv0;->K:LHu0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LHu0;->b(I)V

    .line 795
    iget-object v0, p0, Lyv0;->J0:LAv0;

    .line 796
    iget-object v1, v0, LAv0;->x:LF91;

    iput-object p1, v1, LF91;->b:Ljava/lang/String;

    .line 797
    iput-object p2, v1, LF91;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 798
    iput-boolean p1, v0, LAv0;->A:Z

    .line 799
    iget-boolean p1, v0, LAv0;->z:Z

    if-nez p1, :cond_4

    iget-object p1, v0, LAv0;->y:Lzv0;

    check-cast p1, Lyv0;

    invoke-virtual {p1, v1}, Lyv0;->a(LF91;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lju0;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 348
    iget-object v0, p0, Lyv0;->K:LHu0;

    const/4 v1, 0x2

    .line 349
    iget-wide v2, v0, LHu0;->a:J

    .line 350
    invoke-static {v2, v3, v0, v1}, LJ/N;->MEEUAdzR(JLjava/lang/Object;I)V

    .line 351
    :cond_0
    iget-object v0, p0, Lyv0;->I:LUt0;

    new-instance v1, Lsv0;

    invoke-direct {v1, p0, p1}, Lsv0;-><init>(Lyv0;Lju0;)V

    invoke-virtual {v0, p1, v1}, LUt0;->a(Lju0;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public final a(Lku0;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 352
    iget-object v2, v0, Lyv0;->K:LHu0;

    const/4 v3, 0x0

    .line 353
    iget-wide v4, v2, LHu0;->a:J

    .line 354
    invoke-static {v4, v5, v2, v3}, LJ/N;->MEEUAdzR(JLjava/lang/Object;I)V

    .line 355
    :cond_0
    iget-object v2, v0, Lyv0;->w0:LGu0;

    new-instance v12, Ltv0;

    invoke-direct {v12, v0, v1}, Ltv0;-><init>(Lyv0;Lku0;)V

    if-nez v1, :cond_1

    .line 356
    new-instance v3, Lku0;

    iget-object v14, v2, LDQ0;->b:Landroid/content/Context;

    new-instance v15, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-direct {v15}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7

    iget-boolean v4, v2, LGu0;->c:Z

    iget-boolean v5, v2, LGu0;->d:Z

    iget-boolean v6, v2, LGu0;->e:Z

    move-object v13, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v13 .. v22}, Lku0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    move-object v8, v3

    goto :goto_0

    :cond_1
    move-object v8, v1

    .line 357
    :goto_0
    iget-boolean v3, v2, LGu0;->c:Z

    const v4, 0x7f1304f1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v13, 0x4

    .line 358
    iget-object v3, v2, LDQ0;->b:Landroid/content/Context;

    const v6, 0x7f1304d1

    .line 359
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, LGu0;->g:Ljava/util/Set;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v3, v2, LDQ0;->b:Landroid/content/Context;

    .line 360
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    .line 361
    iget-object v3, v8, Lku0;->M:Ljava/lang/String;

    move-object/from16 v21, v3

    .line 362
    invoke-static/range {v13 .. v21}, LTQ0;->a(ILjava/lang/CharSequence;Ljava/util/Set;Landroid/text/TextWatcher;LRQ0;LSQ0;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_2
    move-object v9, v5

    .line 363
    :goto_1
    iget-boolean v3, v2, LGu0;->d:Z

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    .line 364
    iget-object v3, v2, LDQ0;->b:Landroid/content/Context;

    const v6, 0x7f130185

    .line 365
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, LGu0;->h:Ljava/util/Set;

    new-instance v16, Lu10;

    invoke-direct/range {v16 .. v16}, Lu10;-><init>()V

    .line 366
    invoke-virtual {v2}, LGu0;->c()LRQ0;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v3, v2, LDQ0;->b:Landroid/content/Context;

    .line 367
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v3, v2, LDQ0;->b:Landroid/content/Context;

    const v6, 0x7f1304d6

    .line 368
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 369
    iget-object v3, v8, Lku0;->N:Ljava/lang/String;

    move-object/from16 v21, v3

    .line 370
    invoke-static/range {v13 .. v21}, LTQ0;->a(ILjava/lang/CharSequence;Ljava/util/Set;Landroid/text/TextWatcher;LRQ0;LSQ0;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v3

    move-object v10, v3

    goto :goto_2

    :cond_3
    move-object v10, v5

    .line 371
    :goto_2
    iget-boolean v3, v2, LGu0;->e:Z

    if-eqz v3, :cond_4

    const/4 v13, 0x2

    .line 372
    iget-object v3, v2, LDQ0;->b:Landroid/content/Context;

    const v6, 0x7f130184

    .line 373
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, LGu0;->i:Ljava/util/Set;

    const/16 v16, 0x0

    .line 374
    invoke-virtual {v2}, LGu0;->b()LRQ0;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v3, v2, LDQ0;->b:Landroid/content/Context;

    .line 375
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v3, v2, LDQ0;->b:Landroid/content/Context;

    const v4, 0x7f1304ca

    .line 376
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 377
    iget-object v3, v8, Lku0;->O:Ljava/lang/String;

    move-object/from16 v21, v3

    .line 378
    invoke-static/range {v13 .. v21}, LTQ0;->a(ILjava/lang/CharSequence;Ljava/util/Set;Landroid/text/TextWatcher;LRQ0;LSQ0;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v3

    move-object v11, v3

    goto :goto_3

    :cond_4
    move-object v11, v5

    .line 379
    :goto_3
    new-instance v3, LYQ0;

    if-nez v1, :cond_5

    .line 380
    iget-object v4, v2, LDQ0;->b:Landroid/content/Context;

    const v6, 0x7f1304ab

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 381
    :cond_5
    iget-object v4, v1, LCQ0;->A:Ljava/lang/String;

    .line 382
    :goto_4
    invoke-direct {v3, v4}, LYQ0;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_7

    .line 383
    iget-object v4, v2, LGu0;->j:LR81;

    if-eqz v4, :cond_6

    iget-object v4, v4, LR81;->c:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v4, v5

    .line 384
    :goto_5
    iput-object v4, v9, LTQ0;->n:Ljava/lang/CharSequence;

    .line 385
    iget-object v4, v3, LYQ0;->b:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v10, :cond_9

    .line 386
    iget-object v4, v2, LGu0;->j:LR81;

    if-eqz v4, :cond_8

    iget-object v4, v4, LR81;->d:Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object v4, v5

    .line 387
    :goto_6
    iput-object v4, v10, LTQ0;->n:Ljava/lang/CharSequence;

    .line 388
    iget-object v4, v3, LYQ0;->b:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v11, :cond_b

    .line 389
    iget-object v4, v2, LGu0;->j:LR81;

    if-eqz v4, :cond_a

    iget-object v5, v4, LR81;->b:Ljava/lang/String;

    .line 390
    :cond_a
    iput-object v5, v11, LTQ0;->n:Ljava/lang/CharSequence;

    .line 391
    iget-object v4, v3, LYQ0;->b:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_b
    new-instance v4, LCu0;

    invoke-direct {v4, v12, v1}, LCu0;-><init>(Lorg/chromium/base/Callback;Lku0;)V

    .line 393
    iput-object v4, v3, LYQ0;->d:Ljava/lang/Runnable;

    .line 394
    new-instance v1, LDu0;

    move-object v6, v1

    move-object v7, v2

    invoke-direct/range {v6 .. v12}, LDu0;-><init>(LGu0;Lku0;LTQ0;LTQ0;LTQ0;Lorg/chromium/base/Callback;)V

    .line 395
    iput-object v1, v3, LYQ0;->c:Ljava/lang/Runnable;

    .line 396
    iget-object v1, v2, LDQ0;->a:LNQ0;

    invoke-virtual {v1, v3}, LNQ0;->a(LYQ0;)V

    .line 397
    iget-object v1, v2, LGu0;->j:LR81;

    if-eqz v1, :cond_c

    iget-object v1, v2, LDQ0;->a:LNQ0;

    invoke-virtual {v1}, LNQ0;->d()Z

    :cond_c
    return-void
.end method

.method public final a(Lnu0;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 398
    iget-object v3, v0, Lyv0;->K:LHu0;

    .line 399
    iget-wide v4, v3, LHu0;->a:J

    .line 400
    invoke-static {v4, v5, v3, v2}, LJ/N;->MEEUAdzR(JLjava/lang/Object;I)V

    .line 401
    :cond_0
    iget-object v3, v0, Lyv0;->J:LBu0;

    new-instance v11, Luv0;

    invoke-direct {v11, v0, v1}, Luv0;-><init>(Lyv0;Lnu0;)V

    if-eqz v3, :cond_17

    if-nez v1, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    .line 402
    new-instance v6, Lnu0;

    iget-object v13, v3, LBu0;->c:Lorg/chromium/content_public/browser/WebContents;

    new-instance v7, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v27, ""

    const-string v28, ""

    const-string v15, ""

    const-string v16, "Chrome settings"

    const-string v19, ""

    const-string v20, ""

    move-object v14, v7

    .line 403
    invoke-direct/range {v14 .. v28}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v6

    .line 404
    invoke-direct/range {v12 .. v17}, Lnu0;-><init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;Ljava/lang/String;Z)V

    move-object v10, v6

    goto :goto_1

    :cond_2
    move-object v10, v1

    .line 405
    :goto_1
    iget-object v8, v10, Lnu0;->K:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    .line 406
    new-instance v12, LYQ0;

    if-eqz v9, :cond_3

    .line 407
    iget-object v6, v3, LDQ0;->b:Landroid/content/Context;

    const v7, 0x7f1304a9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 408
    :cond_3
    iget-object v6, v1, LCQ0;->A:Ljava/lang/String;

    .line 409
    :goto_2
    invoke-direct {v12, v6}, LYQ0;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getIsLocal()Z

    move-result v6

    const/4 v14, 0x2

    if-eqz v6, :cond_11

    .line 411
    :try_start_0
    iget-object v6, v3, LBu0;->p:LkW;

    invoke-virtual {v6}, LkW;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    iget-object v15, v3, LBu0;->q:LTQ0;

    if-nez v15, :cond_5

    .line 413
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 415
    :goto_3
    iget-object v13, v3, LBu0;->l:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_4

    .line 416
    iget-object v13, v3, LBu0;->l:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LAu0;

    iget v13, v13, LAu0;->a:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v13, v3, LBu0;->l:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LAu0;

    iget v13, v13, LAu0;->b:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 418
    :cond_4
    iget-object v7, v3, LDQ0;->b:Landroid/content/Context;

    .line 419
    iget-object v13, v3, LBu0;->k:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 420
    iget-object v13, v3, LBu0;->k:Ljava/util/Set;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 421
    iget-object v13, v3, LBu0;->k:Ljava/util/Set;

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-array v13, v14, [I

    .line 422
    fill-array-data v13, :array_0

    const-class v14, I

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[I

    const/4 v14, 0x0

    .line 423
    aget-object v19, v13, v14

    aget-object v19, v19, v14

    const v22, 0x7f1304a0

    aput v22, v19, v14

    .line 424
    aget-object v19, v13, v14

    aget-object v19, v19, v14

    const v23, 0x7f1304a6

    const/16 v20, 0x1

    aput v23, v19, v20

    .line 425
    aget-object v19, v13, v14

    aget-object v19, v19, v20

    const v23, 0x7f1304a4

    aput v23, v19, v14

    .line 426
    aget-object v19, v13, v14

    aget-object v19, v19, v20

    const v23, 0x7f1304a5

    aput v23, v19, v20

    .line 427
    aget-object v19, v13, v20

    aget-object v19, v19, v14

    const v23, 0x7f1304a1

    aput v23, v19, v14

    .line 428
    aget-object v19, v13, v20

    aget-object v19, v19, v14

    const v23, 0x7f1304a3

    aput v23, v19, v20

    .line 429
    aget-object v19, v13, v20

    aget-object v19, v19, v20

    const v23, 0x7f1304a2

    aput v23, v19, v14

    .line 430
    aget-object v14, v13, v20

    aget-object v14, v14, v20

    aput v22, v14, v20

    .line 431
    aget-object v5, v13, v5

    aget-object v2, v5, v2

    aget v0, v2, v0

    .line 432
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    new-instance v2, LTQ0;

    const/16 v5, 0xa

    invoke-direct {v2, v5}, LTQ0;-><init>(I)V

    .line 434
    iput-object v0, v2, LTQ0;->p:Ljava/lang/CharSequence;

    .line 435
    iput-object v15, v2, LTQ0;->b:Ljava/util/List;

    .line 436
    iput-object v4, v2, LTQ0;->c:Ljava/util/List;

    .line 437
    iput-object v2, v3, LBu0;->q:LTQ0;

    .line 438
    :cond_5
    iget-object v0, v3, LBu0;->q:LTQ0;

    .line 439
    iget-object v2, v12, LYQ0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, v3, LBu0;->x:Ls10;

    if-nez v0, :cond_6

    .line 441
    iget-object v0, v3, LBu0;->c:Lorg/chromium/content_public/browser/WebContents;

    .line 442
    new-instance v2, Ls10;

    invoke-direct {v2, v0, v3}, Ls10;-><init>(Lorg/chromium/content_public/browser/WebContents;Lr10;)V

    .line 443
    iput-object v2, v3, LBu0;->x:Ls10;

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, v3, LBu0;->z:Z

    .line 445
    :cond_6
    iget-object v0, v3, LBu0;->r:LTQ0;

    if-nez v0, :cond_7

    const/16 v22, 0x7

    .line 446
    iget-object v0, v3, LDQ0;->b:Landroid/content/Context;

    const v2, 0x7f130171

    .line 447
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v0, v3, LBu0;->n:LRQ0;

    iget-object v2, v3, LBu0;->o:LSQ0;

    iget-object v4, v3, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f1304f1

    .line 448
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    iget-object v4, v3, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f1304ba

    .line 449
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    .line 450
    invoke-static/range {v22 .. v30}, LTQ0;->a(ILjava/lang/CharSequence;Ljava/util/Set;Landroid/text/TextWatcher;LRQ0;LSQ0;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v0

    iput-object v0, v3, LBu0;->r:LTQ0;

    .line 451
    iget-boolean v2, v3, LBu0;->z:Z

    if-eqz v2, :cond_7

    const v2, 0x7f080205

    const v4, 0x7f130188

    .line 452
    new-instance v5, Luu0;

    invoke-direct {v5, v3}, Luu0;-><init>(LBu0;)V

    .line 453
    iput v2, v0, LTQ0;->x:I

    .line 454
    iput v4, v0, LTQ0;->y:I

    .line 455
    iput-object v5, v0, LTQ0;->v:Ljava/lang/Runnable;

    .line 456
    :cond_7
    iget-object v0, v3, LBu0;->r:LTQ0;

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 457
    iput-object v2, v0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 458
    iget-object v0, v3, LBu0;->r:LTQ0;

    .line 459
    iget-object v2, v12, LYQ0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, v3, LBu0;->s:LTQ0;

    if-nez v0, :cond_8

    const/16 v22, 0x4

    .line 461
    iget-object v0, v3, LDQ0;->b:Landroid/content/Context;

    const v2, 0x7f130170

    .line 462
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v0, v3, LDQ0;->b:Landroid/content/Context;

    const v2, 0x7f1304f1

    .line 463
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 464
    invoke-static/range {v22 .. v30}, LTQ0;->a(ILjava/lang/CharSequence;Ljava/util/Set;Landroid/text/TextWatcher;LRQ0;LSQ0;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v0

    iput-object v0, v3, LBu0;->s:LTQ0;

    .line 465
    :cond_8
    iget-object v0, v3, LBu0;->s:LTQ0;

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v2

    .line 466
    iput-object v2, v0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 467
    iget-object v0, v3, LBu0;->s:LTQ0;

    .line 468
    iget-object v2, v12, LYQ0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, v3, LBu0;->t:LTQ0;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 470
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v3, LBu0;->C:I

    const/4 v2, 0x2

    .line 471
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v0

    iput v4, v3, LBu0;->B:I

    .line 472
    iget-object v0, v3, LBu0;->y:LRQ0;

    if-nez v0, :cond_9

    .line 473
    new-instance v0, Lxu0;

    invoke-direct {v0, v3}, Lxu0;-><init>(LBu0;)V

    iput-object v0, v3, LBu0;->y:LRQ0;

    .line 474
    :cond_9
    iget-object v0, v3, LDQ0;->b:Landroid/content/Context;

    const v2, 0x7f13016f

    .line 475
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 478
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "MM"

    invoke-direct {v5, v7, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 479
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v13, "MMMM (MM)"

    invoke-direct {v7, v13, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x5

    const/4 v13, 0x1

    .line 480
    invoke-virtual {v6, v4, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x0

    :goto_4
    const/16 v13, 0xc

    if-ge v4, v13, :cond_a

    const/4 v13, 0x2

    .line 481
    invoke-virtual {v6, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 482
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    .line 483
    new-instance v14, LYy0;

    .line 484
    invoke-virtual {v5, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v15, v13}, LYy0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 486
    :cond_a
    iget-object v4, v3, LBu0;->y:LRQ0;

    iget-object v5, v3, LDQ0;->b:Landroid/content/Context;

    const v7, 0x7f1304b9

    .line 487
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 488
    invoke-static {v0, v2, v7}, LTQ0;->a(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v0

    .line 489
    iput-object v4, v0, LTQ0;->j:LRQ0;

    .line 490
    iput-object v5, v0, LTQ0;->m:Ljava/lang/CharSequence;

    .line 491
    iput-object v0, v3, LBu0;->t:LTQ0;

    const/4 v2, 0x0

    .line 492
    iput-boolean v2, v0, LTQ0;->z:Z

    .line 493
    :cond_b
    iget-object v0, v3, LBu0;->t:LTQ0;

    .line 494
    iget-object v0, v0, LTQ0;->g:Ljava/util/Set;

    .line 495
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 496
    iget-object v0, v3, LBu0;->t:LTQ0;

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v2

    .line 497
    iput-object v2, v0, LTQ0;->s:Ljava/lang/CharSequence;

    goto :goto_5

    .line 498
    :cond_c
    iget-object v0, v3, LBu0;->t:LTQ0;

    .line 499
    iget-object v2, v0, LTQ0;->d:Ljava/util/List;

    const/4 v4, 0x0

    .line 500
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LYy0;

    .line 501
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 502
    iput-object v2, v0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 503
    :goto_5
    iget-object v0, v3, LBu0;->t:LTQ0;

    .line 504
    iget-object v2, v12, LYQ0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v0

    .line 506
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    .line 507
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v4, v5

    const/4 v6, 0x0

    :goto_6
    add-int/lit8 v7, v5, 0xa

    if-ge v4, v7, :cond_e

    .line 508
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 509
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v6, 0x1

    .line 510
    :cond_d
    new-instance v13, LYy0;

    invoke-direct {v13, v7, v7}, LYy0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    if-nez v6, :cond_f

    .line 511
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 512
    new-instance v4, LYy0;

    invoke-direct {v4, v0, v0}, LYy0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    const/4 v4, 0x0

    .line 513
    invoke-static {v4, v2, v4}, LTQ0;->a(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v2

    iput-object v2, v3, LBu0;->u:LTQ0;

    .line 514
    iput-boolean v0, v2, LTQ0;->z:Z

    .line 515
    iget-object v2, v2, LTQ0;->g:Ljava/util/Set;

    .line 516
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 517
    iget-object v2, v3, LBu0;->u:LTQ0;

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v4

    .line 518
    iput-object v4, v2, LTQ0;->s:Ljava/lang/CharSequence;

    goto :goto_8

    .line 519
    :cond_10
    iget-object v2, v3, LBu0;->u:LTQ0;

    .line 520
    iget-object v4, v2, LTQ0;->d:Ljava/util/List;

    .line 521
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LYy0;

    .line 522
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 523
    iput-object v0, v2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 524
    :goto_8
    iget-object v0, v3, LBu0;->u:LTQ0;

    .line 525
    iget-object v2, v12, LYQ0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 526
    :catch_0
    iget-object v0, v3, LBu0;->m:Landroid/os/Handler;

    new-instance v2, Lru0;

    invoke-direct {v2, v11, v1}, Lru0;-><init>(Lorg/chromium/base/Callback;Lnu0;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    .line 527
    :cond_11
    iget-object v0, v8, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->h:Ljava/lang/String;

    .line 528
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f1304bd

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 529
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v6, v13

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v6, v13

    .line 530
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 531
    iget v5, v8, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->l:I

    .line 532
    new-instance v6, LTQ0;

    const/16 v7, 0xc

    invoke-direct {v6, v7}, LTQ0;-><init>(I)V

    .line 533
    iput-object v0, v6, LTQ0;->p:Ljava/lang/CharSequence;

    .line 534
    iput-object v2, v6, LTQ0;->q:Ljava/lang/CharSequence;

    .line 535
    iput-object v4, v6, LTQ0;->r:Ljava/lang/CharSequence;

    .line 536
    iput v5, v6, LTQ0;->w:I

    .line 537
    iget-object v0, v12, LYQ0;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 539
    :goto_a
    iget-object v4, v3, LBu0;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 540
    iget-object v4, v3, LBu0;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 541
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 542
    iget-object v6, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    .line 543
    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v6, v3, LBu0;->e:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 545
    iget-object v6, v3, LDQ0;->b:Landroid/content/Context;

    const v7, 0x7f130154

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 546
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 547
    iget-object v7, v3, LBu0;->e:Ljava/util/Map;

    .line 548
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 549
    iget-object v7, v3, LDQ0;->b:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 551
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 552
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v13, v3, LDQ0;->b:Landroid/content/Context;

    .line 553
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060093

    .line 554
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 555
    invoke-direct {v7, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v13, 0x0

    .line 556
    invoke-virtual {v5, v7, v6, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 557
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v14, 0xe

    const/4 v15, 0x1

    invoke-direct {v7, v14, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 558
    invoke-virtual {v5, v7, v6, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_12
    const/4 v13, 0x0

    .line 559
    :goto_b
    new-instance v4, LYy0;

    iget-object v6, v3, LBu0;->d:Ljava/util/List;

    .line 560
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5}, LYy0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 562
    :cond_13
    new-instance v2, LYy0;

    iget-object v4, v3, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f1304a7

    .line 563
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "add"

    invoke-direct {v2, v5, v4}, LYy0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v2, v3, LDQ0;->b:Landroid/content/Context;

    const v4, 0x7f13016e

    .line 566
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f13055f

    .line 567
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 568
    invoke-static {v2, v0, v4}, LTQ0;->a(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v2

    iput-object v2, v3, LBu0;->v:LTQ0;

    const/4 v4, 0x1

    .line 569
    iput-boolean v4, v2, LTQ0;->A:Z

    .line 570
    iget-object v4, v3, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f1304f1

    .line 571
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 572
    iput-object v4, v2, LTQ0;->l:Ljava/lang/CharSequence;

    .line 573
    iget-object v2, v3, LBu0;->v:LTQ0;

    new-instance v4, Lzu0;

    invoke-direct {v4, v3, v8, v0}, Lzu0;-><init>(LBu0;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;Ljava/util/List;)V

    .line 574
    iput-object v4, v2, LTQ0;->u:Lorg/chromium/base/Callback;

    .line 575
    iget-object v0, v3, LBu0;->v:LTQ0;

    .line 576
    iget-object v0, v0, LTQ0;->g:Ljava/util/Set;

    .line 577
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 578
    iget-object v0, v3, LBu0;->v:LTQ0;

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    .line 579
    iput-object v2, v0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 580
    :cond_14
    iget-object v0, v3, LBu0;->v:LTQ0;

    .line 581
    iget-object v2, v12, LYQ0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_16

    .line 582
    iget-boolean v0, v3, LBu0;->D:Z

    if-nez v0, :cond_16

    .line 583
    iget-object v0, v3, LBu0;->w:LTQ0;

    if-nez v0, :cond_15

    .line 584
    iget-object v0, v3, LDQ0;->b:Landroid/content/Context;

    const v2, 0x7f1304df

    .line 585
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    new-instance v2, LTQ0;

    const/16 v4, 0xb

    invoke-direct {v2, v4}, LTQ0;-><init>(I)V

    .line 587
    iput-object v0, v2, LTQ0;->p:Ljava/lang/CharSequence;

    const-string v0, "check_save_card_to_device"

    .line 588
    iput-object v0, v2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 589
    iput-object v2, v3, LBu0;->w:LTQ0;

    .line 590
    :cond_15
    iget-object v0, v3, LBu0;->w:LTQ0;

    .line 591
    iget-object v2, v12, LYQ0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_16
    new-instance v0, Lsu0;

    invoke-direct {v0, v11, v1}, Lsu0;-><init>(Lorg/chromium/base/Callback;Lnu0;)V

    .line 593
    iput-object v0, v12, LYQ0;->d:Ljava/lang/Runnable;

    .line 594
    new-instance v0, Ltu0;

    move-object v6, v0

    move-object v7, v3

    invoke-direct/range {v6 .. v11}, Ltu0;-><init>(LBu0;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;ZLnu0;Lorg/chromium/base/Callback;)V

    .line 595
    iput-object v0, v12, LYQ0;->c:Ljava/lang/Runnable;

    .line 596
    iget-object v0, v3, LDQ0;->a:LNQ0;

    invoke-virtual {v0, v12}, LNQ0;->a(LYQ0;)V

    :goto_c
    return-void

    :cond_17
    const/4 v0, 0x0

    .line 597
    throw v0

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public a(Ly71;)V
    .locals 1

    .line 695
    iget-object p1, p0, Lyv0;->M:Lc91;

    if-nez p1, :cond_0

    return-void

    .line 696
    :cond_0
    invoke-virtual {p0}, Lyv0;->f()V

    .line 697
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, LHu0;->a(I)V

    const/4 p1, 0x1

    .line 698
    invoke-virtual {p0, p1}, Lyv0;->c(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 631
    iget-object v0, p0, Lyv0;->M:Lc91;

    check-cast v0, Lp91;

    invoke-virtual {v0, p1}, Lp91;->a(Z)V

    if-eqz p1, :cond_0

    .line 632
    invoke-virtual {p0}, Lyv0;->f()V

    .line 633
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LHu0;->a(I)V

    .line 634
    invoke-virtual {p0, v0}, Lyv0;->c(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 222
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lyv0;->o0:LXw0;

    const/4 v1, 0x2

    if-nez v0, :cond_8

    iget-object v0, p0, Lyv0;->p0:Lgw0;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 224
    :cond_1
    sget-object v0, Lyv0;->P0:Lyv0;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-eqz v0, :cond_3

    .line 225
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v1}, LHu0;->c(I)V

    const-string p1, "Another PaymentRequest UI is already showing in a different tab or window."

    .line 226
    invoke-virtual {p0, p1, v3}, Lyv0;->a(Ljava/lang/String;I)V

    return-void

    .line 227
    :cond_3
    iput-boolean v2, p0, Lyv0;->S:Z

    .line 228
    iget-object v0, p0, Lyv0;->K:LHu0;

    .line 229
    iget-wide v1, v0, LHu0;->a:J

    .line 230
    invoke-static {v1, v2, v0}, LJ/N;->MxIWaF2G(JLjava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lyv0;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 232
    :cond_4
    iget-object v0, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_5

    .line 233
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v3}, LHu0;->c(I)V

    const-string p1, "Unable to find Chrome activity."

    .line 234
    invoke-virtual {p0, p1}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    .line 235
    :cond_5
    iput-boolean p1, p0, Lyv0;->I0:Z

    .line 236
    iput-boolean p2, p0, Lyv0;->x0:Z

    .line 237
    iget-boolean p1, p0, Lyv0;->H0:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lyv0;->M0:LPv0;

    if-nez p1, :cond_7

    .line 238
    invoke-virtual {p0, v0}, Lyv0;->a(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 239
    :cond_6
    iget-object p1, p0, Lyv0;->o0:LXw0;

    invoke-virtual {p1}, LXw0;->c()V

    .line 240
    :cond_7
    invoke-virtual {p0, v0}, Lyv0;->b(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-void

    .line 241
    :cond_8
    :goto_1
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v1}, LHu0;->a(I)V

    const-string p1, "Attempted show twice."

    .line 242
    invoke-virtual {p0, p1}, Lyv0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(LCQ0;LCQ0;LCQ0;)Z
    .locals 15

    move-object v11, p0

    .line 602
    move-object/from16 v0, p3

    check-cast v0, LQu0;

    iput-object v0, v11, Lyv0;->r0:LQu0;

    .line 603
    iget-object v0, v11, Lyv0;->i0:Ltw0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 604
    :goto_0
    new-instance v1, LAv0;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v2, v3, v0, p0}, LAv0;-><init>(LCQ0;LCQ0;LCQ0;Lzv0;)V

    iput-object v1, v11, Lyv0;->J0:LAv0;

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 606
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 607
    iget-object v3, v11, Lyv0;->r0:LQu0;

    invoke-virtual {v3}, LQu0;->n()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v12, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 608
    iget-object v4, v11, Lyv0;->b0:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 609
    iget-object v4, v11, Lyv0;->b0:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/payments/mojom/PaymentMethodData;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_2
    iget-object v4, v11, Lyv0;->X:Ljava/util/Map;

    if-eqz v4, :cond_3

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 611
    iget-object v4, v11, Lyv0;->X:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v4, "https://android.com/pay"

    .line 612
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "https://google.com/pay"

    .line 613
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    const/4 v12, 0x1

    goto :goto_1

    .line 614
    :cond_5
    iget-object v2, v11, Lyv0;->r0:LQu0;

    instance-of v2, v2, LFv0;

    if-eqz v2, :cond_7

    .line 615
    iget-object v2, v11, Lyv0;->B0:LhU0;

    if-nez v2, :cond_6

    .line 616
    new-instance v2, LhU0;

    iget-object v3, v11, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v2, v3, p0}, LhU0;-><init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/payments/PaymentHandlerHost$PaymentHandlerHostDelegate;)V

    iput-object v2, v11, Lyv0;->B0:LhU0;

    .line 617
    :cond_6
    iget-object v2, v11, Lyv0;->r0:LQu0;

    check-cast v2, LFv0;

    iget-object v3, v11, Lyv0;->B0:LhU0;

    .line 618
    iput-object v3, v2, LFv0;->V:LhU0;

    .line 619
    :cond_7
    iget-object v2, v11, Lyv0;->r0:LQu0;

    iget-object v3, v11, Lyv0;->a0:Ljava/lang/String;

    iget-object v4, v11, Lyv0;->G:Ljava/lang/String;

    iget-object v5, v11, Lyv0;->E:Ljava/lang/String;

    iget-object v6, v11, Lyv0;->F:Ljava/lang/String;

    iget-object v7, v11, Lyv0;->H:[[B

    .line 620
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, v11, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v10, v11, Lyv0;->W:Ljava/util/List;

    .line 621
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v14

    move-object v10, p0

    .line 622
    invoke-virtual/range {v0 .. v10}, LQu0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;)V

    .line 623
    iget-object v0, v11, Lyv0;->K:LHu0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LHu0;->b(I)V

    .line 624
    iget-object v0, v11, Lyv0;->r0:LQu0;

    invoke-virtual {v0}, LQu0;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 625
    iget-object v1, v11, Lyv0;->K:LHu0;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, LHu0;->b(I)V

    goto :goto_2

    :cond_8
    if-eqz v12, :cond_9

    .line 626
    iget-object v1, v11, Lyv0;->K:LHu0;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, LHu0;->b(I)V

    goto :goto_2

    .line 627
    :cond_9
    iget-object v1, v11, Lyv0;->K:LHu0;

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, LHu0;->b(I)V

    :goto_2
    xor-int/2addr v0, v13

    return v0
.end method

.method public final a(Lorg/chromium/chrome/browser/ChromeActivity;)Z
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 152
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v0

    iput-object v0, v12, Lyv0;->z0:LpI0;

    .line 153
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iput-object v0, v12, Lyv0;->A0:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 154
    iget-object v0, v12, Lyv0;->z0:LpI0;

    iget-object v1, v12, Lyv0;->w:LxI0;

    check-cast v0, LrI0;

    invoke-virtual {v0, v1}, LrI0;->a(LxI0;)V

    .line 155
    iget-object v0, v12, Lyv0;->A0:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v1, v12, Lyv0;->x:LlI0;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    .line 156
    iget-object v0, v12, Lyv0;->B:Lvv0;

    iget-object v1, v12, Lyv0;->A0:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v2, v12, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    check-cast v0, LYu0;

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    .line 157
    invoke-static {v1}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v3, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    :goto_0
    const/4 v0, 0x0

    const/4 v14, 0x1

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    .line 159
    iget-object v1, v12, Lyv0;->K:LHu0;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, LHu0;->c(I)V

    const-string v1, "Cannot show PaymentRequest UI in a background tab."

    .line 160
    invoke-virtual {v12, v1, v14}, Lyv0;->a(Ljava/lang/String;I)V

    return v0

    .line 161
    :cond_2
    iget-boolean v1, v12, Lyv0;->c0:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v12, Lyv0;->x0:Z

    if-nez v1, :cond_3

    .line 162
    iget-object v1, v12, Lyv0;->N:Ljava/util/List;

    invoke-virtual {v12, v13, v1}, Lyv0;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 163
    :cond_3
    iget-boolean v1, v12, Lyv0;->d0:Z

    if-nez v1, :cond_4

    iget-boolean v1, v12, Lyv0;->e0:Z

    if-nez v1, :cond_4

    iget-boolean v1, v12, Lyv0;->f0:Z

    if-eqz v1, :cond_5

    .line 164
    :cond_4
    new-instance v1, Ltw0;

    iget-object v2, v12, Lyv0;->N:Ljava/util/List;

    iget-object v3, v12, Lyv0;->w0:LGu0;

    iget-object v4, v12, Lyv0;->K:LHu0;

    invoke-direct {v1, v13, v2, v3, v4}, Ltw0;-><init>(Landroid/content/Context;Ljava/util/Collection;LGu0;LHu0;)V

    iput-object v1, v12, Lyv0;->i0:Ltw0;

    .line 165
    :cond_5
    sput-object v12, Lyv0;->P0:Lyv0;

    .line 166
    new-instance v15, LXw0;

    iget-boolean v4, v12, Lyv0;->c0:Z

    iget-boolean v1, v12, Lyv0;->d0:Z

    if-nez v1, :cond_7

    iget-boolean v1, v12, Lyv0;->e0:Z

    if-nez v1, :cond_7

    iget-boolean v1, v12, Lyv0;->f0:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v5, 0x1

    :goto_3
    iget-boolean v6, v12, Lyv0;->t0:Z

    .line 167
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v2, "payment_complete_once"

    .line 168
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    .line 169
    iget-object v8, v12, Lyv0;->G:Ljava/lang/String;

    iget-object v9, v12, Lyv0;->E:Ljava/lang/String;

    iget-object v0, v12, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    .line 170
    invoke-static {v0}, LfG0;->a(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v10

    new-instance v11, LOv0;

    iget v0, v12, Lyv0;->g0:I

    invoke-direct {v11, v0}, LOv0;-><init>(I)V

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v3, v4

    invoke-direct/range {v0 .. v11}, LXw0;-><init>(Landroid/app/Activity;LRw0;ZZZZZLjava/lang/String;Ljava/lang/String;ILOv0;)V

    iput-object v15, v12, Lyv0;->o0:LXw0;

    .line 171
    new-instance v0, LDa0;

    invoke-direct {v0}, LDa0;-><init>()V

    .line 172
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    iget-object v2, v12, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    .line 173
    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual/range {p1 .. p1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07024c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v4, Lav0;

    invoke-direct {v4, v12, v0}, Lav0;-><init>(Lyv0;LDa0;)V

    .line 175
    invoke-virtual {v0, v1, v2, v3, v4}, LDa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    .line 176
    iget-boolean v0, v12, Lyv0;->c0:Z

    if-eqz v0, :cond_8

    iget-object v0, v12, Lyv0;->o0:LXw0;

    .line 177
    iget-object v0, v0, LXw0;->T:LFw0;

    .line 178
    iput-object v12, v0, LFw0;->d0:LDw0;

    .line 179
    :cond_8
    iget-object v0, v12, Lyv0;->I:LUt0;

    iget-object v1, v12, Lyv0;->o0:LXw0;

    .line 180
    iget-object v1, v1, LXw0;->E:LNQ0;

    .line 181
    invoke-virtual {v0, v1}, LDQ0;->a(LNQ0;)V

    .line 182
    iget-object v0, v12, Lyv0;->J:LBu0;

    iget-object v1, v12, Lyv0;->o0:LXw0;

    .line 183
    iget-object v1, v1, LXw0;->F:LNQ0;

    .line 184
    invoke-virtual {v0, v1}, LDQ0;->a(LNQ0;)V

    .line 185
    iget-object v0, v12, Lyv0;->w0:LGu0;

    if-eqz v0, :cond_9

    iget-object v1, v12, Lyv0;->o0:LXw0;

    .line 186
    iget-object v1, v1, LXw0;->E:LNQ0;

    .line 187
    invoke-virtual {v0, v1}, LDQ0;->a(LNQ0;)V

    :cond_9
    return v14

    .line 188
    :cond_a
    throw v3
.end method

.method public b(ILCQ0;Lorg/chromium/base/Callback;)I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 130
    iget-object p1, p0, Lyv0;->K:LHu0;

    .line 131
    iget-wide v2, p1, LHu0;->a:J

    .line 132
    invoke-static {v2, v3, p1, v0}, LJ/N;->Minh94DW(JLjava/lang/Object;I)V

    .line 133
    move-object p1, p2

    check-cast p1, Lju0;

    .line 134
    iget-boolean v0, p1, LCQ0;->w:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lyv0;->h0:LZw0;

    invoke-virtual {v0, p2}, LZw0;->c(LCQ0;)V

    .line 136
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object p2

    .line 137
    iget-object p1, p1, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 138
    invoke-virtual {p2, p1, p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$NormalizedAddressRequestDelegate;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lyv0;->a(Lju0;)V

    .line 140
    :goto_0
    iput-object p3, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    return v1

    :cond_1
    if-ne p1, v0, :cond_2

    .line 141
    iget-object p1, p0, Lyv0;->Z:LZw0;

    invoke-virtual {p1, p2}, LZw0;->c(LCQ0;)V

    .line 142
    iget-object p1, p0, Lyv0;->M:Lc91;

    .line 143
    iget-object p2, p2, LCQ0;->C:Ljava/lang/String;

    .line 144
    check-cast p1, Lp91;

    invoke-virtual {p1, p2}, Lp91;->a(Ljava/lang/String;)V

    .line 145
    iput-object p3, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    return v1

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 146
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/4 v3, 0x0

    .line 147
    iget-wide v4, p1, LHu0;->a:J

    .line 148
    invoke-static {v4, v5, p1, v3}, LJ/N;->Minh94DW(JLjava/lang/Object;I)V

    .line 149
    move-object p1, p2

    check-cast p1, Lku0;

    .line 150
    iget-boolean v3, p1, LCQ0;->w:Z

    if-eqz v3, :cond_5

    .line 151
    iget-object v0, p0, Lyv0;->i0:Ltw0;

    invoke-virtual {v0, p2}, LZw0;->c(LCQ0;)V

    .line 152
    iget-boolean p2, p0, Lyv0;->T:Z

    if-nez p2, :cond_3

    return v2

    .line 153
    :cond_3
    new-instance p2, LQ81;

    invoke-direct {p2}, LQ81;-><init>()V

    .line 154
    iget-object v0, p1, Lku0;->M:Ljava/lang/String;

    .line 155
    iput-object v0, p2, LQ81;->c:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lku0;->N:Ljava/lang/String;

    .line 157
    iput-object v0, p2, LQ81;->d:Ljava/lang/String;

    .line 158
    iget-object p1, p1, Lku0;->O:Ljava/lang/String;

    .line 159
    iput-object p1, p2, LQ81;->b:Ljava/lang/String;

    .line 160
    iget-object p1, p0, Lyv0;->M:Lc91;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lyv0;->T:Z

    if-nez v0, :cond_4

    goto :goto_1

    .line 161
    :cond_4
    check-cast p1, Lp91;

    invoke-virtual {p1, p2}, Lp91;->a(LQ81;)V

    goto :goto_1

    .line 162
    :cond_5
    invoke-virtual {p0, p1}, Lyv0;->a(Lku0;)V

    .line 163
    iget-boolean p1, p0, Lyv0;->T:Z

    if-nez p1, :cond_6

    return v0

    .line 164
    :cond_6
    :goto_1
    iput-object p3, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    return v1

    :cond_7
    const/4 p3, 0x4

    if-ne p1, p3, :cond_9

    .line 165
    move-object p1, p2

    check-cast p1, LQu0;

    .line 166
    instance-of p3, p1, Lnu0;

    if-eqz p3, :cond_8

    .line 167
    move-object p3, p1

    check-cast p3, Lnu0;

    .line 168
    iget-boolean v3, p3, LCQ0;->w:Z

    if-nez v3, :cond_8

    .line 169
    invoke-virtual {p0, p3}, Lyv0;->a(Lnu0;)V

    return v0

    .line 170
    :cond_8
    iget-object p3, p0, Lyv0;->K:LHu0;

    .line 171
    iget-wide v3, p3, LHu0;->a:J

    .line 172
    invoke-static {v3, v4, p3, v1}, LJ/N;->Minh94DW(JLjava/lang/Object;I)V

    .line 173
    invoke-virtual {p0, p1}, Lyv0;->b(LQu0;)V

    .line 174
    iget-object p1, p0, Lyv0;->n0:LZw0;

    invoke-virtual {p1, p2}, LZw0;->c(LCQ0;)V

    :cond_9
    return v2
.end method

.method public b(ILorg/chromium/base/Callback;)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 175
    invoke-virtual {p0, v1}, Lyv0;->a(Lju0;)V

    .line 176
    iput-object p2, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    .line 177
    iget-object p1, p0, Lyv0;->K:LHu0;

    .line 178
    iget-wide v3, p1, LHu0;->a:J

    .line 179
    invoke-static {v3, v4, p1, v0}, LJ/N;->Ms$nM9AY(JLjava/lang/Object;I)V

    return v2

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 180
    invoke-virtual {p0, v1}, Lyv0;->a(Lku0;)V

    .line 181
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/4 p2, 0x0

    .line 182
    iget-wide v1, p1, LHu0;->a:J

    .line 183
    invoke-static {v1, v2, p1, p2}, LJ/N;->Ms$nM9AY(JLjava/lang/Object;I)V

    return v0

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 184
    invoke-virtual {p0, v1}, Lyv0;->a(Lnu0;)V

    .line 185
    iget-object p1, p0, Lyv0;->K:LHu0;

    .line 186
    iget-wide v3, p1, LHu0;->a:J

    .line 187
    invoke-static {v3, v4, p1, v2}, LJ/N;->Ms$nM9AY(JLjava/lang/Object;I)V

    return v0

    :cond_2
    return p2
.end method

.method public final b(LQu0;)V
    .locals 7

    const-string v0, "WebPaymentsModifiers"

    .line 61
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Lyv0;->a(LQu0;)Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p1, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    :goto_0
    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    .line 65
    :cond_2
    iget-object v2, v1, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    invoke-virtual {p0, v2}, Lyv0;->a(LT81;)LgU0;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lyv0;->Y:Lcx0;

    new-instance v4, Lyw0;

    iget-object v5, v1, Lorg/chromium/payments/mojom/PaymentItem;->b:Ljava/lang/String;

    invoke-virtual {v2}, LgU0;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v1, v1, LT81;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {v2, v1}, LgU0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v4, v5, v6, v1, v2}, Lyw0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    iput-object v4, v3, Lcx0;->a:Lyw0;

    .line 69
    iget-object v1, p0, Lyv0;->Y:Lcx0;

    if-nez p1, :cond_3

    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p1, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyv0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 71
    :goto_1
    iput-object v0, v1, Lcx0;->c:Ljava/util/List;

    .line 72
    iget-object p1, p0, Lyv0;->o0:LXw0;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lyv0;->Y:Lcx0;

    invoke-virtual {p1, v0}, LXw0;->a(Lcx0;)V

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lyv0;->r0:LQu0;

    .line 195
    iget-object v1, p0, Lyv0;->p0:Lgw0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 196
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v2}, LHu0;->a(I)V

    .line 197
    iget-object p1, p0, Lyv0;->p0:Lgw0;

    new-instance v1, Lcv0;

    invoke-direct {v1, p0}, Lcv0;-><init>(Lyv0;)V

    const v2, 0x7f1304cc

    .line 198
    iget-object p1, p1, Lgw0;->a:Lpw0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lpw0;->a(Lfw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void

    .line 199
    :cond_1
    iget-boolean v0, p0, Lyv0;->H0:Z

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lyv0;->K:LHu0;

    invoke-virtual {v0, v2}, LHu0;->a(I)V

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, p1, v0}, Lyv0;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p0, Lyv0;->o0:LXw0;

    .line 203
    iput-boolean v2, p1, LXw0;->a0:Z

    .line 204
    invoke-virtual {p1, v2}, LXw0;->a(Z)V

    .line 205
    iget-object v0, p1, LXw0;->D:Lxw0;

    .line 206
    iget-object v0, v0, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 207
    invoke-virtual {p1}, LXw0;->d()V

    :goto_0
    return-void
.end method

.method public final b(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 13

    .line 73
    iget-boolean v0, p0, Lyv0;->H0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyv0;->M0:LPv0;

    if-eqz v0, :cond_a

    .line 74
    :cond_0
    invoke-virtual {p0}, Lyv0;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lyv0;->S:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lyv0;->x0:Z

    if-nez v0, :cond_a

    .line 75
    iget-boolean v0, p0, Lyv0;->I0:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyv0;->n0:LZw0;

    invoke-virtual {v0}, LZw0;->c()I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lyv0;->n0:LZw0;

    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    check-cast v0, LQu0;

    .line 77
    invoke-virtual {v0}, LQu0;->r()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v0}, LQu0;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "WebPaymentMicrotransaction"

    .line 79
    invoke-static {v0}, LBv0;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 80
    new-instance v0, Lgw0;

    invoke-direct {v0}, Lgw0;-><init>()V

    iput-object v0, p0, Lyv0;->p0:Lgw0;

    .line 81
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->q0()LtQ0;

    move-result-object v4

    iget-object v5, p0, Lyv0;->n0:LZw0;

    .line 82
    invoke-virtual {v5}, LZw0;->b()LCQ0;

    move-result-object v5

    move-object v8, v5

    check-cast v8, LQu0;

    iget-object v5, p0, Lyv0;->y0:Ljava/util/Map;

    iget-object v6, p0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v6, v6, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v6, v6, LT81;->b:Ljava/lang/String;

    .line 83
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LgU0;

    iget-object v6, p0, Lyv0;->Y:Lcx0;

    .line 84
    iget-object v6, v6, Lcx0;->a:Lyw0;

    .line 85
    new-instance v10, Lgv0;

    invoke-direct {v10, p0}, Lgv0;-><init>(Lyv0;)V

    new-instance v11, Lhv0;

    invoke-direct {v11, p0}, Lhv0;-><init>(Lyv0;)V

    .line 86
    new-instance v7, LXd1;

    sget-object v9, Lqw0;->p:[LUd1;

    invoke-direct {v7, v9}, LXd1;-><init>([LUd1;)V

    sget-object v9, Lqw0;->n:Lke1;

    .line 87
    invoke-virtual {v8}, LQu0;->i()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, LgU0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v7, v9, v5}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v5, Lqw0;->b:Lfe1;

    .line 89
    iget-object v9, v6, Lyw0;->c:Ljava/lang/String;

    .line 90
    invoke-virtual {v7, v5, v9}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v5, Lqw0;->c:Lfe1;

    .line 91
    iget-object v6, v6, Lyw0;->b:Ljava/lang/String;

    .line 92
    invoke-virtual {v7, v5, v6}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v5, Lqw0;->e:Lhe1;

    .line 93
    invoke-virtual {v7, v5, v2}, LXd1;->a(Lce1;Z)LXd1;

    sget-object v5, Lqw0;->i:Lhe1;

    .line 94
    invoke-virtual {v7, v5, v2}, LXd1;->a(Lce1;Z)LXd1;

    sget-object v5, Lqw0;->f:Lhe1;

    .line 95
    invoke-virtual {v7, v5, v1}, LXd1;->a(Lce1;Z)LXd1;

    sget-object v1, Lqw0;->a:Lfe1;

    .line 96
    iget-object v5, v8, LCQ0;->D:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {v7, v1, v5}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, Lqw0;->d:Lfe1;

    .line 98
    invoke-virtual {v8}, LCQ0;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    .line 99
    invoke-virtual {v7}, LXd1;->a()Lle1;

    move-result-object v1

    .line 100
    new-instance v5, Lpw0;

    new-instance v12, LZv0;

    invoke-direct {v12, v0}, LZv0;-><init>(Lgw0;)V

    move-object v6, v5

    move-object v7, p1

    move-object v9, v1

    invoke-direct/range {v6 .. v12}, Lpw0;-><init>(Landroid/content/Context;LQu0;Lle1;Ldw0;Lew0;Ljava/lang/Runnable;)V

    iput-object v5, v0, Lgw0;->a:Lpw0;

    .line 101
    iget-object v6, v4, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 102
    iget-object v6, v6, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v6, v5}, LWT;->a(Ljava/lang/Object;)Z

    .line 103
    new-instance v5, Lrw0;

    invoke-direct {v5, p1}, Lrw0;-><init>(Landroid/content/Context;)V

    .line 104
    iget-object p1, v5, Lrw0;->f:Landroid/widget/Button;

    iget-object v6, v0, Lgw0;->a:Lpw0;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, v5, Lrw0;->e:Landroid/widget/Button;

    iget-object v6, v0, Lgw0;->a:Lpw0;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget-object p1, Law0;->a:Lne1;

    .line 107
    invoke-static {v1, v5, p1}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    move-result-object p1

    .line 108
    new-instance v1, Lbw0;

    invoke-direct {v1, v0, p1, v4, v5}, Lbw0;-><init>(Lgw0;Loe1;LtQ0;Lrw0;)V

    iput-object v1, v0, Lgw0;->b:Ljava/lang/Runnable;

    .line 109
    iget-object p1, v4, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 110
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-ne v5, p1, :cond_4

    .line 111
    sput-object p0, Lyv0;->P0:Lyv0;

    .line 112
    iput-boolean v2, p0, Lyv0;->D0:Z

    .line 113
    iget-object p1, p0, Lyv0;->K:LHu0;

    invoke-virtual {p1, v2}, LHu0;->b(I)V

    return-void

    .line 114
    :cond_4
    throw v3

    .line 115
    :cond_5
    iget-object v0, p0, Lyv0;->n0:LZw0;

    .line 116
    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    check-cast v0, LQu0;

    .line 117
    invoke-virtual {p0, p1}, Lyv0;->a(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 118
    :cond_6
    iget-object p1, p0, Lyv0;->n0:LZw0;

    invoke-virtual {p1}, LZw0;->c()I

    move-result p1

    if-gt p1, v2, :cond_9

    if-eqz v0, :cond_9

    .line 119
    iget-boolean p1, p0, Lyv0;->I0:Z

    if-nez p1, :cond_7

    goto :goto_3

    .line 120
    :cond_7
    instance-of p1, v0, LFv0;

    if-eqz p1, :cond_8

    .line 121
    invoke-static {}, LVv0;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 122
    :cond_8
    iget-object p1, p0, Lyv0;->o0:LXw0;

    .line 123
    iget-object p1, p1, LXw0;->D:Lxw0;

    .line 124
    iget-object p1, p1, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 125
    :goto_2
    iput-boolean v2, p0, Lyv0;->D0:Z

    .line 126
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, LHu0;->b(I)V

    .line 127
    iget-object p1, p0, Lyv0;->K:LHu0;

    iget-object v2, p0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v2, v2, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v4, v2, LT81;->b:Ljava/lang/String;

    iget-object v2, v2, LT81;->c:Ljava/lang/String;

    invoke-virtual {p1, v4, v2, v1}, LHu0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    invoke-virtual {p0, v3, v3, v0}, Lyv0;->a(LCQ0;LCQ0;LCQ0;)Z

    goto :goto_4

    .line 129
    :cond_9
    :goto_3
    iget-object p1, p0, Lyv0;->o0:LXw0;

    invoke-virtual {p1}, LXw0;->c()V

    :cond_a
    :goto_4
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 188
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    iput-boolean p1, p0, Lyv0;->R:Z

    .line 190
    invoke-virtual {p0}, Lyv0;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-boolean p1, p0, Lyv0;->F0:Z

    invoke-virtual {p0, p1}, Lyv0;->d(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lyv0;->Q:Z

    :goto_0
    return-void
.end method

.method public final b(LU81;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, LT61;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2
    invoke-static {v3}, LJ/N;->MFiPq6M_(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    const/4 v4, 0x2

    if-nez v3, :cond_1

    .line 3
    iget-object v1, v0, Lyv0;->K:LHu0;

    invoke-virtual {v1, v4}, LHu0;->a(I)V

    const-string v1, "Invalid payment details."

    .line 4
    invoke-virtual {v0, v1}, Lyv0;->c(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    iget-object v3, v1, LU81;->b:Lorg/chromium/payments/mojom/PaymentItem;

    if-eqz v3, :cond_2

    .line 6
    iput-object v3, v0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    .line 7
    :cond_2
    iget-object v3, v0, Lyv0;->W:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v1, LU81;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    if-eqz v3, :cond_5

    .line 8
    :cond_3
    iget-object v3, v1, LU81;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    if-eqz v3, :cond_4

    .line 9
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lyv0;->W:Ljava/util/List;

    .line 12
    :cond_5
    iget-object v3, v1, LU81;->b:Lorg/chromium/payments/mojom/PaymentItem;

    if-eqz v3, :cond_6

    .line 13
    iget-object v3, v3, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    invoke-virtual {v0, v3}, Lyv0;->a(LT81;)LgU0;

    .line 14
    :cond_6
    iget-object v3, v1, LU81;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    if-eqz v3, :cond_7

    .line 15
    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v7, v3, v6

    .line 16
    iget-object v7, v7, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    invoke-virtual {v0, v7}, Lyv0;->a(LT81;)LgU0;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 17
    :cond_7
    iget-object v3, v1, LU81;->d:[LG91;

    if-eqz v3, :cond_8

    .line 18
    array-length v5, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    aget-object v7, v3, v6

    .line 19
    iget-object v7, v7, LG91;->d:LT81;

    invoke-virtual {v0, v7}, Lyv0;->a(LT81;)LgU0;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 20
    :cond_8
    iget-object v3, v1, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    if-eqz v3, :cond_b

    .line 21
    array-length v5, v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_b

    aget-object v7, v3, v6

    .line 22
    iget-object v8, v7, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    if-eqz v8, :cond_9

    iget-object v8, v8, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    invoke-virtual {v0, v8}, Lyv0;->a(LT81;)LgU0;

    .line 23
    :cond_9
    iget-object v7, v7, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    .line 24
    iget-object v10, v10, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    invoke-virtual {v0, v10}, Lyv0;->a(LT81;)LgU0;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 25
    :cond_b
    iget-object v3, v0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v3, v3, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    invoke-virtual {v0, v3}, Lyv0;->a(LT81;)LgU0;

    move-result-object v3

    .line 26
    new-instance v5, Lyw0;

    iget-object v6, v0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v6, v6, Lorg/chromium/payments/mojom/PaymentItem;->b:Ljava/lang/String;

    invoke-virtual {v3}, LgU0;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v8, v8, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v8, v8, LT81;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {v3, v8}, LgU0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v7, v3, v2}, Lyw0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    iget-object v3, v0, Lyv0;->W:Ljava/util/List;

    invoke-virtual {v0, v3}, Lyv0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 29
    new-instance v6, Lcx0;

    invoke-direct {v6, v5, v3}, Lcx0;-><init>(Lyw0;Ljava/util/List;)V

    iput-object v6, v0, Lyv0;->Y:Lcx0;

    .line 30
    iget-object v3, v0, Lyv0;->Z:LZw0;

    const/4 v5, 0x1

    if-eqz v3, :cond_c

    iget-object v3, v1, LU81;->d:[LG91;

    if-eqz v3, :cond_13

    .line 31
    :cond_c
    iget-object v3, v1, LU81;->d:[LG91;

    if-eqz v3, :cond_12

    .line 32
    array-length v6, v3

    if-nez v6, :cond_d

    goto/16 :goto_9

    .line 33
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 34
    :goto_6
    array-length v9, v3

    if-ge v7, v9, :cond_11

    .line 35
    aget-object v9, v3, v7

    .line 36
    iget-object v10, v9, LG91;->d:LT81;

    invoke-virtual {v0, v10}, Lyv0;->a(LT81;)LgU0;

    move-result-object v10

    .line 37
    iget-object v11, v0, Lyv0;->y0:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-le v11, v5, :cond_e

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_f

    .line 38
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, LgU0;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_f
    const-string v11, ""

    .line 39
    :goto_8
    new-instance v15, LCQ0;

    iget-object v13, v9, LG91;->b:Ljava/lang/String;

    iget-object v14, v9, LG91;->c:Ljava/lang/String;

    invoke-static {v11}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, LG91;->d:LT81;

    iget-object v12, v12, LT81;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v10, v12}, LgU0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x0

    const/16 v16, 0x0

    move-object v12, v15

    move-object v11, v15

    move-object v15, v10

    .line 41
    invoke-direct/range {v12 .. v17}, LCQ0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-boolean v9, v9, LG91;->e:Z

    if-eqz v9, :cond_10

    move v8, v7

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 44
    :cond_11
    new-instance v3, LZw0;

    .line 45
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v8, v6}, LZw0;-><init>(IILjava/util/Collection;)V

    goto :goto_a

    .line 46
    :cond_12
    :goto_9
    new-instance v3, LZw0;

    const/4 v6, 0x0

    .line 47
    invoke-direct {v3, v4, v6}, LZw0;-><init>(ILCQ0;)V

    .line 48
    :goto_a
    iput-object v3, v0, Lyv0;->Z:LZw0;

    .line 49
    :cond_13
    iget-object v3, v0, Lyv0;->M0:LPv0;

    if-eqz v3, :cond_17

    .line 50
    iget-boolean v4, v3, LPv0;->d:Z

    if-nez v4, :cond_14

    goto :goto_b

    .line 51
    :cond_14
    iget-object v4, v1, LU81;->d:[LG91;

    if-eqz v4, :cond_16

    array-length v6, v4

    if-ne v6, v5, :cond_16

    aget-object v6, v4, v2

    iget-boolean v6, v6, LG91;->e:Z

    if-nez v6, :cond_15

    goto :goto_c

    .line 52
    :cond_15
    aget-object v4, v4, v2

    iget-object v4, v4, LG91;->b:Ljava/lang/String;

    iput-object v4, v3, LPv0;->i:Ljava/lang/String;

    :goto_b
    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v3, 0x0

    :goto_d
    if-nez v3, :cond_17

    return v2

    .line 53
    :cond_17
    iget-object v3, v1, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    if-eqz v3, :cond_1a

    .line 54
    array-length v3, v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lyv0;->X:Ljava/util/Map;

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 55
    :cond_18
    :goto_e
    iget-object v3, v1, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 56
    aget-object v3, v3, v2

    .line 57
    iget-object v4, v3, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object v4, v4, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    .line 58
    iget-object v6, v0, Lyv0;->X:Ljava/util/Map;

    if-nez v6, :cond_19

    new-instance v6, LJ6;

    invoke-direct {v6}, LJ6;-><init>()V

    iput-object v6, v0, Lyv0;->X:Ljava/util/Map;

    .line 59
    :cond_19
    iget-object v6, v0, Lyv0;->X:Ljava/util/Map;

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 60
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lyv0;->m()V

    return v5
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lyv0;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final c(Z)V
    .locals 9

    .line 2
    iget-object v0, p0, Lyv0;->s0:LVv0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, v0, LVv0;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5
    :goto_0
    iput-object v1, p0, Lyv0;->s0:LVv0;

    .line 6
    :goto_1
    iget-object v0, p0, Lyv0;->p0:Lgw0;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lgw0;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8
    iput-object v1, p0, Lyv0;->p0:Lgw0;

    .line 9
    sput-object v1, Lyv0;->P0:Lyv0;

    .line 10
    :cond_2
    iget-object v0, p0, Lyv0;->o0:LXw0;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 11
    new-instance v3, Ldv0;

    invoke-direct {v3, p0}, Ldv0;-><init>(Lyv0;)V

    const/4 v4, 0x1

    .line 12
    iput-boolean v4, v0, LXw0;->b0:Z

    .line 13
    new-instance v4, LNw0;

    invoke-direct {v4, v0, v3}, LNw0;-><init>(LXw0;Ljava/lang/Runnable;)V

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {v4}, LNw0;->run()V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, v0, LXw0;->D:Lxw0;

    iget-object v3, v0, LXw0;->H:Lorg/chromium/chrome/browser/payments/ui/PaymentRequestUiErrorView;

    if-eqz p1, :cond_4

    .line 16
    new-instance v5, Lvw0;

    invoke-direct {v5, p1, v2}, Lvw0;-><init>(Lxw0;Z)V

    .line 17
    iget-object v5, p1, Lxw0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lxw0;->b:Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p1, Lxw0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    .line 19
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0700f2

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 21
    div-int/2addr v6, v5

    mul-int v6, v6, v5

    .line 22
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 23
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 24
    iget-object p1, p1, Lxw0;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object p1, v0, LXw0;->H:Lorg/chromium/chrome/browser/payments/ui/PaymentRequestUiErrorView;

    const v0, 0x7f0b02e8

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27
    new-instance v3, LYw0;

    invoke-direct {v3, p1, v4}, LYw0;-><init>(Lorg/chromium/chrome/browser/payments/ui/PaymentRequestUiErrorView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :goto_2
    iput-object v1, p0, Lyv0;->o0:LXw0;

    .line 29
    sput-object v1, Lyv0;->P0:Lyv0;

    goto :goto_3

    .line 30
    :cond_4
    throw v1

    .line 31
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lyv0;->S:Z

    .line 32
    iget-object p1, p0, Lyv0;->n0:LZw0;

    if-eqz p1, :cond_7

    .line 33
    :goto_4
    iget-object p1, p0, Lyv0;->n0:LZw0;

    invoke-virtual {p1}, LZw0;->c()I

    move-result p1

    if-ge v2, p1, :cond_6

    .line 34
    iget-object p1, p0, Lyv0;->n0:LZw0;

    invoke-virtual {p1, v2}, LZw0;->a(I)LCQ0;

    move-result-object p1

    .line 35
    check-cast p1, LQu0;

    invoke-virtual {p1}, LQu0;->l()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 36
    :cond_6
    iput-object v1, p0, Lyv0;->n0:LZw0;

    .line 37
    :cond_7
    iget-object p1, p0, Lyv0;->z0:LpI0;

    if-eqz p1, :cond_8

    .line 38
    iget-object v0, p0, Lyv0;->w:LxI0;

    check-cast p1, LrI0;

    .line 39
    iget-object p1, p1, LrI0;->d:LWT;

    invoke-virtual {p1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 40
    iput-object v1, p0, Lyv0;->z0:LpI0;

    .line 41
    :cond_8
    iget-object p1, p0, Lyv0;->A0:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    if-eqz p1, :cond_9

    .line 42
    iget-object v0, p0, Lyv0;->x:LlI0;

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(LlI0;)V

    .line 43
    iput-object v1, p0, Lyv0;->A0:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 44
    :cond_9
    invoke-static {}, LNv0;->a()LNv0;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 45
    sget-object p1, LNv0;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lyv0;->y0:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LgU0;

    .line 47
    iget-wide v3, v0, LgU0;->a:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_a

    .line 48
    invoke-static {v3, v4, v0}, LJ/N;->MkBG391d(JLjava/lang/Object;)V

    .line 49
    iput-wide v1, v0, LgU0;->a:J

    goto :goto_5

    .line 50
    :cond_b
    iget-object p1, p0, Lyv0;->K:LHu0;

    .line 51
    iget-wide v3, p1, LHu0;->a:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_c

    .line 52
    invoke-static {v3, v4, p1}, LJ/N;->MbEI4XUl(JLjava/lang/Object;)V

    .line 53
    iput-wide v1, p1, LHu0;->a:J

    .line 54
    :cond_c
    iget-object p1, p0, Lyv0;->B0:LhU0;

    if-eqz p1, :cond_d

    .line 55
    iget-wide v3, p1, LhU0;->a:J

    .line 56
    invoke-static {v3, v4}, LJ/N;->MDWZVETg(J)V

    .line 57
    iput-wide v1, p1, LhU0;->a:J

    :cond_d
    return-void

    .line 58
    :cond_e
    throw v1
.end method

.method public changePaymentMethodFromPaymentHandler(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lyv0;->B0:LhU0;

    if-eqz v0, :cond_2

    .line 2
    iget-wide v0, v0, LhU0;->a:J

    .line 3
    invoke-static {v0, v1}, LJ/N;->MEEulQAE(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lyv0;->M:Lc91;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lyv0;->r0:LQu0;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast v0, Lp91;

    invoke-virtual {v0, p1, p2}, Lp91;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lyv0;->f()V

    .line 3
    iget-object v0, p0, Lyv0;->K:LHu0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LHu0;->a(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lyv0;->c(Z)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lyv0;->o0:LXw0;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lyv0;->K:LHu0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LHu0;->a(I)V

    const-string v0, "Attempted updateWith without show."

    .line 4
    invoke-virtual {p0, v0}, Lyv0;->c(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lyv0;->r0:LQu0;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, LQu0;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lyv0;->r0:LQu0;

    invoke-virtual {v0}, LQu0;->t()V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Lyv0;->i()V

    return-void
.end method

.method public final d(Z)V
    .locals 6

    .line 9
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lyv0;->Q:Z

    .line 11
    iget-object v1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    iget-object v2, p0, Lyv0;->E:Ljava/lang/String;

    iget-object v3, p0, Lyv0;->F:Ljava/lang/String;

    iget-object v4, p0, Lyv0;->C0:Ljava/util/Map;

    iget-boolean v5, p0, Lyv0;->R:Z

    .line 12
    invoke-static {v1, v2, v3, v4, v5}, LJ/N;->MmQ$c78j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lyv0;->M:Lc91;

    xor-int/lit8 v3, p1, 0x1

    check-cast v1, Lp91;

    invoke-virtual {v1, v3}, Lp91;->c(I)V

    goto :goto_2

    .line 14
    :cond_1
    iget-object v1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    .line 15
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, LJ/N;->MSVZEfSr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lyv0;->M:Lc91;

    const/4 v3, 0x2

    check-cast v1, Lp91;

    invoke-virtual {v1, v3}, Lp91;->c(I)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object v1, p0, Lyv0;->M:Lc91;

    if-eqz p1, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    :goto_1
    check-cast v1, Lp91;

    invoke-virtual {v1, v3}, Lp91;->c(I)V

    .line 19
    :goto_2
    iget-object v1, p0, Lyv0;->K:LHu0;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lyv0;->L:Z

    if-eqz p1, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 20
    :cond_6
    iget-wide v2, v1, LHu0;->a:J

    .line 21
    invoke-static {v2, v3, v1, v0}, LJ/N;->MC8IFKnD(JLjava/lang/Object;Z)V

    return-void
.end method

.method public e()V
    .locals 11

    .line 1
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLu0;

    invoke-interface {v3}, LLu0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 6
    :goto_1
    iget-object v4, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 7
    iget-object v4, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LLu0;

    invoke-interface {v4}, LLu0;->c()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 8
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    iget-object v4, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LLu0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 13
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 14
    :goto_3
    iget-object v3, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 15
    iget-object v3, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLu0;

    invoke-interface {v3}, LLu0;->b()Ljava/net/URI;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 18
    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_9

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 21
    :cond_a
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 22
    :goto_6
    iget-object v4, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 23
    iget-object v4, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LLu0;

    invoke-interface {v4}, LLu0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 24
    iget-object v2, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 25
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lyv0;->j0:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lyv0;->k0:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyv0;->l0:Ljava/util/List;

    .line 27
    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    .line 28
    :goto_7
    iget-object v2, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 29
    iget-object v2, p0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLu0;

    .line 30
    iget-object v3, p0, Lyv0;->b0:Ljava/util/Map;

    .line 31
    invoke-interface {v2}, LLu0;->a()Ljava/util/Set;

    move-result-object v4

    .line 32
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :cond_e
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 33
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    if-nez v6, :cond_f

    .line 34
    new-instance v6, LJ6;

    invoke-direct {v6}, LJ6;-><init>()V

    .line 35
    :cond_f
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/payments/mojom/PaymentMethodData;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    if-nez v6, :cond_11

    goto :goto_9

    .line 36
    :cond_11
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    :goto_9
    if-eqz v5, :cond_13

    .line 37
    invoke-interface {v2, v5}, LLu0;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_a

    :cond_12
    const/4 v3, 0x1

    .line 38
    iput-boolean v3, p0, Lyv0;->E0:Z

    .line 39
    invoke-virtual {v0, v2, v5}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 40
    :cond_13
    :goto_a
    iget-object v3, p0, Lyv0;->k0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 41
    :cond_14
    iget-boolean v1, p0, Lyv0;->P:Z

    if-eqz v1, :cond_15

    .line 42
    invoke-virtual {p0}, Lyv0;->l()V

    .line 43
    :cond_15
    iget-boolean v1, p0, Lyv0;->Q:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ld7;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 44
    iget-boolean v1, p0, Lyv0;->F0:Z

    invoke-virtual {p0, v1}, Lyv0;->d(Z)V

    .line 45
    :cond_16
    invoke-virtual {p0}, Lyv0;->g()Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    .line 46
    :cond_17
    invoke-virtual {v0}, LJ6;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLu0;

    invoke-interface {v2, p0}, LLu0;->a(LKu0;)V

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LLu0;

    iget-object v4, p0, Lyv0;->a0:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    iget-object v6, p0, Lyv0;->E:Ljava/lang/String;

    iget-object v7, p0, Lyv0;->F:Ljava/lang/String;

    iget-object v8, p0, Lyv0;->H:[[B

    .line 49
    iget-object v1, p0, Lyv0;->X:Ljava/util/Map;

    if-nez v1, :cond_18

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_d

    :cond_18
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_d
    move-object v9, v1

    move-object v10, p0

    .line 50
    invoke-interface/range {v3 .. v10}, LLu0;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;LJu0;)V

    goto :goto_c

    :cond_19
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-eqz v0, :cond_0

    check-cast v0, Lz61;

    invoke-virtual {v0}, Lz61;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lyv0;->M:Lc91;

    return-void
.end method

.method public final g()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lyv0;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lyv0;->S:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lyv0;->n0:LZw0;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, LZw0;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-boolean v3, p0, Lyv0;->E0:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lyv0;->u0:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-boolean v0, p0, Lyv0;->I0:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyv0;->b0:Ljava/util/Map;

    const-string v2, "basic-card"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lyv0;->F0:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lyv0;->G0:Z

    if-nez v0, :cond_4

    const-string v0, "StrictHasEnrolledAutofillInstrument"

    .line 6
    invoke-static {v0}, LBv0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "User does not have valid information on file."

    .line 7
    iput-object v0, p0, Lyv0;->K0:Ljava/lang/String;

    const-string v0, "Payment method not supported. "

    .line 8
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lyv0;->K0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lyv0;->a(Ljava/lang/String;I)V

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1

    .line 9
    :cond_5
    :goto_2
    iget-object v0, p0, Lyv0;->K:LHu0;

    iget-boolean v1, p0, Lyv0;->E0:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, LHu0;->c(I)V

    .line 10
    iget-boolean v0, p0, Lyv0;->L0:Z

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lyv0;->K0:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lyv0;->a(Ljava/lang/String;I)V

    goto :goto_4

    .line 12
    :cond_6
    iget-boolean v0, p0, Lyv0;->L:Z

    if-eqz v0, :cond_7

    const-string v0, "User closed the Payment Request UI."

    .line 13
    invoke-virtual {p0, v0, v2}, Lyv0;->a(Ljava/lang/String;I)V

    goto :goto_4

    :cond_7
    const-string v0, "Payment method not supported."

    .line 14
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lyv0;->K0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ""

    goto :goto_3

    :cond_8
    const-string v1, " "

    .line 16
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lyv0;->K0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v0, v4}, Lyv0;->a(Ljava/lang/String;I)V

    :goto_4
    return v2

    :cond_9
    :goto_5
    return v1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lyv0;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lyv0;->l()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lyv0;->P:Z

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyv0;->n0:LZw0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyv0;->k()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lyv0;->o0:LXw0;

    iget-object v1, p0, Lyv0;->Y:Lcx0;

    invoke-virtual {v0, v1}, LXw0;->a(Lcx0;)V

    .line 4
    iget-boolean v0, p0, Lyv0;->c0:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lyv0;->o0:LXw0;

    const/4 v1, 0x2

    iget-object v2, p0, Lyv0;->Z:LZw0;

    invoke-virtual {v0, v1, v2}, LXw0;->a(ILZw0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyv0;->k0:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyv0;->l0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()V
    .locals 9

    .line 1
    iget-object v0, p0, Lyv0;->n0:LZw0;

    .line 2
    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v1

    instance-of v1, v1, LFv0;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3
    iput-boolean v1, v0, LZw0;->d:Z

    .line 4
    iget-object v0, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    new-instance v1, Lzw0;

    iget-object v4, p0, Lyv0;->Y:Lcx0;

    iget-object v5, p0, Lyv0;->h0:LZw0;

    iget-object v6, p0, Lyv0;->Z:LZw0;

    iget-object v7, p0, Lyv0;->i0:Ltw0;

    iget-object v8, p0, Lyv0;->n0:LZw0;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lzw0;-><init>(Lcx0;LZw0;LZw0;LZw0;LZw0;)V

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lyv0;->q0:Lorg/chromium/base/Callback;

    .line 6
    iget-boolean v0, p0, Lyv0;->D0:Z

    if-nez v0, :cond_0

    .line 7
    iput-boolean v2, p0, Lyv0;->D0:Z

    .line 8
    iget-object v0, p0, Lyv0;->K:LHu0;

    invoke-virtual {v0, v2}, LHu0;->b(I)V

    .line 9
    iget-boolean v0, p0, Lyv0;->x0:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lyv0;->K:LHu0;

    iget-object v1, p0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v1, v1, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v2, v1, LT81;->b:Ljava/lang/String;

    iget-object v1, v1, LT81;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, LHu0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lyv0;->P:Z

    .line 3
    iget-boolean v1, p0, Lyv0;->E0:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lyv0;->B:Lvv0;

    check-cast v1, LYu0;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x7

    .line 5
    invoke-static {v1, v3}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    throw v3

    .line 6
    :cond_2
    throw v3

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lyv0;->M:Lc91;

    xor-int/lit8 v4, v1, 0x1

    check-cast v3, Lp91;

    invoke-virtual {v3, v4}, Lp91;->b(I)V

    .line 8
    iget-object v3, p0, Lyv0;->K:LHu0;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lyv0;->L:Z

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 9
    :cond_5
    iget-wide v1, v3, LHu0;->a:J

    .line 10
    invoke-static {v1, v2, v3, v0}, LJ/N;->MSk8HwD4(JLjava/lang/Object;Z)V

    return-void
.end method

.method public final m()V
    .locals 4

    const-string v0, "WebPaymentsModifiers"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lyv0;->X:Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lyv0;->n0:LZw0;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lyv0;->n0:LZw0;

    invoke-virtual {v1}, LZw0;->c()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5
    iget-object v1, p0, Lyv0;->n0:LZw0;

    invoke-virtual {v1, v0}, LZw0;->a(I)LCQ0;

    move-result-object v1

    check-cast v1, LQu0;

    .line 6
    invoke-virtual {p0, v1}, Lyv0;->a(LQu0;)Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    iget-object v3, v2, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    if-nez v3, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iget-object v3, v3, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    .line 9
    invoke-virtual {p0, v3}, Lyv0;->a(LT81;)LgU0;

    move-result-object v3

    iget-object v2, v2, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v2, v2, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v2, v2, LT81;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v2}, LgU0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 11
    :goto_2
    iput-object v2, v1, LCQ0;->B:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_5
    iget-object v0, p0, Lyv0;->n0:LZw0;

    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    check-cast v0, LQu0;

    invoke-virtual {p0, v0}, Lyv0;->b(LQu0;)V

    return-void
.end method

.method public onAddressNormalized(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, LHu0;->a(I)V

    const/4 p1, 0x1

    const-string v0, "Unable to find Chrome activity."

    .line 3
    invoke-virtual {p0, v0, p1}, Lyv0;->a(Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Lju0;

    invoke-direct {v1, v0, p1}, Lju0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    .line 5
    invoke-virtual {v1}, Lju0;->m()LS81;

    move-result-object p1

    const-string v0, "WebPaymentsRedactShippingAddress"

    .line 6
    invoke-static {v0}, LBv0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 7
    iput-object v0, p1, LS81;->i:Ljava/lang/String;

    .line 8
    iput-object v0, p1, LS81;->k:Ljava/lang/String;

    .line 9
    iput-object v0, p1, LS81;->j:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 10
    iput-object v0, p1, LS81;->c:[Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v0, p0, Lyv0;->M:Lc91;

    check-cast v0, Lp91;

    invoke-virtual {v0, p1}, Lp91;->a(LS81;)V

    return-void
.end method

.method public onCouldNotNormalize(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lyv0;->K:LHu0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, LHu0;->a(I)V

    const/4 p1, 0x1

    const-string v0, "Unable to find Chrome activity."

    .line 3
    invoke-virtual {p0, v0, p1}, Lyv0;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lju0;

    invoke-direct {v1, v0, p1}, Lju0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    .line 5
    invoke-virtual {v1}, Lju0;->m()LS81;

    move-result-object p1

    const-string v0, "WebPaymentsRedactShippingAddress"

    .line 6
    invoke-static {v0}, LBv0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 7
    iput-object v0, p1, LS81;->i:Ljava/lang/String;

    .line 8
    iput-object v0, p1, LS81;->k:Ljava/lang/String;

    .line 9
    iput-object v0, p1, LS81;->j:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 10
    iput-object v0, p1, LS81;->c:[Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v0, p0, Lyv0;->M:Lc91;

    check-cast v0, Lp91;

    invoke-virtual {v0, p1}, Lp91;->a(LS81;)V

    :goto_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyv0;->M:Lc91;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lyv0;->r0:LQu0;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lyv0;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, LQu0;->a(Ljava/lang/String;Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lyv0;->a(Z)V

    return-void
.end method
