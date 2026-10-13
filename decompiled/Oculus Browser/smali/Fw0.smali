.class public LFw0;
.super LIw0;
.source "PG"


# instance fields
.field public final N:Ljava/util/List;

.field public O:Z

.field public final P:I

.field public final Q:Ljava/util/ArrayList;

.field public final R:I

.field public final S:I

.field public T:Landroid/support/v7/widget/GridLayout;

.field public U:Landroid/view/View;

.field public V:LZw0;

.field public W:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:LDw0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LGw0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, LIw0;-><init>(Landroid/content/Context;Ljava/lang/String;LGw0;LAw0;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LFw0;->N:Ljava/util/List;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, LFw0;->O:Z

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, LFw0;->Q:Ljava/util/ArrayList;

    .line 5
    iput-boolean p2, p0, LFw0;->a0:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07010c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, LFw0;->P:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070109

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, LFw0;->R:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07024c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LFw0;->S:I

    .line 9
    invoke-virtual {p0, v0, v0}, LIw0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 120
    iget-object v0, p0, LFw0;->V:LZw0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {v0}, LZw0;->c()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, LFw0;->O:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 122
    :cond_1
    iget-object v0, p0, LFw0;->V:LZw0;

    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final a(LCQ0;ZZZ)Ljava/lang/CharSequence;
    .locals 3

    .line 160
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 161
    invoke-virtual {p1}, LCQ0;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p3, :cond_0

    .line 162
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 163
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    .line 164
    invoke-virtual {v0, p2, v2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    if-eqz p4, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f130154

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "\n"

    .line 166
    :goto_0
    invoke-virtual {p1}, LCQ0;->g()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 167
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 168
    :cond_2
    invoke-virtual {p1}, LCQ0;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 169
    :cond_3
    iget-object p3, p1, LCQ0;->E:[Ljava/lang/String;

    const/4 p4, 0x2

    aget-object p3, p3, p4

    .line 170
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 171
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_4

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 172
    :cond_4
    iget-object p3, p1, LCQ0;->E:[Ljava/lang/String;

    aget-object p3, p3, p4

    .line 173
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 174
    :cond_5
    iget-object p3, p1, LCQ0;->B:Ljava/lang/String;

    .line 175
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 176
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 177
    :cond_6
    iget-object p3, p1, LCQ0;->B:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 179
    :cond_7
    invoke-virtual {p1}, LCQ0;->h()Z

    move-result p3

    if-nez p3, :cond_9

    .line 180
    iget-object p3, p1, LCQ0;->z:Ljava/lang/String;

    .line 181
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 182
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_8

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 183
    :cond_8
    iget-object p1, p1, LCQ0;->z:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 185
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060093

    .line 187
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 188
    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 189
    new-instance p3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 p4, 0xe

    invoke-direct {p3, p4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 190
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p4, p1

    .line 191
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, p2, p4, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 192
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, p3, p4, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    return-object v0
.end method

.method public final a(LCQ0;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 123
    iget v4, p0, LIw0;->A:I

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, LFw0;->a0:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-boolean v4, p0, LFw0;->W:Z

    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {p0, v3, v0, v3, v0}, LIw0;->a(Landroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$TruncateAt;Z)V

    .line 126
    iput-boolean v0, p0, LFw0;->W:Z

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    iget-boolean v4, p0, LFw0;->W:Z

    if-nez v4, :cond_2

    .line 128
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v4, v1, v3, v0}, LIw0;->a(Landroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$TruncateAt;Z)V

    .line 129
    iput-boolean v1, p0, LFw0;->W:Z

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 130
    iput-object v3, p0, LIw0;->L:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object p1, p0, LIw0;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 132
    iget-object p1, p0, LIw0;->F:Landroid/widget/ImageView;

    iget-object v0, p0, LIw0;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-boolean p1, p0, LFw0;->c0:Z

    if-nez p1, :cond_3

    .line 134
    iget-object p1, p0, LIw0;->J:Landroid/widget/TextView;

    const v0, 0x7f1401b7

    .line 135
    invoke-static {p1, v0}, LdT;->a(Landroid/widget/TextView;I)V

    .line 136
    iput-boolean v1, p0, LFw0;->c0:Z

    .line 137
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, LFw0;->V:LZw0;

    .line 138
    iget-object v2, p0, LIw0;->J:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v0}, LZw0;->c()I

    move-result v4

    if-nez v4, :cond_4

    .line 140
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 141
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_5

    if-le v4, v1, :cond_5

    .line 142
    new-instance v1, Lax0;

    invoke-direct {v1, v0, v2, p1}, Lax0;-><init>(LZw0;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 143
    :cond_5
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 144
    invoke-static {p1, v0, v1, v3}, Lbx0;->a(Landroid/content/Context;LZw0;Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 146
    :cond_6
    iget-object v4, p1, LCQ0;->D:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object v4, p0, LIw0;->L:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v4, p0, LIw0;->F:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 149
    iget-object v4, p0, LIw0;->F:Landroid/widget/ImageView;

    iget-object v5, p0, LIw0;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-boolean v4, p0, LFw0;->c0:Z

    if-eqz v4, :cond_7

    .line 151
    iget-object v4, p0, LIw0;->J:Landroid/widget/TextView;

    const v5, 0x7f1401c4

    .line 152
    invoke-static {v4, v5}, LdT;->a(Landroid/widget/TextView;I)V

    .line 153
    iput-boolean v0, p0, LFw0;->c0:Z

    .line 154
    :cond_7
    iget-boolean v4, p0, LFw0;->b0:Z

    if-eqz v4, :cond_8

    iget v4, p0, LIw0;->A:I

    if-ne v4, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_9

    .line 155
    invoke-virtual {p1}, LCQ0;->f()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, LFw0;->W:Z

    .line 156
    invoke-virtual {p0, p1, v1, v0, v3}, LFw0;->a(LCQ0;ZZZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 157
    invoke-virtual {p0, v2, p1}, LIw0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 158
    :cond_9
    iget-boolean v1, p0, LFw0;->W:Z

    invoke-virtual {p0, p1, v0, v0, v1}, LFw0;->a(LCQ0;ZZZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, LIw0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 159
    :goto_3
    invoke-virtual {p0}, LFw0;->c()V

    return-void
.end method

.method public a(LZw0;)V
    .locals 14

    .line 71
    iput-object p1, p0, LFw0;->V:LZw0;

    .line 72
    invoke-virtual {p1}, LZw0;->b()LCQ0;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, LFw0;->a(LCQ0;)V

    .line 74
    iget-object v1, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    iget-object v1, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-object v1, p0, LFw0;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 77
    iget-object v1, p0, LIw0;->w:LGw0;

    check-cast v1, LXw0;

    .line 78
    iget-object v2, v1, LXw0;->T:LFw0;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-ne p0, v2, :cond_3

    .line 79
    iget-object v2, v1, LXw0;->h0:LZw0;

    .line 80
    iget v2, v2, LZw0;->c:I

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object v3, v1, LXw0;->h0:LZw0;

    .line 82
    iget-object v3, v3, LZw0;->e:Ljava/lang/String;

    if-ne v2, v4, :cond_1

    .line 83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v3, v1, LXw0;->x:Landroid/content/Context;

    if-ne v2, v5, :cond_2

    .line 85
    iget-object v1, v1, LXw0;->J:LOv0;

    .line 86
    iget v1, v1, LOv0;->c:I

    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, v1, LXw0;->J:LOv0;

    .line 88
    iget v1, v1, LOv0;->d:I

    .line 89
    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 90
    :cond_3
    iget-object v2, v1, LXw0;->W:LFw0;

    if-ne p0, v2, :cond_4

    .line 91
    iget-object v1, v1, LXw0;->g0:LZw0;

    .line 92
    iget-object v3, v1, LZw0;->f:Ljava/lang/String;

    .line 93
    :cond_4
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_7

    .line 94
    new-instance v1, LEw0;

    iget-object v9, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    iget-object v7, p0, LFw0;->Q:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 96
    iget-object v7, p0, LIw0;->w:LGw0;

    check-cast v7, LXw0;

    .line 97
    iget-object v8, v7, LXw0;->T:LFw0;

    if-ne p0, v8, :cond_5

    iget-object v7, v7, LXw0;->h0:LZw0;

    if-eqz v7, :cond_5

    .line 98
    iget v7, v7, LZw0;->c:I

    if-ne v7, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    const/4 v4, 0x3

    const/4 v11, 0x3

    goto :goto_3

    :cond_6
    const/4 v4, 0x2

    const/4 v11, 0x2

    :goto_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    move-object v8, p0

    .line 99
    invoke-direct/range {v7 .. v13}, LEw0;-><init>(LFw0;Landroid/support/v7/widget/GridLayout;IILCQ0;Z)V

    .line 100
    iget-object v4, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, v1, LEw0;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 102
    :goto_4
    invoke-virtual {p1}, LZw0;->c()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 103
    iget-object v4, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v3, v5, :cond_8

    move v3, v10

    .line 104
    :cond_8
    invoke-virtual {p1, v1}, LZw0;->a(I)LCQ0;

    move-result-object v12

    .line 105
    new-instance v4, LEw0;

    iget-object v9, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    const/4 v11, 0x0

    if-ne v12, v0, :cond_9

    const/4 v13, 0x1

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    move-object v7, v4

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, LEw0;-><init>(LFw0;Landroid/support/v7/widget/GridLayout;IILCQ0;Z)V

    .line 106
    iget-object v7, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v7, p0, LFw0;->N:Ljava/util/List;

    .line 108
    iget-object v4, v4, LEw0;->d:Landroid/widget/TextView;

    .line 109
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    if-eq v3, v5, :cond_b

    .line 110
    iget-object v0, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LEw0;

    const v1, 0x7f0b0349

    .line 111
    iget-object v0, v0, LEw0;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 112
    :cond_b
    invoke-virtual {p1}, LZw0;->a()I

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, LFw0;->O:Z

    if-eqz v0, :cond_c

    .line 113
    new-instance v0, LEw0;

    iget-object v3, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, LEw0;-><init>(LFw0;Landroid/support/v7/widget/GridLayout;IILCQ0;Z)V

    .line 114
    invoke-virtual {p1}, LZw0;->a()I

    move-result p1

    .line 115
    iget-object v1, v0, LEw0;->g:LFw0;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v1, v0, LEw0;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0b0345

    .line 117
    iget-object v1, v0, LEw0;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 118
    iget-object p1, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_c
    invoke-virtual {p0}, LFw0;->c()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v1, v2, :cond_7

    .line 2
    iget-object v2, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LEw0;

    .line 3
    iget-object v7, v2, LEw0;->c:Landroid/view/View;

    if-eq v7, p1, :cond_1

    .line 4
    iget-object v7, v2, LEw0;->d:Landroid/widget/TextView;

    if-eq v7, p1, :cond_1

    .line 5
    iget-object v7, v2, LEw0;->e:Landroid/view/View;

    if-ne v7, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 6
    :goto_2
    iget-object v8, v2, LEw0;->b:LCQ0;

    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    .line 7
    iget-object p1, p0, LIw0;->w:LGw0;

    check-cast p1, LXw0;

    invoke-virtual {p1, p0}, LXw0;->b(LIw0;)V

    return-void

    .line 8
    :cond_2
    iget-object v7, v2, LEw0;->b:LCQ0;

    if-eqz v7, :cond_6

    .line 9
    iget-object v2, v2, LEw0;->f:Landroid/view/View;

    if-ne v2, p1, :cond_6

    .line 10
    iget-object p1, p0, LIw0;->w:LGw0;

    check-cast p1, LXw0;

    .line 11
    iget-object v0, p1, LXw0;->T:LFw0;

    if-ne p0, v0, :cond_3

    .line 12
    iget-object v0, p1, LXw0;->y:LRw0;

    iget-object v1, p1, LXw0;->I:Lorg/chromium/base/Callback;

    check-cast v0, Lyv0;

    invoke-virtual {v0, v6, v7, v1}, Lyv0;->a(ILCQ0;Lorg/chromium/base/Callback;)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x3

    .line 13
    :goto_3
    iget-object v1, p1, LXw0;->V:LFw0;

    if-ne p0, v1, :cond_4

    .line 14
    iget-object v0, p1, LXw0;->y:LRw0;

    check-cast v0, Lyv0;

    invoke-virtual {v0, v5, v7, v3}, Lyv0;->a(ILCQ0;Lorg/chromium/base/Callback;)I

    move-result v0

    .line 15
    :cond_4
    iget-object v1, p1, LXw0;->W:LFw0;

    if-ne p0, v1, :cond_5

    .line 16
    iget-object v0, p1, LXw0;->y:LRw0;

    check-cast v0, Lyv0;

    invoke-virtual {v0, v4, v7, v3}, Lyv0;->a(ILCQ0;Lorg/chromium/base/Callback;)I

    move-result v0

    .line 17
    :cond_5
    invoke-virtual {p1, p0, v0}, LXw0;->a(LIw0;I)V

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    .line 18
    :goto_4
    iget-object v2, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 19
    iget-object v2, p0, LFw0;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LEw0;

    .line 20
    iget-object v7, v2, LEw0;->c:Landroid/view/View;

    if-eq v7, p1, :cond_9

    .line 21
    iget-object v7, v2, LEw0;->d:Landroid/widget/TextView;

    if-eq v7, p1, :cond_9

    .line 22
    iget-object v7, v2, LEw0;->e:Landroid/view/View;

    if-ne v7, p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v7, 0x1

    .line 23
    :goto_6
    iget-object v8, v2, LEw0;->b:LCQ0;

    if-eqz v8, :cond_e

    .line 24
    iget-object v8, v2, LEw0;->c:Landroid/view/View;

    check-cast v8, Landroid/widget/RadioButton;

    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v7, :cond_e

    .line 25
    iget-object v7, v2, LEw0;->g:LFw0;

    iget-object v8, v2, LEw0;->b:LCQ0;

    .line 26
    invoke-virtual {v7, v8}, LFw0;->a(LCQ0;)V

    .line 27
    iget-object v7, v2, LEw0;->g:LFw0;

    iget-object v8, v7, LIw0;->w:LGw0;

    iget-object v2, v2, LEw0;->b:LCQ0;

    check-cast v8, LXw0;

    .line 28
    iget-object v9, v8, LXw0;->T:LFw0;

    if-ne v7, v9, :cond_a

    iget-object v9, v8, LXw0;->h0:LZw0;

    .line 29
    invoke-virtual {v9}, LZw0;->b()LCQ0;

    move-result-object v9

    if-eq v9, v2, :cond_a

    .line 30
    iget-object v9, v8, LXw0;->h0:LZw0;

    invoke-virtual {v9, v2}, LZw0;->c(LCQ0;)V

    .line 31
    iget-object v9, v8, LXw0;->y:LRw0;

    iget-object v10, v8, LXw0;->I:Lorg/chromium/base/Callback;

    check-cast v9, Lyv0;

    invoke-virtual {v9, v6, v2, v10}, Lyv0;->b(ILCQ0;Lorg/chromium/base/Callback;)I

    move-result v2

    goto :goto_7

    .line 32
    :cond_a
    iget-object v9, v8, LXw0;->U:LFw0;

    if-ne v7, v9, :cond_b

    iget-object v9, v8, LXw0;->i0:LZw0;

    .line 33
    invoke-virtual {v9}, LZw0;->b()LCQ0;

    move-result-object v9

    if-eq v9, v2, :cond_b

    .line 34
    iget-object v9, v8, LXw0;->i0:LZw0;

    invoke-virtual {v9, v2}, LZw0;->c(LCQ0;)V

    .line 35
    iget-object v9, v8, LXw0;->y:LRw0;

    const/4 v10, 0x2

    iget-object v11, v8, LXw0;->I:Lorg/chromium/base/Callback;

    check-cast v9, Lyv0;

    invoke-virtual {v9, v10, v2, v11}, Lyv0;->b(ILCQ0;Lorg/chromium/base/Callback;)I

    move-result v2

    goto :goto_7

    .line 36
    :cond_b
    iget-object v9, v8, LXw0;->V:LFw0;

    if-ne v7, v9, :cond_c

    .line 37
    iget-object v9, v8, LXw0;->j0:LZw0;

    invoke-virtual {v9, v2}, LZw0;->c(LCQ0;)V

    .line 38
    iget-object v9, v8, LXw0;->y:LRw0;

    iget-object v10, v8, LXw0;->I:Lorg/chromium/base/Callback;

    check-cast v9, Lyv0;

    invoke-virtual {v9, v5, v2, v10}, Lyv0;->b(ILCQ0;Lorg/chromium/base/Callback;)I

    move-result v2

    goto :goto_7

    .line 39
    :cond_c
    iget-object v9, v8, LXw0;->W:LFw0;

    if-ne v7, v9, :cond_d

    .line 40
    iget-object v9, v8, LXw0;->g0:LZw0;

    invoke-virtual {v9, v2}, LZw0;->c(LCQ0;)V

    .line 41
    iget-object v9, v8, LXw0;->y:LRw0;

    check-cast v9, Lyv0;

    invoke-virtual {v9, v4, v2, v3}, Lyv0;->b(ILCQ0;Lorg/chromium/base/Callback;)I

    move-result v2

    goto :goto_7

    :cond_d
    const/4 v2, 0x3

    .line 42
    :goto_7
    invoke-virtual {v8, v7, v2}, LXw0;->a(LIw0;I)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_f
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 6

    .line 61
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e015b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0b0278

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1304bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iput-object v1, p0, LFw0;->U:Landroid/view/View;

    .line 66
    new-instance v1, Landroid/support/v7/widget/GridLayout;

    .line 67
    invoke-direct {v1, v0, v3}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-object v1, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    const/4 v0, 0x4

    .line 69
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayout;->a(I)V

    .line 70
    iget-object v0, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 43
    iget-object v0, p0, LFw0;->V:LZw0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LZw0;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 44
    iput v2, p0, LIw0;->A:I

    .line 45
    invoke-virtual {p0}, LIw0;->c()V

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, LFw0;->d0:LDw0;

    if-eqz v0, :cond_4

    .line 47
    iget-object v3, p0, LFw0;->V:LZw0;

    .line 48
    iget v3, v3, LZw0;->a:I

    .line 49
    check-cast v0, Lyv0;

    .line 50
    iget-object v3, v0, Lyv0;->h0:LZw0;

    invoke-virtual {v3}, LZw0;->b()LCQ0;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 51
    :cond_2
    iget-object v3, v0, Lyv0;->h0:LZw0;

    .line 52
    invoke-virtual {v3}, LZw0;->b()LCQ0;

    move-result-object v3

    check-cast v3, Lju0;

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {v3}, Lju0;->k()V

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v3}, Lju0;->l()V

    .line 55
    :goto_1
    iget-object v3, v0, Lyv0;->o0:LXw0;

    iget-object v0, v0, Lyv0;->h0:LZw0;

    invoke-virtual {v3, v1, v0}, LXw0;->a(ILZw0;)V

    .line 56
    :cond_4
    :goto_2
    iget v0, p0, LIw0;->A:I

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    goto :goto_3

    :cond_5
    const/4 p1, 0x4

    .line 57
    :goto_3
    iput p1, p0, LIw0;->A:I

    .line 58
    invoke-virtual {p0}, LIw0;->c()V

    .line 59
    iget-object p1, p0, LFw0;->V:LZw0;

    if-eqz p1, :cond_6

    if-ne v0, v2, :cond_6

    .line 60
    invoke-virtual {p1}, LZw0;->b()LCQ0;

    move-result-object p1

    invoke-virtual {p0, p1}, LFw0;->a(LCQ0;)V

    :cond_6
    return-void
.end method

.method public final b(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, LFw0;->U:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    iget-object v0, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4
    iget-object v1, p0, LFw0;->U:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5
    iget-object p1, p0, LFw0;->U:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    .line 7
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v0, -0x2

    .line 8
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070251

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    iget-object p1, p0, LFw0;->U:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, LFw0;->U:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 12
    :cond_2
    iget-object p1, p0, LFw0;->U:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 13
    iget-object v0, p0, LFw0;->U:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, LIw0;->z:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, LIw0;->A:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iput-boolean v2, p0, LIw0;->M:Z

    .line 4
    iget-object v0, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, v2}, LFw0;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    iput-boolean v2, p0, LIw0;->M:Z

    .line 7
    iget-object v0, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    invoke-virtual {p0, v4}, LFw0;->b(Z)V

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v4, p0, LIw0;->M:Z

    .line 10
    iget-object v0, p0, LFw0;->T:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    invoke-virtual {p0, v2}, LFw0;->b(Z)V

    .line 12
    :goto_0
    invoke-super {p0}, LIw0;->c()V

    return-void
.end method
