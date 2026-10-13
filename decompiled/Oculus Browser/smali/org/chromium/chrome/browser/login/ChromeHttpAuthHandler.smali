.class public Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;
.super LSG0;
.source "PG"


# instance fields
.field public A:LIi0;

.field public B:Lorg/chromium/chrome/browser/tab/Tab;

.field public w:J

.field public x:LDi0;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->w:J

    return-void
.end method

.method private closeDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->A:LIi0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LIi0;->c:LP8;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->A:LIi0;

    :cond_0
    return-void
.end method

.method public static create(J)Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;-><init>(J)V

    return-object v0
.end method

.method private onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->y:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->z:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->x:LDi0;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, LIi0;

    .line 5
    iget-object v1, v0, LIi0;->d:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, v0, LIi0;->e:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, v0, LIi0;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    return-void
.end method

.method private onNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->w:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->B:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->B:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method

.method private showDialog(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-nez p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    .line 3
    iget-wide p1, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->w:J

    .line 4
    invoke-static {p1, p2, p0}, LJ/N;->MbTC7yfl(JLjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, LIi0;

    invoke-direct {p2, p1, p0}, LIi0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->A:LIi0;

    .line 6
    iput-object p2, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->x:LDi0;

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->y:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->z:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p2, LIi0;->d:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p2, LIi0;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p2, LIi0;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 11
    :cond_2
    iget-object p1, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->A:LIi0;

    .line 12
    iget-object p2, p1, LIi0;->c:LP8;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 13
    iget-object p1, p1, LIi0;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    .line 14
    :cond_3
    :goto_1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->w:J

    .line 15
    invoke-static {p1, p2, p0}, LJ/N;->MbTC7yfl(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->w:J

    .line 2
    invoke-static {p1, p2, p0}, LJ/N;->MbTC7yfl(JLjava/lang/Object;)V

    return-void
.end method
