.class public LO;
.super Lh7;
.source "PG"


# instance fields
.field public final synthetic c:Landroid/support/design/internal/NavigationMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/design/internal/NavigationMenuItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO;->c:Landroid/support/design/internal/NavigationMenuItemView;

    invoke-direct {p0}, Lh7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LZ7;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lh7;->a(Landroid/view/View;LZ7;)V

    .line 2
    iget-object p1, p0, LO;->c:Landroid/support/design/internal/NavigationMenuItemView;

    iget-boolean p1, p1, Landroid/support/design/internal/NavigationMenuItemView;->S:Z

    .line 3
    iget-object p2, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method
