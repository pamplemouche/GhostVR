.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Ljava/lang/CharSequence;

.field private E:I

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field private K:I

.field private L:I

.field private M:Z

.field private N:I

.field private final O:Landroid/view/View$OnClickListener;

.field final a:Landroid/support/v7/app/av;

.field b:Landroid/widget/ListView;

.field c:Landroid/support/v7/widget/al;

.field d:Landroid/os/Message;

.field e:Landroid/support/v7/widget/al;

.field f:Landroid/os/Message;

.field g:Landroid/support/v7/widget/al;

.field h:Landroid/os/Message;

.field i:Landroid/support/v4/widget/NestedScrollView;

.field j:Landroid/widget/ListAdapter;

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Landroid/os/Handler;

.field private final q:Landroid/content/Context;

.field private final r:Landroid/view/Window;

.field private s:Ljava/lang/CharSequence;

.field private t:Ljava/lang/CharSequence;

.field private u:Landroid/view/View;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/av;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->A:Z

    iput v0, p0, Landroid/support/v7/app/AlertController;->E:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/app/AlertController;->k:I

    iput v0, p0, Landroid/support/v7/app/AlertController;->N:I

    new-instance v1, Landroid/support/v7/app/e;

    invoke-direct {v1, p0}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->O:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/AlertController;->a:Landroid/support/v7/app/av;

    iput-object p3, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    new-instance p3, Landroid/support/v7/app/p;

    invoke-direct {p3, p2}, Landroid/support/v7/app/p;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroid/support/v7/app/AlertController;->p:Landroid/os/Handler;

    sget-object p3, Landroid/support/v7/b/l;->AlertDialog:[I

    sget v1, Landroid/support/v7/b/b;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p3, Landroid/support/v7/b/l;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->K:I

    sget p3, Landroid/support/v7/b/l;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->L:I

    sget p3, Landroid/support/v7/b/l;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->l:I

    sget p3, Landroid/support/v7/b/l;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->m:I

    sget p3, Landroid/support/v7/b/l;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->n:I

    sget p3, Landroid/support/v7/b/l;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->o:I

    sget p3, Landroid/support/v7/b/l;->AlertDialog_showTitle:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/app/AlertController;->M:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, v0}, Landroid/support/v7/app/av;->a(I)Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p1, :cond_1

    instance-of p1, p2, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private a(Landroid/support/v7/widget/al;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/al;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->u:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/AlertController;->v:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/app/AlertController;->v:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v2, Landroid/support/v7/b/g;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Landroid/support/v7/app/AlertController;->A:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v7/app/AlertController;->w:I

    iget v2, p0, Landroid/support/v7/app/AlertController;->x:I

    iget v3, p0, Landroid/support/v7/app/AlertController;->y:I

    iget v4, p0, Landroid/support/v7/app/AlertController;->z:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/cz;

    iput v1, p1, Landroid/support/v7/widget/cz;->g:F

    goto :goto_1

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v1, Landroid/support/v7/b/g;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v2, Landroid/support/v7/b/g;->scrollIndicatorDown:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    invoke-static {p2, p3, p4}, Landroid/support/v4/view/be;->a(Landroid/view/View;II)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-nez p4, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, p2

    :cond_2
    if-eqz v1, :cond_3

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move-object p2, v1

    :goto_0
    if-nez v0, :cond_4

    if-eqz p2, :cond_8

    :cond_4
    iget-object p3, p0, Landroid/support/v7/app/AlertController;->t:Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    new-instance p3, Landroid/support/v7/app/f;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/ag;)V

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    new-instance p3, Landroid/support/v7/app/g;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    iget-object p3, p0, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    if-eqz p3, :cond_6

    new-instance p1, Landroid/support/v7/app/h;

    invoke-direct {p1, p0, v0, p2}, Landroid/support/v7/app/h;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    new-instance p3, Landroid/support/v7/app/i;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/i;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, v0

    const/4 v0, 0x0

    mul-float p2, p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Landroid/support/v7/b/b;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private b()I
    .locals 3

    iget v0, p0, Landroid/support/v7/app/AlertController;->L:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/app/AlertController;->K:I

    return v0

    :cond_0
    iget v1, p0, Landroid/support/v7/app/AlertController;->N:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    iget v0, p0, Landroid/support/v7/app/AlertController;->K:I

    return v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->J:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->J:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v0, Landroid/support/v7/b/g;->title_template:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/app/AlertController;->M:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v0, Landroid/support/v7/b/g;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->H:Landroid/widget/TextView;

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->H:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->H:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/v7/b/e;->sesl_dialog_title_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/TextView;I)V

    iget p1, p0, Landroid/support/v7/app/AlertController;->E:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->F:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->H:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v2, Landroid/support/v7/b/g;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v1, Landroid/support/v7/b/g;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v7/b/g;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Landroid/support/v7/b/g;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroid/support/v7/b/g;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Landroid/support/v7/b/g;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/view/ViewGroup;)V

    sget v4, Landroid/support/v7/b/g;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Landroid/support/v7/b/g;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Landroid/support/v7/b/g;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v4, v1}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v5, v2}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v6, v3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/support/v7/app/AlertController;->c(Landroid/view/ViewGroup;)V

    invoke-direct {p0, v3}, Landroid/support/v7/app/AlertController;->d(Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Landroid/support/v7/app/AlertController;->b(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->d()V

    if-eqz v1, :cond_3

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    :cond_3
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    instance-of v7, v4, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v7, :cond_4

    check-cast v4, Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v4, v1, v3}, Landroid/support/v7/app/AlertController$RecycleListView;->a(ZZ)V

    :cond_4
    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    :goto_3
    if-eqz v0, :cond_7

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v1, v3

    const/4 v3, 0x3

    invoke-direct {p0, v2, v0, v1, v3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->j:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {v0, v6}, Landroid/support/v4/widget/as;->c(Landroid/widget/AdapterView;I)V

    iget v1, p0, Landroid/support/v7/app/AlertController;->k:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_8

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/b/e;->sesl_select_dialog_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_8
    return-void
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v1, Landroid/support/v7/b/g;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->I:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->I:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->t:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/e;->sesl_dialog_button_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    invoke-virtual {v1}, Landroid/support/v7/widget/al;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/al;->setTextSize(IF)V

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/TextView;I)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    invoke-virtual {v1}, Landroid/support/v7/widget/al;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/al;->setTextSize(IF)V

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/TextView;I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    invoke-virtual {v1}, Landroid/support/v7/widget/al;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/al;->setTextSize(IF)V

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/TextView;I)V

    :cond_2
    return-void
.end method

.method private d(Landroid/view/ViewGroup;)V
    .locals 12

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "show_button_background"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010031

    invoke-virtual {v4, v5, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, -0x1

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_1

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :cond_1
    const/4 v5, 0x2

    const/4 v6, 0x4

    sget v7, Landroid/support/v7/b/g;->button1:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/al;

    iput-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/al;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-le v7, v8, :cond_3

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v7, :cond_2

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    invoke-virtual {v7, v0, v4}, Landroid/support/v7/widget/al;->a(ZI)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/al;->a(Z)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    sget v9, Landroid/support/v7/b/f;->sesl_dialog_show_button_background:I

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/al;->setBackgroundResource(I)V

    :cond_4
    :goto_1
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->B:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v9, 0x8

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/al;->setVisibility(I)V

    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    iget-object v10, p0, Landroid/support/v7/app/AlertController;->B:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/al;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/al;->setVisibility(I)V

    const/4 v7, 0x1

    :goto_2
    sget v10, Landroid/support/v7/b/g;->button2:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/al;

    iput-object v10, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    iget-object v10, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/al;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v10, v8, :cond_7

    iget v10, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v10, :cond_6

    iget-object v10, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    invoke-virtual {v10, v0, v4}, Landroid/support/v7/widget/al;->a(ZI)V

    goto :goto_3

    :cond_6
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/al;->a(Z)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    iget-object v10, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    sget v11, Landroid/support/v7/b/f;->sesl_dialog_show_button_background:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/al;->setBackgroundResource(I)V

    :cond_8
    :goto_3
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->C:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    invoke-virtual {v10, v9}, Landroid/support/v7/widget/al;->setVisibility(I)V

    goto :goto_4

    :cond_9
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->C:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/al;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    invoke-virtual {v10, v2}, Landroid/support/v7/widget/al;->setVisibility(I)V

    or-int/lit8 v7, v7, 0x2

    :goto_4
    sget v10, Landroid/support/v7/b/g;->button3:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/al;

    iput-object v10, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    iget-object v10, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/al;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v10, v8, :cond_b

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v3, :cond_a

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    invoke-virtual {v3, v0, v4}, Landroid/support/v7/widget/al;->a(ZI)V

    goto :goto_5

    :cond_a
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/al;->a(Z)V

    goto :goto_5

    :cond_b
    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    sget v3, Landroid/support/v7/b/f;->sesl_dialog_show_button_background:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/al;->setBackgroundResource(I)V

    :cond_c
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->D:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/al;->setVisibility(I)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->D:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/al;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/al;->setVisibility(I)V

    or-int/lit8 v7, v7, 0x4

    :goto_6
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/AlertController;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-ne v7, v1, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    :goto_7
    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/support/v7/widget/al;)V

    goto :goto_8

    :cond_e
    if-ne v7, v5, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    goto :goto_7

    :cond_f
    if-ne v7, v6, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    goto :goto_7

    :cond_10
    :goto_8
    if-eqz v7, :cond_11

    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_12

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_12
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v0, Landroid/support/v7/b/g;->sem_divider1:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->r:Landroid/view/Window;

    sget v3, Landroid/support/v7/b/g;->sem_divider2:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->g:Landroid/support/v7/widget/al;

    invoke-virtual {v3}, Landroid/support/v7/widget/al;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    :goto_a
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->c:Landroid/support/v7/widget/al;

    invoke-virtual {v4}, Landroid/support/v7/widget/al;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_b

    :cond_14
    const/4 v4, 0x0

    :goto_b
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->e:Landroid/support/v7/widget/al;

    invoke-virtual {v5}, Landroid/support/v7/widget/al;->getVisibility()I

    move-result v5

    if-nez v5, :cond_15

    goto :goto_c

    :cond_15
    const/4 v1, 0x0

    :goto_c
    if-eqz v0, :cond_18

    if-eqz v3, :cond_16

    if-nez v4, :cond_17

    :cond_16
    if-eqz v3, :cond_18

    if-eqz v1, :cond_18

    :cond_17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    if-eqz p1, :cond_19

    if-eqz v4, :cond_19

    if-eqz v1, :cond_19

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->a:Landroid/support/v7/app/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/av;->setContentView(I)V

    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->c()V

    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->u:Landroid/view/View;

    iput p1, p0, Landroid/support/v7/app/AlertController;->v:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->A:Z

    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Landroid/support/v7/app/AlertController;->p:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    iput-object p2, p0, Landroid/support/v7/app/AlertController;->B:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->d:Landroid/os/Message;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->C:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->f:Landroid/os/Message;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->D:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->h:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->F:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->E:I

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->u:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/app/AlertController;->v:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->A:Z

    iput p2, p0, Landroid/support/v7/app/AlertController;->w:I

    iput p3, p0, Landroid/support/v7/app/AlertController;->x:I

    iput p4, p0, Landroid/support/v7/app/AlertController;->y:I

    iput p5, p0, Landroid/support/v7/app/AlertController;->z:I

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->s:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->F:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/app/AlertController;->E:I

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->G:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/v7/app/AlertController;->E:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->J:Landroid/view/View;

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->t:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->I:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->u:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/app/AlertController;->v:I

    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->A:Z

    return-void
.end method
