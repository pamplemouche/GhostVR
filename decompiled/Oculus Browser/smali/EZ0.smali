.class public abstract LEZ0;
.super Landroid/app/AlertDialog;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements LBZ0;


# instance fields
.field public final w:LCZ0;

.field public final x:LDZ0;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILDZ0;IIDD)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p3, p0, LEZ0;->x:LDZ0;

    const p2, 0x7f130294

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p2, 0x1040000

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setIcon(I)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p6

    move-wide v4, p8

    .line 6
    invoke-virtual/range {v0 .. v5}, LEZ0;->a(Landroid/content/Context;DD)LCZ0;

    move-result-object p1

    iput-object p1, p0, LEZ0;->w:LCZ0;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, LEZ0;->w:LCZ0;

    .line 9
    invoke-virtual {p1, p4, p5}, LCZ0;->a(II)V

    .line 10
    invoke-virtual {p1}, LCZ0;->e()V

    .line 11
    iput-object p0, p1, LCZ0;->y:LBZ0;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;DD)LCZ0;
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    iget-object p1, p0, LEZ0;->x:LDZ0;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, LEZ0;->w:LCZ0;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 3
    iget-object p1, p0, LEZ0;->x:LDZ0;

    iget-object p2, p0, LEZ0;->w:LCZ0;

    invoke-virtual {p2}, LCZ0;->d()I

    move-result v2

    iget-object p2, p0, LEZ0;->w:LCZ0;

    invoke-virtual {p2}, LCZ0;->c()I

    move-result v9

    check-cast p1, LsZ0;

    .line 4
    iget v1, p1, LsZ0;->a:I

    const/16 p2, 0xb

    if-ne v1, p2, :cond_0

    .line 5
    iget-object v0, p1, LsZ0;->b:LuZ0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 p1, 0x0

    move v3, v9

    move v9, p1

    invoke-virtual/range {v0 .. v9}, LuZ0;->a(IIIIIIIII)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, LsZ0;->b:LuZ0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, LuZ0;->a(IIIIIIIII)V

    :cond_1
    :goto_0
    return-void
.end method
