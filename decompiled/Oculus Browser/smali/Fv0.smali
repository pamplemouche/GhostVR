.class public LFv0;
.super LQu0;
.source "PG"

# interfaces
.implements LLu0;


# instance fields
.field public final I:Lorg/chromium/content_public/browser/WebContents;

.field public final J:J

.field public final K:Ljava/net/URI;

.field public final L:Ljava/util/Set;

.field public final M:Z

.field public final N:[LEv0;

.field public final O:Z

.field public final P:Ljava/util/Set;

.field public final Q:Z

.field public final R:Z

.field public final S:Ljava/lang/String;

.field public final T:Ljava/net/URI;

.field public final U:Z

.field public V:LhU0;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;JLjava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;[Ljava/lang/String;Z[LEv0;[Ljava/lang/String;)V
    .locals 10

    move-object v6, p0

    move-object/from16 v7, p9

    move-object/from16 v8, p11

    .line 1
    invoke-virtual {p4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p7

    goto :goto_0

    :cond_0
    move-object v2, p5

    .line 2
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    move-object v4, v9

    goto :goto_1

    :cond_1
    move-object/from16 v4, p7

    :goto_1
    move-object v0, p0

    move-object/from16 v3, p6

    move-object/from16 v5, p8

    .line 3
    invoke-direct/range {v0 .. v5}, LQu0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object v0, p1

    .line 4
    iput-object v0, v6, LFv0;->I:Lorg/chromium/content_public/browser/WebContents;

    move-wide v0, p2

    .line 5
    iput-wide v0, v6, LFv0;->J:J

    move-object v0, p4

    .line 6
    iput-object v0, v6, LFv0;->K:Ljava/net/URI;

    .line 7
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p8, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v6, LFv0;->O:Z

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v6, LFv0;->L:Ljava/util/Set;

    const/4 v0, 0x0

    .line 9
    :goto_3
    array-length v3, v7

    if-ge v0, v3, :cond_3

    .line 10
    iget-object v3, v6, LFv0;->L:Ljava/util/Set;

    aget-object v4, v7, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move/from16 v0, p10

    .line 11
    iput-boolean v0, v6, LFv0;->M:Z

    .line 12
    array-length v0, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEv0;

    iput-object v0, v6, LFv0;->N:[LEv0;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v6, LFv0;->P:Ljava/util/Set;

    move-object/from16 v3, p12

    .line 14
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15
    iget-object v0, v6, LFv0;->I:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, LdI0;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v6, LFv0;->Q:Z

    .line 17
    iput-boolean v2, v6, LFv0;->R:Z

    move-object v0, p5

    .line 18
    iput-object v0, v6, LFv0;->S:Ljava/lang/String;

    .line 19
    iput-object v9, v6, LFv0;->T:Ljava/net/URI;

    .line 20
    iput-boolean v2, v6, LFv0;->U:Z

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;ZLandroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 21
    invoke-virtual {p5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const/4 v3, 0x0

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    move-object v4, p3

    move-object v0, p0

    move-object v5, p7

    .line 23
    invoke-direct/range {v0 .. v5}, LQu0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 24
    iput-object p1, p0, LFv0;->I:Lorg/chromium/content_public/browser/WebContents;

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, LFv0;->J:J

    .line 26
    iput-object p5, p0, LFv0;->K:Ljava/net/URI;

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-nez p1, :cond_2

    if-eqz p7, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, LFv0;->O:Z

    .line 28
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LFv0;->L:Ljava/util/Set;

    .line 29
    invoke-virtual {p1, p8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    iput-boolean p5, p0, LFv0;->M:Z

    new-array p1, p3, [LEv0;

    .line 31
    iput-object p1, p0, LFv0;->N:[LEv0;

    .line 32
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LFv0;->P:Ljava/util/Set;

    .line 33
    invoke-static {p1, p9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, LFv0;->I:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 35
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    invoke-interface {p1}, LdI0;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    :cond_3
    iput-boolean p3, p0, LFv0;->Q:Z

    .line 36
    iput-boolean p5, p0, LFv0;->R:Z

    .line 37
    iput-object p2, p0, LFv0;->S:Ljava/lang/String;

    .line 38
    iput-object p4, p0, LFv0;->T:Ljava/net/URI;

    .line 39
    iput-boolean p6, p0, LFv0;->U:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    .line 43
    iget-object v0, p0, LFv0;->L:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(LKu0;)V
    .locals 0

    return-void
.end method

.method public a(LX81;)V
    .locals 2

    .line 72
    iget-object v0, p0, LFv0;->V:LhU0;

    .line 73
    iget-wide v0, v0, LhU0;->a:J

    invoke-virtual {p1}, LT61;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 74
    invoke-static {v0, v1, p1}, LJ/N;->MctjpILQ(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;)V
    .locals 33

    move-object/from16 v0, p0

    .line 47
    iget-boolean v1, v0, LFv0;->R:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, v0, LCQ0;->D:Landroid/graphics/drawable/Drawable;

    .line 49
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 50
    iget-object v3, v0, LFv0;->I:Lorg/chromium/content_public/browser/WebContents;

    new-instance v4, Ljava/util/HashSet;

    .line 51
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    .line 52
    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v6, v0, LFv0;->V:LhU0;

    iget-object v13, v0, LFv0;->S:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    move-object v14, v1

    iget-object v1, v0, LFv0;->T:Ljava/net/URI;

    iget-object v7, v0, LFv0;->K:Ljava/net/URI;

    iget-boolean v15, v0, LFv0;->U:Z

    iget-object v8, v0, LFv0;->L:Ljava/util/Set;

    new-array v9, v2, [Ljava/lang/String;

    .line 54
    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    aget-object v18, v8, v2

    .line 55
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    new-array v8, v2, [Lorg/chromium/payments/mojom/PaymentMethodData;

    .line 56
    invoke-virtual {v4, v8}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, [Lorg/chromium/payments/mojom/PaymentMethodData;

    new-array v2, v2, [Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    .line 57
    invoke-virtual {v5, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    .line 58
    iget-wide v4, v6, LhU0;->a:J

    .line 59
    invoke-static {v4, v5}, LJ/N;->MMZ3xawE(J)J

    move-result-wide v10

    .line 60
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move-object v7, v8

    move-object/from16 v8, p7

    move-object/from16 v12, p10

    move v2, v15

    move-object v15, v1

    move/from16 v17, v2

    .line 62
    invoke-static/range {v3 .. v18}, LJ/N;->MoJscuVf(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object v1, v0, LFv0;->I:Lorg/chromium/content_public/browser/WebContents;

    iget-wide v3, v0, LFv0;->J:J

    iget-object v5, v0, LFv0;->K:Ljava/net/URI;

    .line 64
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v5, Ljava/util/HashSet;

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/HashSet;

    .line 65
    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v7, v0, LFv0;->V:LhU0;

    iget-boolean v8, v0, LQu0;->H:Z

    .line 66
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    new-array v9, v2, [Lorg/chromium/payments/mojom/PaymentMethodData;

    .line 67
    invoke-virtual {v5, v9}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, [Lorg/chromium/payments/mojom/PaymentMethodData;

    new-array v2, v2, [Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    .line 68
    invoke-virtual {v6, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, [Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    .line 69
    iget-wide v5, v7, LhU0;->a:J

    .line 70
    invoke-static {v5, v6}, LJ/N;->MMZ3xawE(J)J

    move-result-wide v29

    move-object/from16 v19, v1

    move-wide/from16 v20, v3

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move-object/from16 v25, p1

    move-object/from16 v27, p7

    move/from16 v31, v8

    move-object/from16 v32, p10

    .line 71
    invoke-static/range {v19 .. v32}, LJ/N;->MAmyGelF(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;JZLjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;LJu0;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    .line 29
    iget-boolean v2, v0, LFv0;->Q:Z

    if-nez v2, :cond_2

    .line 30
    new-instance v2, Ljava/util/HashSet;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    iget-object v3, v0, LFv0;->L:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    const-string v3, "basic-card"

    .line 33
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 34
    iget-boolean v2, v0, LFv0;->R:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, LFv0;->M:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    iget-object v6, v0, LFv0;->I:Lorg/chromium/content_public/browser/WebContents;

    iget-wide v7, v0, LFv0;->J:J

    iget-object v2, v0, LFv0;->K:Ljava/net/URI;

    .line 36
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/util/HashSet;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    .line 37
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v15, LDv0;

    invoke-direct {v15, v0, v1}, LDv0;-><init>(LFv0;LJu0;)V

    .line 38
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    new-array v1, v5, [Lorg/chromium/payments/mojom/PaymentMethodData;

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Lorg/chromium/payments/mojom/PaymentMethodData;

    new-array v1, v5, [Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    .line 40
    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 41
    invoke-static/range {v6 .. v15}, LJ/N;->MRWgCpy3(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_2
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, LCv0;

    invoke-direct {v3, v0, v1}, LCv0;-><init>(LFv0;LJu0;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;)V
    .locals 6

    .line 75
    iget-object v0, p0, LFv0;->I:Lorg/chromium/content_public/browser/WebContents;

    iget-wide v1, p0, LFv0;->J:J

    iget-object v3, p0, LFv0;->K:Ljava/net/URI;

    .line 76
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    move-object v4, p1

    move-object v5, p2

    .line 78
    invoke-static/range {v0 .. v5}, LJ/N;->MFxBX0HN(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentMethodData;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, LQu0;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "basic-card"

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 3
    iget-object p1, p2, Lorg/chromium/payments/mojom/PaymentMethodData;->i:[I

    array-length p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p2, Lorg/chromium/payments/mojom/PaymentMethodData;->h:[I

    array-length p1, p1

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    iget-object p1, p0, LFv0;->N:[LEv0;

    array-length p1, p1

    if-nez p1, :cond_1

    goto/16 :goto_6

    .line 5
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p2, Lorg/chromium/payments/mojom/PaymentMethodData;->i:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 7
    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 9
    :goto_1
    iget-object v4, p2, Lorg/chromium/payments/mojom/PaymentMethodData;->h:[I

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 10
    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 11
    :goto_2
    iget-object v3, p0, LFv0;->N:[LEv0;

    array-length v3, v3

    if-ge p2, v3, :cond_7

    .line 12
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 13
    iget-object v3, p0, LFv0;->N:[LEv0;

    aget-object v3, v3, p2

    .line 14
    iget-object v3, v3, LEv0;->b:[I

    .line 15
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 16
    :goto_3
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 17
    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v4, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    .line 20
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 21
    iget-object v3, p0, LFv0;->N:[LEv0;

    aget-object v3, v3, p2

    .line 22
    iget-object v3, v3, LEv0;->a:[I

    .line 23
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 24
    :goto_4
    array-length v6, v3

    if-ge v5, v6, :cond_6

    .line 25
    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 26
    :cond_6
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 27
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 28
    :cond_7
    iget-object p1, p0, LFv0;->N:[LEv0;

    array-length p1, p1

    if-ge p2, p1, :cond_8

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x0

    :cond_9
    :goto_7
    return v0
.end method

.method public a(Ljava/util/Map;)Z
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 45
    iget-object p1, p0, LFv0;->L:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 46
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b()Ljava/net/URI;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, LFv0;->P:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LCQ0;->C:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "18.00"

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LFv0;->O:Z

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public n()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, LFv0;->L:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 2

    .line 1
    iget-object v0, p0, LFv0;->V:LhU0;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, v0, LhU0;->a:J

    .line 3
    invoke-static {v0, v1}, LJ/N;->MEEulQAE(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, LFv0;->V:LhU0;

    .line 2
    iget-wide v0, v0, LhU0;->a:J

    .line 3
    invoke-static {v0, v1}, LJ/N;->MA8lTGJC(J)V

    return-void
.end method
