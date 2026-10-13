.class public Lcom/oculus/vrapilayers/Benchmark;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Landroid/view/Window$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BenchmarkJava"

.field private static final VERBOSE:Z = false

.field private static endCapture:Z = false

.field private static mActivity:Landroid/app/Activity; = null

.field private static mBenchmark:Lcom/oculus/vrapilayers/Benchmark; = null

.field private static mLastDownTime:J = 0x0L

.field private static mPreviousCallback:Landroid/view/Window$Callback; = null

.field private static mWindow:Landroid/view/Window; = null

.field private static started:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sput-object p1, Lcom/oculus/vrapilayers/Benchmark;->mActivity:Landroid/app/Activity;

    .line 107
    sget-object p1, Lcom/oculus/vrapilayers/Benchmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sput-object p1, Lcom/oculus/vrapilayers/Benchmark;->mWindow:Landroid/view/Window;

    .line 108
    sget-object p1, Lcom/oculus/vrapilayers/Benchmark;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    sput-object p1, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    .line 109
    sget-object p1, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-nez p1, :cond_0

    const-string p1, "BenchmarkJava"

    const-string v0, "Window has no previous callback set. Falling back to directly accessing Activity"

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static StartLayer(JJ)V
    .locals 2

    const-string v0, "BenchmarkJava"

    const-string v1, "Benchmark StartLayer: Loading benchmark.so"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "benchmark"

    .line 89
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 90
    const-class v0, Lcom/oculus/vrapilayers/Benchmark;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/vrapilayers/Benchmark;->nativeStartLayer(JJLjava/lang/ClassLoader;)V

    return-void
.end method

.method private capture(Landroid/view/KeyEvent;)V
    .locals 1

    .line 131
    sget-boolean v0, Lcom/oculus/vrapilayers/Benchmark;->endCapture:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/oculus/vrapilayers/Benchmark;->stop()V

    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oculus/vrapilayers/Benchmark;->nativeCaptureKeyCode(II)V

    return-void
.end method

.method private capture(Landroid/view/MotionEvent;)V
    .locals 9

    .line 140
    sget-boolean v0, Lcom/oculus/vrapilayers/Benchmark;->endCapture:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/oculus/vrapilayers/Benchmark;->stop()V

    return-void

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    const/16 v0, 0xb

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    const/16 v0, 0xf

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    .line 145
    invoke-static/range {v1 .. v8}, Lcom/oculus/vrapilayers/Benchmark;->nativeCaptureMotion(IFFIFFFF)V

    return-void
.end method

.method public static disableEventHooks()V
    .locals 3

    const-string v0, "BenchmarkJava"

    const-string v1, "Disabling Java Event Hooks"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    sget-object v1, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    sget-object v1, Lcom/oculus/vrapilayers/Benchmark;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 225
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mWindow:Landroid/view/Window;

    sget-object v1, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    sget-object v1, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0

    :cond_0
    const-string v0, "BenchmarkJava"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableEventHooks: Window callback was not set! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    sget-object v2, Lcom/oculus/vrapilayers/Benchmark;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 229
    sput-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    :cond_1
    return-void
.end method

.method public static enableEventHooks(Landroid/app/Activity;Z)V
    .locals 3

    const-string v0, "BenchmarkJava"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling Java Event Hooks. Capture is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lcom/oculus/vrapilayers/Benchmark;

    invoke-direct {v0, p0}, Lcom/oculus/vrapilayers/Benchmark;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    .line 210
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oculus/vrapilayers/Benchmark;->start(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 212
    sget-object p0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    sget-object p0, Lcom/oculus/vrapilayers/Benchmark;->mWindow:Landroid/view/Window;

    sget-object p1, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_0
    return-void
.end method

.method public static endCapture()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    sput-boolean v0, Lcom/oculus/vrapilayers/Benchmark;->endCapture:Z

    .line 155
    invoke-static {}, Lcom/oculus/vrapilayers/Benchmark;->stop()V

    .line 156
    invoke-static {}, Lcom/oculus/vrapilayers/Benchmark;->disableEventHooks()V

    return-void
.end method

.method private static getExternalFilesPath(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static injectKeyEvent(II)V
    .locals 1

    .line 166
    new-instance v0, Lcom/oculus/vrapilayers/Benchmark$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/vrapilayers/Benchmark$1;-><init>(II)V

    .line 177
    invoke-virtual {v0}, Lcom/oculus/vrapilayers/Benchmark$1;->start()V

    return-void
.end method

.method public static injectMotionEvent(IFFI)V
    .locals 10

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    if-nez p0, :cond_0

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/vrapilayers/Benchmark;->mLastDownTime:J

    .line 193
    sget-wide v0, Lcom/oculus/vrapilayers/Benchmark;->mLastDownTime:J

    :cond_0
    move-wide v4, v0

    .line 196
    sget-wide v2, Lcom/oculus/vrapilayers/Benchmark;->mLastDownTime:J

    const/4 v9, 0x0

    move v6, p0

    move v7, p1

    move v8, p2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    const/16 p1, 0x1002

    .line 198
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 199
    sget-object p1, Lcom/oculus/vrapilayers/Benchmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public static isNativeActivity(Landroid/app/Activity;)Z
    .locals 1

    .line 102
    const-class v0, Landroid/app/NativeActivity;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static native nativeCaptureKeyCode(II)V
.end method

.method private static native nativeCaptureMotion(IFFIFFFF)V
.end method

.method private static native nativeStartLayer(JJLjava/lang/ClassLoader;)V
.end method

.method private start(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 116
    sput-boolean p1, Lcom/oculus/vrapilayers/Benchmark;->started:Z

    return-void
.end method

.method private static stop()V
    .locals 2

    .line 120
    sget-boolean v0, Lcom/oculus/vrapilayers/Benchmark;->started:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BenchmarkJava"

    const-string v1, "********************************"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BenchmarkJava"

    const-string v1, "****  Stop capturing events ****"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BenchmarkJava"

    const-string v1, "********************************"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 126
    sput-boolean v0, Lcom/oculus/vrapilayers/Benchmark;->started:Z

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 352
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    invoke-direct {v0, p1}, Lcom/oculus/vrapilayers/Benchmark;->capture(Landroid/view/MotionEvent;)V

    .line 353
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 357
    :cond_0
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 252
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 253
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 254
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 255
    invoke-direct {p0, p1}, Lcom/oculus/vrapilayers/Benchmark;->capture(Landroid/view/KeyEvent;)V

    .line 259
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 263
    :cond_0
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 280
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    invoke-direct {v0, p1}, Lcom/oculus/vrapilayers/Benchmark;->capture(Landroid/view/KeyEvent;)V

    .line 281
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 285
    :cond_0
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 372
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 304
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    invoke-direct {v0, p1}, Lcom/oculus/vrapilayers/Benchmark;->capture(Landroid/view/MotionEvent;)V

    .line 305
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 309
    :cond_0
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 327
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mBenchmark:Lcom/oculus/vrapilayers/Benchmark;

    invoke-direct {v0, p1}, Lcom/oculus/vrapilayers/Benchmark;->capture(Landroid/view/MotionEvent;)V

    .line 328
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 332
    :cond_0
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 715
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 716
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 698
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 562
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 563
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 528
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 423
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 395
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 578
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 493
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 494
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 471
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 472
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 598
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 449
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 616
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 617
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 635
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 636
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 509
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 546
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 658
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 659
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 680
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 681
    sget-object v0, Lcom/oculus/vrapilayers/Benchmark;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
