.class public final synthetic LLp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LLp0;

    invoke-direct {v0}, LLp0;-><init>()V

    sput-object v0, LLp0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lle1;

    check-cast p2, LKp0;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, LTp0;->a:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p3, LTp0;->a:Lke1;

    .line 3
    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ActionMode$Callback;

    .line 4
    invoke-virtual {p2, p1}, Lze;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto/16 :goto_4

    .line 5
    :cond_0
    sget-object v0, LTp0;->b:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p3, LTp0;->b:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    invoke-virtual {p2, p1}, LKp0;->c(Z)V

    goto/16 :goto_4

    .line 7
    :cond_1
    sget-object v0, LTp0;->c:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p3, LTp0;->c:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LRp0;

    .line 9
    invoke-virtual {p2}, LNo0;->l()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 10
    iget-object p3, p1, LRp0;->a:Ljava/lang/String;

    iget-object p1, p1, LRp0;->b:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, LNo0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 11
    :cond_2
    sget-object v0, LTp0;->d:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    sget-object p3, LTp0;->d:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LGp0;

    invoke-virtual {p2, p1}, LKp0;->a(LGp0;)V

    goto/16 :goto_4

    .line 13
    :cond_3
    sget-object v0, LTp0;->e:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    sget-object p3, LTp0;->e:Lke1;

    .line 15
    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/Callback;

    .line 16
    new-instance p3, LUp0;

    invoke-direct {p3, p2, p1}, LUp0;-><init>(LKp0;Lorg/chromium/base/Callback;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_4

    .line 17
    :cond_4
    sget-object v0, LTp0;->f:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    sget-object p3, LTp0;->f:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_4

    .line 19
    :cond_5
    sget-object v0, LTp0;->g:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    sget-object p3, LTp0;->g:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LHp0;

    invoke-virtual {p2, p1}, LKp0;->a(LHp0;)V

    goto/16 :goto_4

    .line 21
    :cond_6
    sget-object v0, LTp0;->h:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 22
    sget-object p3, LTp0;->h:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSp0;

    .line 23
    invoke-virtual {p2, v1}, LKp0;->d(Z)V

    .line 24
    iget-object p3, p1, LSp0;->a:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p3, p1, LSp0;->b:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, LKp0;->a(Ljava/lang/CharSequence;)V

    .line 26
    iget p3, p1, LSp0;->c:I

    iget v0, p1, LSp0;->d:I

    invoke-virtual {p2, p3, v0}, LKp0;->b(II)V

    .line 27
    invoke-virtual {p2, v2}, LKp0;->d(Z)V

    .line 28
    invoke-virtual {p2}, Landroid/widget/EditText;->hasFocus()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 29
    iget p1, p1, LSp0;->e:I

    if-nez p1, :cond_7

    .line 30
    invoke-virtual {p2}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_4

    :cond_7
    if-ne p1, v1, :cond_13

    .line 31
    invoke-virtual {p2}, LKp0;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4

    .line 32
    :cond_8
    sget-object v0, LTp0;->l:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    sget-object p3, LTp0;->l:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    const p3, 0x7f0b01f4

    .line 34
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 35
    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_9

    goto :goto_0

    .line 36
    :cond_9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    .line 37
    :cond_a
    :goto_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    move p3, v0

    .line 39
    :goto_1
    invoke-virtual {p2}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_b

    const p1, 0x7f06008e

    .line 40
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const v3, 0x7f0600f0

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v6, v0

    move v0, p3

    move p3, v6

    goto :goto_2

    :cond_b
    const p1, 0x7f060092

    .line 42
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const p3, 0x7f0600f1

    .line 43
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    const v3, 0x7f0600e0

    .line 44
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 45
    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 46
    invoke-virtual {p2}, LKp0;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 48
    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 49
    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 50
    invoke-virtual {p2, v1}, LKp0;->d(Z)V

    const-string v5, ""

    .line 51
    invoke-virtual {p2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 52
    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHintTextColor(I)V

    if-eqz v1, :cond_e

    .line 53
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p2}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 55
    invoke-virtual {p2}, LKp0;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 56
    :cond_d
    invoke-virtual {p2, v2}, LKp0;->d(Z)V

    .line 57
    :cond_e
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHighlightColor(I)V

    goto :goto_4

    .line 58
    :cond_f
    sget-object v0, LTp0;->i:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 59
    sget-object p3, LTp0;->i:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LIp0;

    invoke-virtual {p2, p1}, LKp0;->a(LIp0;)V

    goto :goto_4

    .line 60
    :cond_10
    sget-object v0, LTp0;->j:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    sget-object p3, LTp0;->j:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJp0;

    invoke-virtual {p2, p1}, LKp0;->a(LJp0;)V

    goto :goto_4

    .line 62
    :cond_11
    sget-object v0, LTp0;->k:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 63
    sget-object p3, LTp0;->k:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p2, p1}, LKp0;->a(Landroid/text/TextWatcher;)V

    goto :goto_4

    .line 64
    :cond_12
    sget-object v0, LTp0;->m:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 65
    sget-object p3, LTp0;->m:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk00;

    invoke-virtual {p2, p1}, LKp0;->a(Lk00;)V

    :cond_13
    :goto_4
    return-void
.end method
