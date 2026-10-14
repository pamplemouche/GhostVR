.class public Landroid/support/v7/preference/Preference;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/support/v7/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/Object;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:I

.field private N:Landroid/content/res/ColorStateList;

.field private O:Landroid/content/res/ColorStateList;

.field private P:Z

.field private Q:I

.field private R:I

.field private S:Landroid/support/v7/preference/n;

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private U:Landroid/support/v7/preference/PreferenceGroup;

.field private V:Z

.field private W:Z

.field private final X:Landroid/view/View$OnClickListener;

.field public a:Z

.field b:Z

.field c:I

.field d:Z

.field e:I

.field f:Z

.field private g:Landroid/content/Context;

.field private h:Landroid/support/v7/preference/af;

.field private i:Landroid/support/v7/preference/q;

.field private j:J

.field private k:Z

.field private l:Landroid/support/v7/preference/o;

.field private m:Landroid/support/v7/preference/p;

.field private n:I

.field private o:I

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:I

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Ljava/lang/String;

.field private u:Landroid/content/Intent;

.field private v:Ljava/lang/String;

.field private w:Landroid/os/Bundle;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroid/support/v7/preference/ao;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/a/a/w;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/preference/Preference;->n:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/preference/Preference;->o:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->x:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->y:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->z:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->C:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->D:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->E:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->F:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->G:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->I:Z

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->a:Z

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->b:Z

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->d:Z

    iput v1, p0, Landroid/support/v7/preference/Preference;->e:I

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->f:Z

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->K:Z

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->L:Z

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->P:Z

    sget v3, Landroid/support/v7/preference/ar;->sesl_preference:I

    iput v3, p0, Landroid/support/v7/preference/Preference;->Q:I

    new-instance v3, Landroid/support/v7/preference/l;

    invoke-direct {v3, p0}, Landroid/support/v7/preference/l;-><init>(Landroid/support/v7/preference/Preference;)V

    iput-object v3, p0, Landroid/support/v7/preference/Preference;->X:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/preference/Preference;->g:Landroid/content/Context;

    sget-object v3, Landroid/support/v7/preference/at;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Landroid/support/v7/preference/at;->Preference_icon:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_icon:I

    invoke-static {p2, p3, p4, v1}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;III)I

    move-result p3

    iput p3, p0, Landroid/support/v7/preference/Preference;->r:I

    sget p3, Landroid/support/v7/preference/at;->Preference_key:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_key:I

    invoke-static {p2, p3, p4}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    sget p3, Landroid/support/v7/preference/at;->Preference_title:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_title:I

    invoke-static {p2, p3, p4}, Landroid/support/v4/a/a/w;->c(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    sget p3, Landroid/support/v7/preference/at;->Preference_summary:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_summary:I

    invoke-static {p2, p3, p4}, Landroid/support/v4/a/a/w;->c(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/preference/Preference;->q:Ljava/lang/CharSequence;

    sget p3, Landroid/support/v7/preference/at;->Preference_order:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_order:I

    invoke-static {p2, p3, p4, v0}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;III)I

    move-result p3

    iput p3, p0, Landroid/support/v7/preference/Preference;->n:I

    sget p3, Landroid/support/v7/preference/at;->Preference_fragment:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_fragment:I

    invoke-static {p2, p3, p4}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/preference/Preference;->v:Ljava/lang/String;

    sget p3, Landroid/support/v7/preference/at;->Preference_layout:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_layout:I

    sget v0, Landroid/support/v7/preference/ar;->preference:I

    invoke-static {p2, p3, p4, v0}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;III)I

    move-result p3

    iput p3, p0, Landroid/support/v7/preference/Preference;->Q:I

    sget p3, Landroid/support/v7/preference/at;->Preference_widgetLayout:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_widgetLayout:I

    invoke-static {p2, p3, p4, v1}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;III)I

    move-result p3

    iput p3, p0, Landroid/support/v7/preference/Preference;->R:I

    sget p3, Landroid/support/v7/preference/at;->Preference_enabled:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_enabled:I

    invoke-static {p2, p3, p4, v2}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->x:Z

    sget p3, Landroid/support/v7/preference/at;->Preference_selectable:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_selectable:I

    invoke-static {p2, p3, p4, v2}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->y:Z

    sget p3, Landroid/support/v7/preference/at;->Preference_persistent:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_persistent:I

    invoke-static {p2, p3, p4, v2}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->z:Z

    sget p3, Landroid/support/v7/preference/at;->Preference_dependency:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_dependency:I

    invoke-static {p2, p3, p4}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/preference/Preference;->A:Ljava/lang/String;

    sget p3, Landroid/support/v7/preference/at;->Preference_allowDividerAbove:I

    sget p4, Landroid/support/v7/preference/at;->Preference_allowDividerAbove:I

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->y:Z

    invoke-static {p2, p3, p4, v0}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->F:Z

    sget p3, Landroid/support/v7/preference/at;->Preference_allowDividerBelow:I

    sget p4, Landroid/support/v7/preference/at;->Preference_allowDividerBelow:I

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->y:Z

    invoke-static {p2, p3, p4, v0}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->G:Z

    sget p3, Landroid/support/v7/preference/at;->Preference_defaultValue:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Landroid/support/v7/preference/at;->Preference_defaultValue:I

    :goto_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/preference/Preference;->B:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget p3, Landroid/support/v7/preference/at;->Preference_android_defaultValue:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Landroid/support/v7/preference/at;->Preference_android_defaultValue:I

    goto :goto_0

    :cond_1
    :goto_1
    sget p3, Landroid/support/v7/preference/at;->Preference_shouldDisableView:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_shouldDisableView:I

    invoke-static {p2, p3, p4, v2}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->P:Z

    sget p3, Landroid/support/v7/preference/at;->Preference_singleLineTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->H:Z

    iget-boolean p3, p0, Landroid/support/v7/preference/Preference;->H:Z

    if-eqz p3, :cond_2

    sget p3, Landroid/support/v7/preference/at;->Preference_singleLineTitle:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_singleLineTitle:I

    invoke-static {p2, p3, p4, v2}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->I:Z

    :cond_2
    sget p3, Landroid/support/v7/preference/at;->Preference_iconSpaceReserved:I

    sget p4, Landroid/support/v7/preference/at;->Preference_android_iconSpaceReserved:I

    invoke-static {p2, p3, p4, v1}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->J:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x1010038

    invoke-virtual {p3, p4, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-lez p3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/Preference;->O:Landroid/content/res/ColorStateList;

    :cond_3
    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference;->b(Landroid/support/v7/preference/Preference;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference;->c(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->T:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->T:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->j()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->s()Landroid/support/v7/preference/q;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->B:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/preference/Preference;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->B:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/preference/Preference;->a(ZLjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private c(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->T:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->y:Z

    return v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->E:Z

    return v0
.end method

.method C()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/preference/Preference;->j:J

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->z:Z

    return v0
.end method

.method protected G()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected H()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->m:Landroid/support/v7/preference/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/support/v7/preference/p;->a(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public I()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->g()V

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->m:Landroid/support/v7/preference/p;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/support/v7/preference/p;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->M()Landroid/support/v7/preference/af;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->h()Landroid/support/v7/preference/ai;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/support/v7/preference/ai;->b(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->u:Landroid/content/Intent;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->J()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->u:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public J()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->g:Landroid/content/Context;

    return-object v0
.end method

.method public K()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->s()Landroid/support/v7/preference/q;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected L()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->S:Landroid/support/v7/preference/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/support/v7/preference/n;->b(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public M()Landroid/support/v7/preference/af;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    return-object v0
.end method

.method public N()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->a()V

    return-void
.end method

.method public O()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->V:Z

    return-void
.end method

.method public final P()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->V:Z

    return-void
.end method

.method Q()Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->x()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->n()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public a(Landroid/support/v7/preference/Preference;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/preference/Preference;->n:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->n:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/Preference;->Q:I

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/Preference;->u:Landroid/content/Intent;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->W:Z

    sget-object v0, Landroid/support/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Z)V
    .locals 0

    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->C:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->C:Z

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->c(Z)V

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/Preference;->U:Landroid/support/v7/preference/PreferenceGroup;

    return-void
.end method

.method protected a(Landroid/support/v7/preference/af;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/af;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/preference/Preference;->j:J

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->c()V

    return-void
.end method

.method protected a(Landroid/support/v7/preference/af;J)V
    .locals 0

    iput-wide p2, p0, Landroid/support/v7/preference/Preference;->j:J

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->k:Z

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/af;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->k:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->k:Z

    throw p1
.end method

.method public a(Landroid/support/v7/preference/am;)V
    .locals 6

    iget-object v0, p1, Landroid/support/v7/preference/am;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->X:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroid/support/v7/preference/am;->d:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/preference/Preference;->o:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->b:Z

    iget v1, p0, Landroid/support/v7/preference/Preference;->e:I

    iget-boolean v2, p0, Landroid/support/v7/preference/Preference;->d:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/preference/am;->a(ZIZ)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->x()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->H:Z

    if-eqz v3, :cond_2

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->I:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p0, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->H:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->n()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->K:Z

    const-string v4, "Preference"

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/preference/Preference;->M:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Summary Color : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/v7/preference/Preference;->M:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->L:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/preference/Preference;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Summary ColorStateList : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/support/v7/preference/Preference;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->O:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_4
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    if-eqz v0, :cond_c

    iget v4, p0, Landroid/support/v7/preference/Preference;->r:I

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/preference/Preference;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_a
    iget-boolean v4, p0, Landroid/support/v7/preference/Preference;->J:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x4

    goto :goto_5

    :cond_b
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    :goto_6
    sget v0, Landroid/support/v7/preference/aq;->icon_frame:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    const v0, 0x102003e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object v0

    :cond_d
    if-eqz v0, :cond_10

    iget-object v4, p0, Landroid/support/v7/preference/Preference;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_e

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_e
    iget-boolean v2, p0, Landroid/support/v7/preference/Preference;->J:Z

    if-eqz v2, :cond_f

    const/4 v1, 0x4

    :cond_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_7
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->P:Z

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/support/v7/preference/am;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->z()Z

    move-result v1

    goto :goto_8

    :cond_11
    iget-object v0, p1, Landroid/support/v7/preference/am;->d:Landroid/view/View;

    const/4 v1, 0x1

    :goto_8
    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->A()Z

    move-result v0

    iget-object v1, p1, Landroid/support/v7/preference/am;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p1, Landroid/support/v7/preference/am;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->F:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(Z)V

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->G:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->b(Z)V

    return-void
.end method

.method final a(Landroid/support/v7/preference/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/Preference;->S:Landroid/support/v7/preference/n;

    return-void
.end method

.method public a(Landroid/support/v7/preference/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/Preference;->l:Landroid/support/v7/preference/o;

    return-void
.end method

.method public a(Landroid/support/v7/preference/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/Preference;->m:Landroid/support/v7/preference/p;

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->I()V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->q:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->q:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->i()V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->x:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->x:Z

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->c(Z)V

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->l:Landroid/support/v7/preference/o;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/o;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/Preference;->R:I

    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->W:Z

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->k()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->W:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/support/v7/preference/Preference;Z)V
    .locals 0

    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->D:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->D:Z

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->c(Z)V

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->i()V

    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->E:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->E:Z

    iget-object p1, p0, Landroid/support/v7/preference/Preference;->S:Landroid/support/v7/preference/n;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/support/v7/preference/n;->c(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/Preference;->n:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/v7/preference/Preference;->n:I

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->L()V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Z)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->T:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method protected d(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/af;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method d(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->W:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->W:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected d(Z)Z
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->e(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->s()Landroid/support/v7/preference/q;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/q;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/Preference;->M:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->K:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->L:Z

    return-void
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->s()Landroid/support/v7/preference/q;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected e(Z)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->s()Landroid/support/v7/preference/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/q;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->s()Landroid/support/v7/preference/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->b:Z

    iput p1, p0, Landroid/support/v7/preference/Preference;->e:I

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->f:Z

    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/Preference;->c:I

    return-void
.end method

.method protected h(I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->i(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->s()Landroid/support/v7/preference/q;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/q;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected i(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->s()Landroid/support/v7/preference/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/q;->b(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->t:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->S:Landroid/support/v7/preference/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/support/v7/preference/n;->a(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->z()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected k()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->W:Z

    sget-object v0, Landroid/support/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public q()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->u:Landroid/content/Intent;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->v:Ljava/lang/String;

    return-object v0
.end method

.method public s()Landroid/support/v7/preference/q;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->i:Landroid/support/v7/preference/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->h:Landroid/support/v7/preference/af;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->b()Landroid/support/v7/preference/q;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->Q()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/Preference;->Q:I

    return v0
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/Preference;->R:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/Preference;->n:I

    return v0
.end method

.method public x()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected y()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->J()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->J()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
