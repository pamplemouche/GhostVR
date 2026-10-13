.class public LW30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk40;


# static fields
.field public static final b:[I

.field public static final c:[I


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x17

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, LW30;->b:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, LW30;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b00ff
        0x7f0b00fc
        0x7f0b00fa
        0x7f0b0100
        0x7f0b00fe
        0x7f0b0101
        0x7f0b00fd
        0x7f0b00f4
        0x7f0b00f5
        0x7f0b0103
        0x7f0b00f6
        0x7f0b0102
        0x7f0b00f7
        0x7f0b00f9
        0x7f0b00f8
        0x7f0b0105
        0x7f0b0106
        0x7f0b00f2
        0x7f0b0107
        0x7f0b00f1
        0x7f0b00f3
        0x7f0b0104
        0x7f0b00fb
    .end array-data

    :array_1
    .array-data 4
        0x7f130241
        0x7f13023e
        0x0
        0x7f130242
        0x7f130240
        0x7f130244
        0x7f13023f
        0x7f130236
        0x7f130237
        0x7f130246
        0x7f13023a
        0x7f130245
        0x7f13023b
        0x7f13023d
        0x7f13023c
        0x7f130248
        0x7f130249
        0x7f130234
        0x7f13024a
        0x7f130233
        0x7f130235
        0x7f130247
        0x7f1303cb
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LW30;->a:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const p0, 0x7f130243

    return p0

    .line 3
    :cond_0
    sget-object v0, LW30;->c:[I

    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    sget-object v0, LW30;->b:[I

    iget v1, p0, LW30;->a:I

    aget v0, v0, v1

    return v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 9

    .line 4
    iget v0, p0, LW30;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 5
    invoke-static {v0}, LW30;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_0
    invoke-static {v0}, LW30;->a(I)I

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lorg/chromium/components/search_engines/TemplateUrlService;->a()Lorg/chromium/components/search_engines/TemplateUrl;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lorg/chromium/components/search_engines/TemplateUrl;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    :pswitch_1
    iget v0, p0, LW30;->a:I

    invoke-static {v0}, LW30;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [LWe1;

    new-instance v5, LWe1;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v7}, Landroid/text/style/SuperscriptSpan;-><init>()V

    aput-object v7, v6, v4

    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-direct {v7, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    aput-object v7, v6, v2

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v7, 0x7f06008d

    .line 13
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 14
    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v2, v6, v1

    const-string p1, "<new>"

    const-string v1, "</new>"

    invoke-direct {v5, p1, v1, v6}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v5, v3, v4

    .line 15
    invoke-static {v0, v3}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    sget-object p1, LbZ;->b:LkW;

    if-nez p1, :cond_2

    .line 17
    invoke-static {}, LbZ;->a()V

    .line 18
    :cond_2
    :try_start_0
    sget-object p1, LbZ;->b:LkW;

    invoke-virtual {p1}, LkW;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    sget-object p1, LzT;->a:Landroid/content/Context;

    const v0, 0x7f1303ce

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
