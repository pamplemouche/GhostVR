.class public Lcom/oculus/horizon/widget/CustomEditText;
.super Landroid/widget/RelativeLayout;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/CustomEditText$SavedState;,
        Lcom/oculus/horizon/widget/CustomEditText$SimpleTextWatcher;,
        Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_HINT_COLOR_RES_ID:I


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mError:Landroid/widget/TextView;

.field private mHasFocusColor:I

.field private mHasInputTextColor:I

.field private mHintColor:I

.field private mHintFaddingLimit:I

.field private mInputType:I

.field private mLabel:Landroid/widget/TextView;

.field private mLeftEar:Landroid/view/View;

.field private mOnFocusChangeListener:Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;

.field private mRightEar:Landroid/view/View;

.field private mTextColor:I

.field private mUnderline:Landroid/view/View;

.field private mUnderlineColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/oculus/horizon/R$color;->oculus_black_6:I

    sput v0, Lcom/oculus/horizon/widget/CustomEditText;->DEFAULT_HINT_COLOR_RES_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const v7, 0x106000b

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintFaddingLimit:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 71
    sget v2, Lcom/oculus/horizon/R$layout;->widget_custom_edit_text:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    sget v0, Lcom/oculus/horizon/R$id;->left_ear:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLeftEar:Landroid/view/View;

    .line 74
    sget v0, Lcom/oculus/horizon/R$id;->right_ear:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mRightEar:Landroid/view/View;

    .line 75
    sget v0, Lcom/oculus/horizon/R$id;->underline:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderline:Landroid/view/View;

    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->error:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/oculus/horizon/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLabel:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/oculus/horizon/R$id;->edit_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    .line 80
    if-nez p2, :cond_0

    .line 277
    :goto_0
    return-void

    .line 85
    :cond_0
    new-array v0, v5, [I

    const v2, 0x10100af

    aput v2, v0, v4

    .line 86
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getGravity()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    :cond_1
    new-array v0, v5, [I

    const v2, 0x1010150

    aput v2, v0, v4

    .line 94
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :cond_3
    new-array v0, v5, [I

    const v2, 0x1010095

    aput v2, v0, v4

    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    .line 107
    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    .line 109
    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    :cond_4
    new-array v0, v5, [I

    const v2, 0x1010098

    aput v2, v0, v4

    .line 116
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_f

    .line 118
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mTextColor:I

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    :goto_1
    new-array v0, v5, [I

    const v2, 0x101009a

    aput v2, v0, v4

    .line 126
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_10

    .line 128
    sget v2, Lcom/oculus/horizon/widget/CustomEditText;->DEFAULT_HINT_COLOR_RES_ID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintColor:I

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    iget v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintColor:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 135
    iget v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintColor:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->setUnderlineColor(I)V

    .line 141
    :goto_2
    new-array v0, v5, [I

    sget v2, Lcom/oculus/horizon/R$attr;->hasFocusColor:I

    aput v2, v0, v4

    .line 142
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_11

    .line 144
    sget v2, Lcom/oculus/horizon/R$color;->oculus_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/CustomEditText;->setHasFocusColor(I)V

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    :goto_3
    new-array v0, v5, [I

    sget v2, Lcom/oculus/horizon/R$attr;->hasInputTextColor:I

    aput v2, v0, v4

    .line 152
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_12

    .line 154
    sget v2, Lcom/oculus/horizon/R$color;->oculus_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/CustomEditText;->setHasInputTextColor(I)V

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    :goto_4
    new-array v0, v5, [I

    sget v2, Lcom/oculus/horizon/R$attr;->errorTextColor:I

    aput v2, v0, v4

    .line 162
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_5

    .line 164
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    iget v3, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintColor:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    :cond_5
    new-array v0, v5, [I

    const v2, 0x1010154

    aput v2, v0, v4

    .line 170
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 173
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    :cond_6
    new-array v0, v5, [I

    const v2, 0x1010160

    aput v2, v0, v4

    .line 178
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_8

    .line 180
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v6, :cond_7

    .line 181
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/CustomEditText;->setMaxLength(I)V

    .line 183
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    :cond_8
    new-array v0, v5, [I

    const v2, 0x1010153

    aput v2, v0, v4

    .line 188
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_a

    .line 190
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v6, :cond_9

    .line 191
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/CustomEditText;->setMaxLines(I)V

    .line 193
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    :cond_a
    new-array v0, v5, [I

    const v2, 0x101015d

    aput v2, v0, v4

    .line 198
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_b

    .line 200
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    :cond_b
    new-array v0, v5, [I

    const v2, 0x1010264

    aput v2, v0, v4

    .line 206
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_d

    .line 208
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v6, :cond_c

    .line 209
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 211
    :cond_c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    :cond_d
    new-array v0, v5, [I

    sget v2, Lcom/oculus/horizon/R$attr;->underlineColor:I

    aput v2, v0, v4

    .line 217
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_13

    .line 219
    sget v2, Lcom/oculus/horizon/R$color;->oculus_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderlineColor:I

    .line 220
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLeftEar:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderlineColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mRightEar:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderlineColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderline:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderlineColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :goto_5
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mInputType:I

    .line 231
    new-array v0, v5, [I

    const v1, 0x1010220

    aput v1, v0, v4

    .line 232
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_e

    .line 234
    iget v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mInputType:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mInputType:I

    .line 235
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mInputType:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 236
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    :cond_e
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    invoke-static {v0, p2, p3, v4}, Lcom/oculus/horizon/util/FontUtils;->setTypefaceFromAttrs(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLabel:Landroid/widget/TextView;

    invoke-static {v0, p2, p3, v4}, Lcom/oculus/horizon/util/FontUtils;->setTypefaceFromAttrs(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, p2, p3, v4}, Lcom/oculus/horizon/util/FontUtils;->setTypefaceFromAttrs(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    .line 245
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/oculus/horizon/widget/CustomEditText$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/widget/CustomEditText$1;-><init>(Lcom/oculus/horizon/widget/CustomEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/oculus/horizon/widget/CustomEditText$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/widget/CustomEditText$2;-><init>(Lcom/oculus/horizon/widget/CustomEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0

    .line 121
    :cond_f
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mTextColor:I

    goto/16 :goto_1

    .line 137
    :cond_10
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/widget/CustomEditText;->DEFAULT_HINT_COLOR_RES_ID:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintColor:I

    goto/16 :goto_2

    .line 147
    :cond_11
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$color;->oculus_blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->setHasFocusColor(I)V

    goto/16 :goto_3

    .line 157
    :cond_12
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$color;->oculus_blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->setHasInputTextColor(I)V

    goto/16 :goto_4

    .line 226
    :cond_13
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$color;->oculus_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderlineColor:I

    goto/16 :goto_5
.end method

.method static synthetic access$100(Lcom/oculus/horizon/widget/CustomEditText;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintFaddingLimit:I

    return v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/widget/CustomEditText;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/widget/CustomEditText;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/CustomEditText;->updateErrorAlpha(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/widget/CustomEditText;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/widget/CustomEditText;->hasInputText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/widget/CustomEditText;ZZ)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/widget/CustomEditText;->updateUnderlineColor(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/widget/CustomEditText;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/CustomEditText;->updateTextColor(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/widget/CustomEditText;)Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mOnFocusChangeListener:Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;

    return-object v0
.end method

.method private hasInputText()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateErrorAlpha(Z)V
    .locals 2

    .prologue
    .line 308
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 309
    return-void

    .line 308
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private updateTextColor(Z)V
    .locals 2

    .prologue
    .line 280
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oculus/horizon/widget/CustomEditText;->hasInputText()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mTextColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 281
    return-void

    .line 280
    :cond_1
    iget v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintColor:I

    goto :goto_0
.end method

.method private updateUnderlineColor(ZZ)V
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 313
    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomEditText;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    sget v1, Lcom/oculus/horizon/R$color;->oculus_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 330
    :goto_1
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLeftEar:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mRightEar:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderline:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 321
    :cond_1
    if-eqz p1, :cond_2

    .line 322
    iget v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHasFocusColor:I

    goto :goto_1

    .line 323
    :cond_2
    if-eqz p2, :cond_3

    .line 324
    iget v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHasInputTextColor:I

    goto :goto_1

    .line 326
    :cond_3
    iget v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderlineColor:I

    goto :goto_1
.end method


# virtual methods
.method public clearError()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    invoke-direct {p0}, Lcom/oculus/horizon/widget/CustomEditText;->hasInputText()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/widget/CustomEditText;->updateUnderlineColor(ZZ)V

    .line 383
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public hideErrorView()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    return-void
.end method

.method public hideUnderline()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 390
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLeftEar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mRightEar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderline:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    return-void
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 452
    instance-of v0, p1, Lcom/oculus/horizon/widget/CustomEditText$SavedState;

    if-nez v0, :cond_1

    .line 453
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    check-cast p1, Lcom/oculus/horizon/widget/CustomEditText$SavedState;

    .line 457
    invoke-virtual {p1}, Lcom/oculus/horizon/widget/CustomEditText$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 458
    iget-object v0, p1, Lcom/oculus/horizon/widget/CustomEditText$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/oculus/horizon/widget/CustomEditText$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 444
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 445
    new-instance v1, Lcom/oculus/horizon/widget/CustomEditText$SavedState;

    invoke-direct {v1, v0}, Lcom/oculus/horizon/widget/CustomEditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 446
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, v1, Lcom/oculus/horizon/widget/CustomEditText$SavedState;->text:Ljava/lang/CharSequence;

    .line 447
    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 428
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->setAlpha(F)V

    .line 429
    return-void

    .line 428
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mError:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->updateErrorAlpha(Z)V

    .line 377
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    invoke-direct {p0}, Lcom/oculus/horizon/widget/CustomEditText;->hasInputText()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/widget/CustomEditText;->updateUnderlineColor(ZZ)V

    .line 378
    return-void
.end method

.method public setHasFocusColor(I)V
    .locals 0

    .prologue
    .line 304
    iput p1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHasFocusColor:I

    .line 305
    return-void
.end method

.method public setHasInputTextColor(I)V
    .locals 0

    .prologue
    .line 299
    iput p1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHasInputTextColor:I

    .line 300
    return-void
.end method

.method public setHintFaddingLimit(I)V
    .locals 0

    .prologue
    .line 358
    iput p1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mHintFaddingLimit:I

    .line 359
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    return-void
.end method

.method public setLocked(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mInputType:I

    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 410
    :goto_0
    iget v3, p0, Lcom/oculus/horizon/widget/CustomEditText;->mInputType:I

    and-int/lit16 v3, v3, 0x90

    const/16 v4, 0x90

    if-ne v3, v4, :cond_1

    .line 414
    :goto_1
    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 417
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 418
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 422
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 407
    goto :goto_0

    :cond_1
    move v1, v2

    .line 410
    goto :goto_1

    .line 414
    :cond_2
    iget v2, p0, Lcom/oculus/horizon/widget/CustomEditText;->mInputType:I

    goto :goto_2

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_3
.end method

.method public setMaxLength(I)V
    .locals 3

    .prologue
    .line 344
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 345
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 346
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 347
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 351
    return-void
.end method

.method public setOnFocusChangeListener(Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mOnFocusChangeListener:Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;

    .line 397
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 367
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 285
    iput p1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mTextColor:I

    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/widget/CustomEditText;->updateTextColor(Z)V

    .line 287
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 2

    .prologue
    .line 291
    iput p1, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderlineColor:I

    .line 292
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mLeftEar:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mRightEar:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText;->mUnderline:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    return-void
.end method
