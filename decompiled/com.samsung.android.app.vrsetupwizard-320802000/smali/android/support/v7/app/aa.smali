.class Landroid/support/v7/app/aa;
.super Landroid/support/v7/app/ah;


# instance fields
.field final synthetic b:Landroid/support/v7/app/z;


# direct methods
.method constructor <init>(Landroid/support/v7/app/z;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/aa;->b:Landroid/support/v7/app/z;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ah;-><init>(Landroid/support/v7/app/ag;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/aa;->b:Landroid/support/v7/app/z;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/z;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/p;

    if-eqz v1, :cond_0

    iget-object p2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/p;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ah;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method
