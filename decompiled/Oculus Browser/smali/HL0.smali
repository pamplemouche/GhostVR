.class public final synthetic LHL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LPL0;


# direct methods
.method public constructor <init>(LPL0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHL0;->a:LPL0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LHL0;->a:LPL0;

    check-cast p1, Landroid/util/Pair;

    .line 1
    iget v1, v0, LPL0;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v2, "accessibility"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 5
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 7
    sget v1, LQL0;->b:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sput p1, LQL0;->b:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Trace buffer usage: %s%%"

    .line 10
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v1, LQL0;->a:LPl0;

    invoke-interface {v1, p1}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    .line 12
    sget-object p1, LQL0;->a:LPl0;

    invoke-interface {p1}, LPl0;->a()Landroid/app/Notification;

    move-result-object p1

    invoke-static {p1}, LQL0;->a(Landroid/app/Notification;)V

    .line 13
    :goto_0
    sget-object p1, LZ01;->a:LFW;

    new-instance v1, LKL0;

    invoke-direct {v1, v0}, LKL0;-><init>(LPL0;)V

    const-wide/16 v2, 0x3e8

    invoke-static {p1, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method
