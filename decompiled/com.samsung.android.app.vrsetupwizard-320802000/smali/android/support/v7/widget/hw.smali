.class public Landroid/support/v7/widget/hw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/hw;->b:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/hw;->c:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/hw;->i:I

    iput p2, p0, Landroid/support/v7/widget/hw;->d:I

    iput p3, p0, Landroid/support/v7/widget/hw;->e:I

    iput-boolean p4, p0, Landroid/support/v7/widget/hw;->j:Z

    iget p2, p0, Landroid/support/v7/widget/hw;->e:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/support/v7/widget/hw;->g:I

    iget p2, p0, Landroid/support/v7/widget/hw;->g:I

    if-gez p2, :cond_0

    iput v0, p0, Landroid/support/v7/widget/hw;->g:I

    :cond_0
    iget p2, p0, Landroid/support/v7/widget/hw;->e:I

    add-int/lit8 p3, p2, 0x1

    if-le p3, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p2, 0x1

    :goto_0
    iput p1, p0, Landroid/support/v7/widget/hw;->f:I

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/hw;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/widget/hw;->e:I

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->v(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->w(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->x(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->v(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->y(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "te"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "as"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "si"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->y(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->A(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->y(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->w(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/hw;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] changeFocus() mNext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/hw;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCheck : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/hw;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/hw;->f:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/hw;->g:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/hw;->f:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/hw;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/hw;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/hw;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] afterTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/hw;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/hw;->h:Ljava/lang/String;

    iput p4, p0, Landroid/support/v7/widget/hw;->i:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/support/v7/widget/hw;->e:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] onTextChanged: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/support/v7/widget/hw;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, v0, Landroid/support/v7/widget/hw;->e:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v7, "onClick"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "onLongClick"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/v7/widget/hw;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] TAG exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v6, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, v0, Landroid/support/v7/widget/hw;->e:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/EditText;->isFocused()Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    iget-boolean v6, v0, Landroid/support/v7/widget/hw;->j:Z

    const/16 v7, 0xa

    const/4 v8, 0x2

    const-string v9, ""

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_a

    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->s(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/support/v7/widget/hw;->i:I

    if-ne v1, v10, :cond_6

    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/support/v7/widget/hw;->e:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] Samsung Keypad Num Month"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->j(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, v0, Landroid/support/v7/widget/hw;->d:I

    if-ne v2, v5, :cond_4

    if-ge v4, v1, :cond_7

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    if-ge v1, v8, :cond_3

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-direct {v0, v9, v11}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_4
    if-lez v2, :cond_1a

    const-string v2, "0"

    if-lt v1, v7, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {v0, v9, v11}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    return-void

    :cond_5
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    if-ge v4, v1, :cond_7

    invoke-direct {v0, v9, v11}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    return-void

    :cond_6
    iget-object v1, v0, Landroid/support/v7/widget/hw;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget v1, v0, Landroid/support/v7/widget/hw;->d:I

    if-lt v2, v1, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/hw;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/support/v7/widget/hw;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {v0, v3}, Landroid/support/v7/widget/hw;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_7
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/hw;->d()V

    goto/16 :goto_6

    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/hw;->a()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/hw;->c()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_9
    if-lez v2, :cond_1a

    invoke-direct {v0, v3}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1

    :cond_a
    iget v6, v0, Landroid/support/v7/widget/hw;->i:I

    if-ne v6, v10, :cond_1a

    iget v6, v0, Landroid/support/v7/widget/hw;->d:I

    const/4 v12, 0x3

    if-ge v6, v12, :cond_11

    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/hw;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_c

    iget v5, v0, Landroid/support/v7/widget/hw;->d:I

    if-ne v2, v5, :cond_c

    if-ge v4, v1, :cond_7

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_b
    invoke-direct {v0, v9, v11}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    :goto_2
    return-void

    :cond_c
    if-lt v1, v7, :cond_d

    if-eqz v4, :cond_f

    :cond_d
    const/16 v2, 0x14

    if-lt v1, v2, :cond_e

    if-eqz v4, :cond_f

    if-eq v4, v10, :cond_f

    :cond_e
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_10

    if-eqz v4, :cond_f

    if-eq v4, v10, :cond_f

    if-ne v4, v8, :cond_10

    :cond_f
    invoke-direct {v0, v9, v11}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    return-void

    :cond_10
    if-le v4, v12, :cond_1a

    if-ge v4, v1, :cond_7

    invoke-direct {v0, v9, v11}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    return-void

    :cond_11
    iget-object v6, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v6

    iget-object v7, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/SeslNumberPicker;->getMaxValue()I

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/hw;->h:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v2, :cond_16

    iget v14, v0, Landroid/support/v7/widget/hw;->d:I

    if-ne v2, v14, :cond_16

    if-lt v13, v6, :cond_15

    if-le v13, v7, :cond_12

    goto/16 :goto_4

    :cond_12
    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->s(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->j(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v1

    sub-int/2addr v1, v10

    goto :goto_3

    :cond_13
    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->j(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v1

    :goto_3
    iget-object v2, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget-object v2, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v4, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v4

    invoke-virtual {v2, v13, v1, v4}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v2, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Calendar;->set(III)V

    iget-object v2, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/hw;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_14
    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    return-void

    :cond_15
    :goto_4
    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    return-void

    :cond_16
    const-wide v14, 0x408f400000000000L    # 1000.0

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    add-int/lit8 v8, v2, -0x1

    int-to-double v0, v8

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v14, v0

    double-to-int v0, v14

    if-eq v2, v10, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_17
    div-int/2addr v6, v0

    if-lt v13, v6, :cond_19

    div-int/2addr v7, v0

    if-le v13, v7, :cond_18

    goto :goto_5

    :cond_18
    move-object/from16 v3, p0

    goto :goto_7

    :cond_19
    :goto_5
    invoke-static {}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    iget v4, v3, Landroid/support/v7/widget/hw;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] mPrevText: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/support/v7/widget/hw;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", setValue: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v3, v9, v8}, Landroid/support/v7/widget/hw;->a(Ljava/lang/String;I)V

    goto :goto_7

    :cond_1a
    :goto_6
    move-object v3, v0

    :goto_7
    return-void
.end method
