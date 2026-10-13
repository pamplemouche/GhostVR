.class public final synthetic LEy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final w:Landroid/view/MenuItem;

.field public final x:Landroid/support/v7/widget/SearchView;

.field public final y:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEy0;->w:Landroid/view/MenuItem;

    iput-object p2, p0, LEy0;->x:Landroid/support/v7/widget/SearchView;

    iput-object p3, p0, LEy0;->y:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, LEy0;->w:Landroid/view/MenuItem;

    iget-object p2, p0, LEy0;->x:Landroid/support/v7/widget/SearchView;

    iget-object p3, p0, LEy0;->y:Landroid/app/Activity;

    .line 1
    iget-object p2, p2, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1, p2, p3}, LIy0;->a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
