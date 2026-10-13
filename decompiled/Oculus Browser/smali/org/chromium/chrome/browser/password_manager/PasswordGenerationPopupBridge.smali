.class public Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final w:J

.field public final x:Landroid/content/Context;

.field public final y:Lgc1;

.field public final z:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->w:J

    .line 3
    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->x:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->z:Landroid/view/View;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LHt0;

    invoke-direct {p2, p0}, LHt0;-><init>(Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p3, Lgc1;

    invoke-direct {p3, p2, p1}, Lgc1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p3, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    .line 8
    iget-object p1, p3, Lgc1;->w:Lkc1;

    invoke-interface {p1, p0}, Lkc1;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    .line 10
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1}, Lkc1;->e()V

    .line 11
    iget-object p1, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    iget-object p2, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->x:Landroid/content/Context;

    const p3, 0x7f13048e

    .line 12
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1, p2}, Lkc1;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static create(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;-><init>(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)V

    return-object v0
.end method

.method private hide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lgc1;->w:Lkc1;

    invoke-interface {v0}, Lkc1;->dismiss()V

    :cond_0
    return-void
.end method

.method private show(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    new-instance v0, LGt0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->x:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, LGt0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    .line 5
    iget-object p2, p2, Lgc1;->w:Lkc1;

    invoke-interface {p2, v0}, Lkc1;->a(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object p2, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    .line 7
    iget-object p2, p2, Lgc1;->w:Lkc1;

    invoke-interface {p2, p1}, Lkc1;->a(Z)V

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->y:Lgc1;

    .line 9
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1}, Lkc1;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationPopupBridge;->w:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->M6qXk$DQ(JLjava/lang/Object;)V

    return-void
.end method
