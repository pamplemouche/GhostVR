.class public LS30;
.super Lorg/chromium/ui/widget/OptimizedFrameLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LYg;
.implements LqR0;
.implements LoR0;
.implements LU30;


# instance fields
.field public A:Lbc1;

.field public B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

.field public C:Landroid/support/v7/widget/RecyclerView;

.field public D:Lorg/chromium/chrome/browser/contacts_picker/TopView;

.field public E:LP30;

.field public F:Landroid/support/v7/widget/LinearLayoutManager;

.field public G:LCM0;

.field public H:LrR0;

.field public I:LyO0;

.field public J:Landroid/widget/ImageView;

.field public K:Ljava/util/Set;

.field public L:Landroid/widget/Button;

.field public M:Z

.field public final N:Z

.field public final O:Z

.field public final P:Z

.field public x:LK30;

.field public y:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

.field public z:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZZLjava/lang/String;LL30;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v1, v3}, Lorg/chromium/ui/widget/OptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    move-object v4, v1

    check-cast v4, Lorg/chromium/chrome/browser/ChromeActivity;

    iput-object v4, v0, LS30;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    iput-boolean v2, v0, LS30;->M:Z

    move/from16 v4, p3

    .line 4
    iput-boolean v4, v0, LS30;->N:Z

    move/from16 v4, p4

    .line 5
    iput-boolean v4, v0, LS30;->O:Z

    move/from16 v4, p5

    .line 6
    iput-boolean v4, v0, LS30;->P:Z

    .line 7
    new-instance v4, LrR0;

    invoke-direct {v4}, LrR0;-><init>()V

    iput-object v4, v0, LS30;->H:LrR0;

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 8
    iput-boolean v5, v4, LrR0;->a:Z

    .line 9
    :cond_0
    iget-object v4, v0, LS30;->H:LrR0;

    .line 10
    iget-object v4, v4, LrR0;->d:LWT;

    invoke-virtual {v4, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v4, 0x7f060075

    .line 12
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 13
    new-instance v4, LCM0;

    const/16 v8, 0x24

    const/16 v9, 0x24

    const/16 v10, 0x14

    const/16 v12, 0xc

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, LCM0;-><init>(Landroid/content/res/Resources;IIIII)V

    iput-object v4, v0, LS30;->G:LCM0;

    .line 14
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0e0062

    invoke-virtual {v4, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0b03c9

    .line 15
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    iput-object v4, v0, LS30;->y:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    const v6, 0x7f13022e

    .line 16
    iput v6, v4, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->F:I

    .line 17
    iget-object v7, v4, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->y:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object v6, v4, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->z:Landroid/view/View;

    sget-object v7, LjR0;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    iget-object v4, v4, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->y:Landroid/widget/TextView;

    .line 20
    new-instance v4, LP30;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v6, p6

    invoke-direct {v4, p0, v1, v6}, LP30;-><init>(LS30;Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v4, v0, LS30;->E:LP30;

    .line 21
    iget-object v1, v0, LS30;->y:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    invoke-virtual {v1, v4}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a(LBg;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iput-object v1, v0, LS30;->C:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    const v1, 0x7f130231

    const v9, 0x7f130231

    goto :goto_0

    :cond_1
    const v1, 0x7f130230

    const v9, 0x7f130230

    .line 22
    :goto_0
    iget-object v6, v0, LS30;->y:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    const v7, 0x7f0e0063

    iget-object v8, v0, LS30;->H:LrR0;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a(ILrR0;IIILTh;ZZ)LpR0;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    iput-object v1, v0, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    .line 23
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 24
    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v1, v0, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    const v2, 0x7f13022f

    .line 26
    iput-boolean v5, v1, LpR0;->p0:Z

    .line 27
    iput-object v0, v1, LpR0;->t0:LoR0;

    const/4 v4, 0x0

    .line 28
    iput v4, v1, LpR0;->D0:I

    const/4 v6, -0x1

    .line 29
    iput v6, v1, LpR0;->I0:I

    .line 30
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0e0190

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v6, 0x7f0b03b2

    .line 31
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v1, LpR0;->q0:Landroid/widget/LinearLayout;

    const v7, 0x7f0b03b1

    .line 32
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 33
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, v1, LpR0;->r0:Landroid/widget/EditText;

    .line 34
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 35
    iget-object v2, v1, LpR0;->r0:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 36
    iget-object v2, v1, LpR0;->r0:Landroid/widget/EditText;

    new-instance v6, LmR0;

    invoke-direct {v6, v1}, LmR0;-><init>(LpR0;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f0b00cc

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, LpR0;->s0:Landroid/widget/ImageButton;

    .line 38
    new-instance v6, LnR0;

    invoke-direct {v6, v1}, LnR0;-><init>(LpR0;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v1, v0, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    move-object/from16 v2, p7

    .line 40
    iput-object v2, v1, Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;->T0:LL30;

    .line 41
    iget-object v1, v0, LS30;->y:Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;

    if-eqz v1, :cond_2

    .line 42
    new-instance v2, LRM0;

    invoke-direct {v2, v1}, LRM0;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->G:LRM0;

    .line 43
    iget-object v3, v1, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->C:LpR0;

    invoke-virtual {v3, v2}, LpR0;->a(LRM0;)V

    .line 44
    iget-object v2, v1, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->G:LRM0;

    .line 45
    iget-object v3, v2, LRM0;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, v2, LRM0;->a:LQM0;

    invoke-interface {v1, v2}, LOM0;->a(LQM0;)V

    .line 47
    iget-object v1, v0, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    const v2, 0x7f0b039f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, LS30;->J:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, v0, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    const v2, 0x7f0b016a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, LS30;->L:Landroid/widget/Button;

    .line 50
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 52
    invoke-direct {v1, v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 53
    iput-object v1, v0, LS30;->F:Landroid/support/v7/widget/LinearLayoutManager;

    .line 54
    iget-object v2, v0, LS30;->C:Landroid/support/v7/widget/RecyclerView;

    .line 55
    iput-boolean v5, v2, Landroid/support/v7/widget/RecyclerView;->O:Z

    .line 56
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 57
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    .line 58
    div-long/2addr v1, v3

    const-wide/16 v3, 0x8

    .line 59
    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 60
    new-instance v1, LyO0;

    .line 61
    sget-object v3, LjZ;->a:LCT;

    const/high16 v4, 0x500000

    .line 62
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, v3, v2}, LyO0;-><init>(LCT;I)V

    iput-object v1, v0, LS30;->I:LyO0;

    return-void

    .line 63
    :cond_2
    throw v3
.end method


# virtual methods
.method public final a(ZZLjava/util/List;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_1
    return-object p3
.end method

.method public final a(ILjava/util/List;I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, LS30;->E:LP30;

    .line 16
    iget-object v2, v2, LP30;->C:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    mul-int/lit8 v3, v1, 0x64

    .line 18
    div-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 19
    :goto_1
    iget-boolean v4, p0, LS30;->N:Z

    if-eqz v4, :cond_2

    const/4 v0, 0x4

    .line 20
    :cond_2
    iget-boolean v4, p0, LS30;->O:Z

    if-eqz v4, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 21
    :cond_3
    iget-boolean v4, p0, LS30;->P:Z

    if-eqz v4, :cond_4

    or-int/lit8 v0, v0, 0x1

    .line 22
    :cond_4
    iget-object v4, p0, LS30;->A:Lbc1;

    invoke-interface {v4, p1, p2, v3, v0}, Lbc1;->a(ILjava/util/List;II)V

    .line 23
    iget-object p1, p0, LS30;->x:LK30;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 24
    sget-object p1, Lwc1;->d:Luc1;

    if-nez p1, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    check-cast p1, Lwh0;

    const/4 p2, 0x0

    .line 26
    iput-object p2, p1, Lwh0;->a:LK30;

    :goto_2
    const/4 p1, 0x2

    const-string p2, "Android.ContactsPicker.DialogAction"

    .line 27
    invoke-static {p2, p3, p1}, LfV;->a(Ljava/lang/String;II)V

    const-string p1, "Android.ContactsPicker.ContactCount"

    .line 28
    invoke-static {p1, v2}, LfV;->c(Ljava/lang/String;I)V

    const-string p1, "Android.ContactsPicker.SelectCount"

    .line 29
    invoke-static {p1, v1}, LfV;->c(Ljava/lang/String;I)V

    const-string p1, "Android.ContactsPicker.SelectPercentage"

    .line 30
    invoke-static {p1, v3}, LfV;->d(Ljava/lang/String;I)V

    const-string p1, "Android.ContactsPicker.PropertiesRequested"

    const/16 p2, 0x8

    .line 31
    invoke-static {p1, v0, p2}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public a(Ldh;)V
    .locals 2

    .line 10
    check-cast p1, LH30;

    .line 11
    iget-object v0, p1, LH30;->T:LN30;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LkW;->cancel(Z)Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, LH30;->T:LN30;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    .line 2
    iget-boolean v0, v0, LpR0;->o0:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    invoke-virtual {v0}, LpR0;->l()V

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, LS30;->E:LP30;

    invoke-virtual {v0}, LP30;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, LS30;->D:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->F:Z

    .line 8
    iget-object v1, v0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->y:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    iput-boolean v2, v0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->F:Z

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b016a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, LS30;->H:LrR0;

    invoke-virtual {p1}, LrR0;->b()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LF30;

    .line 6
    new-instance v4, Lac1;

    iget-boolean v5, p0, LS30;->N:Z

    .line 7
    sget-boolean v6, LP30;->G:Z

    new-array v7, v1, [Ljava/lang/String;

    .line 8
    iget-object v8, v3, LF30;->x:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 9
    invoke-virtual {p0, v5, v6, v7}, LS30;->a(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-boolean v6, p0, LS30;->O:Z

    .line 10
    sget-boolean v7, LP30;->H:Z

    .line 11
    iget-object v8, v3, LF30;->y:Ljava/util/List;

    .line 12
    invoke-virtual {p0, v6, v7, v8}, LS30;->a(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-boolean v7, p0, LS30;->P:Z

    .line 13
    sget-boolean v8, LP30;->I:Z

    .line 14
    iget-object v3, v3, LF30;->z:Ljava/util/List;

    .line 15
    invoke-virtual {p0, v7, v8, v3}, LS30;->a(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lac1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v1, v0, v1}, LS30;->a(ILjava/util/List;I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0b039f

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 18
    iget-object p1, p0, LS30;->L:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    new-instance p1, Ljava/util/HashSet;

    iget-object v2, p0, LS30;->H:LrR0;

    .line 20
    iget-object v2, v2, LrR0;->c:Ljava/util/Set;

    .line 21
    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, LS30;->K:Ljava/util/Set;

    .line 22
    iget-object p1, p0, LS30;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, LS30;->E:LP30;

    .line 24
    iput-boolean v1, p1, LP30;->E:Z

    .line 25
    iget-object p1, p1, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    .line 26
    iget-object p1, p0, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    .line 27
    iput-boolean v1, p1, LpR0;->o0:Z

    .line 28
    iget-object v0, p1, LpR0;->n0:LrR0;

    invoke-virtual {v0}, LrR0;->a()V

    .line 29
    invoke-virtual {p1}, LpR0;->o()V

    .line 30
    iget-object v0, p1, LpR0;->r0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 31
    sget-object v0, Lrc1;->x:Lrc1;

    .line 32
    iget-object v1, p1, LpR0;->r0:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lrc1;->b(Landroid/view/View;)V

    .line 33
    invoke-virtual {p1, v3}, LpR0;->c(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0, v2, v3, v2}, LS30;->a(ILjava/util/List;I)V

    :goto_1
    return-void
.end method
