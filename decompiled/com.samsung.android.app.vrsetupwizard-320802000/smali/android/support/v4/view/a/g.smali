.class Landroid/support/v4/view/a/g;
.super Landroid/support/v4/view/a/f;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/a/f;-><init>(Landroid/support/v4/view/a/e;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/g;->a:Landroid/support/v4/view/a/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/e;->b(I)Landroid/support/v4/view/a/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/a/b;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
