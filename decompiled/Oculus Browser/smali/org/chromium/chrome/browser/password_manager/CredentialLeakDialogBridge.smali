.class public Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public final b:LJt0;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->a:J

    .line 3
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->c:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance p3, LJt0;

    .line 6
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p2}, LBg0;->o()LBd1;

    move-result-object v2

    const p1, 0x1020002

    .line 7
    invoke-virtual {p2, p1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v4

    .line 8
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->u0()I

    move-result v5

    const/4 v6, 0x1

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, LJt0;-><init>(Landroid/content/Context;LBd1;Landroid/view/View;Lbd0;IZ)V

    iput-object p3, p0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->b:LJt0;

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;J)Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;-><init>(Lorg/chromium/ui/base/WindowAndroid;J)V

    return-object v0
.end method

.method private destroy()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->a:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->b:LJt0;

    .line 3
    iget-object v0, v0, LJt0;->a:LMt0;

    .line 4
    iget-object v1, v0, LMt0;->x:LBd1;

    iget-object v2, v0, LMt0;->z:Lle1;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, LBd1;->a(Lle1;I)V

    .line 5
    iget-object v1, v0, LMt0;->A:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->b:LJt0;

    new-instance v1, Lzt0;

    invoke-direct {v1, p0}, Lzt0;-><init>(Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;)V

    .line 2
    iget-object v0, v0, LJt0;->a:LMt0;

    .line 3
    iget-object v0, v0, LMt0;->w:Lle1;

    sget-object v2, LNt0;->a:Lke1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->b:LJt0;

    const v4, 0x7f080295

    new-instance v7, LAt0;

    invoke-direct {v7, p0}, LAt0;-><init>(Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;)V

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v9}, LJt0;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/chromium/base/Callback;ZI)V

    return-void
.end method
