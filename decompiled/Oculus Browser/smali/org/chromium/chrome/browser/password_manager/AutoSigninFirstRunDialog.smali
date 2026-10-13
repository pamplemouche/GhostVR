.class public Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final A:I

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public D:J

.field public E:LP8;

.field public F:Z

.field public final w:Landroid/content/Context;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->D:J

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->w:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->x:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->y:Ljava/lang/String;

    .line 6
    iput p6, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->z:I

    .line 7
    iput p7, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->A:I

    .line 8
    iput-object p8, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->B:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->C:Ljava/lang/String;

    return-void
.end method

.method public static createAndShowDialog(Lorg/chromium/ui/base/WindowAndroid;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;
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
    new-instance v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;

    move-object v1, v11

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, LO8;

    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->w:Landroid/content/Context;

    const v3, 0x7f140245

    invoke-direct {v1, v2, v3}, LO8;-><init>(Landroid/content/Context;I)V

    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->x:Ljava/lang/String;

    .line 4
    iget-object v3, v1, LO8;->a:LK8;

    iput-object v2, v3, LK8;->f:Ljava/lang/CharSequence;

    .line 5
    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->B:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2, v11}, LO8;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;

    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->C:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2, v11}, LO8;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;

    .line 8
    iget-object v2, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->w:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e002b

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b0449

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 10
    iget v3, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->z:I

    iget v4, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->A:I

    if-eq v3, v4, :cond_1

    if-eqz v4, :cond_1

    .line 11
    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->y:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v4, Lyt0;

    invoke-direct {v4, v11}, Lyt0;-><init>(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;)V

    iget v5, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->z:I

    iget v6, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->A:I

    const/16 v7, 0x12

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 13
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v3, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 17
    :goto_0
    iget-object v2, v1, LO8;->a:LK8;

    iput-object v0, v2, LK8;->u:Landroid/view/View;

    const/4 v0, 0x0

    .line 18
    iput v0, v2, LK8;->t:I

    .line 19
    iput-boolean v0, v2, LK8;->v:Z

    .line 20
    invoke-virtual {v1}, LO8;->a()LP8;

    move-result-object v1

    iput-object v1, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->E:LP8;

    .line 21
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 22
    iget-object v0, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->E:LP8;

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 23
    iget-object v0, v11, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->E:LP8;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v11
.end method

.method private dismissDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->F:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->E:LP8;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->D:J

    .line 2
    invoke-static {p1, p2, p0}, LJ/N;->MNvg9$ZU(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 3
    iget-wide p1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->D:J

    .line 4
    invoke-static {p1, p2, p0}, LJ/N;->MV90asHX(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->D:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MTjiTA74(JLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->D:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->E:LP8;

    return-void
.end method
