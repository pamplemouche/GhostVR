.class public LP30;
.super LBg;
.source "PG"

# interfaces
.implements LI30;
.implements LT30;


# static fields
.field public static G:Z

.field public static H:Z

.field public static I:Z


# instance fields
.field public final A:Ljava/lang/String;

.field public B:Landroid/content/ContentResolver;

.field public C:Ljava/util/ArrayList;

.field public D:LJ30;

.field public E:Z

.field public F:Ljava/util/ArrayList;

.field public y:LS30;

.field public z:Lorg/chromium/chrome/browser/contacts_picker/TopView;


# direct methods
.method public constructor <init>(LS30;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, LBg;-><init>()V

    .line 2
    iput-object p1, p0, LP30;->y:LS30;

    .line 3
    iput-object p2, p0, LP30;->B:Landroid/content/ContentResolver;

    .line 4
    iput-object p3, p0, LP30;->A:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    sput-boolean p1, LP30;->G:Z

    .line 6
    sput-boolean p1, LP30;->H:Z

    .line 7
    sput-boolean p1, LP30;->I:Z

    .line 8
    iget-object p1, p0, LP30;->C:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 9
    new-instance p1, LJ30;

    iget-object v1, p0, LP30;->B:Landroid/content/ContentResolver;

    iget-object p2, p0, LP30;->y:LS30;

    iget-boolean v3, p2, LS30;->N:Z

    iget-boolean v4, p2, LS30;->O:Z

    iget-boolean v5, p2, LS30;->P:Z

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, LJ30;-><init>(Landroid/content/ContentResolver;LI30;ZZZ)V

    iput-object p1, p0, LP30;->D:LJ30;

    .line 10
    sget-object p2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, LP30;->C:Ljava/util/ArrayList;

    .line 12
    iget-object p1, p0, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 53
    iget-object v0, p0, LP30;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 54
    :cond_0
    iget-object v0, p0, LP30;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, LP30;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, LP30;->E:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ldh;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0060

    .line 20
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/contacts_picker/ContactView;

    .line 21
    iget-object p2, p0, LP30;->y:LS30;

    .line 22
    iput-object p2, p1, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->O:LS30;

    .line 23
    iget-object p2, p2, LS30;->H:LrR0;

    .line 24
    iput-object p2, p1, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->P:LrR0;

    .line 25
    iget-object v0, p1, LiR0;->z:LrR0;

    if-eq v0, p2, :cond_2

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, v0, LrR0;->d:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    iput-object p2, p1, LiR0;->z:LrR0;

    .line 28
    iget-object p2, p2, LrR0;->d:LWT;

    invoke-virtual {p2, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 29
    :cond_2
    new-instance p2, LH30;

    iget-object v0, p0, LP30;->y:LS30;

    iget-object v1, p0, LP30;->B:Landroid/content/ContentResolver;

    invoke-direct {p2, p1, v0, v1}, LH30;-><init>(Lorg/chromium/chrome/browser/contacts_picker/ContactView;LS30;Landroid/content/ContentResolver;)V

    return-object p2

    .line 30
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0e01cb

    .line 31
    invoke-virtual {p2, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;

    iput-object p1, p0, LP30;->z:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    .line 32
    iget-object p2, p0, LP30;->A:Ljava/lang/String;

    const v2, 0x7f0b01b1

    .line 33
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 34
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 35
    iget-object p1, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->w:Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v0

    const p2, 0x7f1302a0

    .line 36
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [LWe1;

    new-instance v1, LWe1;

    const-string v4, "<b>"

    const-string v5, "</b>"

    invoke-direct {v1, v4, v5, v3}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, p2, v0

    .line 37
    invoke-static {p1, p2}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, LP30;->z:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    iget-object p2, p0, LP30;->y:LS30;

    .line 39
    iput-object p2, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->A:LU30;

    .line 40
    iput-object p0, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->E:LT30;

    .line 41
    iget-boolean p2, p2, LS30;->M:Z

    const/16 v1, 0x8

    if-eqz p2, :cond_4

    .line 42
    iget-object p2, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->y:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 43
    :cond_4
    iget-object p1, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->x:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_0
    iget-object p1, p0, LP30;->z:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    iget-object p2, p0, LP30;->y:LS30;

    iget-boolean v2, p2, LS30;->N:Z

    iget-boolean v3, p2, LS30;->O:Z

    iget-boolean p2, p2, LS30;->P:Z

    .line 45
    iget-object v4, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->B:Lorg/chromium/ui/widget/ChipView;

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    iget-object v2, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->C:Lorg/chromium/ui/widget/ChipView;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    iget-object p1, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->D:Lorg/chromium/ui/widget/ChipView;

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    iget-object p1, p0, LP30;->y:LS30;

    iget-object p2, p0, LP30;->z:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    .line 49
    iput-object p2, p1, LS30;->D:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    .line 50
    iget-object p1, p0, LP30;->C:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 51
    iget-object p2, p2, Lorg/chromium/chrome/browser/contacts_picker/TopView;->z:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_8
    new-instance p1, LO30;

    iget-object p2, p0, LP30;->z:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    invoke-direct {p1, p0, p2}, LO30;-><init>(LP30;Lorg/chromium/chrome/browser/contacts_picker/TopView;)V

    return-object p1
.end method

.method public a(Ldh;I)V
    .locals 4

    .line 56
    iget v0, p1, Ldh;->B:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 57
    :cond_0
    check-cast p1, LH30;

    .line 58
    iget-boolean v0, p0, LP30;->E:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LP30;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 60
    iget-object v0, p0, LP30;->C:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LF30;

    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, LP30;->C:Ljava/util/ArrayList;

    iget-boolean v2, p0, LP30;->E:Z

    xor-int/2addr v1, v2

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LF30;

    .line 62
    :goto_1
    iput-object p2, p1, LH30;->S:LF30;

    .line 63
    iget-object v0, p1, LH30;->P:LS30;

    .line 64
    iget-object v0, v0, LS30;->I:LyO0;

    .line 65
    iget-object v1, p2, LF30;->w:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, LyO0;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 67
    new-instance v1, LN30;

    iget-object v2, p1, LH30;->S:LF30;

    .line 68
    iget-object v2, v2, LF30;->w:Ljava/lang/String;

    .line 69
    iget-object v3, p1, LH30;->Q:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v3, p1}, LN30;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;LM30;)V

    iput-object v1, p1, LH30;->T:LN30;

    .line 70
    sget-object v2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 71
    :cond_3
    iget-object p1, p1, LH30;->R:Lorg/chromium/chrome/browser/contacts_picker/ContactView;

    invoke-virtual {p1, p2, v0}, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a(LF30;Landroid/graphics/Bitmap;)V

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, LP30;->F:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LP30;->F:Ljava/util/ArrayList;

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LP30;->F:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v1, p0, LP30;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF30;

    .line 9
    iget-object v3, v2, LF30;->x:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    sget-boolean v3, LP30;->H:Z

    .line 12
    sget-boolean v4, LP30;->I:Z

    .line 13
    invoke-virtual {v2, v3, v4}, LF30;->a(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    :cond_2
    iget-object v2, p0, LP30;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_4
    :goto_1
    iget-object p1, p0, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    return-void
.end method

.method public b(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, LP30;->E:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
