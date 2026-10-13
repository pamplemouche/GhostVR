.class public final Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LS00;


# instance fields
.field public a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:LT00;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->a:J

    .line 3
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->c:Ljava/lang/String;

    .line 5
    iput p5, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->d:I

    .line 6
    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->e:Ljava/lang/String;

    return-void
.end method

.method public static create(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;
    .locals 8

    .line 1
    new-instance v7, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v7
.end method

.method private dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->f:LT00;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    iget-object v2, v0, LT00;->D:LBd1;

    iget-object v0, v0, LT00;->x:Lle1;

    invoke-virtual {v2, v0, v1}, LBd1;->a(Lle1;I)V

    :cond_0
    return-void
.end method

.method private show(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, LZ01;->a:LFW;

    new-instance v0, LP00;

    invoke-direct {v0, p0}, LP00;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;)V

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    .line 4
    :cond_0
    new-instance v7, LT00;

    iget-object v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->b:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->c:Ljava/lang/String;

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->d:I

    .line 5
    invoke-static {v0}, LGZ;->a(I)I

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->e:Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, LT00;-><init>(Landroid/content/Context;LS00;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v7, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->f:LT00;

    .line 6
    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v7, :cond_1

    .line 7
    iput-object p1, v7, LT00;->E:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    iput-object p1, v7, LT00;->D:LBd1;

    .line 9
    iget-object v0, v7, LT00;->x:Lle1;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1, v1}, LBd1;->a(Lle1;IZ)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MYC4Z0Ea(JLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillExpirationDateFixFlowBridge;->a:J

    .line 5
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MX7djb2r(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
