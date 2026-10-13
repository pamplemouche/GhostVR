.class public Lcom/oculus/horizon/widget/EditPIN;
.super Landroid/widget/LinearLayout;
.source "EditPIN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;
    }
.end annotation


# static fields
.field private static final sInputFieldIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOnInputChangedListener:Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    sget v3, Lcom/oculus/horizon/R$id;->first_digit:I

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/oculus/horizon/R$id;->second_digit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/oculus/horizon/R$id;->third_digit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/oculus/horizon/R$id;->fourth_digit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/widget/EditPIN;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/widget/EditPIN;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/widget/EditPIN;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/widget/EditPIN;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oculus/horizon/widget/EditPIN;->onInputChanged()V

    return-void
.end method

.method private onInputChanged()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN;->mOnInputChangedListener:Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN;->mOnInputChangedListener:Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;

    invoke-virtual {p0}, Lcom/oculus/horizon/widget/EditPIN;->getPIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;->onInputChanged(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getFirstEmptyField()Landroid/view/View;
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1

    .line 187
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 189
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 193
    :goto_1
    return-object v0

    .line 186
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_1
.end method

.method public getLastInputField()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    sget-object v1, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    .line 198
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 199
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getPIN()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    const-string v0, ""

    .line 158
    sget-object v1, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 161
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 166
    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 167
    :cond_1
    return-object v1
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    sget v1, Lcom/oculus/horizon/R$layout;->widget_edit_pin:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move v2, v3

    .line 55
    :goto_0
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 56
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 57
    if-lez v2, :cond_0

    sget-object v1, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    .line 58
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/widget/CustomEditText;

    move-object v4, v1

    .line 59
    :goto_1
    sget-object v1, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1

    sget-object v1, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    .line 61
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/widget/CustomEditText;

    .line 65
    :goto_2
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/oculus/horizon/widget/EditPIN$1;

    invoke-direct {v7, p0, v1}, Lcom/oculus/horizon/widget/EditPIN$1;-><init>(Lcom/oculus/horizon/widget/EditPIN;Lcom/oculus/horizon/widget/CustomEditText;)V

    .line 66
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v6, Lcom/oculus/horizon/widget/EditPIN$2;

    invoke-direct {v6, p0, v4, v0}, Lcom/oculus/horizon/widget/EditPIN$2;-><init>(Lcom/oculus/horizon/widget/EditPIN;Lcom/oculus/horizon/widget/CustomEditText;Lcom/oculus/horizon/widget/CustomEditText;)V

    .line 85
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 55
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 58
    goto :goto_1

    :cond_1
    move-object v1, v5

    .line 61
    goto :goto_2

    .line 103
    :cond_2
    if-nez p2, :cond_3

    .line 154
    :goto_3
    return-void

    .line 108
    :cond_3
    new-array v0, v8, [I

    const v1, 0x1010098

    aput v1, v0, v3

    .line 109
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_5

    .line 111
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 113
    sget v4, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 114
    invoke-virtual {v0, v4}, Lcom/oculus/horizon/widget/CustomEditText;->setHasFocusColor(I)V

    .line 115
    invoke-virtual {v0, v4}, Lcom/oculus/horizon/widget/CustomEditText;->setUnderlineColor(I)V

    .line 116
    invoke-virtual {v0, v4}, Lcom/oculus/horizon/widget/CustomEditText;->setHasInputTextColor(I)V

    .line 117
    invoke-virtual {v0, v4}, Lcom/oculus/horizon/widget/CustomEditText;->setTextColor(I)V

    goto :goto_4

    .line 119
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    :cond_5
    new-array v0, v8, [I

    const v1, 0x101009a

    aput v1, v0, v3

    .line 124
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_7

    .line 126
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 128
    sget v4, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 129
    invoke-virtual {v0, v4}, Lcom/oculus/horizon/widget/CustomEditText;->setUnderlineColor(I)V

    .line 130
    invoke-virtual {v0, v4}, Lcom/oculus/horizon/widget/CustomEditText;->setHasInputTextColor(I)V

    goto :goto_5

    .line 132
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    :cond_7
    sget-object v0, Lcom/oculus/horizon/R$styleable;->EditPIN:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 137
    sget v0, Lcom/oculus/horizon/R$styleable;->EditPIN_showKeyboard:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 138
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 142
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v3, Lcom/oculus/horizon/widget/EditPIN$3;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/widget/EditPIN$3;-><init>(Lcom/oculus/horizon/widget/EditPIN;)V

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_6

    .line 153
    :cond_8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_3
.end method

.method public setOnInputChangedListener(Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/oculus/horizon/widget/EditPIN;->mOnInputChangedListener:Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;

    .line 221
    invoke-direct {p0}, Lcom/oculus/horizon/widget/EditPIN;->onInputChanged()V

    .line 222
    return-void
.end method

.method public setPIN(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 183
    :cond_0
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 176
    sget-object v0, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public validate()Z
    .locals 4

    .prologue
    .line 203
    const/4 v0, 0x1

    .line 205
    sget-object v1, Lcom/oculus/horizon/widget/EditPIN;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EditPIN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 207
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomEditText;->setError(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 213
    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->clearError()V

    move v0, v1

    goto :goto_1

    .line 215
    :cond_1
    return v1
.end method
