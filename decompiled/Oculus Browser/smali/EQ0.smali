.class public LEQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic w:LNQ0;


# direct methods
.method public constructor <init>(LNQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEQ0;->w:LNQ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x6

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    .line 1
    iget-object p1, p0, LEQ0;->w:LNQ0;

    .line 2
    iget-object p1, p1, LNQ0;->K:Landroid/widget/Button;

    .line 3
    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    return v0

    :cond_0
    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
