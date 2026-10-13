.class public Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final A:I

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public D:Landroid/widget/ArrayAdapter;

.field public E:Z

.field public F:Z

.field public G:Lorg/chromium/chrome/browser/password_manager/Credential;

.field public H:J

.field public I:LP8;

.field public J:Z

.field public final w:Landroid/content/Context;

.field public final x:[Lorg/chromium/chrome/browser/password_manager/Credential;

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J[Lorg/chromium/chrome/browser/password_manager/Credential;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->H:J

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->w:Landroid/content/Context;

    .line 4
    invoke-virtual {p4}, [Lorg/chromium/chrome/browser/password_manager/Credential;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/chromium/chrome/browser/password_manager/Credential;

    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->x:[Lorg/chromium/chrome/browser/password_manager/Credential;

    .line 5
    iput-object p5, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->y:Ljava/lang/String;

    .line 6
    iput p6, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->z:I

    .line 7
    iput p7, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->A:I

    .line 8
    iput-object p8, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->B:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->C:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->J:Z

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;Landroid/view/View;Ljava/lang/String;I)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 8
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 9
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 10
    invoke-virtual {p3, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 13
    aget v3, p2, v2

    goto :goto_0

    .line 14
    :cond_0
    aget v4, p2, v2

    add-int/2addr v4, v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v4, v3

    :goto_0
    const-string v4, "android"

    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    .line 15
    invoke-static {v1, v6, v7, v4}, LbY;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 16
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const v6, 0x7f070279

    .line 17
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 18
    aget p2, p2, v5

    sub-int/2addr p2, v1

    sub-int/2addr p2, v4

    .line 19
    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v5, :cond_2

    const p1, 0x800005

    goto :goto_2

    :cond_2
    const p1, 0x800003

    .line 21
    :goto_2
    new-instance v1, Lmf1;

    .line 22
    invoke-static {}, Lnf1;->a()Lnf1;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 23
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {v1, p0, v0}, Lmf1;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    or-int/lit8 p0, p1, 0x30

    .line 25
    iget-object p1, v1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1, p0, v3, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 26
    iget-object p0, v1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 27
    invoke-virtual {v1, p3}, Lmf1;->a(Landroid/view/View;)V

    .line 28
    iget-object p0, v1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 29
    :cond_3
    throw v0

    .line 30
    :cond_4
    throw v0
.end method

.method public static createAndShowAccountChooser(Lorg/chromium/ui/base/WindowAndroid;J[Lorg/chromium/chrome/browser/password_manager/Credential;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    move-object v1, v11

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;-><init>(Landroid/content/Context;J[Lorg/chromium/chrome/browser/password_manager/Credential;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->w:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0021

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b02fe

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0494

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    iget v2, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->z:I

    if-eqz v2, :cond_1

    iget v2, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->A:I

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->y:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v3, Lwt0;

    invoke-direct {v3, v11}, Lwt0;-><init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)V

    iget v4, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->z:I

    iget v5, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->A:I

    const/16 v6, 0x12

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 12
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_0
    iget-object v1, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->w:Landroid/content/Context;

    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->x:[Lorg/chromium/chrome/browser/password_manager/Credential;

    .line 15
    new-instance v3, Lvt0;

    const/4 v4, 0x0

    invoke-direct {v3, v11, v1, v4, v2}, Lvt0;-><init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;Landroid/content/Context;I[Lorg/chromium/chrome/browser/password_manager/Credential;)V

    .line 16
    iput-object v3, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->D:Landroid/widget/ArrayAdapter;

    .line 17
    new-instance v1, LO8;

    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->w:Landroid/content/Context;

    const v3, 0x7f140245

    invoke-direct {v1, v2, v3}, LO8;-><init>(Landroid/content/Context;I)V

    .line 18
    iget-object v2, v1, LO8;->a:LK8;

    iput-object v0, v2, LK8;->g:Landroid/view/View;

    const v0, 0x7f1301d4

    .line 19
    invoke-virtual {v1, v0, v11}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    iget-object v0, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->D:Landroid/widget/ArrayAdapter;

    new-instance v2, Lxt0;

    invoke-direct {v2, v11}, Lxt0;-><init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)V

    .line 20
    invoke-virtual {v1, v0, v2}, LO8;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)LO8;

    .line 21
    iget-object v0, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 22
    iget-object v0, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->C:Ljava/lang/String;

    invoke-virtual {v1, v0, v11}, LO8;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;

    .line 23
    :cond_2
    invoke-virtual {v1}, LO8;->a()LP8;

    move-result-object v0

    iput-object v0, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->I:LP8;

    .line 24
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 25
    iget-object v0, v11, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->I:LP8;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v11
.end method

.method private dismissDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->F:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->I:LP8;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private imageFetchComplete(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->E:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->w:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 4
    invoke-static {v0, p2, v1}, LKE0;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->x:[Lorg/chromium/chrome/browser/password_manager/Credential;

    aget-object v0, v0, p1

    .line 6
    iput-object p2, v0, Lorg/chromium/chrome/browser/password_manager/Credential;->f:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->I:LP8;

    .line 8
    iget-object v0, v0, LP8;->y:LN8;

    .line 9
    iget-object v0, v0, LN8;->g:Landroid/widget/ListView;

    .line 10
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const v0, 0x7f0b0364

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->x:[Lorg/chromium/chrome/browser/password_manager/Credential;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->G:Lorg/chromium/chrome/browser/password_manager/Credential;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->J:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->F:Z

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->G:Lorg/chromium/chrome/browser/password_manager/Credential;

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->H:J

    iget-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->G:Lorg/chromium/chrome/browser/password_manager/Credential;

    .line 4
    iget p1, p1, Lorg/chromium/chrome/browser/password_manager/Credential;->e:I

    .line 5
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->J:Z

    .line 6
    invoke-static {v0, v1, p0, p1, v2}, LJ/N;->MJZem$De(JLjava/lang/Object;IZ)V

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->H:J

    .line 8
    invoke-static {v0, v1, p0}, LJ/N;->M$NQU8jD(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->E:Z

    .line 10
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->H:J

    .line 11
    invoke-static {v0, v1, p0}, LJ/N;->M495Qln5(JLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->H:J

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->I:LP8;

    return-void
.end method
