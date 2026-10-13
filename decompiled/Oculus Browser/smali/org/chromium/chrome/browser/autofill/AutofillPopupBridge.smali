.class public Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LCR0;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public A:Le11;

.field public final w:J

.field public final x:LJR0;

.field public y:LP8;

.field public final z:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->w:J

    .line 3
    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    const-string v0, "AutofillRefreshStyleAndroid"

    .line 5
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget v0, p4, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p4, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p4, LJR0;

    invoke-direct {p4, p2, p1, p0}, LJR0;-><init>(Landroid/content/Context;Landroid/view/View;LCR0;)V

    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->x:LJR0;

    .line 9
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->z:Landroid/content/Context;

    .line 10
    check-cast p2, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 11
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->D0()V

    throw p3

    .line 12
    :cond_2
    :goto_1
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->x:LJR0;

    .line 13
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->z:Landroid/content/Context;

    return-void
.end method

.method public static addToAutofillSuggestionArray([Lorg/chromium/components/autofill/AutofillSuggestion;ILjava/lang/String;Ljava/lang/String;IZIZZZ)V
    .locals 10

    if-nez p4, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p4}, LGZ;->a(I)I

    move-result v0

    move v4, v0

    .line 2
    :goto_0
    new-instance v0, Lorg/chromium/components/autofill/AutofillSuggestion;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/chromium/components/autofill/AutofillSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;IZIZZZ)V

    aput-object v0, p0, p1

    return-void
.end method

.method private confirmDeletion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ltc1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->z:Landroid/content/Context;

    const v2, 0x7f140245

    invoke-direct {v0, v1, v2}, Ltc1;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, v0, LO8;->a:LK8;

    iput-object p1, v1, LK8;->f:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, v1, LK8;->h:Ljava/lang/CharSequence;

    const p1, 0x7f1301d4

    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, p1, p2}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const p1, 0x7f130443

    .line 5
    invoke-virtual {v0, p1, p0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 6
    invoke-virtual {v0}, LO8;->a()LP8;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->y:LP8;

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static create(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;-><init>(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)V

    return-object v0
.end method

.method public static createAutofillSuggestionArray(I)[Lorg/chromium/components/autofill/AutofillSuggestion;
    .locals 0

    .line 1
    new-array p0, p0, [Lorg/chromium/components/autofill/AutofillSuggestion;

    return-object p0
.end method

.method private dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->x:LJR0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lgc1;->w:Lkc1;

    invoke-interface {v0}, Lkc1;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->y:LP8;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->A:Le11;

    invoke-interface {v0}, Le11;->a()V

    return-void
.end method

.method private show([Lorg/chromium/components/autofill/AutofillSuggestion;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->x:LJR0;

    if-eqz v0, :cond_6

    const-string v1, "AutofillRefreshStyleAndroid"

    .line 2
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, LJR0;->z:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_4

    .line 8
    aget-object v7, p1, v6

    .line 9
    iget v7, v7, Lorg/chromium/components/autofill/AutofillSuggestion;->e:I

    const/4 v8, -0x3

    if-ne v7, v8, :cond_0

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v8, -0xd

    if-eq v7, v8, :cond_2

    const/16 v8, -0x9

    if-eq v7, v8, :cond_2

    const/4 v8, -0x7

    if-eq v7, v8, :cond_2

    const/4 v8, -0x5

    if-eq v7, v8, :cond_2

    const/4 v8, -0x4

    if-eq v7, v8, :cond_2

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_3

    .line 11
    aget-object v7, p1, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 12
    :cond_3
    aget-object v7, p1, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, v0, Lgc1;->w:Lkc1;

    invoke-interface {p1}, Lkc1;->c()Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    new-instance p1, LGR0;

    iget-object v5, v0, LJR0;->x:Landroid/content/Context;

    invoke-direct {p1, v5, v3, v0}, LGR0;-><init>(Landroid/content/Context;Ljava/util/List;LFR0;)V

    .line 16
    iget-object v3, v0, Lgc1;->w:Lkc1;

    invoke-interface {v3, p1}, Lkc1;->a(Landroid/view/View;)V

    .line 17
    :cond_5
    new-instance p1, LDR0;

    iget-object v3, v0, LJR0;->x:Landroid/content/Context;

    invoke-direct {p1, v3, v2, v4, v1}, LDR0;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;Z)V

    .line 18
    iget-object v1, v0, Lgc1;->w:Lkc1;

    invoke-interface {v1, p1}, Lkc1;->a(Landroid/widget/ListAdapter;)V

    .line 19
    iget-object p1, v0, Lgc1;->w:Lkc1;

    invoke-interface {p1, p2}, Lkc1;->a(Z)V

    .line 20
    iget-object p1, v0, Lgc1;->w:Lkc1;

    invoke-interface {p1}, Lkc1;->a()V

    .line 21
    invoke-virtual {v0}, Lgc1;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 22
    invoke-virtual {v0}, Lgc1;->a()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, LIR0;

    invoke-direct {p2, v0}, LIR0;-><init>(LJR0;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 23
    iget-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->A:Le11;

    iget-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->x:LJR0;

    invoke-virtual {p2}, Lgc1;->a()Landroid/widget/ListView;

    move-result-object p2

    invoke-interface {p1, p2}, Le11;->a(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method private wasSuppressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->x:LJR0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->w:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MOHZpjVa(JLjava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->w:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->Mfhlibrm(JLjava/lang/Object;I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->A:Le11;

    invoke-interface {v0}, Le11;->d()V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->w:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MD76PU5t(JLjava/lang/Object;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->w:J

    .line 2
    invoke-static {p1, p2, p0}, LJ/N;->MlIbag6_(JLjava/lang/Object;)V

    return-void
.end method
