.class public Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public final b:LJt0;

.field public final c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->a:J

    .line 3
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    new-instance p3, LJt0;

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 5
    invoke-virtual {p2}, LBg0;->o()LBd1;

    move-result-object v2

    const p1, 0x1020002

    invoke-virtual {p2, p1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v4

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->u0()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, LJt0;-><init>(Landroid/content/Context;LBd1;Landroid/view/View;Lbd0;IZ)V

    iput-object p3, p0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->b:LJt0;

    .line 7
    invoke-virtual {p2}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->c:Landroid/content/res/Resources;

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;J)Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;-><init>(Lorg/chromium/ui/base/WindowAndroid;J)V

    return-object v0
.end method

.method private destroy()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->a:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->b:LJt0;

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
.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->b:LJt0;

    const-string v1, "PasswordManagerOnboardingAndroid"

    const-string v2, "story"

    .line 2
    invoke-static {v1, v2}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x54d84a9c

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, -0x363be12e

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "safety"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "access"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    const v1, 0x7f08029b

    const v3, 0x7f08029b

    goto :goto_1

    :cond_3
    const v1, 0x7f080299

    const v3, 0x7f080299

    goto :goto_1

    :cond_4
    const v1, 0x7f080297

    const v3, 0x7f080297

    .line 4
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->c:Landroid/content/res/Resources;

    const v2, 0x7f130260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->c:Landroid/content/res/Resources;

    const v2, 0x7f130419

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, LBt0;

    invoke-direct {v6, p0}, LBt0;-><init>(Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-virtual/range {v0 .. v8}, LJt0;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/chromium/base/Callback;ZI)V

    return-void
.end method
