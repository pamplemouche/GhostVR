.class public final synthetic LEi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final w:LIi0;


# direct methods
.method public constructor <init>(LIi0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEi0;->w:LIi0;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, LEi0;->w:LIi0;

    if-eqz p1, :cond_1

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 1
    iget-object p1, p1, LIi0;->c:LP8;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, LP8;->a(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
