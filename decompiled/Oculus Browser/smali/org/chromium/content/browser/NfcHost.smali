.class public Lorg/chromium/content/browser/NfcHost;
.super Lg11;
.source "PG"

# interfaces
.implements LcX0;


# static fields
.field public static final z:Landroid/util/SparseArray;


# instance fields
.field public final w:Lorg/chromium/content_public/browser/WebContents;

.field public final x:I

.field public y:Lorg/chromium/base/Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/NfcHost;->z:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/content/browser/NfcHost;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    iput p2, p0, Lorg/chromium/content/browser/NfcHost;->x:I

    .line 4
    sget-object p1, Lorg/chromium/content/browser/NfcHost;->z:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static create(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/browser/NfcHost;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/NfcHost;-><init>(Lorg/chromium/content_public/browser/WebContents;I)V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/NfcHost;->y:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCurrentModeChanged(Landroid/view/Display$Mode;)V
    .locals 0

    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onDisplayModesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onRefreshRateChanged(F)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
