.class public Lorg/chromium/content/browser/ContentNfcDelegate;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/device/nfc/NfcDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/chromium/content/browser/ContentNfcDelegate;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/browser/ContentNfcDelegate;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentNfcDelegate;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/content/browser/NfcHost;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/NfcHost;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lorg/chromium/content/browser/NfcHost;->y:Lorg/chromium/base/Callback;

    .line 3
    iget-object v0, p1, Lorg/chromium/content/browser/NfcHost;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object v0

    .line 4
    iget-object v0, v0, LgX0;->w:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lorg/chromium/content/browser/NfcHost;->z:Landroid/util/SparseArray;

    iget p1, p1, Lorg/chromium/content/browser/NfcHost;->x:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public a(ILorg/chromium/base/Callback;)V
    .locals 1

    .line 6
    sget-object v0, Lorg/chromium/content/browser/NfcHost;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/NfcHost;

    .line 7
    iput-object p2, p1, Lorg/chromium/content/browser/NfcHost;->y:Lorg/chromium/base/Callback;

    .line 8
    iget-object p2, p1, Lorg/chromium/content/browser/NfcHost;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p2}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object p2

    .line 9
    iget-object v0, p2, LgX0;->w:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 10
    iget-boolean p2, p2, LgX0;->z:Z

    if-eqz p2, :cond_0

    invoke-interface {p1}, LcX0;->onAttachedToWindow()V

    .line 11
    :cond_0
    iget-object p2, p1, Lorg/chromium/content/browser/NfcHost;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p2

    .line 12
    iget-object p1, p1, Lorg/chromium/content/browser/NfcHost;->y:Lorg/chromium/base/Callback;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
