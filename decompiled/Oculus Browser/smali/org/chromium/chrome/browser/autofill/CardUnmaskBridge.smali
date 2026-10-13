.class public Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lp10;


# instance fields
.field public final a:J

.field public final b:Lq10;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZJLorg/chromium/ui/base/WindowAndroid;)V
    .locals 15

    move-object v13, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v0, p1

    .line 2
    iput-wide v0, v13, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->a:J

    .line 3
    invoke-virtual/range {p13 .. p13}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, v13, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->b:Lq10;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lf10;

    invoke-direct {v1, p0}, Lf10;-><init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v14, Lq10;

    .line 7
    invoke-static/range {p6 .. p6}, LGZ;->a(I)I

    move-result v6

    move-object v0, v14

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lq10;-><init>(Landroid/content/Context;Lp10;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZJ)V

    iput-object v14, v13, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->b:Lq10;

    :goto_0
    return-void
.end method

.method public static create(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZJLorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;
    .locals 15

    .line 1
    new-instance v14, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;

    move-object v0, v14

    move-wide v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZJLorg/chromium/ui/base/WindowAndroid;)V

    return-object v14
.end method

.method private disableAndWaitForVerification()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->b:Lq10;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lq10;->a(Z)V

    .line 3
    invoke-virtual {v0, v1}, Lq10;->a(I)V

    .line 4
    iget-object v2, v0, Lq10;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object v1, v0, Lq10;->P:Landroid/widget/TextView;

    const v2, 0x7f130161

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v1, v0, Lq10;->P:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0}, Lq10;->a()V

    :cond_0
    return-void
.end method

.method private dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->b:Lq10;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    iget-object v2, v0, Lq10;->U:LBd1;

    iget-object v0, v0, Lq10;->x:Lle1;

    invoke-virtual {v2, v0, v1}, LBd1;->a(Lle1;I)V

    :cond_0
    return-void
.end method

.method private show(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->b:Lq10;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, v0, Lq10;->V:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    iput-object p1, v0, Lq10;->U:LBd1;

    .line 5
    iget-object v1, v0, Lq10;->x:Lle1;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v1, v2, v2}, LBd1;->a(Lle1;IZ)V

    .line 7
    invoke-virtual {v0}, Lq10;->c()V

    .line 8
    iget-object p1, v0, Lq10;->x:Lle1;

    sget-object v1, LEd1;->i:Lhe1;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lle1;->a(Lhe1;Z)V

    .line 9
    iget-object p1, v0, Lq10;->C:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object p1, v0, Lq10;->C:Landroid/widget/EditText;

    new-instance v1, Lk10;

    invoke-direct {v1, v0}, Lk10;-><init>(Lq10;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->b:Lq10;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Lq10;->x:Lle1;

    sget-object v2, LEd1;->c:Lke1;

    invoke-virtual {v1, v2, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 3
    iget-object p1, v0, Lq10;->A:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iput-boolean p3, v0, Lq10;->y:Z

    if-eqz p3, :cond_1

    .line 5
    iget p1, v0, Lq10;->R:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget p1, v0, Lq10;->S:I

    if-ne p1, p2, :cond_1

    .line 6
    :cond_0
    new-instance p1, Lo10;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lo10;-><init>(Lq10;Ln10;)V

    sget-object p2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 7
    :cond_1
    invoke-virtual {v0}, Lq10;->c()V

    :cond_2
    return-void
.end method

.method private verificationFinished(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->b:Lq10;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0, v1}, Lq10;->a(I)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, v0, Lq10;->H:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Lq10;->a(Z)V

    .line 8
    invoke-virtual {v0}, Lq10;->b()V

    .line 9
    iget-boolean p1, v0, Lq10;->y:Z

    if-nez p1, :cond_4

    iget-object p1, v0, Lq10;->G:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lq10;->a()V

    .line 11
    iget-object p2, v0, Lq10;->B:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, v0, Lq10;->B:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p2, v0, Lq10;->B:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ll10;

    invoke-direct {p1, v0}, Ll10;-><init>(Lq10;)V

    .line 15
    iget-wide v3, v0, Lq10;->Q:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    .line 16
    iget-object p2, v0, Lq10;->O:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 17
    iget-object p2, v0, Lq10;->z:Landroid/view/View;

    const v1, 0x7f0b04e6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p2, v0, Lq10;->P:Landroid/widget/TextView;

    const v1, 0x7f130162

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    iget-object p2, v0, Lq10;->P:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 20
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iget-wide v0, v0, Lq10;->Q:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 21
    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 22
    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mek0Fv7c(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->a:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 6
    invoke-static/range {v0 .. v7}, LJ/N;->McBOMUil(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->a:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->MRcUBmjo(JLjava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mu0etYO0(JLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mxa$aTDN(JLjava/lang/Object;)V

    return-void
.end method
