.class public LRe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:LLh;

.field public c:LLh;

.field public d:LLh;

.field public e:LLh;

.field public f:LLh;

.field public g:LLh;

.field public final h:LTe;

.field public i:I

.field public j:Landroid/graphics/Typeface;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LRe;->i:I

    .line 3
    iput-object p1, p0, LRe;->a:Landroid/widget/TextView;

    .line 4
    new-instance p1, LTe;

    iget-object v0, p0, LRe;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, LTe;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, LRe;->h:LTe;

    return-void
.end method

.method public static a(Landroid/content/Context;Lye;I)LLh;
    .locals 0

    .line 163
    invoke-virtual {p1, p0, p2}, Lye;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 164
    new-instance p1, LLh;

    invoke-direct {p1}, LLh;-><init>()V

    const/4 p2, 0x1

    .line 165
    iput-boolean p2, p1, LLh;->d:Z

    .line 166
    iput-object p0, p1, LLh;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 152
    iget-object v0, p0, LRe;->b:LLh;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LRe;->c:LLh;

    if-nez v0, :cond_0

    iget-object v0, p0, LRe;->d:LLh;

    if-nez v0, :cond_0

    iget-object v0, p0, LRe;->e:LLh;

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    iget-object v0, p0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    aget-object v3, v0, v2

    iget-object v4, p0, LRe;->b:LLh;

    invoke-virtual {p0, v3, v4}, LRe;->a(Landroid/graphics/drawable/Drawable;LLh;)V

    const/4 v3, 0x1

    .line 155
    aget-object v3, v0, v3

    iget-object v4, p0, LRe;->c:LLh;

    invoke-virtual {p0, v3, v4}, LRe;->a(Landroid/graphics/drawable/Drawable;LLh;)V

    .line 156
    aget-object v3, v0, v1

    iget-object v4, p0, LRe;->d:LLh;

    invoke-virtual {p0, v3, v4}, LRe;->a(Landroid/graphics/drawable/Drawable;LLh;)V

    const/4 v3, 0x3

    .line 157
    aget-object v0, v0, v3

    iget-object v3, p0, LRe;->e:LLh;

    invoke-virtual {p0, v0, v3}, LRe;->a(Landroid/graphics/drawable/Drawable;LLh;)V

    .line 158
    :cond_1
    iget-object v0, p0, LRe;->f:LLh;

    if-nez v0, :cond_2

    iget-object v0, p0, LRe;->g:LLh;

    if-eqz v0, :cond_3

    .line 159
    :cond_2
    iget-object v0, p0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    aget-object v2, v0, v2

    iget-object v3, p0, LRe;->f:LLh;

    invoke-virtual {p0, v2, v3}, LRe;->a(Landroid/graphics/drawable/Drawable;LLh;)V

    .line 161
    aget-object v0, v0, v1

    iget-object v1, p0, LRe;->g:LLh;

    invoke-virtual {p0, v0, v1}, LRe;->a(Landroid/graphics/drawable/Drawable;LLh;)V

    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 167
    iget-object v0, p0, LRe;->h:LTe;

    .line 168
    invoke-virtual {v0}, LTe;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 169
    iget-object p1, v0, LTe;->j:Landroid/content/Context;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    .line 171
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000    # 112.0f

    .line 172
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 173
    invoke-virtual {v0, v1, p1, v2}, LTe;->a(FFF)V

    .line 174
    invoke-virtual {v0}, LTe;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {v0}, LTe;->a()V

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    invoke-static {v1, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 177
    iput p1, v0, LTe;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 178
    iput v1, v0, LTe;->d:F

    .line 179
    iput v1, v0, LTe;->e:F

    .line 180
    iput v1, v0, LTe;->c:F

    new-array v1, p1, [I

    .line 181
    iput-object v1, v0, LTe;->f:[I

    .line 182
    iput-boolean p1, v0, LTe;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 183
    iget-object v0, p0, LRe;->h:LTe;

    .line 184
    invoke-virtual {v0}, LTe;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, v0, LTe;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    .line 186
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 187
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 188
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 189
    invoke-virtual {v0, p1, p2, p3}, LTe;->a(FFF)V

    .line 190
    invoke-virtual {v0}, LTe;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {v0}, LTe;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 3

    .line 136
    sget-object v0, LeS;->N0:[I

    .line 137
    new-instance v1, LNh;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, LNh;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 p2, 0xc

    .line 138
    invoke-virtual {v1, p2}, LNh;->e(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v1, p2, v2}, LNh;->a(IZ)Z

    move-result p2

    .line 140
    iget-object v0, p0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 141
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_1

    const/4 p2, 0x3

    .line 142
    invoke-virtual {v1, p2}, LNh;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v1, p2}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 144
    iget-object v0, p0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    :cond_1
    invoke-virtual {v1, v2}, LNh;->e(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    .line 146
    invoke-virtual {v1, v2, p2}, LNh;->c(II)I

    move-result p2

    if-nez p2, :cond_2

    .line 147
    iget-object p2, p0, LRe;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 148
    :cond_2
    invoke-virtual {p0, p1, v1}, LRe;->a(Landroid/content/Context;LNh;)V

    .line 149
    iget-object p1, v1, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    iget-object p1, p0, LRe;->j:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    .line 151
    iget-object p2, p0, LRe;->a:Landroid/widget/TextView;

    iget v0, p0, LRe;->i:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/content/Context;LNh;)V
    .locals 6

    .line 117
    iget v0, p0, LRe;->i:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, LNh;->d(II)I

    move-result v0

    iput v0, p0, LRe;->i:I

    const/16 v0, 0xa

    .line 118
    invoke-virtual {p2, v0}, LNh;->e(I)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-nez v2, :cond_5

    .line 119
    invoke-virtual {p2, v4}, LNh;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p2, v3}, LNh;->e(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 121
    iput-boolean v5, p0, LRe;->k:Z

    .line 122
    invoke-virtual {p2, v3, v3}, LNh;->d(II)I

    move-result p1

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, LRe;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 124
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, LRe;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 125
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, LRe;->j:Landroid/graphics/Typeface;

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, LRe;->j:Landroid/graphics/Typeface;

    .line 127
    invoke-virtual {p2, v4}, LNh;->e(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0xb

    .line 128
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_8

    .line 129
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, LRe;->a:Landroid/widget/TextView;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 130
    new-instance v1, LQe;

    invoke-direct {v1, p0, p1}, LQe;-><init>(LRe;Ljava/lang/ref/WeakReference;)V

    .line 131
    :try_start_0
    iget p1, p0, LRe;->i:I

    invoke-virtual {p2, v0, p1, v1}, LNh;->a(IILl4;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, LRe;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 132
    :goto_2
    iput-boolean v3, p0, LRe;->k:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 133
    :cond_8
    :goto_3
    iget-object p1, p0, LRe;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_9

    .line 134
    iget-object p1, p2, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 135
    iget p2, p0, LRe;->i:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, LRe;->j:Landroid/graphics/Typeface;

    :cond_9
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;LLh;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    iget-object v0, p0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lye;->a(Landroid/graphics/drawable/Drawable;LLh;[I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    invoke-static {}, Lye;->a()Lye;

    move-result-object v4

    .line 3
    sget-object v5, LeS;->p:[I

    const/4 v6, 0x0

    invoke-static {v3, v1, v5, v2, v6}, LNh;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)LNh;

    move-result-object v5

    const/4 v7, -0x1

    .line 4
    invoke-virtual {v5, v6, v7}, LNh;->f(II)I

    move-result v8

    const/4 v9, 0x3

    .line 5
    invoke-virtual {v5, v9}, LNh;->e(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6
    invoke-virtual {v5, v9, v6}, LNh;->f(II)I

    move-result v10

    .line 7
    invoke-static {v3, v4, v10}, LRe;->a(Landroid/content/Context;Lye;I)LLh;

    move-result-object v10

    iput-object v10, v0, LRe;->b:LLh;

    :cond_0
    const/4 v10, 0x1

    .line 8
    invoke-virtual {v5, v10}, LNh;->e(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 9
    invoke-virtual {v5, v10, v6}, LNh;->f(II)I

    move-result v11

    .line 10
    invoke-static {v3, v4, v11}, LRe;->a(Landroid/content/Context;Lye;I)LLh;

    move-result-object v11

    iput-object v11, v0, LRe;->c:LLh;

    :cond_1
    const/4 v11, 0x4

    .line 11
    invoke-virtual {v5, v11}, LNh;->e(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 12
    invoke-virtual {v5, v11, v6}, LNh;->f(II)I

    move-result v12

    .line 13
    invoke-static {v3, v4, v12}, LRe;->a(Landroid/content/Context;Lye;I)LLh;

    move-result-object v12

    iput-object v12, v0, LRe;->d:LLh;

    :cond_2
    const/4 v12, 0x2

    .line 14
    invoke-virtual {v5, v12}, LNh;->e(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 15
    invoke-virtual {v5, v12, v6}, LNh;->f(II)I

    move-result v13

    .line 16
    invoke-static {v3, v4, v13}, LRe;->a(Landroid/content/Context;Lye;I)LLh;

    move-result-object v13

    iput-object v13, v0, LRe;->e:LLh;

    :cond_3
    const/4 v13, 0x5

    .line 17
    invoke-virtual {v5, v13}, LNh;->e(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 18
    invoke-virtual {v5, v13, v6}, LNh;->f(II)I

    move-result v14

    .line 19
    invoke-static {v3, v4, v14}, LRe;->a(Landroid/content/Context;Lye;I)LLh;

    move-result-object v14

    iput-object v14, v0, LRe;->f:LLh;

    :cond_4
    const/4 v14, 0x6

    .line 20
    invoke-virtual {v5, v14}, LNh;->e(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 21
    invoke-virtual {v5, v14, v6}, LNh;->f(II)I

    move-result v15

    .line 22
    invoke-static {v3, v4, v15}, LRe;->a(Landroid/content/Context;Lye;I)LLh;

    move-result-object v4

    iput-object v4, v0, LRe;->g:LLh;

    .line 23
    :cond_5
    iget-object v4, v5, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    iget-object v4, v0, LRe;->a:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v5, 0x17

    const/16 v15, 0xc

    const/16 v16, 0x0

    if-eq v8, v7, :cond_b

    .line 26
    sget-object v14, LeS;->N0:[I

    .line 27
    new-instance v10, LNh;

    invoke-virtual {v3, v8, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-direct {v10, v3, v8}, LNh;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v4, :cond_6

    .line 28
    invoke-virtual {v10, v15}, LNh;->e(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 29
    invoke-virtual {v10, v15, v6}, LNh;->a(IZ)Z

    move-result v8

    move v14, v8

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    const/4 v14, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, v3, v10}, LRe;->a(Landroid/content/Context;LNh;)V

    .line 31
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v12, v5, :cond_9

    .line 32
    invoke-virtual {v10, v9}, LNh;->e(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 33
    invoke-virtual {v10, v9}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    goto :goto_1

    :cond_7
    move-object/from16 v12, v16

    .line 34
    :goto_1
    invoke-virtual {v10, v11}, LNh;->e(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 35
    invoke-virtual {v10, v11}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    goto :goto_2

    :cond_8
    move-object/from16 v17, v16

    .line 36
    :goto_2
    invoke-virtual {v10, v13}, LNh;->e(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 37
    invoke-virtual {v10, v13}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    goto :goto_3

    :cond_9
    move-object/from16 v12, v16

    move-object/from16 v17, v12

    .line 38
    :cond_a
    :goto_3
    iget-object v10, v10, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    move v10, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v12

    goto :goto_4

    :cond_b
    move-object/from16 v8, v16

    move-object/from16 v17, v8

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 39
    :goto_4
    sget-object v12, LeS;->N0:[I

    .line 40
    new-instance v7, LNh;

    .line 41
    invoke-virtual {v3, v1, v12, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-direct {v7, v3, v12}, LNh;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v4, :cond_c

    .line 42
    invoke-virtual {v7, v15}, LNh;->e(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 43
    invoke-virtual {v7, v15, v6}, LNh;->a(IZ)Z

    move-result v14

    const/4 v10, 0x1

    .line 44
    :cond_c
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v12, v5, :cond_f

    .line 45
    invoke-virtual {v7, v9}, LNh;->e(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 46
    invoke-virtual {v7, v9}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 47
    :cond_d
    invoke-virtual {v7, v11}, LNh;->e(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 48
    invoke-virtual {v7, v11}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 49
    :cond_e
    invoke-virtual {v7, v13}, LNh;->e(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 50
    invoke-virtual {v7, v13}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :cond_f
    move-object/from16 v5, v16

    move-object/from16 v12, v17

    .line 51
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v15, v9, :cond_10

    .line 52
    invoke-virtual {v7, v6}, LNh;->e(I)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, -0x1

    .line 53
    invoke-virtual {v7, v6, v9}, LNh;->c(II)I

    move-result v15

    if-nez v15, :cond_10

    .line 54
    iget-object v9, v0, LRe;->a:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v9, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    :cond_10
    invoke-virtual {v0, v3, v7}, LRe;->a(Landroid/content/Context;LNh;)V

    .line 56
    iget-object v7, v7, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v5, :cond_11

    .line 57
    iget-object v7, v0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    if-eqz v12, :cond_12

    .line 58
    iget-object v5, v0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    if-eqz v8, :cond_13

    .line 59
    iget-object v5, v0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    if-nez v4, :cond_14

    if-eqz v10, :cond_14

    .line 60
    iget-object v4, v0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 61
    :cond_14
    iget-object v4, v0, LRe;->j:Landroid/graphics/Typeface;

    if-eqz v4, :cond_15

    .line 62
    iget-object v5, v0, LRe;->a:Landroid/widget/TextView;

    iget v7, v0, LRe;->i:I

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 63
    :cond_15
    iget-object v4, v0, LRe;->h:LTe;

    .line 64
    iget-object v5, v4, LTe;->j:Landroid/content/Context;

    sget-object v7, LeS;->q:[I

    invoke-virtual {v5, v1, v7, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 66
    invoke-virtual {v2, v13, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, LTe;->a:I

    .line 67
    :cond_16
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v5, :cond_17

    .line 68
    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    goto :goto_5

    :cond_17
    const/high16 v5, -0x40800000    # -1.0f

    :goto_5
    const/4 v8, 0x2

    .line 69
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 70
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    const/4 v8, 0x1

    goto :goto_6

    :cond_18
    const/4 v8, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    .line 71
    :goto_6
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 72
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/4 v8, 0x3

    goto :goto_7

    :cond_19
    const/4 v8, 0x3

    const/high16 v10, -0x40800000    # -1.0f

    .line 73
    :goto_7
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 74
    invoke-virtual {v2, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-lez v8, :cond_1c

    .line 75
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 76
    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 77
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    .line 78
    new-array v12, v11, [I

    if-lez v11, :cond_1b

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v11, :cond_1a

    const/4 v14, -0x1

    .line 79
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    aput v15, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 80
    :cond_1a
    invoke-virtual {v4, v12}, LTe;->a([I)[I

    move-result-object v11

    iput-object v11, v4, LTe;->f:[I

    .line 81
    invoke-virtual {v4}, LTe;->c()Z

    .line 82
    :cond_1b
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    :cond_1c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-virtual {v4}, LTe;->d()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 85
    iget v2, v4, LTe;->a:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_22

    .line 86
    iget-boolean v2, v4, LTe;->g:Z

    if-nez v2, :cond_20

    .line 87
    iget-object v2, v4, LTe;->j:Landroid/content/Context;

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    cmpl-float v8, v9, v7

    if-nez v8, :cond_1d

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v11, 0x2

    .line 89
    invoke-static {v11, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    goto :goto_9

    :cond_1d
    const/4 v11, 0x2

    :goto_9
    cmpl-float v8, v10, v7

    if-nez v8, :cond_1e

    const/high16 v8, 0x42e00000    # 112.0f

    .line 90
    invoke-static {v11, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    :cond_1e
    cmpl-float v2, v5, v7

    if-nez v2, :cond_1f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 91
    :cond_1f
    invoke-virtual {v4, v9, v10, v5}, LTe;->a(FFF)V

    .line 92
    :cond_20
    invoke-virtual {v4}, LTe;->b()Z

    goto :goto_a

    .line 93
    :cond_21
    iput v6, v4, LTe;->a:I

    .line 94
    :cond_22
    :goto_a
    sget-boolean v2, Li8;->a:Z

    if-eqz v2, :cond_24

    .line 95
    iget-object v2, v0, LRe;->h:LTe;

    .line 96
    iget v4, v2, LTe;->a:I

    if-eqz v4, :cond_24

    .line 97
    iget-object v2, v2, LTe;->f:[I

    .line 98
    array-length v4, v2

    if-lez v4, :cond_24

    .line 99
    iget-object v4, v0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_23

    .line 100
    iget-object v2, v0, LRe;->a:Landroid/widget/TextView;

    iget-object v4, v0, LRe;->h:LTe;

    .line 101
    iget v4, v4, LTe;->d:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 102
    iget-object v5, v0, LRe;->h:LTe;

    .line 103
    iget v5, v5, LTe;->e:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 104
    iget-object v7, v0, LRe;->h:LTe;

    .line 105
    iget v7, v7, LTe;->c:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 106
    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_b

    .line 107
    :cond_23
    iget-object v4, v0, LRe;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 108
    :cond_24
    :goto_b
    sget-object v2, LeS;->q:[I

    .line 109
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, -0x1

    .line 110
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v4, 0x8

    .line 111
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/16 v5, 0x9

    .line 112
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 113
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v2, v3, :cond_25

    .line 114
    iget-object v1, v0, LRe;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lw8;->a(Landroid/widget/TextView;I)V

    :cond_25
    if-eq v4, v3, :cond_26

    .line 115
    iget-object v1, v0, LRe;->a:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lw8;->b(Landroid/widget/TextView;I)V

    :cond_26
    if-eq v5, v3, :cond_27

    .line 116
    iget-object v1, v0, LRe;->a:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lw8;->c(Landroid/widget/TextView;I)V

    :cond_27
    return-void
.end method

.method public a([II)V
    .locals 6

    .line 192
    iget-object v0, p0, LRe;->h:LTe;

    .line 193
    invoke-virtual {v0}, LTe;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 195
    new-array v3, v1, [I

    if-nez p2, :cond_0

    .line 196
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_1

    .line 197
    :cond_0
    iget-object v4, v0, LTe;->j:Landroid/content/Context;

    .line 198
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v2, v1, :cond_1

    .line 199
    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, LTe;->a([I)[I

    move-result-object p2

    iput-object p2, v0, LTe;->f:[I

    .line 201
    invoke-virtual {v0}, LTe;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 202
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "None of the preset sizes is valid: "

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 204
    :cond_3
    iput-boolean v2, v0, LTe;->g:Z

    .line 205
    :goto_2
    invoke-virtual {v0}, LTe;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 206
    invoke-virtual {v0}, LTe;->a()V

    :cond_4
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, LRe;->h:LTe;

    .line 2
    invoke-virtual {v0}, LTe;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, LTe;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
