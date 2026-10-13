.class public final synthetic LKz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field public final w:LLz0;


# direct methods
.method public constructor <init>(LLz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKz0;->w:LLz0;

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1

    iget-object v0, p0, LKz0;->w:LLz0;

    .line 1
    iput-boolean p1, v0, LLz0;->c:Z

    .line 2
    iget-object p1, v0, LLz0;->d:LOz0;

    .line 3
    iget-object p1, p1, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    return-void
.end method
