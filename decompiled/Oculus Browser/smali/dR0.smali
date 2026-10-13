.class public LdR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic w:LTQ0;

.field public final synthetic x:LeR0;


# direct methods
.method public constructor <init>(LeR0;LTQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LdR0;->x:LeR0;

    iput-object p2, p0, LdR0;->w:LTQ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1
    iget-object v0, p0, LdR0;->w:LTQ0;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, v0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, LdR0;->x:LeR0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LeR0;->a(Z)V

    .line 4
    iget-object p1, p0, LdR0;->x:LeR0;

    .line 5
    invoke-virtual {p1, v0}, LeR0;->b(Z)V

    .line 6
    iget-object p1, p0, LdR0;->x:LeR0;

    .line 7
    iget-object p1, p1, LeR0;->w:LTQ0;

    .line 8
    iget-object v1, p1, LTQ0;->j:LRQ0;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LTQ0;->s:Ljava/lang/CharSequence;

    invoke-interface {v1, p1}, LRQ0;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, LdR0;->x:LeR0;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LeR0;->a(Z)V

    .line 10
    iget-object p1, p0, LdR0;->x:LeR0;

    .line 11
    iget-object p1, p1, LeR0;->w:LTQ0;

    invoke-virtual {p1}, LTQ0;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, LdR0;->x:LeR0;

    .line 13
    iget-object v1, p1, LeR0;->x:Landroid/widget/TextView$OnEditorActionListener;

    .line 14
    iget-object p1, p1, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x5

    .line 15
    new-instance v3, Landroid/view/KeyEvent;

    const/16 v4, 0x42

    invoke-direct {v3, v0, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v1, p1, v2, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, LdR0;->x:LeR0;

    .line 2
    iget-object p1, p1, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, LdR0;->w:LTQ0;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p1, LTQ0;->n:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method
