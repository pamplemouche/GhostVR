.class public Le01;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le01;->w:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le01;->w:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le01;->w:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 3
    iget-object v3, v2, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    .line 4
    iget-object v2, v2, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->E:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    .line 5
    invoke-virtual {v3, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object v2, p0, Le01;->w:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    if-eqz v2, :cond_1

    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 8
    invoke-virtual {v2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    invoke-static {v2, v0, v1}, LzU;->a(Landroid/view/ActionMode;J)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0
.end method
