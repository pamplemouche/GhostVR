.class Landroid/support/v7/widget/if;
.super Landroid/support/v7/widget/hy;


# static fields
.field private static final aN:[C


# instance fields
.field private A:I

.field private B:Landroid/widget/Scroller;

.field private final C:Landroid/widget/Scroller;

.field private D:I

.field private E:Landroid/support/v7/widget/ir;

.field private F:Landroid/support/v7/widget/iq;

.field private G:F

.field private H:J

.field private I:F

.field private J:Landroid/view/VelocityTracker;

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private final O:I

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:Z

.field private aA:Z

.field private final aB:Landroid/view/animation/PathInterpolator;

.field private final aC:Landroid/view/animation/PathInterpolator;

.field private aD:F

.field private aE:F

.field private aF:F

.field private aG:Landroid/animation/ValueAnimator;

.field private aH:Landroid/animation/ValueAnimator;

.field private aI:Ljava/lang/String;

.field private aJ:Landroid/widget/Toast;

.field private aK:Landroid/support/v7/widget/gn;

.field private aL:Landroid/view/accessibility/AccessibilityManager;

.field private aM:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:Landroid/support/v7/widget/ip;

.field private final af:Landroid/support/v7/widget/iu;

.field private ag:Z

.field private ah:Z

.field private ai:Landroid/media/AudioManager;

.field private aj:Landroid/support/v7/widget/is;

.field private ak:Z

.field private al:I

.field private am:I

.field private an:Z

.field private ao:Z

.field private final ap:Landroid/widget/Scroller;

.field private final aq:Landroid/widget/Scroller;

.field private final ar:I

.field private as:Z

.field private at:Z

.field private au:Landroid/graphics/Typeface;

.field private final av:Landroid/graphics/Typeface;

.field private final aw:Landroid/graphics/Typeface;

.field private final ax:F

.field private ay:I

.field private az:I

.field private c:Ljava/lang/String;

.field private final d:Landroid/widget/EditText;

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:I

.field private final i:Z

.field private j:I

.field private k:I

.field private l:[Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/support/v7/widget/ic;

.field private q:Landroid/support/v7/widget/ib;

.field private r:Landroid/support/v7/widget/ia;

.field private s:Landroid/support/v7/widget/hz;

.field private t:J

.field private final u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v:[I

.field private w:Landroid/graphics/Paint;

.field private final x:Landroid/graphics/drawable/Drawable;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/if;->aN:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v7/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/hy;-><init>(Landroid/support/v7/widget/SeslNumberPicker;Landroid/content/Context;)V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/support/v7/widget/if;->t:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/if;->u:Landroid/util/SparseArray;

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/if;->v:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/if;->z:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/if;->P:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/if;->V:I

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->ak:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->an:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->ao:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->as:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->at:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->aA:Z

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v5, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Landroid/support/v7/widget/if;->aB:Landroid/view/animation/PathInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f547ae1    # 0.83f

    const v6, 0x3e2e147b    # 0.17f

    invoke-direct {v1, v6, v6, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Landroid/support/v7/widget/if;->aC:Landroid/view/animation/PathInterpolator;

    iput v4, p0, Landroid/support/v7/widget/if;->aD:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Landroid/support/v7/widget/if;->aE:F

    iget v1, p0, Landroid/support/v7/widget/if;->aE:F

    iput v1, p0, Landroid/support/v7/widget/if;->aF:F

    new-instance v1, Landroid/support/v7/widget/io;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/io;-><init>(Landroid/support/v7/widget/if;)V

    iput-object v1, p0, Landroid/support/v7/widget/if;->aM:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object v1, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Landroid/support/v7/b/e;->sesl_number_picker_spinner_height:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Landroid/support/v7/b/e;->sesl_number_picker_spinner_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Landroid/support/v7/b/e;->sesl_number_picker_spinner_edit_text_height:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    iput v7, p0, Landroid/support/v7/widget/if;->ax:F

    sget-object v7, Landroid/support/v7/b/l;->NumberPicker:[I

    invoke-virtual {p2, p3, v7, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget p4, Landroid/support/v7/b/l;->NumberPicker_internalMinHeight:I

    const/4 p5, -0x1

    invoke-virtual {p3, p4, p5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/if;->e:I

    sget p4, Landroid/support/v7/b/l;->NumberPicker_internalMaxHeight:I

    invoke-virtual {p3, p4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/if;->f:I

    sget p4, Landroid/support/v7/b/l;->NumberPicker_internalMinWidth:I

    invoke-virtual {p3, p4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/if;->g:I

    sget p4, Landroid/support/v7/b/l;->NumberPicker_internalMaxWidth:I

    invoke-virtual {p3, p4, p5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/if;->h:I

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    iget p3, p0, Landroid/support/v7/widget/if;->e:I

    if-eq p3, p5, :cond_1

    iget p4, p0, Landroid/support/v7/widget/if;->f:I

    if-eq p4, p5, :cond_1

    if-gt p3, p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget p3, p0, Landroid/support/v7/widget/if;->g:I

    if-eq p3, p5, :cond_3

    iget p4, p0, Landroid/support/v7/widget/if;->h:I

    if-eq p4, p5, :cond_3

    if-gt p3, p4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    invoke-static {v0, p3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroid/support/v7/widget/if;->O:I

    iget p3, p0, Landroid/support/v7/widget/if;->h:I

    if-ne p3, p5, :cond_4

    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Landroid/support/v7/widget/if;->i:Z

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    sget v5, Landroid/support/v7/b/b;->colorPrimaryDark:I

    invoke-virtual {p4, v5, p3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p4, p3, Landroid/util/TypedValue;->resourceId:I

    const/high16 v5, 0x33000000

    const v6, 0xffffff

    const/4 v7, 0x0

    if-eqz p4, :cond_5

    iget p4, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, p4, v7}, Landroid/support/v4/a/a/f;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p4

    goto :goto_3

    :cond_5
    iget p4, p3, Landroid/util/TypedValue;->data:I

    :goto_3
    and-int/2addr p4, v6

    or-int/2addr p4, v5

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Landroid/support/v7/widget/if;->x:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/b/b;->isLightTheme:I

    invoke-virtual {v5, v6, p3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p3, p3, Landroid/util/TypedValue;->data:I

    const v5, 0x3e4ccccd    # 0.2f

    if-nez p3, :cond_6

    iput v5, p0, Landroid/support/v7/widget/if;->aE:F

    iput v5, p0, Landroid/support/v7/widget/if;->aF:F

    :cond_6
    new-instance p3, Landroid/support/v7/widget/iu;

    invoke-direct {p3, p0}, Landroid/support/v7/widget/iu;-><init>(Landroid/support/v7/widget/if;)V

    iput-object p3, p0, Landroid/support/v7/widget/if;->af:Landroid/support/v7/widget/iu;

    iget-object p3, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setWillNotDraw(Z)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {p3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    sget v6, Landroid/support/v7/b/i;->sesl_number_picker_spinner:I

    iget-object v8, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v6, v8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    sget v6, Landroid/support/v7/b/g;->numberpicker_input:I

    invoke-virtual {p3, v6}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/if;->aw:Landroid/graphics/Typeface;

    const-string p3, "sec-roboto-condensed-light"

    invoke-static {p3, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/if;->av:Landroid/graphics/Typeface;

    const-string p3, "sec-roboto-light"

    invoke-static {p3, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    iget-object p3, p0, Landroid/support/v7/widget/if;->aw:Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    invoke-virtual {p3, v6}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroid/support/v7/widget/if;->av:Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    invoke-virtual {p3, v6}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Landroid/support/v7/widget/if;->av:Landroid/graphics/Typeface;

    goto :goto_4

    :cond_7
    const-string p3, "sans-serif-thin"

    invoke-static {p3, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    :goto_4
    iput-object p3, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    :cond_8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/a/a/n;->a(Landroid/content/res/Configuration;)I

    move-result p3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/a/a/n;->b(Landroid/content/res/Configuration;)I

    move-result v6

    if-ne p3, v6, :cond_9

    const/4 p3, 0x1

    goto :goto_5

    :cond_9
    const/4 p3, 0x0

    :goto_5
    if-nez p3, :cond_a

    iget-object p3, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v5, "theme_font_clock"

    invoke-static {p3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {p3}, Landroid/support/v7/widget/if;->b(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    goto :goto_6

    :cond_a
    iput v5, p0, Landroid/support/v7/widget/if;->aE:F

    iput v5, p0, Landroid/support/v7/widget/if;->aF:F

    :cond_b
    :goto_6
    invoke-direct {p0}, Landroid/support/v7/widget/if;->J()Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->aw:Landroid/graphics/Typeface;

    iput-object p3, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    :cond_c
    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p3

    iget-object v5, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v5}, Landroid/support/v7/widget/SeslNumberPicker;->getEnableStateSet()[I

    move-result-object v5

    invoke-virtual {p3, v5, p5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/if;->ar:I

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    new-instance p5, Landroid/support/v7/widget/ig;

    invoke-direct {p5, p0}, Landroid/support/v7/widget/ig;-><init>(Landroid/support/v7/widget/if;)V

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    new-instance p5, Landroid/support/v7/widget/ih;

    invoke-direct {p5, p0}, Landroid/support/v7/widget/ih;-><init>(Landroid/support/v7/widget/if;)V

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    new-array p5, v0, [Landroid/text/InputFilter;

    new-instance v5, Landroid/support/v7/widget/it;

    invoke-direct {v5, p0}, Landroid/support/v7/widget/it;-><init>(Landroid/support/v7/widget/if;)V

    aput-object v5, p5, p1

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 p5, 0x2

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const v5, 0x2000006

    invoke-virtual {p3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setHighlightColor(I)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-static {}, Landroid/support/v4/widget/az;->a()I

    move-result p4

    invoke-static {p3, p4}, Landroid/support/v4/view/aw;->d(Landroid/view/View;I)V

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/if;->K:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    iput p3, p0, Landroid/support/v7/widget/if;->L:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Landroid/support/v7/widget/if;->M:I

    iget-object p2, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/support/v7/widget/if;->j:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p3, p0, Landroid/support/v7/widget/if;->j:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p3, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p3, p0, Landroid/support/v7/widget/if;->ar:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p2, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    new-instance p2, Landroid/widget/Scroller;

    iget-object p3, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    iget-object p4, p0, Landroid/support/v7/widget/if;->aB:Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, p3, p4, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p2, p0, Landroid/support/v7/widget/if;->ap:Landroid/widget/Scroller;

    new-instance p2, Landroid/widget/Scroller;

    iget-object p3, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-direct {p2, p3, v7, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p2, p0, Landroid/support/v7/widget/if;->aq:Landroid/widget/Scroller;

    iget-object p2, p0, Landroid/support/v7/widget/if;->aq:Landroid/widget/Scroller;

    iput-object p2, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    new-instance p2, Landroid/widget/Scroller;

    iget-object p3, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    new-instance p4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {p4, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {p2, p3, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-static {}, Landroid/support/v7/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroid/support/v7/widget/hz;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/hz;)V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    iget-object p2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setVerticalScrollBarEnabled(Z)V

    iget-object p2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPicker;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setImportantForAccessibility(I)V

    :cond_d
    iget-object p2, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Landroid/support/v7/widget/if;->ai:Landroid/media/AudioManager;

    iget-object p2, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    const-string p3, "android.permission.VIBRATE"

    invoke-virtual {p2, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_e

    iput-boolean v0, p0, Landroid/support/v7/widget/if;->ak:Z

    :cond_e
    new-instance p2, Landroid/support/v7/widget/is;

    invoke-direct {p2, v7}, Landroid/support/v7/widget/is;-><init>(Landroid/support/v7/widget/ig;)V

    iput-object p2, p0, Landroid/support/v7/widget/if;->aj:Landroid/support/v7/widget/is;

    const/16 p2, 0x20

    invoke-static {p2}, Landroid/support/v4/view/ac;->a(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/if;->al:I

    invoke-static {}, Landroid/support/v4/h/a;->a()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/if;->am:I

    iget-object p2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setFocusableInTouchMode(Z)V

    iget-object p2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    const/high16 p3, 0x20000

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setDescendantFocusability(I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_f

    iget-object p2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setDefaultFocusHighlightEnabled(Z)V

    :cond_f
    const-string p2, ""

    iput-object p2, p0, Landroid/support/v7/widget/if;->c:Ljava/lang/String;

    sget p2, Landroid/support/v7/b/j;->sesl_number_picker_invalid_value_entered:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/if;->aI:Ljava/lang/String;

    iget-object p2, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-static {p2, p1}, Landroid/support/v4/view/aw;->a(Landroid/view/View;Z)V

    iget-object p2, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    const-string p3, "accessibility"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Landroid/support/v7/widget/if;->aL:Landroid/view/accessibility/AccessibilityManager;

    new-array p2, p5, [F

    iget p3, p0, Landroid/support/v7/widget/if;->aD:F

    aput p3, p2, p1

    iget p3, p0, Landroid/support/v7/widget/if;->aE:F

    aput p3, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    iget-object p3, p0, Landroid/support/v7/widget/if;->aC:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p2, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    iget-object p3, p0, Landroid/support/v7/widget/if;->aM:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p2, p5, [F

    iget p3, p0, Landroid/support/v7/widget/if;->aE:F

    aput p3, p2, p1

    iget p1, p0, Landroid/support/v7/widget/if;->aD:F

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/if;->aG:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/if;->aG:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v7/widget/if;->aC:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->aG:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/if;->aG:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v7/widget/if;->aM:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic A(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->o:I

    return p0
.end method

.method private A()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->an:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->a(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/if;->I()Z

    return-void
.end method

.method private B()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/if;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/if;->v:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/if;->v:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    iget-boolean v4, p0, Landroid/support/v7/widget/if;->N:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->j(I)I

    move-result v3

    :cond_0
    aput v3, v0, v2

    aget v3, v0, v2

    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->k(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic B(Landroid/support/v7/widget/if;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/if;->N:Z

    return p0
.end method

.method static synthetic C(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->m:I

    return p0
.end method

.method private C()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->an:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->a(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/if;->A()V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->an:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/if;->B()V

    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Landroid/support/v7/widget/if;->j:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/if;->k:I

    iget v1, p0, Landroid/support/v7/widget/if;->j:I

    iget v2, p0, Landroid/support/v7/widget/if;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/if;->y:I

    iget v1, p0, Landroid/support/v7/widget/if;->ay:I

    iget v2, p0, Landroid/support/v7/widget/if;->y:I

    if-gt v1, v2, :cond_3

    iget-boolean v2, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getHeight()I

    move-result v1

    div-int/2addr v1, v0

    :cond_4
    iput v1, p0, Landroid/support/v7/widget/if;->az:I

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/if;->ay:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/if;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/if;->z:I

    iget v0, p0, Landroid/support/v7/widget/if;->z:I

    iput v0, p0, Landroid/support/v7/widget/if;->A:I

    iget-object v0, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBaseline()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/if;->ay:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    check-cast v1, Landroid/support/v7/widget/SeslNumberPicker$CustomEditText;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslNumberPicker$CustomEditText;->setEditTextPosition(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ao:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/if;->aK:Landroid/support/v7/widget/gn;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/if;->a(ILandroid/support/v7/widget/gn;)V

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->ao:Z

    :cond_5
    return-void
.end method

.method static synthetic D(Landroid/support/v7/widget/if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->c:Ljava/lang/String;

    return-object p0
.end method

.method private D()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/if;->o:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->l(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/if;->o:I

    iget v2, p0, Landroid/support/v7/widget/if;->m:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private E()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->as:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->as:Z

    iget v0, p0, Landroid/support/v7/widget/if;->z:I

    iput v0, p0, Landroid/support/v7/widget/if;->A:I

    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/if;->Z:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->aa:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->ab:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/if;->V:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/support/v7/widget/if;->t:J

    iget-object v0, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private F()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/if;->F:Landroid/support/v7/widget/iq;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iq;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/iq;-><init>(Landroid/support/v7/widget/if;)V

    iput-object v0, p0, Landroid/support/v7/widget/if;->F:Landroid/support/v7/widget/iq;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/if;->F:Landroid/support/v7/widget/iq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/if;->F:Landroid/support/v7/widget/iq;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/if;->F:Landroid/support/v7/widget/iq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/if;->F:Landroid/support/v7/widget/iq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private H()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->as:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->as:Z

    iget v0, p0, Landroid/support/v7/widget/if;->z:I

    iput v0, p0, Landroid/support/v7/widget/if;->A:I

    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/if;->Z:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->aa:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->ab:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/if;->V:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/support/v7/widget/if;->t:J

    iget-object v0, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/if;->F:Landroid/support/v7/widget/iq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/if;->F:Landroid/support/v7/widget/iq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/if;->af:Landroid/support/v7/widget/iu;

    invoke-virtual {v0}, Landroid/support/v7/widget/iu;->a()V

    return-void
.end method

.method private I()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->m(I)Z

    move-result v0

    return v0
.end method

.method private J()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private K()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/if;F)F
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/if;->aF:F

    return p1
.end method

.method private a(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method static synthetic a(Landroid/support/v7/widget/if;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/if;->D:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/widget/if;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic a(Landroid/support/v7/widget/if;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/widget/if;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/if;->aJ:Landroid/widget/Toast;

    return-object p1
.end method

.method private a(IZ)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/if;->o:I

    if-ne v0, p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/if;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->N:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->j(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/if;->m:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/if;->o:I

    iput p1, p0, Landroid/support/v7/widget/if;->o:I

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    if-eqz p2, :cond_3

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/if;->d(II)V

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/if;->B()V

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/if;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/if;->o:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/if;->a(IZ)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    :goto_1
    return-void
.end method

.method private a(ZJ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ir;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ir;-><init>(Landroid/support/v7/widget/if;)V

    iput-object v0, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/if;->as:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/if;->Z:Z

    iget-object v0, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    invoke-static {v0, p1}, Landroid/support/v7/widget/ir;->a(Landroid/support/v7/widget/ir;Z)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v0, p0, Landroid/support/v7/widget/if;->E:Landroid/support/v7/widget/ir;

    invoke-virtual {p1, v0, p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/support/v7/widget/if;->N:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/if;->n:I

    if-le v0, v2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/if;->m:I

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->k(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/if;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->ao:Z

    return p1
.end method

.method private a(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Landroid/support/v7/widget/if;->y:I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget v3, p0, Landroid/support/v7/widget/if;->A:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/support/v7/widget/if;->z:I

    sub-int/2addr v4, v3

    if-eqz v4, :cond_3

    rem-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Landroid/support/v7/widget/if;->y:I

    div-int/lit8 v5, v3, 0x2

    if-le p1, v5, :cond_2

    if-lez v4, :cond_1

    sub-int/2addr v4, v3

    goto :goto_0

    :cond_1
    add-int/2addr v4, v3

    :cond_2
    :goto_0
    add-int/2addr v1, v4

    invoke-virtual {p0, v2, v1}, Landroid/support/v7/widget/if;->b(II)V

    return v0

    :cond_3
    return v2
.end method

.method private static b(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method static synthetic b(Landroid/support/v7/widget/if;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->l(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/support/v7/widget/if;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/if;->x()V

    return-void
.end method

.method private b(Landroid/widget/Scroller;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/if;->I()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->h(I)V

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/if;->P:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private b([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/support/v7/widget/if;->N:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/if;->m:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    :cond_0
    aput v0, p1, v2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->k(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/if;Landroid/widget/Scroller;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->a(Landroid/widget/Scroller;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Landroid/support/v7/widget/if;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->an:Z

    return p1
.end method

.method private c(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/if;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->j(I)I

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/if;->m:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    iget p1, p0, Landroid/support/v7/widget/if;->m:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/if;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->h(Z)V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/if;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/if;->ah:Z

    return p0
.end method

.method static synthetic d(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->y:I

    return p0
.end method

.method private d(II)V
    .locals 3

    iget-object p2, p0, Landroid/support/v7/widget/if;->aL:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Landroid/support/v7/widget/if;->an:Z

    if-nez p2, :cond_2

    iget p2, p0, Landroid/support/v7/widget/if;->o:I

    invoke-direct {p0, p2}, Landroid/support/v7/widget/if;->j(I)I

    move-result p2

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    const/4 v1, 0x0

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/if;->l(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/if;->m:I

    sub-int/2addr p2, v2

    aget-object p2, v0, p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/SeslNumberPicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->q()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/ip;

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    const/16 v2, 0x40

    invoke-virtual {p2, v0, v2, v1}, Landroid/support/v7/widget/ip;->performAction(IILandroid/os/Bundle;)Z

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/if;->p:Landroid/support/v7/widget/ic;

    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget v1, p0, Landroid/support/v7/widget/if;->o:I

    invoke-interface {p2, v0, p1, v1}, Landroid/support/v7/widget/ic;->a(Landroid/support/v7/widget/SeslNumberPicker;II)V

    :cond_3
    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/if;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->W:Z

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/if;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->ap:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic e(Landroid/support/v7/widget/if;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->X:Z

    return p1
.end method

.method static synthetic f(Landroid/support/v7/widget/if;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->i(Z)V

    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/if;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/if;->ag:Z

    return p0
.end method

.method static synthetic g(Landroid/support/v7/widget/if;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    return-object p0
.end method

.method private g(I)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/if;->U:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/if;->U:I

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->q()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ip;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/ip;->a(II)V

    const/16 p1, 0x100

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/ip;->a(II)V

    return-void
.end method

.method static synthetic h(Landroid/support/v7/widget/if;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    return-object p0
.end method

.method private h(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/if;->P:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/if;->P:I

    iget-object v0, p0, Landroid/support/v7/widget/if;->q:Landroid/support/v7/widget/ib;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/ib;->a(Landroid/support/v7/widget/SeslNumberPicker;I)V

    :cond_1
    return-void
.end method

.method private h(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/if;->aG:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/if;->aF:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/if;->aD:F

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Landroid/support/v7/widget/if;->aG:Landroid/animation/ValueAnimator;

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private i(I)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/if;->D:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/if;->M:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    mul-float v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->setFriction(F)V

    int-to-float v0, p1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    iget v3, p0, Landroid/support/v7/widget/if;->A:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/if;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/if;->y:I

    mul-int v0, v0, v1

    iget v2, p0, Landroid/support/v7/widget/if;->z:I

    add-int/2addr v0, v2

    iget-object v3, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    if-lez p1, :cond_0

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    neg-int p1, v1

    add-int/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/Scroller;->setFinalY(I)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return-void
.end method

.method private i(Z)V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->a(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/if;->D:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/if;->V:I

    iget-boolean v2, p0, Landroid/support/v7/widget/if;->Z:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroid/support/v7/widget/if;->Z:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->aa:Z

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/if;->aa:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Landroid/support/v7/widget/if;->aa:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->ab:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result v0

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result v0

    rem-int/2addr v0, v3

    sub-int/2addr v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result v0

    rem-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/if;->V:I

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ab:Z

    if-eqz v0, :cond_5

    :goto_0
    iput v3, p0, Landroid/support/v7/widget/if;->V:I

    :cond_5
    :goto_1
    const/16 v0, 0x1f4

    iget-boolean v2, p0, Landroid/support/v7/widget/if;->as:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/support/v7/widget/if;->ac:Z

    if-eqz v2, :cond_6

    const/16 v0, 0xc8

    const-wide/16 v1, 0x258

    iput-wide v1, p0, Landroid/support/v7/widget/if;->t:J

    const/16 v8, 0xc8

    goto :goto_2

    :cond_6
    iget-boolean v2, p0, Landroid/support/v7/widget/if;->as:Z

    if-eqz v2, :cond_7

    const/16 v0, 0x64

    iput v1, p0, Landroid/support/v7/widget/if;->V:I

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/support/v7/widget/if;->t:J

    const/16 v8, 0x64

    goto :goto_2

    :cond_7
    const/16 v8, 0x1f4

    :goto_2
    iget v0, p0, Landroid/support/v7/widget/if;->V:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v7/widget/if;->ad:I

    if-eqz p1, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget p1, p0, Landroid/support/v7/widget/if;->y:I

    neg-int p1, p1

    goto :goto_3

    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget p1, p0, Landroid/support/v7/widget/if;->y:I

    :goto_3
    mul-int v7, p1, v0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return-void
.end method

.method static synthetic i(Landroid/support/v7/widget/if;)Z
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/if;->I()Z

    move-result p0

    return p0
.end method

.method private j(I)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    if-le p1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/if;->m:I

    sub-int/2addr p1, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/if;->m:I

    if-ge p1, v1, :cond_1

    sub-int p1, v0, p1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    return v0

    :cond_1
    return p1
.end method

.method static synthetic j(Landroid/support/v7/widget/if;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->aq:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic k(Landroid/support/v7/widget/if;)Landroid/support/v7/widget/gn;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->aK:Landroid/support/v7/widget/gn;

    return-object p0
.end method

.method private k(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/if;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/if;->m:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Landroid/support/v7/widget/if;->n:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    aget-object v1, v2, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->l(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private l(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->s:Landroid/support/v7/widget/hz;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/hz;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/if;->n(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic l(Landroid/support/v7/widget/if;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->n:I

    return p0
.end method

.method private m(I)Z
    .locals 8

    iget v0, p0, Landroid/support/v7/widget/if;->z:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/if;->A:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    iput v1, p0, Landroid/support/v7/widget/if;->D:I

    iget-boolean v2, p0, Landroid/support/v7/widget/if;->aA:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroid/support/v7/widget/if;->y:I

    if-ge p1, v2, :cond_1

    if-lez v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroid/support/v7/widget/if;->y:I

    div-int/lit8 v3, v2, 0x2

    if-le p1, v3, :cond_3

    if-lez v0, :cond_2

    :goto_0
    neg-int v2, v2

    :cond_2
    add-int/2addr v0, v2

    :cond_3
    move v6, v0

    iget-object v2, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x12c

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->aA:Z

    const/4 p1, 0x1

    return p1

    :cond_4
    iput-boolean v1, p0, Landroid/support/v7/widget/if;->aA:Z

    return v1
.end method

.method static synthetic n(Landroid/support/v7/widget/if;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->aJ:Landroid/widget/Toast;

    return-object p0
.end method

.method private static n(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Landroid/support/v7/widget/if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->aI:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Landroid/support/v7/widget/if;)Z
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/if;->K()Z

    move-result p0

    return p0
.end method

.method static synthetic q(Landroid/support/v7/widget/if;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/if;->W:Z

    return p0
.end method

.method static synthetic r(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->T:I

    return p0
.end method

.method static synthetic s(Landroid/support/v7/widget/if;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/if;->X:Z

    return p0
.end method

.method static synthetic t(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->S:I

    return p0
.end method

.method static synthetic u(Landroid/support/v7/widget/if;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/if;->t:J

    return-wide v0
.end method

.method static synthetic u()[C
    .locals 1

    sget-object v0, Landroid/support/v7/widget/if;->aN:[C

    return-object v0
.end method

.method static synthetic v(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->Y:I

    return p0
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/if;->ai:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v7/widget/if;->am:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ak:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/if;->aj:Landroid/support/v7/widget/is;

    iget-boolean v0, v0, Landroid/support/v7/widget/is;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget v1, p0, Landroid/support/v7/widget/if;->al:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->performHapticFeedback(I)Z

    iget-object v0, p0, Landroid/support/v7/widget/if;->aj:Landroid/support/v7/widget/is;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/is;->a:Z

    :cond_0
    return-void
.end method

.method static synthetic w(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->U:I

    return p0
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance v1, Landroid/support/v7/widget/ii;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ii;-><init>(Landroid/support/v7/widget/if;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic x(Landroid/support/v7/widget/if;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/if;->O:I

    return p0
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic y(Landroid/support/v7/widget/if;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/if;->an:Z

    return p0
.end method

.method static synthetic z(Landroid/support/v7/widget/if;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/if;->aL:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private z()V
    .locals 6

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/support/v7/widget/if;->n(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_3

    :cond_4
    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    float-to-int v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    move v1, v3

    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/view/aw;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/support/v4/c/b;->a(Landroid/graphics/Paint;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v1, v1, 0x2

    mul-int v2, v2, v1

    add-int/2addr v0, v2

    :cond_7
    iget v1, p0, Landroid/support/v7/widget/if;->h:I

    if-eq v1, v0, :cond_9

    iget v1, p0, Landroid/support/v7/widget/if;->g:I

    if-le v0, v1, :cond_8

    iput v0, p0, Landroid/support/v7/widget/if;->h:I

    goto :goto_4

    :cond_8
    iput v1, p0, Landroid/support/v7/widget/if;->h:I

    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/if;->j:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    iget v0, p0, Landroid/support/v7/widget/if;->j:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    iget v0, p0, Landroid/support/v7/widget/if;->j:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->z()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/if;->h:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/if;->c(II)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/if;->f:I

    invoke-direct {p0, p2, v1}, Landroid/support/v7/widget/if;->c(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->a(II)V

    iget v0, p0, Landroid/support/v7/widget/if;->g:I

    iget-object v1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/if;->a(III)I

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/if;->e:I

    iget-object v1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/support/v7/widget/if;->a(III)I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/SeslNumberPicker;->b(II)V

    return-void
.end method

.method public a(ILandroid/support/v7/widget/gn;)V
    .locals 1

    iput-object p2, p0, Landroid/support/v7/widget/if;->aK:Landroid/support/v7/widget/gn;

    iget p2, p0, Landroid/support/v7/widget/if;->aD:F

    iput p2, p0, Landroid/support/v7/widget/if;->aF:F

    iget-boolean p2, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance v0, Landroid/support/v7/widget/ik;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ik;-><init>(Landroid/support/v7/widget/if;I)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SeslNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Landroid/support/v7/widget/if;->t:J

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->at:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/if;->J()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->aw:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->z()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getLeft()I

    move-result v3

    iget-object v4, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v4

    sub-int v3, v2, v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v6, v0, Landroid/support/v7/widget/if;->A:I

    iget v7, v0, Landroid/support/v7/widget/if;->y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v0, Landroid/support/v7/widget/if;->x:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    iget v9, v0, Landroid/support/v7/widget/if;->P:I

    if-nez v9, :cond_3

    iget v9, v0, Landroid/support/v7/widget/if;->Y:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    goto :goto_1

    :cond_0
    iget-object v9, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v9}, Landroid/support/v7/widget/SeslNumberPicker;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v7, v0, Landroid/support/v7/widget/if;->x:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroid/support/v7/widget/if;->T:I

    invoke-virtual {v7, v8, v9, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_1
    iget-object v9, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v9}, Landroid/support/v7/widget/SeslNumberPicker;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v7, v0, Landroid/support/v7/widget/if;->x:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroid/support/v7/widget/if;->S:I

    iget v10, v0, Landroid/support/v7/widget/if;->T:I

    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v9, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v9}, Landroid/support/v7/widget/SeslNumberPicker;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v7, v0, Landroid/support/v7/widget/if;->x:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroid/support/v7/widget/if;->S:I

    invoke-virtual {v7, v8, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object v7, v0, Landroid/support/v7/widget/if;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    iget-object v7, v0, Landroid/support/v7/widget/if;->v:[I

    move v9, v6

    const/4 v6, 0x0

    :goto_2
    array-length v10, v7

    if-ge v6, v10, :cond_7

    aget v10, v7, v6

    iget-object v11, v0, Landroid/support/v7/widget/if;->u:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget v11, v0, Landroid/support/v7/widget/if;->aF:F

    iget v12, v0, Landroid/support/v7/widget/if;->aE:F

    cmpg-float v13, v11, v12

    if-gez v13, :cond_4

    move v11, v12

    :cond_4
    iget-object v12, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    div-float/2addr v12, v5

    add-float/2addr v12, v9

    iget-object v13, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v0, Landroid/support/v7/widget/if;->S:I

    iget v14, v0, Landroid/support/v7/widget/if;->z:I

    sub-int v15, v13, v14

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    cmpl-float v15, v9, v15

    if-ltz v15, :cond_6

    iget v15, v0, Landroid/support/v7/widget/if;->T:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpg-float v14, v9, v14

    if-gtz v14, :cond_6

    add-int/2addr v13, v15

    int-to-float v13, v13

    div-float/2addr v13, v5

    cmpg-float v13, v9, v13

    if-gtz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v0, Landroid/support/v7/widget/if;->S:I

    iget v14, v0, Landroid/support/v7/widget/if;->T:I

    invoke-virtual {v1, v8, v13, v2, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v13, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    iget v14, v0, Landroid/support/v7/widget/if;->ar:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v12

    iget-object v13, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v0, Landroid/support/v7/widget/if;->S:I

    invoke-virtual {v1, v8, v8, v2, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v0, Landroid/support/v7/widget/if;->S:I

    iget v14, v0, Landroid/support/v7/widget/if;->T:I

    invoke-virtual {v1, v8, v13, v2, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v13, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    iget v14, v0, Landroid/support/v7/widget/if;->ar:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v12

    iget-object v13, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v0, Landroid/support/v7/widget/if;->T:I

    invoke-virtual {v1, v8, v13, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_3
    iget-object v13, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    mul-float v11, v11, v16

    float-to-int v11, v11

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v11, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v13, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    mul-float v11, v11, v16

    float-to-int v11, v11

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v11, v12

    iget-object v12, v0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v10, v0, Landroid/support/v7/widget/if;->y:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/if;->at:Z

    iput-object p1, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/support/v7/widget/if;->au:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->z()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/hz;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->s:Landroid/support/v7/widget/hz;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/if;->s:Landroid/support/v7/widget/hz;

    invoke-direct {p0}, Landroid/support/v7/widget/if;->B()V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    return-void
.end method

.method public a(Landroid/support/v7/widget/ia;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/if;->r:Landroid/support/v7/widget/ia;

    return-void
.end method

.method public a(Landroid/support/v7/widget/ib;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/if;->q:Landroid/support/v7/widget/ib;

    return-void
.end method

.method public a(Landroid/support/v7/widget/ic;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/if;->p:Landroid/support/v7/widget/ic;

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Landroid/support/v7/widget/if;->m:I

    iget v1, p0, Landroid/support/v7/widget/if;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/if;->y:I

    mul-int v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    iget v1, p0, Landroid/support/v7/widget/if;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/if;->y:I

    mul-int v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/if;->c:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    check-cast v0, Landroid/support/v7/widget/SeslNumberPicker$CustomEditText;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker$CustomEditText;->setPickerContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->ag:Z

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/b/e;->sesl_time_picker_spinner_am_pm_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/if;->j:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->w:Landroid/graphics/Paint;

    iget v0, p0, Landroid/support/v7/widget/if;->j:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    iget v0, p0, Landroid/support/v7/widget/if;->j:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const-string p1, "sec-roboto-light"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/if;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public a(ZIIII)V
    .locals 2

    iget-object p2, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPicker;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    int-to-float v0, p3

    iget v1, p0, Landroid/support/v7/widget/if;->ax:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Landroid/support/v7/widget/if;->ay:I

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/if;->C()V

    iget p1, p0, Landroid/support/v7/widget/if;->ay:I

    iget p2, p0, Landroid/support/v7/widget/if;->y:I

    if-le p1, p2, :cond_0

    iget p1, p0, Landroid/support/v7/widget/if;->az:I

    iput p1, p0, Landroid/support/v7/widget/if;->S:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/if;->T:I

    goto :goto_0

    :cond_0
    iput p3, p0, Landroid/support/v7/widget/if;->S:I

    iput p5, p0, Landroid/support/v7/widget/if;->T:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZILandroid/graphics/Rect;)V
    .locals 2

    const/4 p2, 0x0

    const/4 p3, -0x1

    const/4 v0, 0x2

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/if;->aL:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->q()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ip;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/if;->ag:Z

    if-nez v1, :cond_0

    iput v0, p0, Landroid/support/v7/widget/if;->Y:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/if;->Y:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v7/widget/ip;->performAction(IILandroid/os/Bundle;)Z

    :cond_1
    iput p3, p0, Landroid/support/v7/widget/if;->Y:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/if;->U:I

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ag:Z

    if-nez p1, :cond_3

    iput p3, p0, Landroid/support/v7/widget/if;->Y:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/if;->Y:I

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->N:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->l()I

    move-result p3

    if-ne p1, p3, :cond_4

    iput v0, p0, Landroid/support/v7/widget/if;->Y:I

    :cond_4
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/if;->aL:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->q()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ip;

    if-eqz p1, :cond_6

    iget-boolean p3, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Landroid/support/v7/widget/if;->ag:Z

    if-nez p3, :cond_5

    iput v0, p0, Landroid/support/v7/widget/if;->Y:I

    :cond_5
    iget p3, p0, Landroid/support/v7/widget/if;->Y:I

    const/16 v0, 0x40

    invoke-virtual {p1, p3, v0, p2}, Landroid/support/v7/widget/ip;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    iget-object p1, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const v0, 0x80001

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    invoke-direct {p0}, Landroid/support/v7/widget/if;->B()V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->z()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/if;->y()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/if;->b(Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_a

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->an:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/if;->H()V

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/if;->G:F

    iput v0, p0, Landroid/support/v7/widget/if;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v7/widget/if;->H:J

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->Q:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->R:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->aA:Z

    iget p1, p0, Landroid/support/v7/widget/if;->G:F

    iget v0, p0, Landroid/support/v7/widget/if;->S:I

    int-to-float v0, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->h(Z)V

    iget p1, p0, Landroid/support/v7/widget/if;->P:I

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/if;->af:Landroid/support/v7/widget/iu;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/iu;->a(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/if;->T:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->h(Z)V

    iget p1, p0, Landroid/support/v7/widget/if;->P:I

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/if;->af:Landroid/support/v7/widget/iu;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/iu;->a(I)V

    :cond_4
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget p1, p0, Landroid/support/v7/widget/if;->P:I

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5
    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->h(I)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_7
    iget p1, p0, Landroid/support/v7/widget/if;->G:F

    iget v0, p0, Landroid/support/v7/widget/if;->S:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/if;->y()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v4, p1

    invoke-direct {p0, v1, v4, v5}, Landroid/support/v7/widget/if;->a(ZJ)V

    goto :goto_1

    :cond_8
    iget v0, p0, Landroid/support/v7/widget/if;->T:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    invoke-direct {p0}, Landroid/support/v7/widget/if;->y()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v3, v0, v1}, Landroid/support/v7/widget/if;->a(ZJ)V

    goto :goto_1

    :cond_9
    iput-boolean v3, p0, Landroid/support/v7/widget/if;->R:Z

    invoke-direct {p0}, Landroid/support/v7/widget/if;->F()V

    :goto_1
    return v3

    :cond_a
    :goto_2
    return v1
.end method

.method public b(F)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 6

    iget-object p1, p0, Landroid/support/v7/widget/if;->v:[I

    if-eqz p2, :cond_9

    iget v0, p0, Landroid/support/v7/widget/if;->y:I

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->N:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/if;->A:I

    add-int v3, v0, p2

    iget v4, p0, Landroid/support/v7/widget/if;->z:I

    if-le v3, v4, :cond_1

    aget v3, p1, v1

    iget v5, p0, Landroid/support/v7/widget/if;->m:I

    if-gt v3, v5, :cond_1

    sub-int p2, v4, v0

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/if;->I:F

    iget-object v3, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iput-boolean v2, p0, Landroid/support/v7/widget/if;->Q:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->N:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/if;->A:I

    add-int v3, v0, p2

    iget v4, p0, Landroid/support/v7/widget/if;->z:I

    if-ge v3, v4, :cond_2

    aget v3, p1, v1

    iget v5, p0, Landroid/support/v7/widget/if;->n:I

    if-lt v3, v5, :cond_2

    sub-int p2, v4, v0

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/if;->I:F

    iget-object v3, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iput-boolean v2, p0, Landroid/support/v7/widget/if;->Q:Z

    return-void

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/if;->A:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/widget/if;->A:I

    :cond_3
    :goto_0
    iget p2, p0, Landroid/support/v7/widget/if;->A:I

    iget v0, p0, Landroid/support/v7/widget/if;->z:I

    sub-int v0, p2, v0

    iget v3, p0, Landroid/support/v7/widget/if;->az:I

    if-lt v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/if;->y:I

    sub-int/2addr p2, v0

    iput p2, p0, Landroid/support/v7/widget/if;->A:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->b([I)V

    iget-boolean p2, p0, Landroid/support/v7/widget/if;->an:Z

    if-nez p2, :cond_5

    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Landroid/support/v7/widget/if;->a(IZ)V

    iput-boolean v2, p0, Landroid/support/v7/widget/if;->aA:Z

    iget p2, p0, Landroid/support/v7/widget/if;->ad:I

    if-lez p2, :cond_4

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/support/v7/widget/if;->ad:I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/if;->v()V

    :cond_5
    :goto_1
    iget-boolean p2, p0, Landroid/support/v7/widget/if;->N:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Landroid/support/v7/widget/if;->m:I

    if-gt p2, v0, :cond_3

    iget p2, p0, Landroid/support/v7/widget/if;->z:I

    iput p2, p0, Landroid/support/v7/widget/if;->A:I

    goto :goto_0

    :cond_6
    :goto_2
    iget p2, p0, Landroid/support/v7/widget/if;->A:I

    iget v0, p0, Landroid/support/v7/widget/if;->z:I

    sub-int v0, p2, v0

    iget v3, p0, Landroid/support/v7/widget/if;->az:I

    neg-int v3, v3

    if-gt v0, v3, :cond_9

    iget v0, p0, Landroid/support/v7/widget/if;->y:I

    add-int/2addr p2, v0

    iput p2, p0, Landroid/support/v7/widget/if;->A:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->a([I)V

    iget-boolean p2, p0, Landroid/support/v7/widget/if;->an:Z

    if-nez p2, :cond_8

    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Landroid/support/v7/widget/if;->a(IZ)V

    iput-boolean v2, p0, Landroid/support/v7/widget/if;->aA:Z

    iget p2, p0, Landroid/support/v7/widget/if;->ad:I

    if-lez p2, :cond_7

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/support/v7/widget/if;->ad:I

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/if;->v()V

    :cond_8
    :goto_3
    iget-boolean p2, p0, Landroid/support/v7/widget/if;->N:Z

    if-nez p2, :cond_6

    aget p2, p1, v1

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    if-lt p2, v0, :cond_6

    iget p2, p0, Landroid/support/v7/widget/if;->z:I

    iput p2, p0, Landroid/support/v7/widget/if;->A:I

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ah:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/if;->ah:Z

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ag:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/if;->z()V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->H()V

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->an:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/if;->z:I

    iput p1, p0, Landroid/support/v7/widget/if;->A:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->h(I)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    const/high16 v1, 0x40000

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setDescendantFocusability(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->aL:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->q()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ip;

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/widget/ip;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/if;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/if;->aG:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/if;->aG:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget p1, p0, Landroid/support/v7/widget/if;->aE:F

    iput p1, p0, Landroid/support/v7/widget/if;->aF:F

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setDescendantFocusability(I)V

    :cond_5
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/if;->Y:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    iget-object p1, p0, Landroid/support/v7/widget/if;->r:Landroid/support/v7/widget/ia;

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-boolean v1, p0, Landroid/support/v7/widget/if;->ah:Z

    invoke-interface {p1, v0, v1}, Landroid/support/v7/widget/ia;->a(Landroid/support/v7/widget/SeslNumberPicker;Z)V

    :cond_6
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ah:Z

    return v0
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x42

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v1, :cond_10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v0, :cond_17

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SeslNumberPicker;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    return v5

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->requestFocus(I)Z

    :cond_3
    return v5

    :pswitch_1
    iget-boolean v1, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/support/v7/widget/if;->ag:Z

    if-nez v1, :cond_4

    return v4

    :cond_4
    if-nez v0, :cond_e

    const/16 v0, 0x14

    if-ne p1, v0, :cond_9

    iget p1, p0, Landroid/support/v7/widget/if;->Y:I

    if-eq p1, v5, :cond_8

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto/16 :goto_1

    :cond_5
    return v4

    :cond_6
    iget-boolean p1, p0, Landroid/support/v7/widget/if;->N:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->m()I

    move-result v0

    if-ne p1, v0, :cond_7

    return v4

    :cond_7
    iput v2, p0, Landroid/support/v7/widget/if;->Y:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return v5

    :cond_8
    iput v3, p0, Landroid/support/v7/widget/if;->Y:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return v5

    :cond_9
    const/16 v0, 0x13

    if-ne p1, v0, :cond_17

    iget p1, p0, Landroid/support/v7/widget/if;->Y:I

    if-eq p1, v5, :cond_d

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_a

    goto/16 :goto_1

    :cond_a
    iput v3, p0, Landroid/support/v7/widget/if;->Y:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return v5

    :cond_b
    iget-boolean p1, p0, Landroid/support/v7/widget/if;->N:Z

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->l()I

    move-result v0

    if-ne p1, v0, :cond_c

    return v4

    :cond_c
    iput v5, p0, Landroid/support/v7/widget/if;->Y:I

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return v5

    :cond_d
    return v4

    :cond_e
    if-ne v0, v5, :cond_17

    iget-object p1, p0, Landroid/support/v7/widget/if;->aL:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->q()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ip;

    if-eqz p1, :cond_f

    iget v0, p0, Landroid/support/v7/widget/if;->Y:I

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/widget/ip;->performAction(IILandroid/os/Bundle;)Z

    :cond_f
    return v5

    :cond_10
    :pswitch_2
    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ag:Z

    if-nez p1, :cond_11

    return v4

    :cond_11
    if-ne v0, v5, :cond_17

    iget p1, p0, Landroid/support/v7/widget/if;->Y:I

    if-ne p1, v3, :cond_13

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz p1, :cond_12

    return v4

    :cond_12
    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0}, Landroid/support/v7/widget/if;->x()V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->H()V

    return v5

    :cond_13
    iget-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_17

    iget p1, p0, Landroid/support/v7/widget/if;->Y:I

    if-eq p1, v5, :cond_15

    if-eq p1, v2, :cond_14

    goto :goto_1

    :cond_14
    invoke-direct {p0, v4}, Landroid/support/v7/widget/if;->h(Z)V

    invoke-direct {p0, v5}, Landroid/support/v7/widget/if;->i(Z)V

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->N:Z

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->m()I

    move-result v0

    sub-int/2addr v0, v5

    if-ne p1, v0, :cond_16

    goto :goto_0

    :cond_15
    invoke-direct {p0, v4}, Landroid/support/v7/widget/if;->h(Z)V

    invoke-direct {p0, v4}, Landroid/support/v7/widget/if;->i(Z)V

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->N:Z

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->l()I

    move-result v0

    add-int/2addr v0, v5

    if-ne p1, v0, :cond_16

    :goto_0
    iput v3, p0, Landroid/support/v7/widget/if;->Y:I

    :cond_16
    invoke-direct {p0, v5}, Landroid/support/v7/widget/if;->h(Z)V

    :cond_17
    :goto_1
    return v4

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_f

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->an:Z

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/if;->J:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/if;->J:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/if;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/if;->I()Z

    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->h(Z)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->h(I)V

    goto/16 :goto_5

    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->Q:Z

    if-eqz v0, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/if;->P:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/if;->G:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Landroid/support/v7/widget/if;->K:I

    if-le v0, v2, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/if;->H()V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->h(Z)V

    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->h(I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/if;->I:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/if;->b(II)V

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    :cond_7
    :goto_0
    iput p1, p0, Landroid/support/v7/widget/if;->I:F

    goto/16 :goto_5

    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/if;->G()V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->E()V

    iget-object v0, p0, Landroid/support/v7/widget/if;->af:Landroid/support/v7/widget/iu;

    invoke-virtual {v0}, Landroid/support/v7/widget/iu;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/if;->J:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Landroid/support/v7/widget/if;->M:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v5, v4

    iget v6, p0, Landroid/support/v7/widget/if;->G:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    iget-boolean v6, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Landroid/support/v7/widget/if;->Q:Z

    if-eqz v6, :cond_9

    invoke-direct {p0}, Landroid/support/v7/widget/if;->I()Z

    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->h(Z)V

    :goto_1
    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->h(I)V

    goto :goto_4

    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/if;->L:I

    if-le v6, v7, :cond_b

    iget p1, p0, Landroid/support/v7/widget/if;->K:I

    if-gt v5, p1, :cond_a

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->R:Z

    if-eqz p1, :cond_a

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->R:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->h()V

    goto :goto_1

    :cond_a
    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->i(I)V

    invoke-direct {p0, v2}, Landroid/support/v7/widget/if;->h(I)V

    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->h(Z)V

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/support/v7/widget/if;->H:J

    sub-long/2addr v6, v8

    iget p1, p0, Landroid/support/v7/widget/if;->K:I

    if-gt v5, p1, :cond_e

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v8, p1

    cmp-long p1, v6, v8

    if-gez p1, :cond_e

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->R:Z

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Landroid/support/v7/widget/if;->R:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/if;->h()V

    goto :goto_3

    :cond_c
    iget p1, p0, Landroid/support/v7/widget/if;->T:I

    if-le v4, p1, :cond_d

    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->i(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->af:Landroid/support/v7/widget/iu;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/iu;->b(I)V

    goto :goto_2

    :cond_d
    iget p1, p0, Landroid/support/v7/widget/if;->S:I

    if-ge v4, p1, :cond_e

    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->i(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->af:Landroid/support/v7/widget/iu;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/iu;->b(I)V

    goto :goto_2

    :cond_e
    invoke-direct {p0, v5}, Landroid/support/v7/widget/if;->m(I)Z

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->h(Z)V

    :goto_3
    iput-boolean v1, p0, Landroid/support/v7/widget/if;->aA:Z

    goto :goto_1

    :goto_4
    iget-object p1, p0, Landroid/support/v7/widget/if;->J:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/if;->J:Landroid/view/VelocityTracker;

    :goto_5
    return v3

    :cond_f
    :goto_6
    return v1
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/if;->D:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/if;->D:I

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v7/widget/if;->D:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/if;->b(II)V

    iput v1, p0, Landroid/support/v7/widget/if;->D:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/if;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/if;->A()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/if;->a(IZ)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/if;->w()V

    :cond_0
    iget-boolean p1, p0, Landroid/support/v7/widget/if;->an:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/if;->B:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/if;->C:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/if;->I()Z

    :cond_3
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/if;->H()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/if;->A:I

    return v0
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/if;->m:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/if;->m:I

    iget p1, p0, Landroid/support/v7/widget/if;->m:I

    iget v0, p0, Landroid/support/v7/widget/if;->o:I

    if-le p1, v0, :cond_1

    iput p1, p0, Landroid/support/v7/widget/if;->o:I

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/if;->n:I

    iget v0, p0, Landroid/support/v7/widget/if;->m:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/if;->v:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/if;->g(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->B()V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    invoke-direct {p0}, Landroid/support/v7/widget/if;->z()V

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->ac:Z

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->an:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->h(Z)V

    const/4 v2, 0x1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Landroid/support/v7/widget/if;->i(Z)V

    invoke-direct {p0, v2}, Landroid/support/v7/widget/if;->h(Z)V

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public e()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    iget v1, p0, Landroid/support/v7/widget/if;->m:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/if;->y:I

    mul-int v0, v0, v1

    return v0
.end method

.method public e(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/if;->n:I

    iget p1, p0, Landroid/support/v7/widget/if;->n:I

    iget v0, p0, Landroid/support/v7/widget/if;->o:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Landroid/support/v7/widget/if;->o:I

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/if;->n:I

    iget v0, p0, Landroid/support/v7/widget/if;->m:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/if;->v:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/if;->g(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->B()V

    invoke-direct {p0}, Landroid/support/v7/widget/if;->D()Z

    invoke-direct {p0}, Landroid/support/v7/widget/if;->z()V

    iget-object p1, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/if;->H()V

    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/if;->P:I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/if;->A()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->h(I)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iget-object p1, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_1

    iget p1, p0, Landroid/support/v7/widget/if;->o:I

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/if;->i(Z)V

    return-void
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/if;->aL:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v2, p0, Landroid/support/v7/widget/if;->ah:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/if;->ag:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/if;->S:I

    if-gt v0, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/support/v7/widget/if;->T:I

    if-gt v2, v0, :cond_2

    const/4 v3, 0x3

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x7

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    iget p1, p0, Landroid/support/v7/widget/if;->U:I

    if-eq p1, v2, :cond_4

    invoke-direct {p0, v2}, Landroid/support/v7/widget/if;->g(I)V

    return v4

    :cond_4
    return v1

    :cond_5
    invoke-direct {p0, v3}, Landroid/support/v7/widget/if;->g(I)V

    if-eq v3, v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public g(Z)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    iget v1, p0, Landroid/support/v7/widget/if;->m:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/if;->v:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/if;->N:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroid/support/v7/widget/if;->N:Z

    :cond_2
    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ah:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/if;->x()V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/if;->Q:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->ag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/if;->x()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/if;->N:Z

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/if;->o:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/if;->m:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/if;->n:I

    return v0
.end method

.method public n()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public o()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/if;->H()V

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/if;->aj:Landroid/support/v7/widget/is;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/if;->aj:Landroid/support/v7/widget/is;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public q()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->ae:Landroid/support/v7/widget/ip;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ip;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ip;-><init>(Landroid/support/v7/widget/if;)V

    iput-object v0, p0, Landroid/support/v7/widget/if;->ae:Landroid/support/v7/widget/ip;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/if;->ae:Landroid/support/v7/widget/ip;

    return-object v0
.end method

.method public r()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const-string v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/if;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
