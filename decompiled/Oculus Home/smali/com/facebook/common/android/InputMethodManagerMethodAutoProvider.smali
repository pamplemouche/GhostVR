.class public Lcom/facebook/common/android/InputMethodManagerMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "InputMethodManagerMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Landroid/view/inputmethod/InputMethodManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 16
    const-string v1, "getMethod_android.view.inputmethod.InputMethodManager"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/facebook/common/android/AndroidModule;->provideInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 22
    .local v0, "instance":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Landroid/view/inputmethod/InputMethodManager;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/facebook/common/android/InputMethodManagerMethodAutoProvider;->get()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method
