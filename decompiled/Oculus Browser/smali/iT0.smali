.class public LiT0;
.super Landroid/app/AlertDialog;
.source "PG"

# interfaces
.implements LlT0;


# instance fields
.field public final A:LlT0;

.field public final B:I

.field public C:I

.field public final w:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

.field public final x:Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;

.field public final y:Landroid/widget/Button;

.field public final z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;LlT0;I[Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, LiT0;->A:LlT0;

    .line 3
    iput p3, p0, LiT0;->B:I

    .line 4
    iput p3, p0, LiT0;->C:I

    const-string p2, "layout_inflater"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0e005a

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    const v2, 0x7f0b03cb

    .line 8
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, LiT0;->z:Landroid/view/View;

    const v2, 0x7f0b0494

    .line 9
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v2, 0x7f130216

    .line 10
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f130213

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 12
    new-instance v2, LeT0;

    invoke-direct {v2, p0}, LeT0;-><init>(LiT0;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, p3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p3, 0x7f13020d

    .line 13
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p3, LfT0;

    invoke-direct {p3, p0}, LfT0;-><init>(LiT0;)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, p1, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 15
    new-instance p1, LgT0;

    invoke-direct {p1, p0}, LgT0;-><init>(LiT0;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const p1, 0x7f0e0059

    .line 16
    invoke-virtual {p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const p2, 0x7f0b0283

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, LiT0;->y:Landroid/widget/Button;

    .line 19
    new-instance p3, LhT0;

    invoke-direct {p3, p0}, LhT0;-><init>(LiT0;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b00dc

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

    iput-object p2, p0, LiT0;->w:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

    const/16 p3, 0x8

    .line 21
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p2, 0x7f0b00dd

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;

    iput-object p1, p0, LiT0;->x:Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;

    .line 23
    iput-object p0, p1, Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;->w:LlT0;

    if-nez p4, :cond_0

    .line 24
    sget-object p2, Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;->x:[I

    array-length p2, p2

    new-array p4, p2, [Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;

    :goto_0
    if-ge v0, p2, :cond_0

    .line 25
    new-instance p3, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;

    sget-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;->x:[I

    aget v1, v1, v0

    .line 26
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/chromium/components/embedder_support/delegate/ColorPickerSimple;->y:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;-><init>(ILjava/lang/String;)V

    aput-object p3, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    new-instance p2, LkT0;

    .line 28
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p4}, LkT0;-><init>(Landroid/content/Context;[Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;)V

    .line 29
    iput-object p1, p2, LkT0;->y:LjT0;

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    iget p1, p0, LiT0;->B:I

    .line 32
    iput p1, p0, LiT0;->C:I

    .line 33
    iget-object p2, p0, LiT0;->z:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public static synthetic a(LiT0;I)V
    .locals 0

    .line 1
    iget-object p0, p0, LiT0;->A:LlT0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LlT0;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 2
    iput p1, p0, LiT0;->C:I

    .line 3
    iget-object v0, p0, LiT0;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
