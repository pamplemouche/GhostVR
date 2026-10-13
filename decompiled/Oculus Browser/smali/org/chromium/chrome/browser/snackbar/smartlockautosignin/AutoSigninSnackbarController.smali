.class public Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXF0;


# instance fields
.field public final a:LZF0;

.field public final b:LpH0;

.field public final c:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(LZF0;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->c:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->a:LZF0;

    .line 4
    new-instance p1, LeG0;

    invoke-direct {p1, p0}, LeG0;-><init>(Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->b:LpH0;

    .line 5
    iget-object p2, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->c:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p2, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static showSnackbar(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->C()LZF0;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;

    invoke-direct {v1, v0, p0}, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;-><init>(LZF0;Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 4
    invoke-static {p1, v1, v2, v3}, LUF0;->a(Ljava/lang/CharSequence;LXF0;II)LUF0;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 6
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ee

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f080258

    .line 9
    invoke-static {p0, v2}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p1, LUF0;->h:Z

    .line 11
    iput v1, p1, LUF0;->f:I

    .line 12
    iput-object p0, p1, LUF0;->j:Landroid/graphics/drawable/Drawable;

    const p0, 0x7f14021b

    .line 13
    iput p0, p1, LUF0;->g:I

    .line 14
    invoke-virtual {v0, p1}, LZF0;->a(LUF0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->a:LZF0;

    .line 2
    iget-object v0, v0, LZF0;->x:LdG0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, LdG0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->a:LZF0;

    invoke-virtual {v0, p0}, LZF0;->a(LXF0;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->c:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->b:LpH0;

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
