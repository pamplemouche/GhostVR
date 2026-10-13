.class public LmR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic w:LpR0;


# direct methods
.method public constructor <init>(LpR0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LmR0;->w:LpR0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, LmR0;->w:LpR0;

    .line 2
    iget-object p2, p2, LpR0;->s0:Landroid/widget/ImageButton;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5
    iget-object p2, p0, LmR0;->w:LpR0;

    .line 6
    iget-boolean p3, p2, LpR0;->o0:Z

    if-eqz p3, :cond_1

    .line 7
    iget-object p2, p2, LpR0;->t0:LoR0;

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, LS30;

    .line 9
    iget-object p2, p2, LS30;->E:LP30;

    invoke-virtual {p2, p1}, LP30;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
