.class public abstract Lrc;
.super Lz2;
.source "PG"

# interfaces
.implements LCc;
.implements LAc;
.implements LBc;
.implements Ldc;


# instance fields
.field public final A0:Lqc;

.field public B0:Landroid/os/Handler;

.field public final C0:Ljava/lang/Runnable;

.field public D0:Ljava/lang/Runnable;

.field public u0:LDc;

.field public v0:Landroid/support/v7/widget/RecyclerView;

.field public w0:Z

.field public x0:Z

.field public y0:Landroid/content/Context;

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    const v0, 0x7f0e0172

    .line 2
    iput v0, p0, Lrc;->z0:I

    .line 3
    new-instance v0, Lqc;

    invoke-direct {v0, p0}, Lqc;-><init>(Lrc;)V

    iput-object v0, p0, Lrc;->A0:Lqc;

    .line 4
    new-instance v0, Loc;

    invoke-direct {v0, p0}, Loc;-><init>(Lrc;)V

    iput-object v0, p0, Lrc;->B0:Landroid/os/Handler;

    .line 5
    new-instance v0, Lpc;

    invoke-direct {v0, p0}, Lpc;-><init>(Lrc;)V

    iput-object v0, p0, Lrc;->C0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc;->B0:Landroid/os/Handler;

    iget-object v1, p0, Lrc;->C0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lrc;->B0:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-boolean v0, p0, Lrc;->w0:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 5
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lvc;->s()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    .line 8
    iput-boolean v1, p0, Lz2;->c0:Z

    return-void
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 3
    iput-object p0, v0, LDc;->i:LCc;

    .line 4
    iput-object p0, v0, LDc;->j:LAc;

    return-void
.end method

.method public N()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v0, p0, Lrc;->u0:LDc;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, LDc;->i:LCc;

    .line 4
    iput-object v1, v0, LDc;->j:LAc;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 2

    .line 56
    iget-object v0, p0, Lrc;->u0:LDc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 57
    :cond_0
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, p1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object p3, p0, Lrc;->y0:Landroid/content/Context;

    sget-object v0, LeS;->r0:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0401b8

    invoke-virtual {p3, v2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 2
    iget v0, p0, Lrc;->z0:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lrc;->z0:I

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/4 v5, 0x3

    .line 5
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 6
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    iget-object p3, p0, Lrc;->y0:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 8
    iget p3, p0, Lrc;->z0:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 10
    instance-of v5, p3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 11
    check-cast p3, Landroid/view/ViewGroup;

    .line 12
    iget-object v5, p0, Lrc;->y0:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.type.automotive"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0b037a

    .line 13
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7f0e0174

    .line 14
    invoke-virtual {p1, v5, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    .line 15
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v5, p1}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 17
    new-instance p1, LFc;

    invoke-direct {p1, v5}, LFc;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 18
    iput-object p1, v5, Landroid/support/v7/widget/RecyclerView;->I0:Lfh;

    .line 19
    invoke-static {v5, p1}, LA7;->a(Landroid/view/View;Lh7;)V

    .line 20
    :goto_0
    iput-object v5, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    .line 21
    iget-object p1, p0, Lrc;->A0:Lqc;

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/RecyclerView;->a(LLg;)V

    .line 22
    invoke-virtual {p0, v2}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    if-eq v4, v3, :cond_1

    .line 23
    iget-object p1, p0, Lrc;->A0:Lqc;

    .line 24
    iput v4, p1, Lqc;->b:I

    .line 25
    iget-object p1, p1, Lqc;->d:Lrc;

    iget-object p1, p1, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 26
    :cond_1
    iget-object p1, p0, Lrc;->A0:Lqc;

    .line 27
    iput-boolean v0, p1, Lqc;->c:Z

    .line 28
    iget-object p1, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 29
    iget-object p1, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    :cond_2
    iget-object p1, p0, Lrc;->B0:Landroid/os/Handler;

    iget-object p3, p0, Lrc;->C0:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lrc;->A0:Lqc;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lqc;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 34
    iput v1, v0, Lqc;->b:I

    .line 35
    :goto_0
    iput-object p1, v0, Lqc;->a:Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object p1, v0, Lqc;->d:Lrc;

    iget-object p1, p1, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->o()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 37
    throw p1
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public a(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lz2;->l()LD2;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    .line 38
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 40
    iget-object p2, p2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Bundle;)V

    .line 42
    :cond_0
    iget-boolean p1, p0, Lrc;->w0:Z

    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 44
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    .line 45
    iget-object p2, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    .line 46
    new-instance v0, Lyc;

    invoke-direct {v0, p1}, Lyc;-><init>(Lvc;)V

    .line 47
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(LBg;)V

    .line 48
    invoke-virtual {p1}, Lvc;->q()V

    .line 49
    :cond_1
    iget-object p1, p0, Lrc;->D0:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 50
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lrc;->D0:Ljava/lang/Runnable;

    :cond_2
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lrc;->x0:Z

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 53
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lz2;->l()LD2;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lz2;->b(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v1}, LP3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0401c3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    const v0, 0x7f140152

    .line 5
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lrc;->y0:Landroid/content/Context;

    .line 6
    new-instance v0, LDc;

    invoke-direct {v0, v1}, LDc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lrc;->u0:LDc;

    .line 7
    iput-object p0, v0, LDc;->k:LBc;

    .line 8
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, p1, v0}, Lrc;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 19
    invoke-virtual {p0}, Lz2;->l()LD2;

    .line 20
    iget-object v0, p0, Lz2;->N:LY2;

    const-string v1, "android.support.v14.preference.PreferenceFragment.DIALOG"

    .line 21
    invoke-virtual {v0, v1}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 23
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 24
    new-instance v0, Lhc;

    invoke-direct {v0}, Lhc;-><init>()V

    .line 25
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "key"

    .line 26
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Lz2;->g(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, p0, p1}, Lz2;->a(Lz2;I)V

    .line 29
    iget-object p1, p0, Lz2;->N:LY2;

    .line 30
    invoke-virtual {v0, p1, v1}, Ls2;->a(LH2;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 12
    iget-object v1, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Lvc;->s()V

    .line 14
    :cond_0
    iput-object p1, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 15
    iput-boolean v2, p0, Lrc;->w0:Z

    .line 16
    iget-boolean p1, p0, Lrc;->x0:Z

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lrc;->B0:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lrc;->B0:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_1
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lrc;->y0:Landroid/content/Context;

    .line 3
    iget-object v2, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v0, LDc;->e:Z

    .line 5
    new-instance v3, Lzc;

    invoke-direct {v3, v1, v0}, Lzc;-><init>(Landroid/content/Context;LDc;)V

    .line 6
    iget-object v1, v3, Lzc;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-virtual {v3, p1, v2}, Lzc;->a(Lorg/xmlpull/v1/XmlPullParser;Lvc;)Landroid/support/v7/preference/Preference;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 10
    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    .line 11
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->a(LDc;)V

    const/4 p1, 0x0

    .line 12
    iget-object v2, v0, LDc;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    .line 13
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    :cond_0
    iput-boolean p1, v0, LDc;->e:Z

    .line 15
    invoke-virtual {p0, v1}, Lrc;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void

    :catchall_0
    move-exception v0

    .line 16
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This should be called after super.onCreate."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
