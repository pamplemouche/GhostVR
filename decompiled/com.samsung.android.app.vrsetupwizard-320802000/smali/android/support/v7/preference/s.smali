.class public abstract Landroid/support/v7/preference/s;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/support/v7/preference/ag;
.implements Landroid/support/v7/preference/ah;
.implements Landroid/support/v7/preference/ai;
.implements Landroid/support/v7/preference/c;


# instance fields
.field private a:Landroid/support/v7/preference/af;

.field private ae:I

.field private af:I

.field private ag:I

.field private final ah:Landroid/support/v7/preference/v;

.field private ai:Landroid/os/Handler;

.field private final aj:Ljava/lang/Runnable;

.field private ak:Ljava/lang/Runnable;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/support/v7/g/k;

.field private g:Landroid/support/v7/g/k;

.field private h:Landroid/support/v7/g/k;

.field private i:Landroid/support/v7/g/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/preference/s;->af:I

    sget v0, Landroid/support/v7/preference/ar;->preference_list_fragment:I

    iput v0, p0, Landroid/support/v7/preference/s;->ag:I

    new-instance v0, Landroid/support/v7/preference/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/preference/v;-><init>(Landroid/support/v7/preference/s;Landroid/support/v7/preference/t;)V

    iput-object v0, p0, Landroid/support/v7/preference/s;->ah:Landroid/support/v7/preference/v;

    new-instance v0, Landroid/support/v7/preference/t;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/t;-><init>(Landroid/support/v7/preference/s;)V

    iput-object v0, p0, Landroid/support/v7/preference/s;->ai:Landroid/os/Handler;

    new-instance v0, Landroid/support/v7/preference/u;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/u;-><init>(Landroid/support/v7/preference/s;)V

    iput-object v0, p0, Landroid/support/v7/preference/s;->aj:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/preference/s;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/s;->ai()V

    return-void
.end method

.method private ag()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ah()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/s;->ai:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/s;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private ai()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/v7/preference/s;->af:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/v7/preference/s;->ae:I

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->g(I)V

    iput-boolean v2, v0, Landroid/support/v7/preference/PreferenceScreen;->a:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/s;->ad()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/s;->c(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/ej;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ej;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->N()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/s;->ab()V

    return-void
.end method

.method private aj()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->O()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/s;->ac()V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/preference/s;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/preference/s;->b:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic c(Landroid/support/v7/preference/s;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/preference/s;->af:I

    return p0
.end method

.method static synthetic d(Landroid/support/v7/preference/s;)Landroid/support/v7/g/m;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/preference/s;->i:Landroid/support/v7/g/m;

    return-object p0
.end method

.method static synthetic e(Landroid/support/v7/preference/s;)Landroid/support/v7/g/k;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/preference/s;->f:Landroid/support/v7/g/k;

    return-object p0
.end method

.method static synthetic f(Landroid/support/v7/preference/s;)Landroid/support/v7/g/k;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/preference/s;->h:Landroid/support/v7/g/k;

    return-object p0
.end method

.method static synthetic g(Landroid/support/v7/preference/s;)Landroid/support/v7/g/k;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/preference/s;->g:Landroid/support/v7/g/k;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/af;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Landroid/support/v7/preference/s;->e:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/preference/at;->PreferenceFragmentCompat:[I

    sget v2, Landroid/support/v7/preference/ao;->preferenceFragmentCompatStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/preference/at;->PreferenceFragmentCompat_android_layout:I

    iget v2, p0, Landroid/support/v7/preference/s;->ag:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/s;->ag:I

    sget v1, Landroid/support/v7/preference/at;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/preference/at;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v6, Landroid/support/v7/preference/at;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v8, p0, Landroid/support/v7/preference/s;->e:Landroid/content/Context;

    sget-object v9, Landroid/support/v7/preference/at;->View:[I

    const v10, 0x1010208

    invoke-virtual {v8, v3, v9, v10, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget v9, Landroid/support/v7/preference/at;->View_android_background:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    instance-of v10, v9, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_0

    check-cast v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v9

    iput v9, p0, Landroid/support/v7/preference/s;->ae:I

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " sub header color = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Landroid/support/v7/preference/s;->ae:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SeslPreferenceFragmentC"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/p;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget v10, Landroid/support/v7/preference/ao;->preferenceTheme:I

    invoke-virtual {v9, v10, v8, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v8, p0, Landroid/support/v7/preference/s;->ag:I

    invoke-virtual {p1, v8, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v8, 0x102003f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    instance-of v10, v8, Landroid/view/ViewGroup;

    if-eqz v10, :cond_6

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v8, p3}, Landroid/support/v7/preference/s;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_5

    iput-object p1, p0, Landroid/support/v7/preference/s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Landroid/support/v7/preference/s;->ah:Landroid/support/v7/preference/v;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/es;)V

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/s;->a(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v5, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/s;->c(I)V

    :cond_1
    iget-object p3, p0, Landroid/support/v7/preference/s;->ah:Landroid/support/v7/preference/v;

    invoke-virtual {p3, v6}, Landroid/support/v7/preference/v;->a(Z)V

    iget-object p3, p0, Landroid/support/v7/preference/s;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/en;)V

    iget p3, p0, Landroid/support/v7/preference/s;->af:I

    const/16 v1, 0xf

    if-ne p3, v7, :cond_2

    new-instance p3, Landroid/support/v7/g/m;

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->k()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, v4}, Landroid/support/v7/g/m;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Landroid/support/v7/preference/s;->i:Landroid/support/v7/g/m;

    new-instance p3, Landroid/support/v7/g/k;

    invoke-direct {p3, v9, v4}, Landroid/support/v7/g/k;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Landroid/support/v7/preference/s;->f:Landroid/support/v7/g/k;

    sget p3, Landroid/support/v7/preference/ap;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Landroid/support/v7/preference/s;->ae:I

    iget-object p3, p0, Landroid/support/v7/preference/s;->i:Landroid/support/v7/g/m;

    iget v0, p0, Landroid/support/v7/preference/s;->ae:I

    invoke-virtual {p3, v1, v0}, Landroid/support/v7/g/m;->a(II)V

    iget-object p3, p0, Landroid/support/v7/preference/s;->f:Landroid/support/v7/g/k;

    iget v0, p0, Landroid/support/v7/preference/s;->ae:I

    invoke-virtual {p3, v1, v0}, Landroid/support/v7/g/k;->a(II)V

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->b(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    new-instance p3, Landroid/support/v7/g/k;

    invoke-direct {p3, v9}, Landroid/support/v7/g/k;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroid/support/v7/preference/s;->f:Landroid/support/v7/g/k;

    new-instance p3, Landroid/support/v7/g/m;

    invoke-direct {p3, v9}, Landroid/support/v7/g/m;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroid/support/v7/preference/s;->i:Landroid/support/v7/g/m;

    :cond_3
    :goto_0
    iget p3, p0, Landroid/support/v7/preference/s;->af:I

    if-eqz p3, :cond_4

    invoke-virtual {p1, v7}, Landroid/support/v7/widget/RecyclerView;->c(Z)V

    iget p3, p0, Landroid/support/v7/preference/s;->ae:I

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    new-instance p1, Landroid/support/v7/g/k;

    invoke-direct {p1, v9, v4, v7}, Landroid/support/v7/g/k;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Landroid/support/v7/preference/s;->g:Landroid/support/v7/g/k;

    iget-object p1, p0, Landroid/support/v7/preference/s;->g:Landroid/support/v7/g/k;

    iget p3, p0, Landroid/support/v7/preference/s;->ae:I

    invoke-virtual {p1, v1, p3}, Landroid/support/v7/g/k;->a(II)V

    iget-object p1, p0, Landroid/support/v7/preference/s;->g:Landroid/support/v7/g/k;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/support/v7/g/k;->a(I)V

    new-instance p1, Landroid/support/v7/g/k;

    invoke-direct {p1, v9}, Landroid/support/v7/g/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/preference/s;->h:Landroid/support/v7/g/k;

    iget-object p1, p0, Landroid/support/v7/preference/s;->h:Landroid/support/v7/g/k;

    invoke-virtual {p1, p3}, Landroid/support/v7/g/k;->a(I)V

    :cond_4
    iget-object p1, p0, Landroid/support/v7/preference/s;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v7/preference/s;->ai:Landroid/os/Handler;

    iget-object p3, p0, Landroid/support/v7/preference/s;->aj:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/s;->ah:Landroid/support/v7/preference/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/v;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/preference/ao;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/preference/s;->e:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/preference/s;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-sesl_preference_version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "10.0.37"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslPreferenceFragmentC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v7/preference/af;

    iget-object v1, p0, Landroid/support/v7/preference/s;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/af;->a(Landroid/support/v7/preference/ah;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->h()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/preference/s;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must specify preferenceTheme in theme"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public a(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/af;->a(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->ac()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/preference/s;->c:Z

    iget-boolean p1, p0, Landroid/support/v7/preference/s;->d:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/preference/s;->ah()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroid/support/v7/preference/s;->c:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/preference/s;->ai()V

    iget-object p1, p0, Landroid/support/v7/preference/s;->ak:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/preference/s;->ak:Ljava/lang/Runnable;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/preference/s;->d:Z

    return-void
.end method

.method public a_(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/preference/s;->ag()V

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    iget-object v1, p0, Landroid/support/v7/preference/s;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/af;->a(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    instance-of v0, p1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference object with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a PreferenceScreen"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/s;->a(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method protected ab()V
    .locals 0

    return-void
.end method

.method protected ac()V
    .locals 0

    return-void
.end method

.method public final ad()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/s;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public ae()Landroid/support/v7/widget/et;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public af()Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->d()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->af()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/y;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->af()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/y;->a(Landroid/support/v7/preference/s;Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/y;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/y;->a(Landroid/support/v7/preference/s;Landroid/support/v7/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->r()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->af()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/x;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->af()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/x;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/x;->a(Landroid/support/v7/preference/s;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/x;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/x;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/x;->a(Landroid/support/v7/preference/s;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    sget p3, Landroid/support/v7/preference/ar;->sesl_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->ae()Landroid/support/v7/widget/et;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/et;)V

    new-instance p2, Landroid/support/v7/preference/ak;

    invoke-direct {p2, p1}, Landroid/support/v7/preference/ak;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/fu;)V

    return-object p1
.end method

.method protected c(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/ej;
    .locals 1

    new-instance v0, Landroid/support/v7/preference/aa;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/aa;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/s;->ah:Landroid/support/v7/preference/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/v;->a(I)V

    return-void
.end method

.method public c(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->af()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->af()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/w;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/w;->a(Landroid/support/v7/preference/s;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/preference/w;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->l()Landroid/support/v4/app/p;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/w;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/w;->a(Landroid/support/v7/preference/s;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/s;->n()Landroid/support/v4/app/w;

    move-result-object v0

    const-string v2, "android.support.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/preference/f;->b(Ljava/lang/String;)Landroid/support/v7/preference/f;

    move-result-object p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/preference/h;->b(Ljava/lang/String;)Landroid/support/v7/preference/h;

    move-result-object p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/preference/j;->b(Ljava/lang/String;)Landroid/support/v7/preference/j;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, p0, v1}, Landroid/support/v4/app/i;->a(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->n()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/i;->a(Landroid/support/v4/app/w;Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/af;->a(Landroid/support/v7/preference/ai;)V

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/af;->a(Landroid/support/v7/preference/ag;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/s;->af:I

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->c(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/af;->a(Landroid/support/v7/preference/ai;)V

    iget-object v0, p0, Landroid/support/v7/preference/s;->a:Landroid/support/v7/preference/af;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/af;->a(Landroid/support/v7/preference/ag;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/s;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->a(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/s;->ai:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/s;->aj:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v7/preference/s;->ai:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v7/preference/s;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/preference/s;->aj()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/s;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    return-void
.end method
