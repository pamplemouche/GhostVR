.class public final Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZ00;


# instance fields
.field public final a:J

.field public final b:Landroid/app/Activity;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public g:La10;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->a:J

    .line 3
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->d:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->e:Ljava/lang/String;

    .line 6
    iput p6, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->f:I

    .line 7
    invoke-virtual {p7}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->b:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->g:La10;

    .line 9
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, LU00;

    invoke-direct {p2, p0}, LU00;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;)V

    const-wide/16 p3, 0x0

    .line 10
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static create(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;
    .locals 9

    .line 1
    new-instance v8, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;

    move-object v0, v8

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/chromium/ui/base/WindowAndroid;)V

    return-object v8
.end method

.method private dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->g:La10;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    iget-object v2, v0, La10;->C:LBd1;

    iget-object v0, v0, La10;->x:Lle1;

    invoke-virtual {v2, v0, v1}, LBd1;->a(Lle1;I)V

    :cond_0
    return-void
.end method

.method private show(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 8

    .line 1
    new-instance v7, La10;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->b:Landroid/app/Activity;

    iget-object v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->c:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->d:Ljava/lang/String;

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->e:Ljava/lang/String;

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->f:I

    .line 2
    invoke-static {v0}, LGZ;->a(I)I

    move-result v6

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, La10;-><init>(Landroid/content/Context;LZ00;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v7, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->g:La10;

    if-eqz v7, :cond_2

    .line 3
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v7, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, v7, La10;->D:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    iput-object p1, v7, La10;->C:LBd1;

    .line 6
    iget-object v0, v7, La10;->x:Lle1;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1, v1}, LBd1;->a(Lle1;IZ)V

    .line 8
    iget-object p1, v7, La10;->z:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    throw p1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MriHT7LJ(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillNameFixFlowBridge;->a:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->MW86M3Ok(JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
