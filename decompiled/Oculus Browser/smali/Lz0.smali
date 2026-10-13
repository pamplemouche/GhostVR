.class public LLz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LYM0;


# instance fields
.field public a:Landroid/view/accessibility/AccessibilityManager;

.field public b:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field public c:Z

.field public final synthetic d:LOz0;


# direct methods
.method public constructor <init>(LOz0;)V
    .locals 1

    .line 1
    iput-object p1, p0, LLz0;->d:LOz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, LXM0;->y:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, LLz0;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, LLz0;->c:Z

    .line 5
    new-instance p1, LKz0;

    invoke-direct {p1, p0}, LKz0;-><init>(LLz0;)V

    iput-object p1, p0, LLz0;->b:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 6
    iget-object v0, p0, LLz0;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method
