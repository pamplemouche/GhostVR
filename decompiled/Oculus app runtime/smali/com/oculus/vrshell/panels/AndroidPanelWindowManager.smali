.class Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;
.super Ljava/lang/Object;
.source "AndroidPanelWindowManager.java"

# interfaces
.implements Landroid/view/WindowManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mParentWindowManager:Landroid/view/WindowManager;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mParentWindowManager:Landroid/view/WindowManager;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mViews:Ljava/util/ArrayList;

    return-void
.end method

.method private offsetMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 78
    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-object p2

    .line 82
    :cond_0
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 83
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 85
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v0, v0

    int-to-float v0, v0

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-object p2
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mParentWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->TAG:Ljava/lang/String;

    const-string p2, "View added."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 57
    invoke-direct {p0, v1, p1}, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->offsetMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 67
    invoke-direct {p0, v1, p1}, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->offsetMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mParentWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mParentWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "View removed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mParentWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "View removed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->mParentWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
