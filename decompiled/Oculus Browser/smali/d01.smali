.class public final synthetic Ld01;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lh01;


# instance fields
.field public final a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Ld01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 1
    sget-boolean v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->b0:Z

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getReadbackView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    :goto_0
    return-object v0
.end method
