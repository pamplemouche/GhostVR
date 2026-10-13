.class public LZc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic a:Lad1;


# direct methods
.method public constructor <init>(Lad1;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZc1;->a:Lad1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, LZc1;->a:Lad1;

    iget-object p1, p1, Lad1;->b:Lorg/chromium/ui/base/WindowAndroid;

    .line 2
    iget-object v0, p1, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 4
    iput-boolean v0, p1, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    .line 5
    iget-object p1, p0, LZc1;->a:Lad1;

    iget-object p1, p1, Lad1;->b:Lorg/chromium/ui/base/WindowAndroid;

    .line 6
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->c()V

    return-void
.end method
