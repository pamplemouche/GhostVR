.class public LjY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LbY0;


# static fields
.field public static final d:[I


# instance fields
.field public final a:Landroid/app/AlertDialog;

.field public final b:Lorg/chromium/content/browser/input/SelectPopup;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, LjY0;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0401e4
        0x7f0401e5
    .end array-data
.end method

.method public constructor <init>(Lorg/chromium/content/browser/input/SelectPopup;Landroid/content/Context;Ljava/util/List;Z[I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LjY0;->b:Lorg/chromium/content/browser/input/SelectPopup;

    .line 3
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 5
    invoke-static {}, Lnf1;->a()Lnf1;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    .line 7
    iput-object p2, p0, LjY0;->a:Landroid/app/AlertDialog;

    .line 8
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 9
    iget-object p2, p0, LjY0;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 10
    iget-object p2, p0, LjY0;->a:Landroid/app/AlertDialog;

    .line 11
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    if-eqz p4, :cond_0

    .line 12
    iget-object p2, p0, LjY0;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    .line 13
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LfY0;

    invoke-direct {v4, p0, p1}, LfY0;-><init>(LjY0;Landroid/widget/ListView;)V

    .line 14
    invoke-virtual {p2, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 15
    iget-object p2, p0, LjY0;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    .line 16
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LgY0;

    invoke-direct {v4, p0}, LgY0;-><init>(LjY0;)V

    .line 17
    invoke-virtual {p2, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 18
    :cond_0
    new-instance p2, LeY0;

    iget-object v2, p0, LjY0;->a:Landroid/app/AlertDialog;

    .line 19
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 20
    iget-object v3, p0, LjY0;->a:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, LjY0;->d:[I

    const v5, 0x7f14016e

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    xor-int/lit8 v4, p4, 0x1

    .line 21
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 22
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    invoke-direct {p2, v2, v4, p3}, LeY0;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    if-eqz p4, :cond_1

    const/4 p2, 0x2

    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 27
    :goto_0
    array-length p2, p5

    if-ge v0, p2, :cond_2

    .line 28
    aget p2, p5, v0

    invoke-virtual {p1, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 30
    new-instance p2, LhY0;

    invoke-direct {p2, p0, p1}, LhY0;-><init>(LjY0;Landroid/widget/ListView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    array-length p2, p5

    if-lez p2, :cond_2

    .line 32
    aget p2, p5, v0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 33
    aget p2, p5, v0

    invoke-virtual {p1, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 34
    :cond_2
    iget-object p1, p0, LjY0;->a:Landroid/app/AlertDialog;

    new-instance p2, LiY0;

    invoke-direct {p2, p0}, LiY0;-><init>(LjY0;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 35
    throw p1
.end method

.method public static synthetic a(Landroid/widget/ListView;)[I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-array v1, v2, [I

    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, LjY0;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, LjY0;->a([I)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, LjY0;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, LjY0;->a([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, LjY0;->c:Z

    .line 16
    iget-object p1, p0, LjY0;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    :goto_0
    return-void
.end method

.method public final a([I)V
    .locals 1

    .line 8
    iget-boolean v0, p0, LjY0;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, LjY0;->b:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/SelectPopup;->a([I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, LjY0;->c:Z

    return-void
.end method
